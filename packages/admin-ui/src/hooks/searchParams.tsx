import { parse } from "query-string";
import { useMemo } from "react";
import { useLocation } from "react-router-dom";

export const useCreateParams = (field: string, parentEntity: string) => {
  const location = useLocation();

  const id = useMemo(() => {
    const searchObj = parse(location.search);

    const id = searchObj?.[field] ?? "";

    return id as string;
  }, [field, location.search]);

  const redirect = useMemo(() => `/${parentEntity}/${id}/show/1`, [parentEntity, id]);

  return { id, redirect };
};
