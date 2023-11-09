import { SelectInput } from "react-admin";

import { PartnerTypeEnum } from "../../types";
import { Choices } from "../../utils";

const choices: Choices<PartnerTypeEnum> = [
  { id: "contractor", name: "Contractor" },
  { id: "supplier", name: "Supplier" },
];

export const PartnerTypeSelect = () => {
  return <SelectInput source="partner_type" choices={choices} />;
};
