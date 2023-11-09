import { Edit, SimpleForm, TextInput, required } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="description" validate={[required()]} />
      <UpdateTypeSelect />
      <MultiLinkInput source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Edit>
);
