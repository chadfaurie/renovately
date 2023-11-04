import {
  ChipField,
  CreateButton,
  Datagrid,
  DateField,
  ReferenceManyField,
  Show,
  ShowButton,
  Tab,
  TabbedShowLayout,
  TextField,
} from "react-admin";

export const ProgressUpdateShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="summary">
        <TextField source="update_description" />
        <TextField source="related_entity_id" />
        <ChipField source="update_type" />
        <TextField source="uploaded_by" />
      </Tab>
      <Tab label="details">
        <CreateButton resource="progress_update_images" />
        <ReferenceManyField
          reference="progress_update_images"
          target="progress_update_id"
        >
          <Datagrid>
            <DateField source="created_at" />
            <TextField source="image_url" />
            <ShowButton />
          </Datagrid>
        </ReferenceManyField>
      </Tab>
    </TabbedShowLayout>
  </Show>
);
