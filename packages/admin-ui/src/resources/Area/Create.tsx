import { RichTextInput } from "ra-input-rich-text";
import { Create, SimpleForm, TextInput, required } from "react-admin";

import { useCreateParams } from "../../hooks";
import { PropertyReferenceInput } from "../../references";

export const AreaCreate = () => {
  const { id, redirect } = useCreateParams("property_id", "property");

  return (
    <Create redirect={redirect ?? "show"}>
      <SimpleForm defaultValues={{ property_id: id }}>
        <TextInput source="name" validate={[required()]} />
        <TextInput source="type" validate={[required()]} />
        <PropertyReferenceInput source="property_id" validate={[required()]} />
        <RichTextInput source="description" />
        <TextInput source="dimensions" />
      </SimpleForm>
    </Create>
  );
};
