import { ChipField, Datagrid, DateField, List, RichTextField, TextField } from "react-admin";

import { PropertyReferenceField } from "../../references";

export const ProjectList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="title" />
      <RichTextField source="description" />
      <DateField source="start_date" />
      <DateField source="estimated_end_date" />
      <ChipField source="status" />
      <PropertyReferenceField source="property_id" />
    </Datagrid>
  </List>
);
