import { ChipField, Datagrid, List, RichTextField, TextField } from "react-admin";

import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const TaskList = () => (
  <List>
    <Datagrid rowClick="show">
      <RichTextField source="description" />
      <PartnerReferenceField source="to_be_completed_by" />
      <ChipField source="status" />
      <TextField source="priority" />
      <ProjectReferenceField source="project_id" />
    </Datagrid>
  </List>
);
