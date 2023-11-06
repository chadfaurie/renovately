import { supabaseDataProvider } from "ra-supabase";

import { supabaseClient, supabase_anonKey, supabase_uri } from "./supabase";
import { addUploadFeature } from "./uploads";

export const dataProvider = addUploadFeature(
  supabaseDataProvider({
    instanceUrl: supabase_uri,
    apiKey: supabase_anonKey,
    supabaseClient,
  }),
);
