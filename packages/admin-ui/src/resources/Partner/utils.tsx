import { SelectInput, required } from "react-admin";

import { PartnerTypeEnum } from "../../types";
import { Choices } from "../../utils";

const choices: Choices<PartnerTypeEnum> = [
  { id: "contractor", name: "Contractor" },
  { id: "supplier", name: "Supplier" },
];

export const PartnerTypeSelect = () => {
  return <SelectInput source="type" choices={choices} validate={[required()]} />;
};
