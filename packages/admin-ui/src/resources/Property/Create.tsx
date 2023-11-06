import { Create, SimpleForm, TextInput } from "react-admin";

export const PropertyCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="nickname" />
      <TextInput source="address" />
      <TextInput source="ownership_type" />
      <TextInput source="access_restrictions" />
    </SimpleForm>
  </Create>
);
