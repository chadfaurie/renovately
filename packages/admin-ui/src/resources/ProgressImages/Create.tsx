import { Create, ReferenceInput, SimpleForm, TextInput, ImageInput, AutocompleteInput } from "react-admin";

import { useCreateParams } from "../../hooks";

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export const ProgressUpdateImageCreate = () => {
  const { id, redirect } = useCreateParams("progress_id", "progress");

  return (
    <Create redirect={redirect}>
      <SimpleForm defaultValues={{ progress_update_id: id }}>
        <TextInput source="image_url" />
        <ImageInput source="image_url" />
        <ReferenceInput source="progress_update_id" reference="progress">
          <AutocompleteInput optionText="description" />
        </ReferenceInput>
      </SimpleForm>
    </Create>
  );
};
