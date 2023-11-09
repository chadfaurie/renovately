import { DateInput, Edit, SimpleForm, TextInput, required } from "react-admin";

export const ProjectEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="title" validate={[required()]} />
      <TextInput source="status" validate={[required()]} />
      <TextInput source="description" />
      <DateInput source="start_date" />
      <DateInput source="estimated_end_date" />
    </SimpleForm>
  </Edit>
);
