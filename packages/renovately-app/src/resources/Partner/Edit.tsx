import { Edit, SimpleForm, TextInput } from "react-admin";
import PartnerTypeSelect from "./utils";

export const PartnerEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="name" />
      <TextInput source="description" />
      <PartnerTypeSelect />
    </SimpleForm>
  </Edit>
);
