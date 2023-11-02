import { Edit, SimpleForm, TextInput } from "react-admin";

export const PropertyEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="nickname" />
      <TextInput source="address" />
      <TextInput source="ownership_type" />
      <TextInput source="access_restrictions" />
    </SimpleForm>
  </Edit>
);
