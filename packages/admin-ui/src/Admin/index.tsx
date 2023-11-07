import { AdminContext, defaultI18nProvider } from "react-admin";
import { BrowserRouter } from "react-router-dom";

import { AsyncResources } from "./AsyncResources";
import { authProvider, dataProvider } from "../providers";
import { theme } from "../theme";

export const MyAdmin = () => (
  <BrowserRouter>
    <AdminContext
      dataProvider={dataProvider}
      authProvider={authProvider}
      theme={theme}
      i18nProvider={defaultI18nProvider}
    >
      <AsyncResources />
    </AdminContext>
  </BrowserRouter>
);
