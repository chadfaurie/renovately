import { Create, ReferenceInput, SimpleForm, TextInput, ImageInput } from "react-admin";

export const ProgressUpdateImageCreate = () => (
  <Create>
    <SimpleForm>
      <TextInput source="image_url" />
      <ImageInput source="image_url" />
      <ReferenceInput source="progress_update_id" reference="progress_updates" />
    </SimpleForm>
  </Create>
);
