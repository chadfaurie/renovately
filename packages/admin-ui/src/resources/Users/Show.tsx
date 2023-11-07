import {
  ChipField,
  Datagrid,
  DeleteWithConfirmButton,
  ReferenceManyField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
} from "react-admin";

import { ProjectReferenceField, PropertyReferenceField } from "../../references";

export const UserProfileShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="first_name" />
        <TextField source="last_name" />
        <TextField source="email" />
        <ChipField source="role" />
      </Tab>
      <Tab label="Project Access">
        <ReferenceManyField label={false} reference="user_project_role_link" source="id" target="user_id">
          <Datagrid bulkActionButtons={false}>
            <ProjectReferenceField source="project_id" />
            <ChipField source="role" />
            <DeleteWithConfirmButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
      <Tab label="Property Access">
        <ReferenceManyField label={false} reference="user_property_role_link" source="id" target="user_id">
          <Datagrid bulkActionButtons={false}>
            <PropertyReferenceField source="property_id" />
            <ChipField source="role" />
            <DeleteWithConfirmButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
