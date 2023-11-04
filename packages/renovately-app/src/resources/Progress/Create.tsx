import { Create, SimpleForm, TextInput } from "react-admin";

export const ProgressUpdateCreate = () => (
  <Create>
    <SimpleForm>
      <TextInput source="update_description" />
      <TextInput source="related_entity_id" />
      <TextInput source="update_type" />
      <TextInput source="uploaded_by" />
    </SimpleForm>
  </Create>
);
