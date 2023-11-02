import { Show, SimpleShowLayout, TextField } from "react-admin";

export const PropertyShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="nickname" />
      <TextField source="address" />
      <TextField source="ownership_type" />
      <TextField source="access_restrictions" />
    </SimpleShowLayout>
  </Show>
);
