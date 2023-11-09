import { Create, SimpleForm, TextInput, required } from "react-admin";

import { UpdateTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";
import { useCreateParams } from "../../hooks";

export const ProgressUpdateCreate = () => {
  const { id, type } = useCreateParams();

  console.log({
    id,
    type,
  });

  return (
    <Create redirect="show">
      <SimpleForm
        defaultValues={{
          type,
          related_entity_id: id,
        }}
      >
        <TextInput source="description" validate={[required()]} />
        {/* <TextInput source="related_entity_id" /> */}
        <UpdateTypeSelect validate={[required()]} />
        <MultiLinkInput
          source="related_entity_id"
          referenceField="type"
          relatedSource={relatedSourceMap}
          validate={[required()]}
        />
      </SimpleForm>
    </Create>
  );
};
