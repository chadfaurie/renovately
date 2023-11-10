import { Grid, Typography } from "@mui/material";
import { ChipField, Datagrid, List, ShowButton, TextField, Title } from "react-admin";

import { TaskComplete } from "../components/react-admin";
import { ProjectReferenceField } from "../references";

const Dashboard = () => {
  return (
    <>
      <Title title="Dashboard" />
      <Grid container spacing={2}>
        <Grid item md={4}>
          <Typography variant="h6">Projects</Typography>

          <List resource="project" actions={false}>
            <Datagrid rowClick="show" bulkActionButtons={false}>
              <TextField source="description" />
              <ChipField source="status" />
              <ShowButton />
            </Datagrid>
          </List>
        </Grid>
        <Grid item md={4}>
          <Typography variant="h6">Tasks</Typography>

          <List resource="task" actions={false}>
            <Datagrid bulkActionButtons={false}>
              <TextField source="description" />

              <ChipField source="status" />
              <ProjectReferenceField source="project_id" />
              <TaskComplete />
              <ShowButton />
            </Datagrid>
          </List>
        </Grid>
      </Grid>
    </>
  );
};

export default Dashboard;
