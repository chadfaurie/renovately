-- 
-- Property Link
CREATE OR REPLACE FUNCTION property_insert_trigger() RETURNS TRIGGER AS $$ BEGIN -- 
    -- Example: Insert a user_property_role_link record
INSERT INTO public.user_property_role_link (
        user_id,
        created_by,
        modified_by,
        property_id,
        role
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
        'owner'
    );
-- Returning NULL in an AFTER INSERT trigger does not affect the row insertion
RETURN NULL;
END;
$$ LANGUAGE plpgsql;
-- Trigger that calls the above function after a row is inserted into 'property'
CREATE TRIGGER property_after_insert
AFTER
INSERT ON public.property FOR EACH ROW EXECUTE FUNCTION property_insert_trigger();
-- 
-- Project Link
CREATE OR REPLACE FUNCTION project_insert_trigger() RETURNS TRIGGER AS $$ BEGIN -- 
    -- Example: Insert a user_property_role_link record
INSERT INTO public.user_project_role_link (
        user_id,
        created_by,
        modified_by,
        project_id,
        role
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
        'owner'
    );
-- Returning NULL in an AFTER INSERT trigger does not affect the row insertion
RETURN NULL;
END;
$$ LANGUAGE plpgsql;
-- Trigger that calls the above function after a row is inserted into 'property'
CREATE TRIGGER property_after_insert
AFTER
INSERT ON public.project FOR EACH ROW EXECUTE FUNCTION project_insert_trigger();