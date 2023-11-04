-- 
-- Audit Trail Function
CREATE OR REPLACE FUNCTION public.update_audit_trail() RETURNS trigger LANGUAGE plpgsql AS $function$ begin
insert into audit_trail(
        "action",
        "entity",
        "entity_id",
        "old_data",
        "new_data"
    )
values (
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
-- CREATE TRIGGER audit_property
-- AFTER
-- INSERT
--     OR DELETE
--     OR
-- UPDATE ON public.property FOR EACH ROW EXECUTE FUNCTION update_audit_trail();