import { ChipField, Datagrid, List, TextField } from "react-admin";

import { relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin/multiLinkField";

export const ProgressUpdateList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="description" />
      <ChipField source="type" />
      <MultiLinkField source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
    </Datagrid>
  </List>
);
