import { ComponentProps } from "react";
import { ReferenceInput, AutocompleteInput } from "react-admin";

export type RefInputProps = Partial<ComponentProps<typeof ReferenceInput>> & {
  source: string;
};

export const PropertyReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="property" {...props}>
      <AutocompleteInput />
    </ReferenceInput>
  );
};

export const ProjectReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="project" {...props}>
      <AutocompleteInput />
    </ReferenceInput>
  );
};

export const PartnerReferenceInput = (props: RefInputProps) => {
  return (
    <ReferenceInput reference="partner" {...props}>
      <AutocompleteInput />
    </ReferenceInput>
  );
};
