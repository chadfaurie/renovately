import { Database } from ".";

export type UserRoleEnum = Database["public"]["Enums"]["user_role"];
export type PartnerTypeEnum = Database["public"]["Enums"]["partner_type"];
export type UpdateTypeEnum = Database["public"]["Enums"]["update_type"];

export type UserProfile = Database["public"]["Tables"]["user_profile"]["Insert"];
