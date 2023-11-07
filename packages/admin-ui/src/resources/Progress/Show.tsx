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

import { relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin";

export const ProgressUpdateShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="update_description" />
        <ChipField source="update_type" />
        <MultiLinkField source="related_entity_id" referenceField="update_type" relatedSource={relatedSourceMap} />
      </Tab>
      <Tab label="Images">
        <CreateButton resource="progress_update_images" />
        <ReferenceManyField reference="progress_update_images" target="progress_update_id">
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
