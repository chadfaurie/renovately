import { RichTextInput } from "ra-input-rich-text";
import { Create, DateInput, SimpleForm, TextInput, required } from "react-admin";

import { useCreateParamsField } from "../../hooks";
import { PropertyReferenceInput } from "../../references/inputs";

export const ProjectCreate = () => {
  const { id, redirect } = useCreateParamsField("property_id", "property");

  return (
    <Create redirect={redirect ?? "show"}>
      <SimpleForm defaultValues={{ property_id: id }}>
        <TextInput source="title" validate={[required()]} />
        <PropertyReferenceInput source="property_id" validate={[required()]} />
        <TextInput source="status" validate={[required()]} />
        <RichTextInput source="description" />
        <DateInput source="start_date" />
        <DateInput source="estimated_end_date" />
      </SimpleForm>
    </Create>
  );
};
