import { DateField, Show, SimpleShowLayout, TextField } from "react-admin";

export const ProjectShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="title" />
      <TextField source="description" />
      <DateField source="start_date" />
      <DateField source="estimated_end_date" />
      <TextField source="status" />
    </SimpleShowLayout>
  </Show>
);
