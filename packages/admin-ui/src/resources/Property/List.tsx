import { Datagrid, List, TextField } from "react-admin";

export const PropertyList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="address" />
      <TextField source="nickname" />
      <TextField source="ownership_type" />
      <TextField source="access_restrictions" />
    </Datagrid>
  </List>
);
