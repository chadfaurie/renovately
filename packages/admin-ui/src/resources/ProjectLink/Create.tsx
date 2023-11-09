import { Create, SimpleForm, required } from "react-admin";

import { useCreateParams } from "../../hooks";
import { ProjectReferenceInput, UserReferenceInput } from "../../references";
import { InviteStatusSelect, UserRoleSelect } from "../Users/utils";

export const ProjectLinkCreate = () => {
  const { property_id } = useCreateParams();

  return (
    <Create redirect="show">
      <SimpleForm defaultValues={{ property_id }}>
        <ProjectReferenceInput source="property_id" validate={[required()]} />
        <UserReferenceInput source="user_id" />
        <UserRoleSelect />
        <InviteStatusSelect />
      </SimpleForm>
    </Create>
  );
};
