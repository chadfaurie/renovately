// in App.js
import { Admin, CustomRoutes, Resource, ListGuesser } from "react-admin";
import { LoginPage, SetPasswordPage, ForgotPasswordPage } from "ra-supabase";
import { BrowserRouter, Route } from "react-router-dom";
import { dataProvider } from "./dataProvider";
import { authProvider } from "./authProvider";

export const MyAdmin = () => (
  <BrowserRouter>
    <Admin
      dataProvider={dataProvider}
      authProvider={authProvider}
      loginPage={LoginPage}
      dashboard={() => <></>}
    >
      <CustomRoutes noLayout>
        <Route path={SetPasswordPage.path} element={<SetPasswordPage />} />
        <Route
          path={ForgotPasswordPage.path}
          element={<ForgotPasswordPage />}
        />
      </CustomRoutes>

      <Resource name="property" list={ListGuesser} />
      <Resource name="project" list={ListGuesser} />
    </Admin>
  </BrowserRouter>
);
