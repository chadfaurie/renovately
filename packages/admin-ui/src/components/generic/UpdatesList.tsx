import { ReferenceManyField, Datagrid, TextField, DateField, ShowButton, useGetRecordId } from "react-admin";

import { CreateRelatedButton } from "./CreateRelatedButton";

interface Props {
  type: string;
}

export const UpdatesList = ({ type }: Props) => {
  const id = useGetRecordId();

  return (
    <>
      <CreateRelatedButton id={id} reference="progress" target="id" other={{ type }} />
      <ReferenceManyField
        label={false}
        reference="progress"
        source="id"
        target="related_entity_id"
        filter={{
          type,
        }}
      >
        <Datagrid bulkActionButtons={false}>
          <TextField source="description" />
          <DateField source="created_at" />
          <ShowButton />
        </Datagrid>
      </ReferenceManyField>
    </>
  );
};
