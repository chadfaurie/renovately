const cfg = {
  root: true,
  env: { browser: true, es2020: true },
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:react-hooks/recommended",
    "plugin:prettier/recommended",
    "plugin:import/recommended",
  ],
  ignorePatterns: ["dist", ".eslintrc.cjs"],
  parser: "@typescript-eslint/parser",
  plugins: ["react-refresh"],
  settings: {
    "import/parsers": {
      "@typescript-eslint/parser": [".ts", ".tsx"],
    },
    "import/resolver": {
      typescript: {
        project: ["tsconfig.json", "packages/**/tsconfig.json"],
      },
      node: {
        project: ["tsconfig.json", "packages/**/tsconfig.json"],
      },
    },
  },
  rules: {
    "react-refresh/only-export-components": ["warn", { allowConstantExport: true }],

    "import/no-duplicates": "error",
    "import/order": [
      "warn",
      {
        groups: [["builtin", "external"], "internal", ["parent", "index", "sibling"]],
        "newlines-between": "always",
        alphabetize: {
          order: "asc",
        },
      },
    ],
  },

  parserOptions: {
    tsconfigRootDir: __dirname,
    project: ["./tsconfig.eslint.json", "./packages/*/tsconfig.json"],
  },
};

module.exports = cfg;
