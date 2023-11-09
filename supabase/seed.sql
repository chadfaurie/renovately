--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" (
		"instance_id",
		"id",
		"payload",
		"created_at",
		"ip_address"
	)
VALUES (
		'00000000-0000-0000-0000-000000000000',
		'3e62cff0-eca9-465a-b8fb-bac28dce4ce0',
		'{"action":"token_revoked","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"root@root.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-09 10:29:26.649418+00',
		''
	);
--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" (
		"instance_id",
		"id",
		"aud",
		"role",
		"email",
		"encrypted_password",
		"email_confirmed_at",
		"invited_at",
		"confirmation_token",
		"confirmation_sent_at",
		"recovery_token",
		"recovery_sent_at",
		"email_change_token_new",
		"email_change",
		"email_change_sent_at",
		"last_sign_in_at",
		"raw_app_meta_data",
		"raw_user_meta_data",
		"is_super_admin",
		"created_at",
		"updated_at",
		"phone",
		"phone_confirmed_at",
		"phone_change",
		"phone_change_token",
		"phone_change_sent_at",
		"email_change_token_current",
		"email_change_confirm_status",
		"banned_until",
		"reauthentication_token",
		"reauthentication_sent_at",
		"is_sso_user",
		"deleted_at"
	)
VALUES (
		'00000000-0000-0000-0000-000000000000',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'authenticated',
		'authenticated',
		'admin@example.com',
		'$2a$10$oNoHPsMzaknPILojkcAN5ux7osLppn.htgwHBm.WPRmMHy4.U6IdK',
		'2023-11-02 12:42:42.174603+00',
		NULL,
		'',
		NULL,
		'',
		NULL,
		'',
		'',
		NULL,
		'2023-11-04 08:53:40.931829+00',
		'{"provider": "email", "providers": ["email"]}',
		'{}',
		NULL,
		'2023-11-02 12:42:42.170428+00',
		'2023-11-04 08:53:40.933396+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'00000000-0000-0000-0000-000000000000',
		'authenticated',
		'authenticated',
		'root@root.com',
		'$2a$10$oNoHPsMzaknPILojkcAN5ux7osLppn.htgwHBm.WPRmMHy4.U6IdK',
		'2023-11-02 12:42:42.174603+00',
		NULL,
		'',
		NULL,
		'',
		NULL,
		'',
		'',
		NULL,
		'2023-11-09 05:55:44.91248+00',
		'{"provider": "email", "providers": ["email"]}',
		'{}',
		NULL,
		'2023-11-02 12:42:42.170428+00',
		'2023-11-09 10:29:26.65231+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL
	);
--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" (
		"id",
		"user_id",
		"identity_data",
		"provider",
		"last_sign_in_at",
		"created_at",
		"updated_at"
	)
VALUES (
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'{"sub": "ad0de4fb-143f-4458-89bb-913e54c6eb53", "email": "admin@example.com"}',
		'email',
		'2023-11-02 12:42:42.172224+00',
		'2023-11-02 12:42:42.172246+00',
		'2023-11-02 12:42:42.172246+00'
	);
--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" (
		"id",
		"user_id",
		"created_at",
		"updated_at",
		"factor_id",
		"aal",
		"not_after"
	)
VALUES (
		'511138ca-f0e4-4a30-b850-a2c49697ec7e',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 08:53:40.931889+00',
		'2023-11-04 08:53:40.931889+00',
		NULL,
		'aal1',
		NULL
	),
	(
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 05:55:44.91253+00',
		'2023-11-09 05:55:44.91253+00',
		NULL,
		'aal1',
		NULL
	);
--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" (
		"session_id",
		"created_at",
		"updated_at",
		"authentication_method",
		"id"
	)
VALUES (
		'511138ca-f0e4-4a30-b850-a2c49697ec7e',
		'2023-11-04 08:53:40.93363+00',
		'2023-11-04 08:53:40.93363+00',
		'password',
		'7ceaf4a5-4caa-42dc-8e55-b6132af4a9c3'
	),
	(
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f',
		'2023-11-09 05:55:44.913946+00',
		'2023-11-09 05:55:44.913946+00',
		'password',
		'2db2f9df-9113-483d-b79a-de9edbc07c75'
	);
--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" (
		"instance_id",
		"id",
		"token",
		"user_id",
		"revoked",
		"created_at",
		"updated_at",
		"parent",
		"session_id"
	)
