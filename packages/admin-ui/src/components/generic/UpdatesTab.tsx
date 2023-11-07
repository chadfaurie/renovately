import { ReferenceManyField, Datagrid, TextField, DateField, ShowButton } from "react-admin";

interface Props {
  update_type: string;
}

export const UpdatesTab = ({ update_type }: Props) => {
  return (
    <ReferenceManyField
      label={false}
      reference="progress_updates"
      source="id"
      target="related_entity_id"
      filter={{
        update_type,
      }}
    >
      <Datagrid bulkActionButtons={false}>
        <TextField source="update_description" />
        <DateField source="created_at" />
        <ShowButton />
      </Datagrid>
    </ReferenceManyField>
  );
};
