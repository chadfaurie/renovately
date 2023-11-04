-- 
-- Audit Trails
create policy "Enable insert for authenticated users only" on "public"."audit_trail" as permissive for
insert to authenticated with check (true);
-- 
-- User Profile
create policy "Enable insert for authenticated users only" on "public"."user_profile" as permissive for
insert to authenticated with check (true);
create policy "Enable read access for all users" on "public"."user_profile" as permissive for
select to public using ((auth.uid() = id));
-- 
-- Project
create policy "Enable read access for all users" on "public"."project" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."project" as permissive for
insert to authenticated with check (true);
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
-- User Project Role Link
create policy "Enable read access for all users" on "public"."user_project_role_link" as permissive for
select to public using (true);
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
create policy "Enable read access for all users" on "public"."progress_updates" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."progress_updates" as permissive for
insert to authenticated with check (true);
-- 
-- Progress Updates Images
create policy "Enable read access for all users" on "public"."progress_update_images" as permissive for
select to public using (true);
create policy "Enable insert for authenticated users only" on "public"."progress_update_images" as permissive for
insert to authenticated with check (true);