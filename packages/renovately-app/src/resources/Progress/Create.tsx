import { Create, SimpleForm, TextInput } from "react-admin";

import { UpdateTypeSelect } from "./utils";

export const ProgressUpdateCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="update_description" />
      <TextInput source="related_entity_id" />
      <UpdateTypeSelect />
      <TextInput source="uploaded_by" />
    </SimpleForm>
  </Create>
);
