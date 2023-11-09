import { ChipField, RichTextField, Show, Tab, TabbedShowLayout, TextField } from "react-admin";

import { UpdatesList } from "../../components/generic";
import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const TaskShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <RichTextField source="description" />
        <PartnerReferenceField source="to_be_completed_by" />
        <ChipField source="status" />
        <TextField source="priority" />
        <ProjectReferenceField source="project_id" />
      </Tab>
      <Tab label="Updates">
        <UpdatesList type="task" />
      </Tab>
    </TabbedShowLayout>
  </Show>
);
