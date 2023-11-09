import {
  ChipField,
  CreateButton,
  Datagrid,
  DateField,
  ImageField,
  ReferenceManyField,
  Show,
  ShowButton,
  Tab,
  TabbedShowLayout,
  TextField,
  useGetRecordId,
} from "react-admin";

import { relatedSourceMap } from "./utils";
import { MultiLinkField } from "../../components/react-admin";

export const ProgressUpdateShow = () => {
  const id = useGetRecordId();

  return (
    <Show>
      <TabbedShowLayout>
        <Tab label="Summary">
          <TextField source="description" />
          <ChipField source="type" />
          <MultiLinkField source="related_entity_id" referenceField="type" relatedSource={relatedSourceMap} />
        </Tab>
        <Tab label="Images">
          <CreateButton
            resource="progress_update_images"
            to={{
              pathname: "/progress_update_images/create",
              search: `?progress_id=${id}`,
            }}
          />
          <ReferenceManyField reference="progress_update_images" target="progress_update_id">
            <Datagrid>
              <DateField source="created_at" showTime />
              <ImageField source="image_url" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
