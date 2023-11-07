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
		'09ff1f64-682d-4a1e-afd5-bd93efafb219',
		'{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@example.com","user_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","user_phone":""}}',
		'2023-11-02 12:42:42.173191+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a79ef977-b37b-40ab-8799-3de8d4d0b791',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-02 12:42:50.447102+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0651b70b-64bd-4164-9cde-01da859abb4b',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-02 13:14:30.608078+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2183fcea-f2f9-4cc0-a956-4292e08d518a',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-02 13:14:41.75743+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'cb2341be-aa36-4954-9d1d-6c1c5d6ec200',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-02 13:15:21.613566+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd4e45593-d894-4916-992c-94783fead887',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-02 13:16:25.130383+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5c10ec6a-a7c7-4a23-a0b4-01ef41801e72',
		'{"action":"token_refreshed","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 06:01:59.46974+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'71d5acd3-5750-4a4e-9229-ce645f94540f',
		'{"action":"token_revoked","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 06:01:59.470937+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1422122b-e046-4a7f-b7e6-1d51639edf03',
		'{"action":"token_refreshed","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 07:50:15.613381+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'102869cf-502b-4d7f-a766-875d7dc3767d',
		'{"action":"token_revoked","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 07:50:15.616022+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'40996c7b-1895-4b63-8a15-d15c6d387e75',
		'{"action":"token_refreshed","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 12:43:22.69869+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ef6d47ca-c1b9-4ee5-9b10-a2158a162e3f',
		'{"action":"token_revoked","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-03 12:43:22.69933+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'afe6259c-0fd4-4061-ba7c-c9b4e5b0aed1',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 06:27:44.670774+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4b27006d-ff58-4b5c-b018-288ab6012a97',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 06:42:23.538828+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3c522350-8fd1-442f-9f03-bd6047bc0c51',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 06:43:06.670093+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'59fd97b9-0cc3-4ff9-aceb-318e3f2319c3',
		'{"action":"token_refreshed","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-04 07:42:51.759392+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'102ff966-dc06-46cb-8e0a-54451794780a',
		'{"action":"token_revoked","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"token"}',
		'2023-11-04 07:42:51.760289+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4ca9ad47-2d8e-445d-8469-649e29fb9ceb',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 08:01:00.267305+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'81e06b08-6863-43ea-af56-139c9e076270',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 08:01:41.5622+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'b5cdb81c-cbe0-4265-bf69-991faa4b399b',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 08:35:33.75106+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2ca66b44-1ad3-4cb9-a04f-4f5ace2822a1',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 08:36:23.138897+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'23f5fd67-2b36-4c0f-8e4c-121384088aad',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 08:50:08.621894+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd0760ed8-f2f7-42c0-abaf-41f6c977f6db',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 08:50:25.08834+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'887b9fa8-e38a-4211-ac96-4f5016f4d8c6',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 08:50:33.806837+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5b5e8d65-4e8d-4136-a04c-a9d110b3175c',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 08:50:57.895489+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7712ac45-5c0c-477d-8889-ac43ea26504d',
		'{"action":"logout","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account"}',
		'2023-11-04 08:53:14.513378+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'80bc85e3-66b2-489e-be6b-16875b504893',
		'{"action":"login","actor_id":"ad0de4fb-143f-4458-89bb-913e54c6eb53","actor_username":"admin@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2023-11-04 08:53:40.931325+00',
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
		'2023-11-04 08:01:41.562776+00',
		'{"provider": "email", "providers": ["email"]}',
		'{}',
		NULL,
		'2023-11-02 12:42:42.170428+00',
		'2023-11-04 08:01:41.564537+00',
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
		"related_entity_id",
		"type"
	)
VALUES (
		'e51932b6-81d2-4050-82ee-f86a1e306d6e',
		'2023-11-07 07:36:03.374255+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:36:03.374255+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Rubber Duck Installed',
		'246c7cb6-4299-4f46-ab88-c18f0cdb6322',
		'project'
	),
	(
		'd8e53316-9c9e-4c53-9acd-80fca1310041',
		'2023-11-07 07:41:40.307249+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:41:40.307249+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Area Test',
		'ded73341-a324-4fcd-b0a1-20755d166c82',
		'area'
	),
	(
		'924daf84-75bf-4daa-b454-2cef32b012f5',
		'2023-11-07 07:43:27.875659+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-07 07:43:27.875659+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		NULL,
		'Task Test',
		'ad96113f-dd90-4403-8763-7fc65ae6c8cf',
		'task'
	);
--
-- Data for Name: progress_update_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

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
	);
--
-- Data for Name: user_project_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: user_property_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 14, true);
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