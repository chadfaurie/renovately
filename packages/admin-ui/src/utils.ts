import { ComponentProps } from "react";
import { SelectInput } from "react-admin";

export type Choice<T = string> = { id: T; name: string };
export type Choices<T = string> = Choice<T>[];

export type SelectInputProps = Partial<ComponentProps<typeof SelectInput>> & {
  source?: string;
};
