import { supabaseAuthProvider } from "ra-supabase";
import { AuthProvider } from "react-admin";

import { supabaseClient } from "./supabase";
import { UserRoleEnum } from "../types";

export const authProvider: AuthProvider = supabaseAuthProvider(supabaseClient, {
  getIdentity: async (user) => {
    const { data } = await supabaseClient.from("user_profile").select().match({ id: user.id }).single();

    localStorage.setItem("permissions", data?.role ?? "");

    return {
      id: user.id,
      fullName: data ? `${data.first_name} ${data.last_name}` : user.email,
      profile: data,
      email: user.email,
    };
  },
});

authProvider.getPermissions = async () => {
  const permissions: UserRoleEnum | undefined = localStorage.getItem("permissions") as UserRoleEnum | undefined;

  return permissions;
};