VALUES (
		'00000000-0000-0000-0000-000000000000',
		14,
		'UnGR_zu1nkXoxXX0NQCpXw',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		false,
		'2023-11-04 08:53:40.93265+00',
		'2023-11-04 08:53:40.93265+00',
		NULL,
		'511138ca-f0e4-4a30-b850-a2c49697ec7e'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		16,
		'9uCK7KcKmBd3g4lpQkgemg',
		'00000000-0000-0000-0000-000000000000',
		true,
		'2023-11-09 05:55:44.913132+00',
		'2023-11-09 07:01:32.127562+00',
		NULL,
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		17,
		'BIGlipRcKXUiMZy_ILf0XA',
		'00000000-0000-0000-0000-000000000000',
		true,
		'2023-11-09 07:01:32.129207+00',
		'2023-11-09 09:31:16.512243+00',
		'9uCK7KcKmBd3g4lpQkgemg',
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		18,
		'KXpjGWNDfHBm5QHh7ZFlcQ',
		'00000000-0000-0000-0000-000000000000',
		true,
		'2023-11-09 09:31:16.518475+00',
		'2023-11-09 10:29:26.649765+00',
		'BIGlipRcKXUiMZy_ILf0XA',
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		19,
		'zIFdSDI0CwvKxyull750pA',
		'00000000-0000-0000-0000-000000000000',
		false,
		'2023-11-09 10:29:26.651173+00',
		'2023-11-09 10:29:26.651173+00',
		'KXpjGWNDfHBm5QHh7ZFlcQ',
		'e994e882-48b2-46ed-9e16-8ac1cbebea5f'
	);
--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."property" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"nickname",
		"address",
		"ownership_type",
		"access_restrictions"
	)
VALUES (
		'69370b5b-a2eb-47d6-898b-3ea861594d34',
		'2023-11-07 07:19:48.22188+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:19:48.22188+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Home',
		'15c Indian Road',
		'OWNER',
		'NONE'
	),
	(
		'6d917d60-e077-4836-aa78-f623a612c6e1',
		'2023-11-09 05:55:35.844191+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 05:55:35.844191+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'Bob',
		'Test 1',
		'OWNER',
		'NONE'
	);
--
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."area" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"property_id",
		"name",
		"type",
		"dimensions",
		"description",
		"renovation_status",
		"renovation_requirements",
		"before_images",
		"after_images",
		"current_condition",
		"desired_features",
		"materials_needed"
	)
VALUES (
		'29703a6f-c527-4c4d-a510-65bebba2a7ce',
		'2023-11-07 07:30:35.117943+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:30:35.117943+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'69370b5b-a2eb-47d6-898b-3ea861594d34',
		'Bathroom',
		'BATHROOM',
		'3x3',
		'Bathroom',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	),
	(
		'ded73341-a324-4fcd-b0a1-20755d166c82',
		'2023-11-07 07:31:00.998029+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:31:00.998029+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'69370b5b-a2eb-47d6-898b-3ea861594d34',
		'Kitchen',
		'KITCHEN',
		'3x5.4',
		'Kitchen',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	),
	(
		'2909ce97-b40e-473a-b528-825254370e03',
		'2023-11-09 06:27:37.961571+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 06:27:37.961571+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'6d917d60-e077-4836-aa78-f623a612c6e1',
		'Test',
		'BATHROOM',
		NULL,
		'Test',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
--
-- Data for Name: audit_trail; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."partner" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"name",
		"description",
		"type"
	)
VALUES (
		'cd9ebfb0-8aae-4f69-b009-33c4e40bdc89',
		'2023-11-07 07:29:37.213025+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:29:37.213025+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Bob (The Builder)',
		'Builder Guy',
		'contractor'
	),
	(
		'35f714da-c9e3-4f27-b80f-f2d8813091aa',
		'2023-11-07 07:29:52.193123+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:29:52.193123+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Tiles R us',
		'Tiles and Junk',
		'supplier'
	);
--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."project" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"title",
		"description",
		"start_date",
		"estimated_end_date",
		"status",
		"property_id"
	)
VALUES (
		'246c7cb6-4299-4f46-ab88-c18f0cdb6322',
		'2023-11-07 07:21:40.053515+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:21:40.053515+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Bathroom Renovation 1',
		'Replace Towel Rails',
		'2023-12-01',
		'2023-12-31',
		'PLANNING',
		'69370b5b-a2eb-47d6-898b-3ea861594d34'
	),
	(
		'0f2ab64b-8250-4abf-a8c8-6cd3d2cc5e06',
		'2023-11-09 06:32:57.959112+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 06:32:57.959112+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'Project',
		NULL,
		NULL,
		NULL,
		'PLANNED',
		'6d917d60-e077-4836-aa78-f623a612c6e1'
	);
