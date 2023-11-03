// in App.js
import { Admin, CustomRoutes, Resource } from "react-admin";
import { LoginPage, SetPasswordPage, ForgotPasswordPage } from "ra-supabase";
import { BrowserRouter, Route } from "react-router-dom";
import { dataProvider } from "./dataProvider";
import { authProvider } from "./authProvider";
import Dashboard from "./dashboard";
import {
  PropertyList,
  PropertyEdit,
  PropertyShow,
  PropertyCreate,
} from "./resources/Property";
import {
  ProjectCreate,
  ProjectEdit,
  ProjectList,
  ProjectShow,
} from "./resources/Project";

export const MyAdmin = () => (
  <BrowserRouter>
    <Admin
      dataProvider={dataProvider}
      authProvider={authProvider}
      loginPage={LoginPage}
      dashboard={Dashboard}
    >
      <CustomRoutes noLayout>
        <Route path={SetPasswordPage.path} element={<SetPasswordPage />} />
        <Route
          path={ForgotPasswordPage.path}
          element={<ForgotPasswordPage />}
        />
      </CustomRoutes>

      <Resource
        name="property"
        list={PropertyList}
        show={PropertyShow}
        edit={PropertyEdit}
        create={PropertyCreate}
      />
      <Resource
        name="project"
        list={ProjectList}
        show={ProjectShow}
        edit={ProjectEdit}
        create={ProjectCreate}
      />
    </Admin>
  </BrowserRouter>
);
