import { Create, SimpleForm, TextInput, required } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="description" validate={[required()]} />
      {/* <TextInput source="related_entity_id" /> */}
      <UpdateTypeSelect validate={[required()]} />
      <MultiLinkInput source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Create>
);
