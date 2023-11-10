import { useMemo } from "react";
import { useGetIdentity } from "react-admin";

export const useUserHasProfile = () => {
  const {
    data: user,
    isLoading,
    error,
  } = useGetIdentity({
    retry: false,
  });

  const hasProfile = useMemo(() => {
    return !!user?.profile;
  }, [user]);

  return { hasProfile, isLoading, error };
};
