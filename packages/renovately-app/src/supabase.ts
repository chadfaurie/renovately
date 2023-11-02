// in supabase.js
import { createClient } from "@supabase/supabase-js";

export const supabase_uri = process.env.SUPABASE_URL ?? "";
export const supabase_anonKey = process.env.SUPABASE_ANON_KEY ?? "";

export const supabaseClient = createClient(supabase_uri, supabase_anonKey);
