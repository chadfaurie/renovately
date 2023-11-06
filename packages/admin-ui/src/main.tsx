/* eslint-disable import/no-named-as-default-member */
/* eslint-disable import/default */
import { CssBaseline } from "@mui/material";
import React from "react";
import ReactDOM from "react-dom/client";

import { MyAdmin } from "./App.tsx";

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <CssBaseline />
    <MyAdmin />
  </React.StrictMode>,
);
