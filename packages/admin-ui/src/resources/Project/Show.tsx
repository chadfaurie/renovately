import {
  ChipField,
  Datagrid,
  DateField,
  DeleteWithConfirmButton,
  ReferenceManyField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
} from "react-admin";

import { UpdatesTab } from "../../components/generic";
import { ProjectReferenceField, PropertyReferenceField } from "../../references";

export const ProjectShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="title" />
        <TextField source="description" />
        <DateField source="start_date" />
        <DateField source="estimated_end_date" />
        <ChipField source="status" />
        <PropertyReferenceField source="property_id" />
      </Tab>
      <Tab label="Updates">
        <UpdatesTab type="area" />
      </Tab>
      <Tab label="Access">
        <ReferenceManyField label={false} reference="user_project_role_link" source="id" target="project_id">
          <Datagrid bulkActionButtons={false}>
            <ProjectReferenceField source="project_id" />
            <ChipField source="role" />
            <DeleteWithConfirmButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
