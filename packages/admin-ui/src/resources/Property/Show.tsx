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
} from "react-admin";

export const PropertyShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="nickname" />
        <TextField source="address" />
        <TextField source="ownership_type" />
        <TextField source="access_restrictions" />
      </Tab>
      <Tab label="Areas">
        <ReferenceManyField label={false} reference="area" source="id" target="property_id">
          <Datagrid bulkActionButtons={false}>
            <TextField source="area_name" />
            <ChipField source="area_type" />
            <ShowButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
      <Tab label="Projects">
        <ReferenceManyField label={false} reference="project" source="id" target="property_id">
          <Datagrid bulkActionButtons={false}>
            <TextField source="description" />
            <DateField source="start_date" />
            <DateField source="estimated_end_date" />
            <ChipField source="status" />
            <ShowButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
