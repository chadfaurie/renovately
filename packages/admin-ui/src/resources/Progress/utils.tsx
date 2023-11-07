import { SelectInput } from "react-admin";

import { Database } from "../../database.types";
import { Choices } from "../../utils";

type UpdateType = Database["public"]["Enums"]["update_type"];

const choices: Choices<UpdateType> = [
  { id: "project", name: "Project" },
  { id: "area", name: "Area" },
  { id: "task", name: "Task" },
];

export const UpdateTypeSelect = () => {
  return <SelectInput source="update_type" choices={choices} />;
};

export const relatedSourceMap: Record<UpdateType, string> = {
  project: "title",
  area: "name",
  task: "description",
};
