import { ComponentProps } from "react";
import { ReferenceField, TextField } from "react-admin";

export type RefFieldProps = Partial<ComponentProps<typeof ReferenceField>> & {
  source: string;
};

export const PropertyReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="property" link="show" {...props}>
      <TextField source="address" />
    </ReferenceField>
  );
};

export const ProjectReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="project" link="show" {...props}>
      <TextField source="title" />
    </ReferenceField>
  );
};

export const PartnerReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="partner" link="show" {...props}>
      <TextField source="name" />
    </ReferenceField>
  );
};
