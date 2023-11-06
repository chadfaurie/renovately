// in App.js
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
import { Admin, CustomRoutes, Resource } from "react-admin";
import { BrowserRouter, Route } from "react-router-dom";

import Dashboard from "./dashboard";
import { authProvider, dataProvider } from "./providers";
import { AreaCreate, AreaEdit, AreaList, AreaShow } from "./resources/Area";
import { PartnerCreate, PartnerEdit, PartnerList, PartnerShow } from "./resources/Partner";
import { ProgressUpdateCreate, ProgressUpdateEdit, ProgressUpdateList, ProgressUpdateShow } from "./resources/Progress";
import { ProgressUpdateImageCreate, ProgressUpdateImageShow } from "./resources/ProgressImages";
import { ProjectCreate, ProjectEdit, ProjectList, ProjectShow } from "./resources/Project";
import { PropertyList, PropertyEdit, PropertyShow, PropertyCreate } from "./resources/Property";
import { TaskCreate, TaskEdit, TaskList, TaskShow } from "./resources/Task";
import { UserProfileCreate, UserProfileEdit, UserProfileList, UserProfileShow } from "./resources/Users";
import { theme } from "./theme";

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
        <Route path={ForgotPasswordPage.path} element={<ForgotPasswordPage />} />
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
      <Resource name="task" icon={TaskIcon} list={TaskList} show={TaskShow} edit={TaskEdit} create={TaskCreate} />
      <Resource name="area" icon={AreaIcon} list={AreaList} show={AreaShow} edit={AreaEdit} create={AreaCreate} />
      <Resource
        name="progress_updates"
        icon={ProgressUpdateIcon}
        list={ProgressUpdateList}
        show={ProgressUpdateShow}
        edit={ProgressUpdateEdit}
        create={ProgressUpdateCreate}
      />
      <Resource name="progress_update_images" show={ProgressUpdateImageShow} create={ProgressUpdateImageCreate} />
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
