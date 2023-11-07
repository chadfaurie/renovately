import { Create, SimpleForm, TextInput } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";

export const ProgressUpdateCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="update_description" />
      {/* <TextInput source="related_entity_id" /> */}
      <UpdateTypeSelect />
      <MultiLinkInput source="related_entity_id" referenceField="update_type" relatedSource={relatedSourceMap} />
    </SimpleForm>
  </Create>
);
