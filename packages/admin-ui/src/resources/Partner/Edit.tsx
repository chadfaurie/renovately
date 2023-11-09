import { RichTextInput } from "ra-input-rich-text";
import { Edit, SimpleForm, TextInput, required } from "react-admin";

import { PartnerTypeSelect } from "./utils";

export const PartnerEdit = () => (
  <Edit>
    <SimpleForm>
      <TextInput source="name" validate={[required()]} />
      <PartnerTypeSelect />
      <RichTextInput source="description" />
    </SimpleForm>
  </Edit>
);
