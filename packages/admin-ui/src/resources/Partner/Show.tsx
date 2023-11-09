import {
  ChipField,
  Datagrid,
  DateField,
  ReferenceManyField,
  RichTextField,
  Show,
  Tab,
  TabbedShowLayout,
  TextField,
  useGetRecordId,
} from "react-admin";

import { CreateLinkedButton } from "../../components/generic/CreateLinked";
import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const PartnerShow = () => {
  const id = useGetRecordId();

  return (
    <Show>
      <TabbedShowLayout>
        <Tab label="Summary">
          <TextField source="name" />
          <RichTextField source="description" />
          <ChipField source="partner_type" />
        </Tab>
        <Tab label="Projects">
          <CreateLinkedButton reference="partner_project_link" id={id} target="partner_id" />

          <ReferenceManyField label={false} reference="partner_project_link" source="id" target="partner_id">
            <Datagrid>
              <PartnerReferenceField source="partner_id" label="Title" />
              <ChipField source="status" />
              <ProjectReferenceField source="project_id" label="Project" />
              <DateField source="assigned_date" />
            </Datagrid>
          </ReferenceManyField>
        </Tab>
      </TabbedShowLayout>
    </Show>
  );
};
