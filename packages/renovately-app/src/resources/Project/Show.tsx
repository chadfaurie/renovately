import { ChipField, DateField, Show, SimpleShowLayout, TextField } from "react-admin";

import { PropertyReferenceField } from "../../references";

export const ProjectShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="title" />
      <TextField source="description" />
      <DateField source="start_date" />
      <DateField source="estimated_end_date" />
      <ChipField source="status" />
      <PropertyReferenceField source="property_id" />
    </SimpleShowLayout>
  </Show>
);
