import { SelectInput } from "react-admin";

export const PartnerTypeSelect = () => {
  return (
    <SelectInput
      source="type"
      choices={[
        { id: "CONTRACTOR", name: "Contractor" },
        { id: "SUPPLIER", name: "Supplier" },
      ]}
    />
  );
};

export default PartnerTypeSelect;
