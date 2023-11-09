import { parse } from "query-string";
import { useMemo } from "react";
import { CreatePathType } from "react-admin";
import { useLocation } from "react-router-dom";

export const useCreateParams = () => {
  const location = useLocation();

  const params = useMemo(() => {
    const searchObj = parse(location.search);

    return searchObj;
  }, [location.search]);

  return params;
};

export const useBuildRedirect = (
  parentEntity: string | (string | null)[] | null,
  id: string | (string | null)[] | null,
  defaultRedirect: CreatePathType = "show",
) => {
  const redirect = useMemo(() => {
    if (parentEntity && id) {
      return `/${parentEntity}/${id}/show/1`;
    }

    return defaultRedirect;
  }, [parentEntity, id, defaultRedirect]);

  return redirect;
};

export const useCreateParamsField = (field: string, parentEntity: string) => {
  const location = useLocation();

  const id = useMemo(() => {
    const searchObj = parse(location.search);

    const id = searchObj?.[field] ?? "";

    return id as string;
  }, [field, location.search]);

  const redirect = useBuildRedirect(parentEntity, id);

  return { id, redirect };
};
