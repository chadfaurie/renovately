import { ChipField, DateField, EmailField, Show, SimpleShowLayout, TextField } from "react-admin";

import { InvitationStatusField, relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin";

export const InvitationShow = () => (
  <Show>
    <SimpleShowLayout>
      <MultiLinkField source="entity_id" referenceField="type" relatedSource={relatedSourceMap} />
      <TextField source="token" />
      <EmailField source="email" />
      <ChipField source="role" />
      <ChipField source="type" />
      <DateField source="expires_at" showTime />
      <TextField source="accepted_at" />
      <InvitationStatusField label="Status" />
    </SimpleShowLayout>
  </Show>
);
