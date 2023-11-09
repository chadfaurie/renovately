import { ChipField, Datagrid, List, RichTextField, TextField } from "react-admin";

import { PropertyReferenceField } from "../../references";

export const AreaList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="name" />
      <ChipField source="type" />
      <PropertyReferenceField source="property_id" />
      <TextField source="dimensions" />
      <RichTextField source="description" />
    </Datagrid>
  </List>
);
