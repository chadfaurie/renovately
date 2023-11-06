import { Datagrid, List, TextField } from "react-admin";

export const ProgressUpdateList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="update_description" />
      <TextField source="related_entity_id" />
      <TextField source="update_type" />
      <TextField source="uploaded_by" />
    </Datagrid>
  </List>
);
