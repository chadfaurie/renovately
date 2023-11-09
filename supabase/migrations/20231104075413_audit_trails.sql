-- 
-- Audit Trail Function
CREATE OR REPLACE FUNCTION public.update_audit_trail() RETURNS trigger LANGUAGE plpgsql AS $function$ begin
insert into audit_trail(
        "user_id",
        "action",
        "entity",
        "entity_id",
        "old_data",
        "new_data"
    )
values (
        COALESCE(
            NEW.created_by,
            '00000000-0000-0000-0000-000000000000'
        ),
        TG_OP,
        TG_TABLE_NAME,
        new.id,
        row_to_json(old.*),
        row_to_json(new.*)
    );
return new;
end;
$function$;
-- 
-- Triggers
-- 
-- Property Trigger
-- CREATE TRIGGER audit_property
-- AFTER
-- INSERT
--     OR DELETE
--     OR
-- UPDATE ON public.property FOR EACH ROW EXECUTE FUNCTION update_audit_trail();
-- -- 
-- -- Project Trigger
-- CREATE TRIGGER audit_project
-- AFTER
-- INSERT
--     OR DELETE
--     OR
-- UPDATE ON public.project FOR EACH ROW EXECUTE FUNCTION update_audit_trail();