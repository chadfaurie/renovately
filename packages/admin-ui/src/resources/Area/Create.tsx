import { Create, SimpleForm, TextInput, required } from "react-admin";

import { PropertyReferenceInput } from "../../references";

export const AreaCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="name" validate={[required()]} />
      <TextInput source="type" validate={[required()]} />
      <PropertyReferenceInput source="property_id" validate={[required()]} />
      <TextInput source="description" />
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
