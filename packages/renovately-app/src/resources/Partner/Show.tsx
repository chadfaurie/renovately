import {
  ChipField,
  Datagrid,
  DateField,
  ReferenceManyField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
} from "react-admin";
import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const PartnerShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="summary">
        <TextField source="name" />
        <TextField source="description" />
        <ChipField source="partner_type" />
      </Tab>
      <Tab label="projects">
        <ReferenceManyField
          label={false}
          reference="partner_project_link"
          source="id"
          target="partner_id"
        >
          <Datagrid>
            <PartnerReferenceField source="partner_id" label="Title" />
            <ChipField source="status" />
            <ProjectReferenceField source="project_id" label="Project" />
            <DateField source="assigned_date" />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
