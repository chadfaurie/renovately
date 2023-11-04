import { Edit, Labeled, SimpleForm, TextInput } from "react-admin";
import { PropertyReferenceField } from "../../references";

export const AreaEdit = () => (
  <Edit>
    <SimpleForm>
      <Labeled>
        <PropertyReferenceField source="property_id" />
      </Labeled>
      <TextInput source="area_name" />
      <TextInput source="area_type" />
      <TextInput source="area_dimensions" />
      <TextInput source="area_description" />
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
