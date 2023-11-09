import { DateField, ImageField, Show, SimpleShowLayout } from "react-admin";

import { ProgressUpdateReferenceField } from "../../references";

export const ProgressUpdateImageShow = () => (
  <Show>
    <SimpleShowLayout>
      <ProgressUpdateReferenceField source="progress_update_id" />
      <DateField source="created_at" showTime />
      {/* <TextField source="image_url" /> */}
      <ImageField source="image_url" />
    </SimpleShowLayout>
  </Show>
);
