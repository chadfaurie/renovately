import { Create, SimpleForm, TextInput, email, required } from "react-admin";

import { InvitationTypeSelect, relatedSourceMap } from "./utils";
import { MultiLinkInput } from "../../components/react-admin";
import { UserRoleSelect } from "../Users/utils";

export const InvitationCreate = () => {
  return (
    <Create>
      <SimpleForm>
        <TextInput source="email" validate={[required(), email()]} />
        <UserRoleSelect />
        <InvitationTypeSelect />

        <MultiLinkInput
          source="entity_id"
          referenceField="type"
          relatedSource={relatedSourceMap}
          validate={[required()]}
        />
      </SimpleForm>
    </Create>
  );
};
