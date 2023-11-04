import { ChipField, Datagrid, List, TextField } from "react-admin";
import { PropertyReferenceField } from "../../references";

export const AreaList = () => (
  <List>
    <Datagrid rowClick="show">
      <TextField source="area_name" />
      <ChipField source="area_type" />
      <PropertyReferenceField source="property_id" />
      <TextField source="area_dimensions" />
      <TextField source="area_description" />
      <TextField source="renovation_status" />
      <TextField source="renovation_requirements" />
      <TextField source="before_images" />
      <TextField source="after_images" />
      <ChipField source="current_condition" />
      <TextField source="desired_features" />
      <TextField source="materials_needed" />
    </Datagrid>
  </List>
);
