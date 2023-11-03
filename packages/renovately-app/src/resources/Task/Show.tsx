import { ReferenceField, Show, SimpleShowLayout, TextField } from "react-admin";
import { PartnerReferenceField } from "../../references";

export const TaskShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="description" />
      <PartnerReferenceField source="to_be_completed_by" />
      <TextField source="status" />
      <TextField source="priority" />
      <ReferenceField source="project_id" reference="projects" />
    </SimpleShowLayout>
  </Show>
);
