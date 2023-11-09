import { ChipField, RichTextField, Show, Tab, TabbedShowLayout, TextField } from "react-admin";

import { UpdatesList } from "../../components/generic";
import { PropertyReferenceField } from "../../references";

export const AreaShow = () => {
  return (
    <Show>
      <TabbedShowLayout>
        <Tab label="Summary">
          <PropertyReferenceField source="property_id" />
          <TextField source="name" />
          <ChipField source="type" />
          <RichTextField source="description" />
          <TextField source="dimensions" />
        </Tab>
        <Tab label="Progress">
          <UpdatesList type="area" />
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
