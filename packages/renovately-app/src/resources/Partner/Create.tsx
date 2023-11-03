import { Create, SimpleForm, TextInput } from "react-admin";
import PartnerTypeSelect from "./utils";

export const PartnerCreate = () => (
  <Create>
    <SimpleForm>
      <TextInput source="name" />
      <TextInput source="description" />
      <PartnerTypeSelect />
    </SimpleForm>
  </Create>
);
