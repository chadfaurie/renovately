import { Suspense, lazy } from "react";
import { AdminContext, Loading } from "react-admin";
import { BrowserRouter } from "react-router-dom";

import { authProvider, dataProvider, i18nProvider } from "../providers";
import { theme } from "../theme";

const AsyncResources = lazy(() => import("./AsyncResources"));

const MyAdmin = () => (
  <BrowserRouter>
    <AdminContext dataProvider={dataProvider} authProvider={authProvider} theme={theme} i18nProvider={i18nProvider}>
      <Suspense fallback={<Loading sx={{ height: "100%" }} />}>
        <AsyncResources />
      </Suspense>
    </AdminContext>
  </BrowserRouter>
);

export default MyAdmin;
