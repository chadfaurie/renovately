import { SelectInput, required } from "react-admin";

import { InvitationStatusEnum, UserRoleEnum } from "../../types";
import { Choices } from "../../utils";

const userRoleChoices: Choices<UserRoleEnum> = [
  { id: "admin", name: "Admin" },

  { id: "owner", name: "Owner" },
  { id: "manager", name: "Manager" },

  { id: "contractor", name: "Contractor" },
  { id: "supplier", name: "Supplier" },

  { id: "user", name: "User" },
];

export const UserRoleSelect = () => {
  return <SelectInput source="role" choices={userRoleChoices} validate={[required()]} />;
};

const inviteStatusChoices: Choices<InvitationStatusEnum> = [
  { id: "accepted", name: "Accepted" },
  { id: "declined", name: "Declined" },
  { id: "invited", name: "Invited" },
];

export const InviteStatusSelect = () => {
  return <SelectInput source="status" choices={inviteStatusChoices} validate={[required()]} />;
};
