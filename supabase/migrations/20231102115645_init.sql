-- Audit Trail Table
CREATE TABLE "public"."audit_trail" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "timestamp" timestamp with time zone NOT NULL DEFAULT now(),
    "user_id" uuid NOT NULL default auth.uid(),
    "action" character varying NOT NULL,
    "entity" character varying NOT NULL,
    "entity_id" uuid NOT NULL,
    "old_data" jsonb,
    "new_data" jsonb,
    CONSTRAINT "audit_trail_pkey" PRIMARY KEY ("id")
);
-- Enable row-level security if necessary
ALTER TABLE "public"."audit_trail" ENABLE ROW LEVEL SECURITY;
-- Create the foreign key constraint for user_id if needed
ALTER TABLE "public"."audit_trail"
ADD CONSTRAINT "audit_trail_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES auth.users(id) not valid;
-- Index for user_id and entity_id could be beneficial for performance
CREATE INDEX "audit_trail_user_id_idx" ON "public"."audit_trail" USING btree ("user_id");
CREATE INDEX "audit_trail_entity_id_idx" ON "public"."audit_trail" USING btree ("entity_id");
-- 
-- Users
create table "public"."user_profile" (
    "id" uuid not null,
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "first_name" character varying,
    "last_name" character varying,
    "email" character varying
);
alter table "public"."user_profile" enable row level security;
CREATE UNIQUE INDEX user_profile_pkey ON public.user_profile USING btree (id);
alter table "public"."user_profile"
add constraint "user_profile_pkey" PRIMARY KEY using index "user_profile_pkey";
alter table "public"."user_profile"
add constraint "user_profile_id_fkey" FOREIGN KEY (id) REFERENCES auth.users(id) not valid;
alter table "public"."user_profile" validate constraint "user_profile_id_fkey";
--
-- Roles
CREATE TYPE user_role AS ENUM (
    'admin',
    'owner',
    'manager',
    'contractor',
    'supplier',
    'user'
);
-- 
-- Properties
create table "public"."property" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "nickname" character varying,
    "address" character varying not null,
    "ownership_type" character varying,
    "access_restrictions" character varying
);
alter table "public"."property" enable row level security;
CREATE UNIQUE INDEX "property_pkey" ON public."property" USING btree (id);
alter table "public"."property"
add constraint "property_pkey" PRIMARY KEY using index "property_pkey";
-- 
-- Areas
CREATE TABLE "public"."area" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "property_id" uuid NOT NULL,
    "area_name" character varying NOT NULL,
    "area_type" character varying NOT NULL,
    "area_dimensions" text,
    "area_description" text,
    "renovation_status" character varying,
    "renovation_requirements" text,
    "before_images" text [],
    -- Array of image URLs or IDs
    "after_images" text [],
    -- Array of image URLs or IDs
    "current_condition" text,
    "desired_features" text,
    "materials_needed" text [] -- Array of material IDs or JSON
);
ALTER TABLE "public"."area" ENABLE ROW LEVEL SECURITY;
CREATE UNIQUE INDEX area_pkey ON public.area USING btree (id);
ALTER TABLE "public"."area"
ADD CONSTRAINT "area_pkey" PRIMARY KEY USING INDEX "area_pkey";
ALTER TABLE "public"."area"
ADD CONSTRAINT "area_property_id_fkey" FOREIGN KEY (property_id) REFERENCES property(id);
-- 
-- projects
create table "public"."project" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "title" character varying not null,
    "description" text,
    "start_date" date,
    "estimated_end_date" date,
    "status" character varying not null,
    "property_id" uuid NOT NULL
);
alter table "public"."project" enable row level security;
CREATE UNIQUE INDEX "project_pkey" ON public."project" USING btree (id);
alter table "public"."project"
add constraint "project_pkey" PRIMARY KEY using index "project_pkey";
alter table "public"."project"
add constraint "project_property_id_fkey" FOREIGN KEY (property_id) REFERENCES property(id) not valid;
alter table "public"."project" validate constraint "project_property_id_fkey";
-- 
-- Supplier
CREATE TYPE partner_type AS ENUM ('contractor', 'supplier');
create table "public"."partner" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "name" character varying not null,
    "description" text,
    "partner_type" partner_type not null
);
alter table "public"."partner" enable row level security;
CREATE UNIQUE INDEX "partner_pkey" ON public."partner" USING btree (id);
alter table "public"."partner"
add constraint "partner_pkey" PRIMARY KEY using index "partner_pkey";
-- 
-- Supplier Links Table
create table "public"."partner_project_link" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "partner_id" uuid,
    "project_id" uuid,
    "assigned_date" date,
    "status" character varying
);
alter table "public"."partner_project_link" enable row level security;
CREATE UNIQUE INDEX partner_project_link_pkey ON public.partner_project_link USING btree (id);
alter table "public"."partner_project_link"
add constraint "partner_project_link_pkey" PRIMARY KEY using index "partner_project_link_pkey";
alter table "public"."partner_project_link"
add constraint "partner_project_link_project_id_fkey" FOREIGN KEY (project_id) REFERENCES project(id) not valid;
alter table "public"."partner_project_link" validate constraint "partner_project_link_project_id_fkey";
alter table "public"."partner_project_link"
add constraint "partner_project_link_partner_id_fkey" FOREIGN KEY (partner_id) REFERENCES partner(id) not valid;
alter table "public"."partner_project_link" validate constraint "partner_project_link_partner_id_fkey";
-- 
-- Tasks
create table "public"."task" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "description" text,
    "to_be_completed_by" uuid,
    "status" character varying,
    "priority" integer,
    "project_id" uuid
);
alter table "public"."task" enable row level security;
CREATE UNIQUE INDEX task_pkey ON public.task USING btree (id);
alter table "public"."task"
add constraint "task_pkey" PRIMARY KEY using index "task_pkey";
alter table "public"."task"
add constraint "task_project_id_fkey" FOREIGN KEY (project_id) REFERENCES project(id) not valid;
alter table "public"."task" validate constraint "task_project_id_fkey";
alter table "public"."task"
add constraint "task_to_be_completed_by_fkey" FOREIGN KEY (to_be_completed_by) REFERENCES partner(id) not valid;
alter table "public"."task" validate constraint "task_to_be_completed_by_fkey";
-- 
-- User Project Role Link
CREATE TABLE "public"."user_project_role_link" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "user_id" uuid NOT NULL,
    "project_id" uuid NOT NULL,
    "role" user_role NOT NULL,
    CONSTRAINT "user_project_role_link_pkey" PRIMARY KEY ("id")
);
-- Enable row-level security if necessary
ALTER TABLE "public"."user_project_role_link" ENABLE ROW LEVEL SECURITY;
-- Create the foreign key constraints
ALTER TABLE "public"."user_project_role_link"
ADD CONSTRAINT "user_project_role_link_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."user_profile"("id");
ALTER TABLE "public"."user_project_role_link"
ADD CONSTRAINT "user_project_role_link_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."project"("id");
-- 
-- User Property Role Link
CREATE TABLE "public"."user_property_role_link" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "user_id" uuid NOT NULL,
    "property_id" uuid NOT NULL,
    "role" user_role NOT NULL,
    CONSTRAINT "user_property_role_link_pkey" PRIMARY KEY ("id")
);
-- Enable row-level security if necessary
ALTER TABLE "public"."user_property_role_link" ENABLE ROW LEVEL SECURITY;
-- Create the foreign key constraints
ALTER TABLE "public"."user_property_role_link"
ADD CONSTRAINT "user_property_role_link_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."user_profile"("id");
ALTER TABLE "public"."user_property_role_link"
ADD CONSTRAINT "user_property_role_link_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "public"."property"("id");
-- 
-- Progress Updates
CREATE TYPE update_type AS ENUM ('project', 'task', 'room');
CREATE TABLE "public"."progress_updates" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "update_description" text NOT NULL,
    -- This could be project, task, or room ID
    "related_entity_id" uuid NOT NULL,
    -- Enum: 'Project', 'Task', 'Room'
    "update_type" update_type
);
ALTER TABLE "public"."progress_updates" ENABLE ROW LEVEL SECURITY;
CREATE UNIQUE INDEX progress_updates_pkey ON public.progress_updates USING btree (id);
ALTER TABLE "public"."progress_updates"
ADD CONSTRAINT "progress_updates_pkey" PRIMARY KEY USING INDEX "progress_updates_pkey";
-- 
-- Images
CREATE TABLE "public"."progress_update_images" (
    "id" uuid NOT NULL DEFAULT gen_random_uuid(),
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "created_by" uuid NOT NULL default auth.uid(),
    "image_url" text NOT NULL,
    "progress_update_id" uuid NOT NULL -- ID of the progress update
);
ALTER TABLE "public"."progress_update_images" ENABLE ROW LEVEL SECURITY;
CREATE UNIQUE INDEX progress_update_images_pkey ON public.progress_update_images USING btree (id);
ALTER TABLE "public"."progress_update_images"
ADD CONSTRAINT "progress_update_images_pkey" PRIMARY KEY USING INDEX "progress_update_images_pkey";
ALTER TABLE "public"."progress_update_images"
ADD CONSTRAINT "progress_update_images_progress_update_id_fkey" FOREIGN KEY (progress_update_id) REFERENCES progress_updates(id);