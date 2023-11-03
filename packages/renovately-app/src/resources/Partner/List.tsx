import { ChipField, Datagrid, List, TextField } from "react-admin";

export const PartnerList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="name" />
      <TextField source="description" />
      <ChipField source="partner_type" />
    </Datagrid>
  </List>
);
