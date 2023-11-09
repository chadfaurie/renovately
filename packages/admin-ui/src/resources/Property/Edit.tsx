import { Edit, SimpleForm, TextInput, required } from "react-admin";

export const PropertyEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="address" validate={[required()]} />
      <TextInput source="nickname" />
      <TextInput source="ownership_type" />
      <TextInput source="access_restrictions" />
    </SimpleForm>
  </Edit>
);
