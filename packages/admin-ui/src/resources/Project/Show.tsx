import {
  ChipField,
  Datagrid,
  DateField,
  ReferenceManyField,
  Show,
  ShowButton,
  Tab,
  TabbedShowLayout,
  TextField,
} from "react-admin";

import { PropertyReferenceField } from "../../references";

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
        <ReferenceManyField
          label={false}
          reference="progress_updates"
          source="id"
          target="related_entity_id"
          filter={{
            update_type: "project",
          }}
        >
          <Datagrid bulkActionButtons={false}>
            <TextField source="update_description" />
            <DateField source="created_at" />
            <ShowButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
