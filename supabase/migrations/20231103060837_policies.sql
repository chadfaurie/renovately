-- 
-- Audit Trails
create policy "Enable insert for authenticated users only" on "public"."audit_trail" as permissive for
insert to authenticated WITH CHECK (auth.uid() = user_id);
-- 
-- User Profile
create policy "Enable insert for authenticated users only" on "public"."user_profile" as permissive for
insert to authenticated WITH CHECK (
        auth.uid() = id
        AND role = 'user'::user_role
    );
CREATE POLICY "Enable Update for Owners" ON public.user_profile FOR
UPDATE TO authenticated USING ((auth.uid() = id)) WITH CHECK (
        auth.uid() = id
        AND (
            OLD.role IS NOT DISTINCT
            FROM NEW.role
        )
    );
create policy "Enable read access for all users" on "public"."user_profile" as permissive for
select to public using ((auth.uid() = id));
-- 
-- Project
create policy "Enable read access for all users" on "public"."project" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."project" as permissive for
insert to authenticated with check (true);
-- 
-- User Project Role Link
create policy "Enable read access for all users" on "public"."user_project_role_link" as permissive for
select to public using (true);
-- 
-- Property
create policy "Enable read access for all users" on "public"."property" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."property" as permissive for
insert to authenticated with check (true);
create policy "Enable update for users based on email" on "public"."property" as permissive for
update to public using (true) with check (true);
-- 
-- Partner
create policy "Enable read access for all users" on "public"."partner" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."partner" as permissive for
insert to authenticated with check (true);
-- 
-- Partner Project Link
create policy "Enable read access for all users" on "public"."partner_project_link" as permissive for
select to public using (true);
-- 
-- Tasks
create policy "Enable read access for all users" on "public"."task" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."task" as permissive for
insert to authenticated with check (true);
-- 
-- User Property Role Link
create policy "Enable read access for all users" on "public"."user_property_role_link" as permissive for
select to public using (true);
-- 
-- Area
create policy "Enable read access for all users" on "public"."area" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."area" as permissive for
insert to authenticated with check (true);
-- 
-- Progress Updates
create policy "Enable read access for all users" on "public"."progress" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."progress" as permissive for
insert to authenticated with check (true);
-- 
-- Progress Updates Images
create policy "Enable read access for all users" on "public"."progress_update_images" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."progress_update_images" as permissive for
insert to authenticated with check (true);