import { Edit, SimpleForm, TextInput } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="description" />
      <UpdateTypeSelect />
      <MultiLinkInput source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Edit>
);
