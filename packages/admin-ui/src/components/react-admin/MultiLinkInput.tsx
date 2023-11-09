import { Typography } from "@mui/material";
import { ReactElement, useMemo } from "react";
import { ReferenceInput, InputProps, UseReferenceInputControllerParams, AutocompleteInput } from "react-admin";
import { useWatch } from "react-hook-form";

export interface ReferenceInputProps extends InputProps, UseReferenceInputControllerParams {
  children?: ReactElement;
  label?: string;
}

type MultiLinkInputProps<T extends string = string> = Omit<ReferenceInputProps, "reference"> & {
  referenceField: string;
  relatedSource: string | Record<T, string>;
};

export const MultiLinkInput = <T extends string = string>({
  referenceField,
  relatedSource,
  validate,
  ...rest
}: MultiLinkInputProps<T>) => {
  const entity = useWatch({
    name: referenceField,
  });

  const relatedEntitySource = useMemo(() => {
    if (typeof relatedSource === "string") {
      return relatedSource;
    }

    return relatedSource[entity as T];
  }, [relatedSource, entity]);

  if (!entity) {
    return <Typography>Related Field Requires Selection</Typography>;
  }

  return (
    <ReferenceInput {...rest} reference={entity}>
      <AutocompleteInput optionText={relatedEntitySource} validate={validate} />
    </ReferenceInput>
  );
};
