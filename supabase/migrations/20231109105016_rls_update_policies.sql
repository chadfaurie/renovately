CREATE UNIQUE INDEX idx_unique_property_user ON public.user_property_role_link (property_id, user_id);
CREATE UNIQUE INDEX idx_unique_project_user ON public.user_project_role_link (project_id, user_id);
CREATE UNIQUE INDEX idx_unique_partner_project_link ON public.partner_project_link (project_id, project_id);
-- 
-- Progress Access
CREATE OR REPLACE FUNCTION userHasAccessToProgressRec(
        user_id uuid,
        update_type update_type,
        related_entity_id uuid
    ) RETURNS boolean AS $$
DECLARE has_access boolean;
BEGIN -- Determine access based on the type of the progress update
CASE
    WHEN update_type = 'project' THEN has_access := getUserProjectRole(user_id, related_entity_id) IS NOT NULL;
WHEN update_type = 'task' THEN has_access := getUserProjectRole(
    user_id,
    (
        SELECT project_id
        FROM public.task
        WHERE id = related_entity_id
    )
) IS NOT NULL;
WHEN update_type = 'area' THEN has_access := getUserPropertyRole(
    user_id,
    (
        SELECT property_id
        FROM public.area
        WHERE id = related_entity_id
    )
) IS NOT NULL;
ELSE has_access := FALSE;
END CASE
;
RETURN has_access;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
-- 
-- Progress
drop policy "Enable read access for authorized users" on "public"."progress";
CREATE POLICY "Enable read access for authorized users" ON public.progress FOR
SELECT USING (
        userHasAccessToProgressRec(
            auth.uid(),
            progress.type,
            progress.related_entity_id
        )
    );
-- 
-- Progress
create policy "Enable update for users based on email" on "public"."progress" as permissive for
update to public using (
        userHasAccessToProgressRec(
            auth.uid(),
            progress.type,
            progress.related_entity_id
        )
    ) with check (
        userHasAccessToProgressRec(
            auth.uid(),
            progress.type,
            progress.related_entity_id
        )
    );
-- 
-- Area
create policy "Enable update for users which are linked to area property" on "public"."area" as permissive for
update to public using (
        (
            getuserisadmin(auth.uid())
            OR (getuserpropertyrole(auth.uid(), id) IS NOT NULL)
            OR (created_by = auth.uid())
        )
    ) with check (
        (
            getuserisadmin(auth.uid())
            OR (getuserpropertyrole(auth.uid(), id) IS NOT NULL)
            OR (created_by = auth.uid())
        )
    );
-- 
-- Partner
create policy "Enable update for users based on email" on "public"."partner" as permissive for
update to public using (true) with check (true);
-- 
-- Project
create policy "Enable update for users based on email" on "public"."project" as permissive for
update to public using (
        (
            getuserisadmin(auth.uid())
            OR (getuserprojectrole(auth.uid(), id) IS NOT NULL)
            OR (created_by = auth.uid())
        )
    ) with check (
        (
            getuserisadmin(auth.uid())
            OR (getuserprojectrole(auth.uid(), id) IS NOT NULL)
            OR (created_by = auth.uid())
        )
    );
-- 
-- Task
create policy "Enable update for users based on email" on "public"."task" as permissive for
update to public using (true) with check (true);