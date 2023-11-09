import { Edit, Labeled, SimpleForm, TextInput, required } from "react-admin";

import { PropertyReferenceField } from "../../references";

export const AreaEdit = () => (
  <Edit>
    <SimpleForm>
      <Labeled>
        <PropertyReferenceField source="property_id" />
      </Labeled>
      <TextInput source="name" validate={[required()]} />
      <TextInput source="type" validate={[required()]} />
      <TextInput source="dimensions" />
      <TextInput source="description" />
      <TextInput source="renovation_status" />
      <TextInput source="renovation_requirements" />
      <TextInput source="before_images" />
      <TextInput source="after_images" />
      <TextInput source="current_condition" />
      <TextInput source="desired_features" />
      <TextInput source="materials_needed" />
    </SimpleForm>
  </Edit>
);
