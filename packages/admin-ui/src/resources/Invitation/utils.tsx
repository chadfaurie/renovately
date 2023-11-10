import Chip from "@mui/material/Chip";
import { ComponentProps } from "react";
import { FunctionField, SelectInput, required } from "react-admin";

import { Invitation, InvitationTypeEnum } from "../../types";
import { Choices } from "../../utils";

const invitationTypeChoices: Choices<InvitationTypeEnum> = [
  { id: "project", name: "Project" },
  { id: "property", name: "Property" },
];

export const InvitationTypeSelect = () => {
  return <SelectInput source="type" choices={invitationTypeChoices} validate={[required()]} />;
};

type InvitationStatusProps = Partial<ComponentProps<typeof FunctionField>>;

export const InvitationStatusField = (props: InvitationStatusProps) => {
  return (
    <FunctionField
      render={(record: Invitation) => {
        if (record.accepted_at) {
          return <Chip label="Accepted" />;
        } else if (record.expires_at && new Date(record.expires_at) < new Date()) {
          return <Chip color="error" label="Expired" />;
        }

        return <Chip color="info" label="Pending" />;
      }}
      {...props}
    />
  );
};

export const relatedSourceMap: Record<InvitationTypeEnum, string> = {
  project: "title",
  property: "address",
};
