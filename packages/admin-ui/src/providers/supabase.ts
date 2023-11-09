// in supabase.js
import { createClient } from "@supabase/supabase-js";

import { Database } from "../types";

export const supabase_uri = process.env.SUPABASE_URL ?? "";
export const supabase_anonKey = process.env.SUPABASE_ANON_KEY ?? "";

export const supabaseClient = createClient<Database>(supabase_uri, supabase_anonKey);
