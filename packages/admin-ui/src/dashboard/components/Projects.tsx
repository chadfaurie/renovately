import { Typography } from "@mui/material";
import { ChipField, Datagrid, List, ShowButton, TextField } from "react-admin";

const Projects = () => {
  return (
    <>
      <Typography variant="h6">Projects</Typography>

      <List resource="project" actions={false}>
        <Datagrid rowClick="show" bulkActionButtons={false}>
          <TextField source="title" />
          <ChipField source="status" />
          <ShowButton />
        </Datagrid>
      </List>
    </>
  );
};

export default Projects;
