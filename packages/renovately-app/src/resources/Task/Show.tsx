import { Show, SimpleShowLayout, TextField } from "react-admin";
import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const TaskShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="description" />
      <PartnerReferenceField source="to_be_completed_by" />
      <TextField source="status" />
      <TextField source="priority" />
      <ProjectReferenceField source="project_id" />
    </SimpleShowLayout>
  </Show>
);
