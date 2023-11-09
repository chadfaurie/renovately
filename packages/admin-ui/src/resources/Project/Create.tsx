import { Create, DateInput, SimpleForm, TextInput, required } from "react-admin";

import { PropertyReferenceInput } from "../../references/inputs";

export const ProjectCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="title" validate={[required()]} />
      <PropertyReferenceInput source="property_id" validate={[required()]} />
      <TextInput source="status" validate={[required()]} />
      <TextInput source="description" />
      <DateInput source="start_date" />
      <DateInput source="estimated_end_date" />
    </SimpleForm>
  </Create>
);
