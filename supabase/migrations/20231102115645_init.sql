-- 
-- Users
create table "public"."user_profile" (
    "id" uuid not null,
    "created_at" timestamp with time zone not null default now(),
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
-- Properties
create table "public"."property" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
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
-- projects
create table "public"."project" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
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
create table "public"."partner" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "name" character varying not null,
    "description" text,
    "partner_type" character varying not null
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