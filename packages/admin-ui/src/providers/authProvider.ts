import { supabaseAuthProvider } from "ra-supabase";

import { supabaseClient } from "./supabase";

export const authProvider = supabaseAuthProvider(supabaseClient, {
  getIdentity: async (user) => {
    const { data } = await supabaseClient
      .from("user_profile")
      .select("id, first_name, last_name")
      .match({ id: user.id })
      .single();

    return {
      id: user.id,
      fullName: data ? `${data.first_name} ${data.last_name}` : user.email,
      profile: data,
      email: user.email,
    };
  },
});
