import { Typography } from "@mui/material";
import { ChipField, Datagrid, List, ShowButton, TextField } from "react-admin";

import { TaskComplete } from "../../components/react-admin";
import { ProjectReferenceField } from "../../references";
import { TaskStatusSelectInput } from "../../resources/Task/utils";

const taskFilters = [<TaskStatusSelectInput alwaysOn />];

const Tasks = () => {
  return (
    <>
      <Typography variant="h6">Tasks</Typography>
      <List resource="task" actions={false} filters={taskFilters}>
        <Datagrid bulkActionButtons={false}>
          <TextField source="description" />

          <ChipField source="status" />
          <ProjectReferenceField source="project_id" />
          <TaskComplete />
          <ShowButton />
        </Datagrid>
      </List>
    </>
  );
};

export default Tasks;
