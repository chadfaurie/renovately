import {
  ReferenceManyField,
  Datagrid,
  ChipField,
  DeleteWithConfirmButton,
  Identifier,
  usePermissions,
} from "react-admin";

import { CreateRelatedButton } from "./CreateRelatedButton";
import { UserReferenceField } from "../../references";

interface Props {
  id?: Identifier;
  reference: string;
  source?: string;
  target: string;
}

export const AccessList = ({ id, reference, target, source }: Props) => {
  const { permissions } = usePermissions();

  return (
    <>
      <CreateRelatedButton reference={reference} id={id} target={target} />

      <ReferenceManyField label={false} reference={reference} source={source ?? "id"} target={target}>
        <Datagrid bulkActionButtons={false}>
          <UserReferenceField source="user_id" />
          <ChipField source="role" />
          <ChipField source="status" />
          {permissions === "admin" && <DeleteWithConfirmButton />}
        </Datagrid>
      </ReferenceManyField>
    </>
  );
};
