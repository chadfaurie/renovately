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
  useGetRecordId,
} from "react-admin";

import { AccessList, UpdatesList } from "../../components/generic";
import { PartnerReferenceField, PropertyReferenceField } from "../../references";

export const ProjectShow = () => {
  const id = useGetRecordId();

  return (
    <Show>
      <TabbedShowLayout>
        <Tab label="Summary">
          <TextField source="title" />
          <TextField source="description" />
          <DateField source="start_date" />
          <DateField source="estimated_end_date" />
          <ChipField source="status" />
          <PropertyReferenceField source="property_id" />
        </Tab>
        <Tab label="Tasks">
          <CreateButton
            resource="task"
            to={{
              pathname: "/task/create",
              search: `?project_id=${id}`,
            }}
          />
          <ReferenceManyField label={false} reference="task" source="id" target="project_id">
            <Datagrid bulkActionButtons={false}>
              <TextField source="description" />
              <PartnerReferenceField source="to_be_completed_by" />
              <ChipField source="status" />
              <TextField source="priority" />
              <ShowButton />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
        <Tab label="Updates">
          <UpdatesList type="project" />
        </Tab>
        <Tab label="Access">
          <AccessList reference="user_project_role_link" source="id" target="project_id" id={id} />
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
