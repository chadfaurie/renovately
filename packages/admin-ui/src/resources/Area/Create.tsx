import { Create, SimpleForm, TextInput } from "react-admin";

import { PropertyReferenceField } from "../../references";
import { PropertyReferenceInput } from "../../references/inputs";

export const AreaCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <PropertyReferenceField source="property_id" />
      <TextInput source="name" />
      <TextInput source="description" />
      <PropertyReferenceInput source="property_id" />
      <TextInput source="type" />
      <TextInput source="dimensions" />
      <TextInput source="renovation_status" />
      <TextInput source="renovation_requirements" />
      <TextInput source="before_images" />
      <TextInput source="after_images" />
      <TextInput source="current_condition" />
      <TextInput source="desired_features" />
      <TextInput source="materials_needed" />
    </SimpleForm>
  </Create>
);
