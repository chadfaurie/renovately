import { Create, SimpleForm, TextInput } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="description" />
      {/* <TextInput source="related_entity_id" /> */}
      <UpdateTypeSelect />
      <MultiLinkInput source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Create>
);
