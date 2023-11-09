import { ComponentProps } from "react";
import { FunctionField, ReferenceField, TextField } from "react-admin";

import { UserProfile } from "../types";

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

export const ProgressUpdateReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="progress" link="show" {...props}>
      <TextField source="description" />
    </ReferenceField>
  );
};

export const UserReferenceField = (props: RefFieldProps) => {
  return (
    <ReferenceField reference="user_profile" link={false} {...props}>
      <FunctionField render={(record: UserProfile) => `${record.first_name} ${record.last_name}`} />
    </ReferenceField>
  );
};
