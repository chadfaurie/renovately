import { parse } from "query-string";
import { useMemo } from "react";
import { Create, ReferenceInput, SimpleForm, TextInput, ImageInput, AutocompleteInput } from "react-admin";
import { useLocation } from "react-router-dom";

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export const ProgressUpdateImageCreate = () => {
  const location = useLocation();

  const progress_id = useMemo(() => {
    const searchObj = parse(location.search);

    const id = searchObj.progress_id ?? "";

    return id as string;
  }, [location]);

  const redirect = useMemo(() => `/progress/${progress_id}/show/1`, [progress_id]);

  return (
    <Create redirect={redirect}>
      <SimpleForm defaultValues={{ progress_update_id: progress_id }}>
        <TextInput source="image_url" />
        <ImageInput source="image_url" />
        <ReferenceInput source="progress_update_id" reference="progress">
          <AutocompleteInput optionText="description" />
        </ReferenceInput>
      </SimpleForm>
    </Create>
  );
};
