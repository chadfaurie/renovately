import {
  AutocompleteInput,
  Edit,
  ReferenceInput,
  SimpleForm,
  TextInput,
} from "react-admin";

export const TaskEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="description" />
      <ReferenceInput source="to_be_completed_by" reference="partner">
        <AutocompleteInput optionText="name" />
      </ReferenceInput>
      <TextInput source="status" />
      <TextInput source="priority" />
      {/* <ReferenceInput source="project_id" reference="projects" /> */}
    </SimpleForm>
  </Edit>
);
