import { ChipField, Datagrid, DateField, EmailField, List, TextField } from "react-admin";

import { InvitationStatusField, relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin";

export const InvitationList = () => (
  <List>
    <Datagrid
      rowClick="show"
      // rowClick={(id) => `/invitation/${id}/show`}
    >
      <MultiLinkField source="entity_id" referenceField="type" relatedSource={relatedSourceMap} />
      <EmailField source="email" />
      <ChipField source="role" />
      <ChipField source="type" />
      <DateField source="expires_at" showTime />
      <TextField source="accepted_at" showTime />

      <InvitationStatusField label="Status" />
    </Datagrid>
  </List>
);
