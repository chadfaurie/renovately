import { SelectInput } from "react-admin";

import { Database } from "../../database.types";
import { Choices } from "../../utils";

type PartnerType = Database["public"]["Enums"]["partner_type"];

const choices: Choices<PartnerType> = [
  { id: "contractor", name: "Contractor" },
  { id: "supplier", name: "Supplier" },
];

export const PartnerTypeSelect = () => {
  return <SelectInput source="partner_type" choices={choices} />;
};
