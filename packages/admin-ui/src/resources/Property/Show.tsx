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
  DeleteWithConfirmButton,
  CreateButton,
  useGetRecordId,
} from "react-admin";

import { PropertyReferenceField } from "../../references";

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
              <TextField source="description" />
              <DateField source="start_date" />
              <DateField source="estimated_end_date" />
              <ChipField source="status" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
        <Tab label="Access">
          <ReferenceManyField label={false} reference="user_property_role_link" source="id" target="property_id">
            <Datagrid bulkActionButtons={false}>
              <PropertyReferenceField source="property_id" />
              <ChipField source="role" />
              <DeleteWithConfirmButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
