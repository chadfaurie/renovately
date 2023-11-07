import { ChipField, Show, Tab, TabbedShowLayout, TextField } from "react-admin";

import { UpdatesTab } from "../../components/generic";
import { PropertyReferenceField } from "../../references";

export const AreaShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
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
      </Tab>
      <Tab label="Updates">
        <UpdatesTab update_type="area" />
      </Tab>
    </TabbedShowLayout>
  </Show>
);
