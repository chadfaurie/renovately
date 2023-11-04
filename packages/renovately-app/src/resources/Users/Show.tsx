import { Show, SimpleShowLayout, TextField } from "react-admin";

export const UserProfileShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="first_name" />
      <TextField source="last_name" />
      <TextField source="email" />
    </SimpleShowLayout>
  </Show>
);
