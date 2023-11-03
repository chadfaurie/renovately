import { Datagrid, List, ReferenceField, TextField } from "react-admin";
import { PartnerReferenceField } from "../../references";

export const TaskList = () => (
  <List>
    <Datagrid rowClick="edit">
      <TextField source="description" />
      <PartnerReferenceField source="to_be_completed_by" />
      <TextField source="status" />
      <TextField source="priority" />
      <ReferenceField source="project_id" reference="projects" />
    </Datagrid>
  </List>
);
