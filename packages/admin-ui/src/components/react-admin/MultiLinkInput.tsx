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
  ...rest
}: MultiLinkInputProps<T>) => {
  const entity = useWatch({
    // control,
    name: referenceField, // without supply name will watch the entire form, or ['firstName', 'lastName'] to watch both
    // defaultValue: "default", // default value before the render
  });

  console.log("entity", entity);

  //   const watchShowAge = watch("showAge", false);

  //   const entity = useMemo((): string => {
  //     const q = record?.[referenceField];

  //     return q;
  //   }, [record, referenceField]);

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
      <AutocompleteInput optionText={relatedEntitySource} />
    </ReferenceInput>
  );
};
