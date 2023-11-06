import { SelectInput } from "react-admin";

export const PartnerTypeSelect = () => {
  return (
    <SelectInput
      source="partner_type"
      choices={[
        { id: "CONTRACTOR", name: "Contractor" },
        { id: "SUPPLIER", name: "Supplier" },
      ]}
    />
  );
};

export default PartnerTypeSelect;
