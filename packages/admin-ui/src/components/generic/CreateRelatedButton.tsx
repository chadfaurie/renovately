import Box from "@mui/material/Box";
import { useMemo } from "react";
import { Identifier, CreateButton, useGetRecordId } from "react-admin";

export interface CreateRelatedButtonProps {
  id?: Identifier;
  reference: string;
  target: string;
  other?: Record<string, string | number>;
}

export const CreateRelatedButton = ({ id, reference, target, other = {} }: CreateRelatedButtonProps) => {
  const recordId = useGetRecordId();

  const actualId = useMemo(() => id ?? recordId, [id, recordId]);

  const search = useMemo(() => {
    const q = new URLSearchParams();

    q.set(target, actualId.toString());

    for (const [key, value] of Object.entries(other)) {
      q.set(key, value.toString());
    }

    return "?" + q.toString();
  }, [actualId, other, target]);

  return (
    <>
      <CreateButton
        resource={reference}
        to={{
          pathname: `/${reference}/create`,
          search,
        }}
      />
      <Box sx={{ height: 16 }} />
    </>
  );
};
