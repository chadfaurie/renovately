--
-- Invite Type
CREATE TYPE invite_type_enum AS ENUM ('project', 'property');
-- 
-- Invite Table
create table "public"."invitation" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "modified_at" timestamp with time zone not null default now(),
    "modified_by" uuid NOT NULL default auth.uid(),
    "deleted_at" timestamp with time zone,
    "token" character varying not null default nanoid(),
    "expires_at" timestamp without time zone not null default now() + interval '1 day',
    "accepted_at" timestamp without time zone,
    "email" character varying,
    "role" user_role not null DEFAULT 'user'::user_role,
    "type" invite_type_enum not null,
    "entity_id" uuid not null
);
alter table "public"."invitation" enable row level security;
CREATE UNIQUE INDEX invitation_pkey ON public.invitation USING btree (id);
CREATE UNIQUE INDEX unique_invite_token ON "public"."invitation" USING btree (token);
alter table "public"."invitation"
add constraint "invitation_pkey" PRIMARY KEY using index "invitation_pkey";
alter table "public"."invitation"
add constraint "invitation_created_by_fkey" FOREIGN KEY (created_by) REFERENCES auth.users(id) not valid;
alter table "public"."invitation" validate constraint "invitation_created_by_fkey";
alter table "public"."invitation"
add constraint "invitation_modified_by_fkey" FOREIGN KEY (modified_by) REFERENCES auth.users(id) not valid;
alter table "public"."invitation" validate constraint "invitation_modified_by_fkey";
-- 
-- Acess Func
-- 
-- Progress Access
CREATE OR REPLACE FUNCTION userHasAccessToInvite(
        user_id uuid,
        invite_type invite_type_enum,
        entity_id uuid
    ) RETURNS boolean AS $$
DECLARE has_access boolean;
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
create policy "Enable read access for all users" on "public"."invitation" as permissive for
select to public using (
        (
            (
                userHasProfile(auth.uid())
                AND (
                    getUserIsAdmin(auth.uid())
                    OR created_by = auth.uid()
                    OR userHasAccessToInvite(auth.uid(), type, entity_id) IS NOT NULL
                )
            )
        )
    );
create policy "Enable insert for users based on user_id" on "public"."invitation" as permissive for
insert to public with check (
        (
            (
                userHasProfile(auth.uid())
                AND (
                    getUserIsAdmin(auth.uid())
                    OR userHasAccessToInvite(auth.uid(), type, entity_id) IS NOT NULL
                )
            )
        )
    );
-- 
-- Invite View
create or replace view "public"."invite_view" as
SELECT invitation.id,
    invitation.expires_at,
    invitation.accepted_at,
    invitation.email,
    invitation.role,
    invitation.type,
    invitation.entity_id
FROM invitation
WHERE (invitation.deleted_at IS NULL);