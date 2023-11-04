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
import { theme } from "./theme";
import {
  PartnerCreate,
  PartnerEdit,
  PartnerList,
  PartnerShow,
} from "./resources/Partner";
import { TaskCreate, TaskEdit, TaskList, TaskShow } from "./resources/Task";
import { AreaCreate, AreaEdit, AreaList, AreaShow } from "./resources/Area";
import {
  UserProfileCreate,
  UserProfileEdit,
  UserProfileList,
  UserProfileShow,
} from "./resources/Users";

export const MyAdmin = () => (
  <BrowserRouter>
    <Admin
      dataProvider={dataProvider}
      authProvider={authProvider}
      loginPage={LoginPage}
      dashboard={Dashboard}
      theme={theme}
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
      <Resource
        name="partner"
        list={PartnerList}
        show={PartnerShow}
        edit={PartnerEdit}
        create={PartnerCreate}
      />
      <Resource
        name="task"
        list={TaskList}
        show={TaskShow}
        edit={TaskEdit}
        create={TaskCreate}
      />
      <Resource
        name="area"
        list={AreaList}
        show={AreaShow}
        edit={AreaEdit}
        create={AreaCreate}
      />
      {/* User Management */}
      <Resource
        name="user_profile"
        list={UserProfileList}
        show={UserProfileShow}
        edit={UserProfileEdit}
        create={UserProfileCreate}
      />
    </Admin>
  </BrowserRouter>
);
