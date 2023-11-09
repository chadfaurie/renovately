import { ComponentProps } from "react";
import { ReferenceInput, AutocompleteInput } from "react-admin";

export type RefInputProps = Partial<ComponentProps<typeof ReferenceInput>> & {
  source: string;
};

export const PropertyReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="property" {...props}>
      <AutocompleteInput optionText="address" />
    </ReferenceInput>
  );
};

export const ProjectReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="project" {...props}>
      <AutocompleteInput optionText="title" />
    </ReferenceInput>
  );
};

export const PartnerReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="partner" {...props}>
      <AutocompleteInput optionText="name" />
    </ReferenceInput>
  );
};

export const UserReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="user_profile" {...props}>
      <AutocompleteInput optionText="email" />
    </ReferenceInput>
  );
};
