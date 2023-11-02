// import react from "@vitejs/plugin-react";
import react from "@vitejs/plugin-react-swc";
import { defineConfig, loadEnv } from "vite";

// https://vitejs.dev/config/
export default ({ mode }) => {
  // Load app-level env vars to node-level env vars.
  // process.env = { ...process.env, ...loadEnv(mode, process.cwd()) };

  // eslint-disable-next-line no-undef
  const { SUPABASE_URL, SUPABASE_ANON_KEY } = loadEnv(mode, process.cwd(), "");

  // eslint-disable-next-line no-undef
  console.log(mode, process.cwd(), { SUPABASE_URL, SUPABASE_ANON_KEY });

  return defineConfig({
    plugins: [react()],
    define: {
      // eslint-disable-next-line no-undef
      "process.env": { ...process.env, SUPABASE_URL, SUPABASE_ANON_KEY },
    },
    server: {
      host: true,
    },
    base: "./",
  });
};
