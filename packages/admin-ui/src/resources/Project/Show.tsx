import { ChipField, DateField, Show, Tab, TabbedShowLayout, TextField } from "react-admin";

import { UpdatesTab } from "../../components/generic";
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
        <UpdatesTab type="area" />
      </Tab>
    </TabbedShowLayout>
  </Show>
);
