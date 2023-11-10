import { Grid } from "@mui/material";
import { Title } from "react-admin";

import Projects from "./components/Projects";
import Tasks from "./components/Tasks";

const Dashboard = () => {
  return (
    <>
      <Title title="Dashboard" />
      <Grid container spacing={2}>
        <Grid item md={4}>
          <Projects />
        </Grid>
        <Grid item md={4}>
          <Tasks />
        </Grid>
      </Grid>
    </>
  );
};

export default Dashboard;
