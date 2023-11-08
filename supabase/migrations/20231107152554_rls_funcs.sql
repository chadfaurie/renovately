-- 
CREATE OR REPLACE FUNCTION getUserIsAdmin(user_id uuid) RETURNS boolean AS $$
DECLARE is_admin boolean;
BEGIN
SELECT EXISTS (
        SELECT 1
        FROM public.user_profile AS up
        WHERE up.role = 'admin'::user_role
            AND up.id = user_id
    ) INTO is_admin;
RETURN is_admin;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
-- 
CREATE OR REPLACE FUNCTION userHasProfile(user_id uuid) RETURNS boolean AS $$
DECLARE is_admin boolean;
BEGIN
SELECT EXISTS (
        SELECT 1
        FROM public.user_profile AS up
        WHERE up.id = user_id
    ) INTO is_admin;
RETURN is_admin;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
-- 
CREATE OR REPLACE FUNCTION getUserPropertyRole(user_id_arg uuid, property_id_arg uuid) RETURNS user_role AS $$
DECLARE userRole user_role;
BEGIN
SELECT (
        SELECT link.role
        FROM public.user_property_role_link AS link
        WHERE link.property_id = property_id_arg
            AND link.user_id = user_id_arg
    ) INTO userRole;
RETURN userRole;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
-- 
CREATE OR REPLACE FUNCTION getUserProjectRole(user_id_arg uuid, project_id_arg uuid) RETURNS user_role AS $$
DECLARE userRole user_role;
BEGIN
SELECT (
        SELECT link.role
        FROM public.user_project_role_link AS link
        WHERE link.project_id = project_id_arg
            AND link.user_id = user_id_arg
    ) INTO userRole;
RETURN userRole;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;