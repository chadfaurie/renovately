import {
  ReferenceManyField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
  Datagrid,
  DateField,
} from "react-admin";
import { ProjectReferenceField } from "../../references";

export const PropertyShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="nickname" />
        <TextField source="address" />
        <TextField source="ownership_type" />
        <TextField source="access_restrictions" />
      </Tab>
      <Tab label="Projects">
        <ReferenceManyField
          label={false}
          reference="project"
          source="id"
          target="property_id"
        >
          <Datagrid>
            <ProjectReferenceField source="id" label="Title" />
            <TextField source="description" />
            <DateField source="start_date" />
            <DateField source="estimated_end_date" />
            <TextField source="status" />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
