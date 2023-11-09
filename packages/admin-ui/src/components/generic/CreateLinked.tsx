import Box from "@mui/material/Box";
import { Identifier, CreateButton } from "react-admin";

interface Props {
  id: Identifier;
  reference: string;
  source?: string;
  target: string;
}

export const CreateLinkedButton = ({ id, reference, target }: Props) => {
  return (
    <>
      <CreateButton
        resource={reference}
        to={{
          pathname: `/${reference}/create`,
          search: `?${target}=${id}`,
        }}
      />
      <Box sx={{ height: 16 }} />
    </>
  );
};
