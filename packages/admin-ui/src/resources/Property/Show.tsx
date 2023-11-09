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
  CreateButton,
  useGetRecordId,
  RichTextField,
} from "react-admin";

import { AccessList } from "../../components/generic";

export const PropertyShow = () => {
  const id = useGetRecordId();

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
          <CreateButton
            resource="area"
            to={{
              pathname: "/area/create",
              search: `?property_id=${id}`,
            }}
          />
          <ReferenceManyField label={false} reference="area" source="id" target="property_id">
            <Datagrid bulkActionButtons={false}>
              <TextField source="name" />
              <ChipField source="type" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
        <Tab label="Projects">
          <CreateButton
            resource="project"
            to={{
              pathname: "/project/create",
              search: `?property_id=${id}`,
            }}
          />
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
          <AccessList id={id} reference="user_property_role_link" target="property_id" />
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
