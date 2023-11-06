import { Datagrid, List, TextField } from "react-admin";

export const PropertyList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="nickname" />
      <TextField source="address" />
      <TextField source="ownership_type" />
      <TextField source="access_restrictions" />
    </Datagrid>
  </List>
);
