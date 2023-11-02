import { supabaseDataProvider } from "ra-supabase";
import { supabaseClient, supabase_anonKey, supabase_uri } from "./supabase";

export const dataProvider = supabaseDataProvider({
  instanceUrl: supabase_uri,
  apiKey: supabase_anonKey,
  supabaseClient,
});
