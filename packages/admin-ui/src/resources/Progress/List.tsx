import { ChipField, Datagrid, List, TextField } from "react-admin";

import { relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin/multiLinkField";

export const ProgressUpdateList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="update_description" />
      <TextField source="related_entity_id" />
      <MultiLinkField source="related_entity_id" referenceField="update_type" relatedSource={relatedSourceMap} />
      <ChipField source="update_type" />
    </Datagrid>
  </List>
);
