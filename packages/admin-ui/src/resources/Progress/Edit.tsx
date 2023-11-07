import { Edit, SimpleForm, TextInput } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="update_description" />
      <UpdateTypeSelect />
      <MultiLinkInput source="related_entity_id" referenceField="update_type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Edit>
);
