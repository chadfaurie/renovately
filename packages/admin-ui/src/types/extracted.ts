import { Identifier } from "react-admin";

import { Database } from ".";

export type UserRoleEnum = Database["public"]["Enums"]["user_role"];
export type PartnerTypeEnum = Database["public"]["Enums"]["partner_type"];
export type UpdateTypeEnum = Database["public"]["Enums"]["update_type"];
export type InvitationStatusEnum = Database["public"]["Enums"]["link_invitation_status_enum"];
export type InvitationTypeEnum = Database["public"]["Enums"]["invite_type_enum"];

export type UserProfile = Database["public"]["Tables"]["user_profile"]["Insert"];
export type Invitation = Database["public"]["Views"]["invite_view"]["Insert"];
export type Task = Database["public"]["Tables"]["task"]["Insert"] & { id: Identifier };
