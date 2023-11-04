import { Create, ReferenceInput, SimpleForm, TextInput } from "react-admin";

export const TaskCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="description" />
      <TextInput source="to_be_completed_by" />
      <TextInput source="status" />
      <TextInput source="priority" />
      <ReferenceInput source="project_id" reference="projects" />
    </SimpleForm>
  </Create>
);
