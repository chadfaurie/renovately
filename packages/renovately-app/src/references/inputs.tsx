import { ComponentProps } from "react";
import { ReferenceInput, AutocompleteInput } from "react-admin";

export type RefFieldProps = Partial<ComponentProps<typeof ReferenceInput>> & {
  source: string;
};

export const PropertyReferenceInput = (props: RefFieldProps) => {
  return (
    <ReferenceInput reference="property" {...props}>
      <AutocompleteInput />
    </ReferenceInput>
  );
};
