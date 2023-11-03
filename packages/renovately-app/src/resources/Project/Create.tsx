import { Create, DateInput, SimpleForm, TextInput } from "react-admin";

export const ProjectCreate = () => (
  <Create>
    <SimpleForm>
      <TextInput source="title" />
      <TextInput source="description" />
      <DateInput source="start_date" />
      <DateInput source="estimated_end_date" />
      <TextInput source="status" />
    </SimpleForm>
  </Create>
);
