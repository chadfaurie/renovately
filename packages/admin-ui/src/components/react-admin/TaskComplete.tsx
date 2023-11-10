import WarningIcon from "@mui/icons-material/Warning";
import { CircularProgress, Icon, Checkbox } from "@mui/material";
import { useMemo } from "react";
import { useRecordContext, useUpdate } from "react-admin";

import { Task } from "../../types";

export const TaskComplete = () => {
  const record = useRecordContext<Task>();
  const [update, { isLoading, error }] = useUpdate<Task>();

  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const complete = event.target.checked;

    if (complete) {
      update("task", { id: record.id, data: { ...record, status: "complete" } });
    } else {
      update("task", { id: record.id, data: { ...record, status: "pending" } });
    }
  };

  const checked = useMemo(() => {
    return record.status === "complete";
  }, [record]);

  if (isLoading) {
    return <CircularProgress />;
  }

  if (error) {
    return (
      <Icon color="error">
        <WarningIcon />
      </Icon>
    );
  }

  return <Checkbox checked={checked} onChange={handleChange} />;
};
