import { ComponentProps } from "react";
import { ReferenceField, TextField } from "react-admin";

export type RefFieldProps = Partial<ComponentProps<typeof ReferenceField>> & {
  source: string;
};

export const PropertyReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="property" {...props}>
      <TextField source="address" />
    </ReferenceField>
  );
};

export const ProjectReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="project" {...props}>
      <TextField source="title" />
    </ReferenceField>
  );
};

export const PartnerReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="partner" {...props}>
      <TextField source="name" />
    </ReferenceField>
  );
};
