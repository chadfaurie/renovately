import { ComponentProps } from "react";
import { SelectInput } from "react-admin";

import { Database } from "../../database.types";
import { Choices } from "../../utils";

type UpdateType = Database["public"]["Enums"]["update_type"];

const choices: Choices<UpdateType> = [
  { id: "project", name: "Project" },
  { id: "area", name: "Area" },
  { id: "task", name: "Task" },
];

type Props = ComponentProps<typeof SelectInput>;

export const UpdateTypeSelect = ({ ...props }: Props) => {
  return <SelectInput source="type" choices={choices} {...props} />;
};

export const relatedSourceMap: Record<UpdateType, string> = {
  project: "title",
  area: "name",
  task: "description",
};
