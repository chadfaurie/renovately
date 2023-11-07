import { ComponentProps, useMemo } from "react";
import { ReferenceField, TextField, useRecordContext } from "react-admin";

type MultiLinkFieldProps<T extends string = string> = Omit<ComponentProps<typeof ReferenceField>, "reference"> & {
  referenceField: string;
  relatedSource: string | Record<T, string>;
};

export const MultiLinkField = <T extends string = string>({
  referenceField,
  relatedSource,
  ...rest
}: MultiLinkFieldProps<T>) => {
  const record = useRecordContext();

  const entity = useMemo(() => {
    const q = record?.[referenceField];

    return q;
  }, [record, referenceField]);

  const relatedEntitySource = useMemo(() => {
    if (typeof relatedSource === "string") {
      return relatedSource;
    }

    return relatedSource[entity as T];
  }, [relatedSource, entity]);

  return (
    <ReferenceField {...rest} reference={entity}>
      <TextField source={relatedEntitySource} />
    </ReferenceField>
  );
};
