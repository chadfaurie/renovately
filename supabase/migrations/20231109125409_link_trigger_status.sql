-- 
-- Invite status
create type "public"."link_invitation_status_enum" as enum ('accepted', 'invited', 'declined');
-- Set Defaults for existing records
alter table "public"."user_project_role_link"
add column "status" link_invitation_status_enum not null DEFAULT 'accepted';
alter table "public"."user_property_role_link"
add column "status" link_invitation_status_enum not null DEFAULT 'accepted';
-- Set Actual Defaults
alter table "public"."user_project_role_link"
ALTER COLUMN "status"
SET DEFAULT 'invited';
alter table "public"."user_property_role_link"
ALTER COLUMN "status"
SET DEFAULT 'invited';
-- 
-- Drop Area Columns
alter table "public"."area" drop column "after_images";
alter table "public"."area" drop column "before_images";
alter table "public"."area" drop column "current_condition";
alter table "public"."area" drop column "desired_features";
alter table "public"."area" drop column "materials_needed";
alter table "public"."area" drop column "renovation_requirements";
alter table "public"."area" drop column "renovation_status";
-- 
-- Property Link
CREATE OR REPLACE FUNCTION property_insert_trigger() RETURNS TRIGGER AS $$ BEGIN -- 
    -- Example: Insert a user_property_role_link record
INSERT INTO public.user_property_role_link (
        user_id,
        created_by,
        modified_by,
        property_id,
        role,
        status
    )
VALUES (
        NEW.created_by,
        COALESCE(
            NEW.created_by,
            '00000000-0000-0000-0000-000000000000'
        ),
        COALESCE(
            NEW.created_by,
            '00000000-0000-0000-0000-000000000000'
        ),
        NEW.id,
        'owner',
        'accepted'
    );
-- Returning NULL in an AFTER INSERT trigger does not affect the row insertion
RETURN NULL;
END;
$$ LANGUAGE plpgsql;
-- 
-- Project Link
CREATE OR REPLACE FUNCTION project_insert_trigger() RETURNS TRIGGER AS $$ BEGIN -- 
    -- Example: Insert a user_property_role_link record
INSERT INTO public.user_project_role_link (
        user_id,
        created_by,
        modified_by,
        project_id,
        role,
        status
    )
VALUES (
        NEW.created_by,
        COALESCE(
            NEW.created_by,
            '00000000-0000-0000-0000-000000000000'
        ),
        COALESCE(
            NEW.created_by,
            '00000000-0000-0000-0000-000000000000'
        ),
        NEW.id,
        'owner',
        'accepted'
    );
-- Returning NULL in an AFTER INSERT trigger does not affect the row insertion
RETURN NULL;
END;
$$ LANGUAGE plpgsql;