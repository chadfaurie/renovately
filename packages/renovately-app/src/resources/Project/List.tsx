import { Datagrid, DateField, List, TextField } from "react-admin";

export const ProjectList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="id" />
      <DateField source="created_at" />
      <TextField source="title" />
      <TextField source="description" />
      <DateField source="start_date" />
      <DateField source="estimated_end_date" />
      <TextField source="status" />
    </Datagrid>
  </List>
);
