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
-- 
-- Property
create policy "Enable read access for all users" on "public"."property" as permissive for
select to public using (true);
-- 
-- Partner
create policy "Enable read access for all users" on "public"."partner" as permissive for
select to public using (true);
-- 
-- Partner Project Link
create policy "Enable read access for all users" on "public"."partner_project_link" as permissive for
select to public using (true);
-- 
-- Tasks
create policy "Enable read access for all users" on "public"."task" as permissive for
select to public using (true);