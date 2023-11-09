import { Edit, SimpleForm, TextInput, required } from "react-admin";

import { PartnerTypeSelect } from "./utils";

export const PartnerEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="name" validate={[required()]} />
      <PartnerTypeSelect />
      <TextInput source="description" />
    </SimpleForm>
  </Edit>
);