--
-- Data for Name: partner_project_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."progress" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"description",
		"type",
		"related_entity_id"
	)
VALUES (
		'e51932b6-81d2-4050-82ee-f86a1e306d6e',
		'2023-11-07 07:36:03.374255+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:36:03.374255+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Rubber Duck Installed',
		'project',
		'246c7cb6-4299-4f46-ab88-c18f0cdb6322'
	),
	(
		'd8e53316-9c9e-4c53-9acd-80fca1310041',
		'2023-11-07 07:41:40.307249+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:41:40.307249+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Area Test',
		'area',
		'ded73341-a324-4fcd-b0a1-20755d166c82'
	),
	(
		'924daf84-75bf-4daa-b454-2cef32b012f5',
		'2023-11-07 07:43:27.875659+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:43:27.875659+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Task Test',
		'task',
		'ad96113f-dd90-4403-8763-7fc65ae6c8cf'
	),
	(
		'01d444bc-a8be-4cc0-ac00-5c6a8f7ec4d5',
		'2023-11-09 06:35:53.034421+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 06:35:53.034421+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'Test',
		'project',
		'0f2ab64b-8250-4abf-a8c8-6cd3d2cc5e06'
	);
--
-- Data for Name: progress_update_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."progress_update_images" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"image_url",
		"progress_update_id"
	)
VALUES (
		'7687557c-b54a-470d-806f-5ed18357cf39',
		'2023-11-09 06:36:25.823834+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 06:36:25.823834+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'http://127.0.0.1:54321/storage/v1/object/public/progress_update_images/',
		'01d444bc-a8be-4cc0-ac00-5c6a8f7ec4d5'
	);
--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."task" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"description",
		"to_be_completed_by",
		"status",
		"priority",
		"project_id"
	)
VALUES (
		'ad96113f-dd90-4403-8763-7fc65ae6c8cf',
		'2023-11-07 07:38:35.637338+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:38:35.637338+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Testing 1234',
		'cd9ebfb0-8aae-4f69-b009-33c4e40bdc89',
		'PENDING',
		1,
		'246c7cb6-4299-4f46-ab88-c18f0cdb6322'
	),
	(
		'48dd0c93-22c7-4b66-9a86-4417b79e0f58',
		'2023-11-09 06:51:55.605477+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-09 06:51:55.605477+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'Test',
		NULL,
		NULL,
		NULL,
		'0f2ab64b-8250-4abf-a8c8-6cd3d2cc5e06'
	);
--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profile" (
		"id",
		"created_at",
		"created_by",
		"modified_at",
		"modified_by",
		"deleted_at",
		"first_name",
		"last_name",
		"email",
		"role"
	)
VALUES (
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:28:58.909329+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:28:58.909329+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Admin',
		'Admin',
		'admin@admin.com',
		'admin'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2023-11-08 05:43:10.526001+00',
		'00000000-0000-0000-0000-000000000000',
		'2023-11-08 05:43:10.526001+00',
		'00000000-0000-0000-0000-000000000000',
		NULL,
		'Root',
		'Root',
		'root@root.com',
		'user'
	);
