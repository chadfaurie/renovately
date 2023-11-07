import { AuthLayout } from "ra-supabase";
import { TextInput, SimpleForm } from "ra-ui-materialui";
import { useLayoutEffect } from "react";
import { Create, required, useGetIdentity, useRedirect } from "react-admin";

const NewUserProfile = () => {
  const { data: user, isLoading, refetch } = useGetIdentity();

  const redirect = useRedirect();

  useLayoutEffect(() => {
    if (isLoading) {
      return;
    }

    if (user?.profile) {
      redirect("/");
    }

    return () => {
      refetch?.();
    };
  }, [isLoading, redirect, refetch, user]);

  return (
    <AuthLayout>
      <Create resource="user_profile">
        <SimpleForm defaultValues={{ email: user?.email, id: user?.id }}>
          <TextInput source="first_name" fullWidth validate={[required()]} />
          <TextInput source="last_name" fullWidth validate={[required()]} />
          <TextInput source="email" fullWidth disabled />
        </SimpleForm>
      </Create>
    </AuthLayout>
  );
};

export default NewUserProfile;
