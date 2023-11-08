import { ChipField, Datagrid, List, TextField } from "react-admin";

export const UserProfileList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="first_name" />
      <TextField source="last_name" />
      <TextField source="email" />
      <ChipField source="role" />
    </Datagrid>
  </List>
);