--
-- Data for Name: user_project_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- INSERT INTO "public"."user_project_role_link" (
-- 		"id",
-- 		"created_at",
-- 		"created_by",
-- 		"modified_at",
-- 		"modified_by",
-- 		"deleted_at",
-- 		"user_id",
-- 		"project_id",
-- 		"role"
-- 	)
-- VALUES (
-- 		'da75e7e4-bff4-4521-88db-f4412cab75b1',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		NULL,
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		'246c7cb6-4299-4f46-ab88-c18f0cdb6322',
-- 		'owner'
-- 	),
-- 	(
-- 		'32528a87-ee6d-435d-8fba-bc101fbbd8b0',
-- 		'2023-11-09 06:32:57.959112+00',
-- 		'00000000-0000-0000-0000-000000000000',
-- 		'2023-11-09 06:32:57.959112+00',
-- 		'00000000-0000-0000-0000-000000000000',
-- 		NULL,
-- 		'00000000-0000-0000-0000-000000000000',
-- 		'0f2ab64b-8250-4abf-a8c8-6cd3d2cc5e06',
-- 		'owner'
-- 	);
--
-- Data for Name: user_property_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- INSERT INTO "public"."user_property_role_link" (
-- 		"id",
-- 		"created_at",
-- 		"created_by",
-- 		"modified_at",
-- 		"modified_by",
-- 		"deleted_at",
-- 		"user_id",
-- 		"property_id",
-- 		"role"
-- 	)
-- VALUES (
-- 		'03c974c5-7130-4835-b1ab-b57039fdc903',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		NULL,
-- 		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
-- 		'69370b5b-a2eb-47d6-898b-3ea861594d34',
-- 		'owner'
-- 	),
-- 	(
-- 		'a055e816-8b34-4532-a3ed-45700b0fffae',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'00000000-0000-0000-0000-000000000000',
-- 		'2023-11-09 06:26:44.051757+00',
-- 		'00000000-0000-0000-0000-000000000000',
-- 		NULL,
-- 		'00000000-0000-0000-0000-000000000000',
-- 		'6d917d60-e077-4836-aa78-f623a612c6e1',
-- 		'owner'
-- 	);
--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" (
		"id",
		"name",
		"owner",
		"created_at",
		"updated_at",
		"public",
		"avif_autodetection",
		"file_size_limit",
		"allowed_mime_types",
		"owner_id"
	)
VALUES (
		'progress_update_images',
		'progress_update_images',
		NULL,
		'2023-11-04 06:55:08.54898+00',
		'2023-11-04 06:55:08.54898+00',
		false,
		false,
		NULL,
		NULL,
		NULL
	);
--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" (
		"id",
		"bucket_id",
		"name",
		"owner",
		"created_at",
		"updated_at",
		"last_accessed_at",
		"metadata",
		"version",
		"owner_id"
	)
VALUES (
		'059a30a9-5591-4180-a7b0-dd365ab5069b',
		'progress_update_images',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/photo-1698106828998-787ee1cc115c.jpeg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 07:01:11.340637+00',
		'2023-11-04 07:01:11.340637+00',
		'2023-11-04 07:01:11.340637+00',
		'{"eTag": "\"e995dddcfc716afeb2aba4ff78d22f49\"", "size": 246994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-11-04T07:01:11.332Z", "contentLength": 246994, "httpStatusCode": 200}',
		'7117a725-45d3-4306-aa74-77a4a68f75d0',
		NULL
	),
	(
		'e449a4a6-33c8-4c09-8c85-c4231620e00c',
		'progress_update_images',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/-ketUggr80dX8RU8_mkZf_photo-1698106828998-787ee1cc115c.jpeg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 07:03:42.845032+00',
		'2023-11-04 07:03:42.845032+00',
		'2023-11-04 07:03:42.845032+00',
		'{"eTag": "\"e995dddcfc716afeb2aba4ff78d22f49\"", "size": 246994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-11-04T07:03:42.832Z", "contentLength": 246994, "httpStatusCode": 200}',
		'cad7ac52-244e-4008-97ff-9215b4ecb994',
		NULL
	),
	(
		'dc9d18e1-ccbe-4115-84a1-bb78038e90d7',
		'progress_update_images',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/9veMYiWkfcspg6k1okoLS.jpeg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 07:05:21.027234+00',
		'2023-11-04 07:05:21.027234+00',
		'2023-11-04 07:05:21.027234+00',
		'{"eTag": "\"e995dddcfc716afeb2aba4ff78d22f49\"", "size": 246994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-11-04T07:05:21.021Z", "contentLength": 246994, "httpStatusCode": 200}',
		'95ee3764-66d5-4c39-96e0-f983a6a4563b',
		NULL
	),
	(
		'853ea6f9-3706-4ae9-9e08-03ee4049fcf6',
		'progress_update_images',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/DqvqjOPDyIZ96fucyDyYD.jpeg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 07:06:45.33667+00',
		'2023-11-04 07:06:45.33667+00',
		'2023-11-04 07:06:45.33667+00',
		'{"eTag": "\"e995dddcfc716afeb2aba4ff78d22f49\"", "size": 246994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-11-04T07:06:45.331Z", "contentLength": 246994, "httpStatusCode": 200}',
		'762dda8a-b59b-478b-ab5a-8c546cef33c5',
		NULL
	);
--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 19, true);
--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);
--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);
--
-- PostgreSQL database dump complete
--

RESET ALL;