import { Create, DateInput, SimpleForm, TextInput } from "react-admin";
import { PropertyReferenceInput } from "../../references/inputs";

export const ProjectCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="title" />
      <TextInput source="description" />
      <DateInput source="start_date" />
      <DateInput source="estimated_end_date" />
      <TextInput source="status" />
      <PropertyReferenceInput source="property_id" />
    </SimpleForm>
  </Create>
);
