import { ChipField, Show, SimpleShowLayout, TextField } from "react-admin";
import { PropertyReferenceField } from "../../references";

export const AreaShow = () => (
  <Show>
    <SimpleShowLayout>
      <PropertyReferenceField source="property_id" />
      <TextField source="area_name" />
      <ChipField source="area_type" />
      <TextField source="area_dimensions" />
      <TextField source="area_description" />
      <TextField source="renovation_status" />
      <TextField source="renovation_requirements" />
      <TextField source="before_images" />
      <TextField source="after_images" />
      <ChipField source="current_condition" />
      <TextField source="desired_features" />
      <TextField source="materials_needed" />
    </SimpleShowLayout>
  </Show>
);
