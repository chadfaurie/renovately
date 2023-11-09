import { Create, SimpleForm, TextInput, required } from "react-admin";

import { PartnerTypeSelect } from "./utils";

export const PartnerCreate = () => (
  <Create redirect="show">
    <SimpleForm>
      <TextInput source="name" validate={[required()]} />
      <TextInput source="description" />
      <PartnerTypeSelect />
    </SimpleForm>
  </Create>
);
