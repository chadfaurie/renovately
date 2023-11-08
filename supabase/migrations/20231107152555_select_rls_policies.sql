-- 
-- Audit Trail RLS
create policy "Enable read access for authorized users" on "public"."audit_trail" as permissive for
select to public using (getUserIsAdmin(auth.uid()));
-- 
-- User RLS
drop policy "Enable read access for all users" on "public"."user_profile";
create policy "Enable read access for authorized users" on "public"."user_profile" as permissive for
select to public using (
        getUserIsAdmin(auth.uid())
        OR (auth.uid() = id)
    );
-- 
-- Property RLS
drop policy "Enable read access for all users" on "public"."property";
create policy "Enable read access for authorized users" on "public"."property" as permissive for
select to public using (
        (
            userHasProfile(auth.uid())
            AND (
                getUserIsAdmin(auth.uid())
                OR getUserPropertyRole(auth.uid(), id) IS NOT NULL
            )
        )
    );
-- 
-- Project RLS
drop policy "Enable read access for all users" on "public"."project";
create policy "Enable read access for authorized users" on "public"."project" as permissive for
select to public using (
        (
            userHasProfile(auth.uid())
            AND (
                getUserIsAdmin(auth.uid())
                OR getUserProjectRole(auth.uid(), id) IS NOT NULL
            )
        )
    );
-- 
-- Area RLS
drop policy "Enable read access for all users" on "public"."area";
create policy "Enable read access for authorized users" on "public"."area" as permissive for
select to public using (
        (
            userHasProfile(auth.uid())
            AND (
                getUserIsAdmin(auth.uid())
                OR getUserPropertyRole(auth.uid(), property_id) IS NOT NULL
            )
        )
    );
-- 
-- Task RLS
drop policy "Enable read access for all users" on "public"."task";
CREATE POLICY select_task_policy ON public.task FOR
SELECT TO authenticated USING (
        getUserIsAdmin(auth.uid())
        OR task.created_by = auth.uid() -- 
        -- FIXME: This is an odd one, not sure who owns the partner yet...
        -- OR task.to_be_completed_by = auth.uid()
        OR getUserProjectRole(auth.uid(), task.project_id) IS NOT NULL
    );
-- 
-- Progress RLS
drop policy "Enable read access for all users" on "public"."progress";
CREATE POLICY "Enable read access for authorized users" ON public.progress FOR
SELECT USING (
        CASE
            -- Check if the update is related to a project and if the user has a role on it
            WHEN progress.type = 'project' THEN getUserProjectRole(auth.uid(), progress.related_entity_id) IS NOT NULL -- Check if the update is related to a task and if the user has a role on the project associated with the task
            WHEN progress.type = 'task' THEN getUserProjectRole(
                auth.uid(),
                (
                    SELECT project_id
                    FROM public.task
                    WHERE id = progress.related_entity_id
                )
            ) IS NOT NULL -- Check if the update is related to an area and if the user has a role on the property associated with the area
            WHEN progress.type = 'area' THEN getUserPropertyRole(
                auth.uid(),
                (
                    SELECT property_id
                    FROM public.area
                    WHERE id = progress.related_entity_id
                )
            ) IS NOT NULL
            ELSE FALSE
        END
    );