import React from "react";
import ReactDOM from "react-dom/client";
import { MyAdmin } from "./App.tsx";
import { CssBaseline } from "@mui/material";

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <CssBaseline />
    <MyAdmin />
  </React.StrictMode>
);
