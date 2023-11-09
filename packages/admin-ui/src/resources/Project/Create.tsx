import { Create, DateInput, SimpleForm, TextInput, required } from "react-admin";

import { useCreateParams } from "../../hooks";
import { PropertyReferenceInput } from "../../references/inputs";

export const ProjectCreate = () => {
  const { id, redirect } = useCreateParams("property_id", "property");

  return (
    <Create redirect={redirect ?? "show"}>
      <SimpleForm defaultValues={{ property_id: id }}>
        <TextInput source="title" validate={[required()]} />
        <PropertyReferenceInput source="property_id" validate={[required()]} />
        <TextInput source="status" validate={[required()]} />
        <TextInput source="description" />
        <DateInput source="start_date" />
        <DateInput source="estimated_end_date" />
      </SimpleForm>
    </Create>
  );
};
