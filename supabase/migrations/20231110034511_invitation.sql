--
-- Invite Type
CREATE TYPE invite_type_enum AS ENUM ('project', 'property');
-- 
-- Invite Table
CREATE TABLE "public"."invitation" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    "created_by" uuid NOT NULL DEFAULT auth.uid(),
    "modified_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    "modified_by" uuid NOT NULL DEFAULT auth.uid(),
    "deleted_at" TIMESTAMP WITH TIME ZONE,
    "token" CHARACTER VARYING NOT NULL DEFAULT nanoid(),
    "expires_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW() + INTERVAL '1 day',
    "accepted_at" TIMESTAMP WITHOUT TIME ZONE,
    "email" CHARACTER VARYING,
    "role" user_role NOT NULL DEFAULT 'user'::user_role,
    "type" invite_type_enum NOT NULL,
    "entity_id" uuid NOT NULL
);
ALTER TABLE "public"."invitation" ENABLE ROW LEVEL SECURITY;
CREATE UNIQUE INDEX invitation_pkey ON PUBLIC .invitation USING btree (id);
CREATE UNIQUE INDEX unique_invite_token ON "public"."invitation" USING btree (token);
ALTER TABLE "public"."invitation"
ADD CONSTRAINT "invitation_pkey" PRIMARY KEY USING INDEX "invitation_pkey";
ALTER TABLE "public"."invitation"
ADD CONSTRAINT "invitation_created_by_fkey" FOREIGN KEY (created_by) REFERENCES auth.users(id) NOT valid;
ALTER TABLE "public"."invitation" VALIDATE CONSTRAINT "invitation_created_by_fkey";
ALTER TABLE "public"."invitation"
ADD CONSTRAINT "invitation_modified_by_fkey" FOREIGN KEY (modified_by) REFERENCES auth.users(id) NOT valid;
ALTER TABLE "public"."invitation" VALIDATE CONSTRAINT "invitation_modified_by_fkey";
-- 
-- Acess Func
-- 
-- Progress Access
CREATE
OR REPLACE FUNCTION userHasAccessToInvite(
    user_id uuid,
    invite_type invite_type_enum,
    entity_id uuid
) RETURNS BOOLEAN AS $$
DECLARE has_access BOOLEAN;
BEGIN -- Determine access based on the type of the progress update
    CASE
        WHEN invite_type = 'project' THEN has_access := getUserProjectRole(user_id, entity_id) IS NOT NULL;
WHEN invite_type = 'property' THEN has_access := getUserPropertyRole(user_id, entity_id) IS NOT NULL;
ELSE has_access := FALSE;
END CASE
;
RETURN has_access;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
-- 
-- RLS
CREATE policy "Enable read access for all users" ON "public"."invitation" AS permissive FOR
SELECT TO PUBLIC USING (
        (
            (
                userHasProfile(auth.uid())
                AND (
                    getUserIsAdmin(auth.uid())
                    OR created_by = auth.uid()
                    OR userHasAccessToInvite(auth.uid(), TYPE, entity_id) IS NOT NULL
                )
            )
        )
    );
CREATE policy "Enable insert for users based on user_id" ON "public"."invitation" AS permissive FOR
INSERT TO PUBLIC WITH CHECK (
        (
            (
                userHasProfile(auth.uid())
                AND (
                    getUserIsAdmin(auth.uid())
                    OR userHasAccessToInvite(auth.uid(), TYPE, entity_id) IS NOT NULL
                )
            )
        )
    );
CREATE POLICY "Enable update for users based on email" ON "public"."invitation" AS permissive FOR
UPDATE TO PUBLIC USING (
        (auth.jwt()->>'email'::text) = (email)::text
    ) WITH CHECK (
        (auth.jwt()->>'email'::text) = (email)::text
    );
-- 
-- Invite View
CREATE
OR REPLACE VIEW "public"."invite_view" AS
SELECT invitation.id,
    invitation.expires_at,
    invitation.accepted_at,
    invitation.email,
    invitation.role,
    invitation.type,
    invitation.entity_id
FROM invitation
WHERE (invitation.deleted_at IS NULL);
-- 
-- Functions
CREATE
OR REPLACE FUNCTION accept_invitation(invitation_id uuid, accepting_user_id uuid) RETURNS VARCHAR AS $$
DECLARE invitation_record RECORD;
CURRENT_TIMESTAMP TIMESTAMP;
BEGIN -- Check if the invitation exists and is still open
SELECT * INTO invitation_record
FROM invitation
WHERE id = invitation_id
    AND accepted_at IS NULL;
IF NOT FOUND THEN RETURN 'Invitation not found or already accepted.';
END IF;
-- Check if the user accepting the invitation is the intended recipient
IF invitation_record.user_id != accepting_user_id THEN RETURN 'You are not authorized to accept this invitation.';
END IF;
-- Perform the acceptance
UPDATE invitation
SET accepted_at = NOW()
WHERE id = invitation_id;
-- Additional logic here (e.g., linking user to projects)
RETURN 'Invitation accepted successfully.';
EXCEPTION
    WHEN OTHERS THEN -- Handle any exceptions
    RETURN 'Error accepting the invitation.';
END;
$$ LANGUAGE plpgsql;