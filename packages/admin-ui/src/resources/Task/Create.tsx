import { Create, SimpleForm, TextInput } from "react-admin";

import { useCreateParams } from "../../hooks";
import { PartnerReferenceInput, ProjectReferenceInput } from "../../references";

export const TaskCreate = () => {
  const { id, redirect } = useCreateParams("project_id", "project");

  return (
    <Create redirect={redirect ?? "show"}>
      <SimpleForm defaultValues={{ project_id: id }}>
        <TextInput source="description" />
        <PartnerReferenceInput source="to_be_completed_by" />
        <TextInput source="status" />
        <TextInput source="priority" />
        <ProjectReferenceInput source="project_id" />
      </SimpleForm>
    </Create>
  );
};
