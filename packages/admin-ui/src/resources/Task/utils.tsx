import { SelectInput } from "react-admin";

import { Choices, SelectInputProps } from "../../utils";

const taskStatusChoices: Choices = [
  { id: "complete", name: "Complete" },
  { id: "pending", name: "Pending" },
];

export const TaskStatusSelectInput = (props: SelectInputProps) => {
  return <SelectInput source="status" choices={taskStatusChoices} {...props} />;
};
