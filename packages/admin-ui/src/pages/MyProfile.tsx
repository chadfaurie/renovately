import { Loading, Show, SimpleShowLayout, TextField, useGetIdentity } from "react-admin";

const MyProfile = () => {
  const { isLoading, data } = useGetIdentity();

  if (isLoading) {
    return <Loading />;
  }

  return (
    <Show resource="user_profile" id={data?.id}>
      <SimpleShowLayout>
        <TextField source="id" />
        <TextField source="email" />
        <TextField source="first_name" />
        <TextField source="last_name" />
      </SimpleShowLayout>
    </Show>
  );
};

export default MyProfile;
