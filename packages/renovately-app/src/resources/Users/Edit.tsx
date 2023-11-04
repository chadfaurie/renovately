import { Edit, SimpleForm, TextInput } from "react-admin";

export const UserProfileEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="first_name" />
      <TextInput source="last_name" />
      <TextInput source="email" />
    </SimpleForm>
  </Edit>
);
