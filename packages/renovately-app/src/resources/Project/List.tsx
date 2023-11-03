import { Datagrid, DateField, List, TextField } from "react-admin";
import { PropertyReferenceField } from "../../references";

export const ProjectList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="title" />
      <TextField source="description" />
      <DateField source="start_date" />
      <DateField source="estimated_end_date" />
      <TextField source="status" />
      <PropertyReferenceField source="property_id" />
    </Datagrid>
  </List>
);
