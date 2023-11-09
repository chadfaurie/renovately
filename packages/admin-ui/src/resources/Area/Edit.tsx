import { RichTextInput } from "ra-input-rich-text";
import { Edit, Labeled, SimpleForm, TextInput, required } from "react-admin";

import { PropertyReferenceField } from "../../references";

export const AreaEdit = () => (
  <Edit>
    <SimpleForm>
      <Labeled>
        <PropertyReferenceField source="property_id" />
      </Labeled>
      <TextInput source="name" validate={[required()]} />
      <TextInput source="type" validate={[required()]} />
      <RichTextInput source="description" />
      <TextInput source="dimensions" />
    </SimpleForm>
  </Edit>
);
