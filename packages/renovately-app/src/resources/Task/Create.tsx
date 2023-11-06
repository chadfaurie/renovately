import { Create, SimpleForm, TextInput } from "react-admin";

import { PartnerReferenceInput, ProjectReferenceInput } from "../../references";

export const TaskCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="description" />
      <PartnerReferenceInput source="to_be_completed_by" />
      <TextInput source="status" />
      <TextInput source="priority" />
      <ProjectReferenceInput source="project_id" />
    </SimpleForm>
  </Create>
);
