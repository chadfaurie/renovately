import { Create, SimpleForm, TextInput, required } from "react-admin";

export const PropertyCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="address" validate={[required()]} />
      <TextInput source="nickname" />
      <TextInput source="ownership_type" />
      <TextInput source="access_restrictions" />
    </SimpleForm>
  </Create>
);
