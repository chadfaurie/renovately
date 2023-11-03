import { ChipField, Show, SimpleShowLayout, TextField } from "react-admin";

export const PartnerShow = () => (
  <Show>
    <SimpleShowLayout>
      <TextField source="name" />
      <TextField source="description" />
      <ChipField source="partner_type" />
    </SimpleShowLayout>
  </Show>
);
