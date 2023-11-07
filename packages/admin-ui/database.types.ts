export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[];

export interface Database {
  graphql_public: {
    Tables: {
      [_ in never]: never;
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      graphql: {
        Args: {
          operationName?: string;
          query?: string;
          variables?: Json;
          extensions?: Json;
        };
        Returns: Json;
      };
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  public: {
    Tables: {
      area: {
        Row: {
          after_images: string[] | null;
          before_images: string[] | null;
          created_at: string;
          created_by: string;
          current_condition: string | null;
          deleted_at: string | null;
          description: string | null;
          desired_features: string | null;
          dimensions: string | null;
          id: string;
          materials_needed: string[] | null;
          modified_at: string;
          modified_by: string;
          name: string;
          property_id: string;
          renovation_requirements: string | null;
          renovation_status: string | null;
          type: string;
        };
        Insert: {
          after_images?: string[] | null;
          before_images?: string[] | null;
          created_at?: string;
          created_by?: string;
          current_condition?: string | null;
          deleted_at?: string | null;
          description?: string | null;
          desired_features?: string | null;
          dimensions?: string | null;
          id?: string;
          materials_needed?: string[] | null;
          modified_at?: string;
          modified_by?: string;
          name: string;
          property_id: string;
          renovation_requirements?: string | null;
          renovation_status?: string | null;
          type: string;
        };
        Update: {
          after_images?: string[] | null;
          before_images?: string[] | null;
          created_at?: string;
          created_by?: string;
          current_condition?: string | null;
          deleted_at?: string | null;
          description?: string | null;
          desired_features?: string | null;
          dimensions?: string | null;
          id?: string;
          materials_needed?: string[] | null;
          modified_at?: string;
          modified_by?: string;
          name?: string;
          property_id?: string;
          renovation_requirements?: string | null;
          renovation_status?: string | null;
          type?: string;
        };
        Relationships: [
          {
            foreignKeyName: "area_property_id_fkey";
            columns: ["property_id"];
            referencedRelation: "property";
            referencedColumns: ["id"];
          },
        ];
      };
      audit_trail: {
        Row: {
          action: string;
          entity: string;
          entity_id: string;
          id: string;
          new_data: Json | null;
          old_data: Json | null;
          timestamp: string;
          user_id: string;
        };
        Insert: {
          action: string;
          entity: string;
          entity_id: string;
          id?: string;
          new_data?: Json | null;
          old_data?: Json | null;
          timestamp?: string;
          user_id?: string;
        };
        Update: {
          action?: string;
          entity?: string;
          entity_id?: string;
          id?: string;
          new_data?: Json | null;
          old_data?: Json | null;
          timestamp?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "audit_trail_user_id_fkey";
            columns: ["user_id"];
            referencedRelation: "users";
            referencedColumns: ["id"];
          },
        ];
      };
      partner: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          description: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          name: string;
          type: Database["public"]["Enums"]["partner_type"];
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          name: string;
          type: Database["public"]["Enums"]["partner_type"];
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          name?: string;
          type?: Database["public"]["Enums"]["partner_type"];
        };
        Relationships: [];
      };
      partner_project_link: {
        Row: {
          assigned_date: string | null;
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          partner_id: string | null;
          project_id: string | null;
          status: string | null;
        };
        Insert: {
          assigned_date?: string | null;
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          partner_id?: string | null;
          project_id?: string | null;
          status?: string | null;
        };
        Update: {
          assigned_date?: string | null;
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          partner_id?: string | null;
          project_id?: string | null;
          status?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "partner_project_link_partner_id_fkey";
            columns: ["partner_id"];
            referencedRelation: "partner";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "partner_project_link_project_id_fkey";
            columns: ["project_id"];
            referencedRelation: "project";
            referencedColumns: ["id"];
          },
        ];
      };
      progress: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          description: string;
          id: string;
          modified_at: string;
          modified_by: string;
          related_entity_id: string;
          type: Database["public"]["Enums"]["update_type"] | null;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description: string;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          related_entity_id: string;
          type?: Database["public"]["Enums"]["update_type"] | null;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          related_entity_id?: string;
          type?: Database["public"]["Enums"]["update_type"] | null;
        };
        Relationships: [];
      };
      progress_update_images: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          id: string;
          image_url: string;
          modified_at: string;
          modified_by: string;
          progress_update_id: string;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          image_url: string;
          modified_at?: string;
          modified_by?: string;
          progress_update_id: string;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          image_url?: string;
          modified_at?: string;
          modified_by?: string;
          progress_update_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "progress_update_images_progress_update_id_fkey";
            columns: ["progress_update_id"];
            referencedRelation: "progress";
            referencedColumns: ["id"];
          },
        ];
      };
      project: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          description: string | null;
          estimated_end_date: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          property_id: string;
          start_date: string | null;
          status: string;
          title: string;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          estimated_end_date?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          property_id: string;
          start_date?: string | null;
          status: string;
          title: string;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          estimated_end_date?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          property_id?: string;
          start_date?: string | null;
          status?: string;
          title?: string;
        };
        Relationships: [
          {
            foreignKeyName: "project_property_id_fkey";
            columns: ["property_id"];
            referencedRelation: "property";
            referencedColumns: ["id"];
          },
        ];
      };
      property: {
        Row: {
          access_restrictions: string | null;
          address: string;
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          nickname: string | null;
          ownership_type: string | null;
        };
        Insert: {
          access_restrictions?: string | null;
          address: string;
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          nickname?: string | null;
          ownership_type?: string | null;
        };
        Update: {
          access_restrictions?: string | null;
          address?: string;
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          nickname?: string | null;
          ownership_type?: string | null;
        };
        Relationships: [];
      };
      task: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          description: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          priority: number | null;
          project_id: string | null;
          status: string | null;
          to_be_completed_by: string | null;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          priority?: number | null;
          project_id?: string | null;
          status?: string | null;
          to_be_completed_by?: string | null;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          description?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          priority?: number | null;
          project_id?: string | null;
          status?: string | null;
          to_be_completed_by?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "task_project_id_fkey";
            columns: ["project_id"];
            referencedRelation: "project";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "task_to_be_completed_by_fkey";
            columns: ["to_be_completed_by"];
            referencedRelation: "partner";
            referencedColumns: ["id"];
          },
        ];
      };
      user_profile: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          email: string | null;
          first_name: string | null;
          id: string;
          last_name: string | null;
          modified_at: string;
          modified_by: string;
          role: Database["public"]["Enums"]["user_role"];
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          email?: string | null;
          first_name?: string | null;
          id: string;
          last_name?: string | null;
          modified_at?: string;
          modified_by?: string;
          role?: Database["public"]["Enums"]["user_role"];
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          email?: string | null;
          first_name?: string | null;
          id?: string;
          last_name?: string | null;
          modified_at?: string;
          modified_by?: string;
          role?: Database["public"]["Enums"]["user_role"];
        };
        Relationships: [
          {
            foreignKeyName: "user_profile_id_fkey";
            columns: ["id"];
            referencedRelation: "users";
            referencedColumns: ["id"];
          },
        ];
      };
      user_project_role_link: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          project_id: string;
          role: Database["public"]["Enums"]["user_role"];
          user_id: string;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          project_id: string;
          role: Database["public"]["Enums"]["user_role"];
          user_id: string;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          project_id?: string;
          role?: Database["public"]["Enums"]["user_role"];
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "user_project_role_link_project_id_fkey";
            columns: ["project_id"];
            referencedRelation: "project";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "user_project_role_link_user_id_fkey";
            columns: ["user_id"];
            referencedRelation: "user_profile";
            referencedColumns: ["id"];
          },
        ];
      };
      user_property_role_link: {
        Row: {
          created_at: string;
          created_by: string;
          deleted_at: string | null;
          id: string;
          modified_at: string;
          modified_by: string;
          property_id: string;
          role: Database["public"]["Enums"]["user_role"];
          user_id: string;
        };
        Insert: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          property_id: string;
          role: Database["public"]["Enums"]["user_role"];
          user_id: string;
        };
        Update: {
          created_at?: string;
          created_by?: string;
          deleted_at?: string | null;
          id?: string;
          modified_at?: string;
          modified_by?: string;
          property_id?: string;
          role?: Database["public"]["Enums"]["user_role"];
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "user_property_role_link_property_id_fkey";
            columns: ["property_id"];
            referencedRelation: "property";
            referencedColumns: ["id"];
          },
          {
            foreignKeyName: "user_property_role_link_user_id_fkey";
            columns: ["user_id"];
            referencedRelation: "user_profile";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      partner_type: "contractor" | "supplier";
      update_type: "project" | "task" | "area";
      user_role: "admin" | "owner" | "manager" | "contractor" | "supplier" | "user";
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
  storage: {
    Tables: {
      buckets: {
        Row: {
          allowed_mime_types: string[] | null;
          avif_autodetection: boolean | null;
          created_at: string | null;
          file_size_limit: number | null;
          id: string;
          name: string;
          owner: string | null;
          owner_id: string | null;
          public: boolean | null;
          updated_at: string | null;
        };
        Insert: {
          allowed_mime_types?: string[] | null;
          avif_autodetection?: boolean | null;
          created_at?: string | null;
          file_size_limit?: number | null;
          id: string;
          name: string;
          owner?: string | null;
          owner_id?: string | null;
          public?: boolean | null;
          updated_at?: string | null;
        };
        Update: {
          allowed_mime_types?: string[] | null;
          avif_autodetection?: boolean | null;
          created_at?: string | null;
          file_size_limit?: number | null;
          id?: string;
          name?: string;
          owner?: string | null;
          owner_id?: string | null;
          public?: boolean | null;
          updated_at?: string | null;
        };
        Relationships: [];
      };
      migrations: {
        Row: {
          executed_at: string | null;
          hash: string;
          id: number;
          name: string;
        };
        Insert: {
          executed_at?: string | null;
          hash: string;
          id: number;
          name: string;
        };
        Update: {
          executed_at?: string | null;
          hash?: string;
          id?: number;
          name?: string;
        };
        Relationships: [];
      };
      objects: {
        Row: {
          bucket_id: string | null;
          created_at: string | null;
          id: string;
          last_accessed_at: string | null;
          metadata: Json | null;
          name: string | null;
          owner: string | null;
          owner_id: string | null;
          path_tokens: string[] | null;
          updated_at: string | null;
          version: string | null;
        };
        Insert: {
          bucket_id?: string | null;
          created_at?: string | null;
          id?: string;
          last_accessed_at?: string | null;
          metadata?: Json | null;
          name?: string | null;
          owner?: string | null;
          owner_id?: string | null;
          path_tokens?: string[] | null;
          updated_at?: string | null;
          version?: string | null;
        };
        Update: {
          bucket_id?: string | null;
          created_at?: string | null;
          id?: string;
          last_accessed_at?: string | null;
          metadata?: Json | null;
          name?: string | null;
          owner?: string | null;
          owner_id?: string | null;
          path_tokens?: string[] | null;
          updated_at?: string | null;
          version?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "objects_bucketId_fkey";
            columns: ["bucket_id"];
            referencedRelation: "buckets";
            referencedColumns: ["id"];
          },
        ];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      can_insert_object: {
        Args: {
          bucketid: string;
          name: string;
          owner: string;
          metadata: Json;
        };
        Returns: undefined;
      };
      extension: {
        Args: {
          name: string;
        };
        Returns: string;
      };
      filename: {
        Args: {
          name: string;
        };
        Returns: string;
      };
      foldername: {
        Args: {
          name: string;
        };
        Returns: unknown;
      };
      get_size_by_bucket: {
        Args: Record<PropertyKey, never>;
        Returns: {
          size: number;
          bucket_id: string;
        }[];
      };
      search: {
        Args: {
          prefix: string;
          bucketname: string;
          limits?: number;
          levels?: number;
          offsets?: number;
          search?: string;
          sortcolumn?: string;
          sortorder?: string;
        };
        Returns: {
          name: string;
          id: string;
          updated_at: string;
          created_at: string;
          last_accessed_at: string;
          metadata: Json;
        }[];
      };
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
}
