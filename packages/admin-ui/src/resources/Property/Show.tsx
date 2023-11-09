import {
  ReferenceManyField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
  Datagrid,
  DateField,
  ShowButton,
  ChipField,
  RichTextField,
} from "react-admin";

import { AccessList, CreateRelatedButton } from "../../components/generic";

export const PropertyShow = () => {
  return (
    <Show>
      <TabbedShowLayout>
        <Tab label="Summary">
          <TextField source="nickname" />
          <TextField source="address" />
          <TextField source="ownership_type" />
          <TextField source="access_restrictions" />
        </Tab>
        <Tab label="Areas">
          <CreateRelatedButton reference="area" target="property_id" />
          <ReferenceManyField label={false} reference="area" source="id" target="property_id">
            <Datagrid bulkActionButtons={false}>
              <TextField source="name" />
              <ChipField source="type" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
        <Tab label="Projects">
          <CreateRelatedButton reference="project" target="property_id" />
          <ReferenceManyField label={false} reference="project" source="id" target="property_id">
            <Datagrid bulkActionButtons={false}>
              <RichTextField source="description" />
              <DateField source="start_date" />
              <DateField source="estimated_end_date" />
              <ChipField source="status" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
        <Tab label="Access">
          <AccessList reference="user_property_role_link" target="property_id" />
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
