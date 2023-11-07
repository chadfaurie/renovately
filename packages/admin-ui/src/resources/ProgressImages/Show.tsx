import { DateField, ImageField, ReferenceField, Show, SimpleShowLayout, TextField } from "react-admin";

export const ProgressUpdateImageShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="id" />
      <DateField source="created_at" />
      <TextField source="image_url" />
      <ImageField source="image_url" />
      <ReferenceField source="progress_update_id" reference="progress" />
    </SimpleShowLayout>
  </Show>
);
