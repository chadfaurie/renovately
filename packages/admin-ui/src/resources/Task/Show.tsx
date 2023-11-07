import { ChipField, Show, Tab, TabbedShowLayout, TextField } from "react-admin";

import { UpdatesTab } from "../../components/generic";
import { PartnerReferenceField, ProjectReferenceField } from "../../references";

export const TaskShow = () => (
  <Show>
    <TabbedShowLayout>
      <Tab label="Summary">
        <TextField source="description" />
        <PartnerReferenceField source="to_be_completed_by" />
        <ChipField source="status" />
        <TextField source="priority" />
        <ProjectReferenceField source="project_id" />
      </Tab>
      <Tab label="Updates">
        <UpdatesTab update_type="task" />
      </Tab>
    </TabbedShowLayout>
  </Show>
);
