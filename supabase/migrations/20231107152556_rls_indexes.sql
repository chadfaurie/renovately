-- 
-- User Profile
CREATE INDEX idx_user_profile_admin ON public.user_profile (role, id);
-- 
-- User Property Role Link
CREATE INDEX idx_user_property_role_link ON public.user_property_role_link (user_id, property_id);
-- 
-- User Project Role Link
CREATE INDEX idx_user_project_role_link ON public.user_project_role_link (user_id, project_id);