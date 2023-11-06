// in App.js
import { Admin, CustomRoutes, Resource } from "react-admin";
import {
  Home as PropertyIcon,
  Room as AreaIcon,
  PropaneTank as ProjectIcon,
  People as PartnerIcon,
  Task as TaskIcon,
  ArrowForward as ProgressUpdateIcon,
  PersonAdd as UserIcon,
} from "@mui/icons-material";
import { LoginPage, SetPasswordPage, ForgotPasswordPage } from "ra-supabase";
import { BrowserRouter, Route } from "react-router-dom";
import { dataProvider } from "./providers";
import { authProvider } from "./providers";
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
import {
  ProgressUpdateCreate,
  ProgressUpdateEdit,
  ProgressUpdateList,
  ProgressUpdateShow,
} from "./resources/Progress";
import {
  ProgressUpdateImageCreate,
  ProgressUpdateImageShow,
} from "./resources/ProgressImages";

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
        icon={PropertyIcon}
        list={PropertyList}
        show={PropertyShow}
        edit={PropertyEdit}
        create={PropertyCreate}
      />
      <Resource
        name="project"
        icon={ProjectIcon}
        list={ProjectList}
        show={ProjectShow}
        edit={ProjectEdit}
        create={ProjectCreate}
      />
      <Resource
        name="partner"
        icon={PartnerIcon}
        list={PartnerList}
        show={PartnerShow}
        edit={PartnerEdit}
        create={PartnerCreate}
      />
      <Resource
        name="task"
        icon={TaskIcon}
        list={TaskList}
        show={TaskShow}
        edit={TaskEdit}
        create={TaskCreate}
      />
      <Resource
        name="area"
        icon={AreaIcon}
        list={AreaList}
        show={AreaShow}
        edit={AreaEdit}
        create={AreaCreate}
      />
      <Resource
        name="progress_updates"
        icon={ProgressUpdateIcon}
        list={ProgressUpdateList}
        show={ProgressUpdateShow}
        edit={ProgressUpdateEdit}
        create={ProgressUpdateCreate}
      />
      <Resource
        name="progress_update_images"
        show={ProgressUpdateImageShow}
        create={ProgressUpdateImageCreate}
      />
      {/* User Management */}
      <Resource
        name="user_profile"
        icon={UserIcon}
        list={UserProfileList}
        show={UserProfileShow}
        edit={UserProfileEdit}
        create={UserProfileCreate}
      />
    </Admin>
  </BrowserRouter>
);
