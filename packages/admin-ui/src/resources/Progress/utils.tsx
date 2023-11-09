import { ComponentProps } from "react";
import { SelectInput } from "react-admin";

import { UpdateTypeEnum } from "../../types";
import { Choices } from "../../utils";

const choices: Choices<UpdateTypeEnum> = [
  { id: "project", name: "Project" },
  { id: "area", name: "Area" },
  { id: "task", name: "Task" },
];

type Props = ComponentProps<typeof SelectInput>;

export const UpdateTypeSelect = ({ ...props }: Props) => {
  return <SelectInput source="type" choices={choices} {...props} />;
};

export const relatedSourceMap: Record<UpdateTypeEnum, string> = {
  project: "title",
  area: "name",
  task: "description",
};
