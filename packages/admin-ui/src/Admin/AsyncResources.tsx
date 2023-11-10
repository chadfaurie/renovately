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
import { AdminUI, Resource, CustomRoutes, Loading, usePermissions, useAuthState } from "react-admin";
import { Route } from "react-router-dom";

import MyLayout from "../components/layout";
import Dashboard from "../dashboard";
import { useUserHasProfile } from "../hooks";
import MyProfile from "../pages/MyProfile";
import Test from "../pages/Test";
import NewUserProfile from "../pages/UserProfile";
import { AreaCreate, AreaEdit, AreaList, AreaShow } from "../resources/Area";
import { InvitationCreate, InvitationList, InvitationShow } from "../resources/Invitation";
import { PartnerCreate, PartnerEdit, PartnerList, PartnerShow } from "../resources/Partner";
import {
  ProgressUpdateCreate,
  ProgressUpdateEdit,
  ProgressUpdateList,
  ProgressUpdateShow,
} from "../resources/Progress";
import { ProgressUpdateImageCreate, ProgressUpdateImageShow } from "../resources/ProgressImages";
import { ProjectCreate, ProjectEdit, ProjectList, ProjectShow } from "../resources/Project";
import { ProjectLinkCreate } from "../resources/ProjectLink";
import { PropertyList, PropertyEdit, PropertyShow, PropertyCreate } from "../resources/Property";
import { PropertyLinkCreate } from "../resources/PropertyLink";
import { TaskCreate, TaskEdit, TaskList, TaskShow } from "../resources/Task";
import { UserProfileCreate, UserProfileEdit, UserProfileList, UserProfileShow } from "../resources/Users";

const FullLoading = () => {
  return <Loading sx={{ height: "100vh" }} />;
};

function AsyncResources() {
  const { permissions } = usePermissions();
  const { hasProfile, isLoading, error } = useUserHasProfile();
  const { authenticated } = useAuthState();

  if (!error && isLoading) {
    return <FullLoading />;
  }

  // If the user does not have a profile, force them to create one
  if (!hasProfile && authenticated && !error) {
    return <AdminUI loginPage={LoginPage} ready={NewUserProfile} layout={MyLayout} />;
  }

  return (
    <AdminUI ready={NewUserProfile} loginPage={LoginPage} dashboard={Dashboard} layout={MyLayout}>
      <CustomRoutes noLayout>
        <Route path={SetPasswordPage.path} element={<SetPasswordPage />} />
        <Route path={ForgotPasswordPage.path} element={<ForgotPasswordPage />} />
        <Route path={"/new_profile"} element={<NewUserProfile />} />
      </CustomRoutes>

      <CustomRoutes>
        <Route path={"/test"} element={<Test />} />
        <Route path={"/myProfile"} element={<MyProfile />} />
      </CustomRoutes>

      <Resource
        name="property"
        icon={PropertyIcon}
        list={PropertyList}
        show={PropertyShow}
        edit={PropertyEdit}
        create={PropertyCreate}
      />
      <Resource name="user_property_role_link" create={PropertyLinkCreate} />
      <Resource name="area" icon={AreaIcon} list={AreaList} show={AreaShow} edit={AreaEdit} create={AreaCreate} />
      <Resource
        name="project"
        icon={ProjectIcon}
        list={ProjectList}
        show={ProjectShow}
        edit={ProjectEdit}
        create={ProjectCreate}
      />
      <Resource name="user_project_role_link" create={ProjectLinkCreate} />
      <Resource
        name="partner"
        icon={PartnerIcon}
        list={PartnerList}
        show={PartnerShow}
        edit={PartnerEdit}
        create={PartnerCreate}
      />
      <Resource name="task" icon={TaskIcon} list={TaskList} show={TaskShow} edit={TaskEdit} create={TaskCreate} />
      <Resource
        name="progress"
        icon={ProgressUpdateIcon}
        list={ProgressUpdateList}
        show={ProgressUpdateShow}
        edit={ProgressUpdateEdit}
        create={ProgressUpdateCreate}
      />
      <Resource name="progress_update_images" show={ProgressUpdateImageShow} create={ProgressUpdateImageCreate} />

      <Resource name="invite_view" list={InvitationList} show={InvitationShow} create={InvitationCreate} />

      {permissions === "admin" && (
        <Resource
          name="user_profile"
          options={{
            label: "Invitation",
          }}
          icon={UserIcon}
          list={UserProfileList}
          show={UserProfileShow}
          edit={UserProfileEdit}
          create={UserProfileCreate}
        />
      )}
    </AdminUI>
  );
}

export default AsyncResources;
