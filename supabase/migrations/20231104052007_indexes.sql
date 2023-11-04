-- 
-- user_project_role_link
-- Index for user_id and project_id could be beneficial for performance
CREATE INDEX "user_project_role_link_user_id_idx" ON "public"."user_project_role_link" USING btree ("user_id");
CREATE INDEX "user_project_role_link_project_id_idx" ON "public"."user_project_role_link" USING btree ("project_id");
-- 
-- user_property_role_link
-- Index for user_id and property_id could be beneficial for performance
CREATE INDEX "user_property_role_link_user_id_idx" ON "public"."user_property_role_link" USING btree ("user_id");
CREATE INDEX "user_property_role_link_property_id_idx" ON "public"."user_property_role_link" USING btree ("property_id");