import { RichTextInput } from "ra-input-rich-text";
import { Create, SimpleForm, TextInput } from "react-admin";

import { useCreateParamsField } from "../../hooks";
import { PartnerReferenceInput, ProjectReferenceInput } from "../../references";

export const TaskCreate = () => {
  const { id, redirect } = useCreateParamsField("project_id", "project");

  return (
    <Create redirect={redirect ?? "show"}>
      <SimpleForm defaultValues={{ project_id: id }}>
        <RichTextInput source="description" />
        <PartnerReferenceInput source="to_be_completed_by" />
        <TextInput source="status" />
        <TextInput source="priority" />
        <ProjectReferenceInput source="project_id" />
      </SimpleForm>
    </Create>
  );
};
