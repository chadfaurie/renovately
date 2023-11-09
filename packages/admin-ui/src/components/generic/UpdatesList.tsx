import { ReferenceManyField, Datagrid, TextField, DateField, ShowButton } from "react-admin";

interface Props {
  type: string;
}

export const UpdatesList = ({ type }: Props) => {
  return (
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
  );
};
