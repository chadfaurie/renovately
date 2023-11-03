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
		'2023-11-02 13:16:25.131495+00',
		'{"provider": "email", "providers": ["email"]}',
		'{}',
		NULL,
		'2023-11-02 12:42:42.170428+00',
		'2023-11-03 12:43:22.700907+00',
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
		'135a568b-35fd-4137-9007-5b82159aee7b',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-02 13:16:25.13159+00',
		'2023-11-02 13:16:25.13159+00',
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
		'135a568b-35fd-4137-9007-5b82159aee7b',
		'2023-11-02 13:16:25.133964+00',
		'2023-11-02 13:16:25.133964+00',
		'password',
		'b42bbfe6-f9f8-4f3e-8e81-c6beb28afadd'
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
		3,
		'sg4caDswjXvFppvOuxeY0A',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		true,
		'2023-11-02 13:16:25.132563+00',
		'2023-11-03 06:01:59.471247+00',
		NULL,
		'135a568b-35fd-4137-9007-5b82159aee7b'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		4,
		'magXydPPbdPB50pUPioTSQ',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		true,
		'2023-11-03 06:01:59.472171+00',
		'2023-11-03 07:50:15.616517+00',
		'sg4caDswjXvFppvOuxeY0A',
		'135a568b-35fd-4137-9007-5b82159aee7b'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		5,
		'Tr6j7sV94BrPEddjSUWsIw',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		true,
		'2023-11-03 07:50:15.617619+00',
		'2023-11-03 12:43:22.699707+00',
		'magXydPPbdPB50pUPioTSQ',
		'135a568b-35fd-4137-9007-5b82159aee7b'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		6,
		'_SEtqYdkxcfkcDIamWebpg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		false,
		'2023-11-03 12:43:22.700177+00',
		'2023-11-03 12:43:22.700177+00',
		'Tr6j7sV94BrPEddjSUWsIw',
		'135a568b-35fd-4137-9007-5b82159aee7b'
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
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."partner" (
		"id",
		"created_at",
		"name",
		"description",
		"partner_type"
	)
VALUES (
		'3f6bba3b-d6e8-4609-a3b4-4625053dc29d',
		'2023-11-03 06:36:28.386919+00',
		'Bob The Builder',
		NULL,
		'CONTRACTOR'
	),
	(
		'589c2a3d-973e-4fed-85ab-203fd9617e09',
		'2023-11-03 06:36:44.152078+00',
		'Tiles and stuff',
		NULL,
		'SUPPLIER'
	);
--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."property" (
		"id",
		"created_at",
		"nickname",
		"address",
		"ownership_type",
		"access_restrictions"
	)
VALUES (
		'94f88ea5-2347-4eb3-a8e5-5a63b56053b5',
		'2023-11-02 13:17:58.241153+00',
		'Home',
		'15c indian road',
		'Owner',
		'None'
	);
--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."project" (
		"id",
		"created_at",
		"title",
		"description",
		"start_date",
		"estimated_end_date",
		"status",
		"property_id"
	)
VALUES (
		'32c45d0e-5b54-4f75-9a58-ad605d8542e8',
		'2023-11-03 06:02:46.536569+00',
		'Bathroom Reno',
		NULL,
		'2023-01-01',
		'2023-12-31',
		'PLANNING',
		'94f88ea5-2347-4eb3-a8e5-5a63b56053b5'
	);
--
-- Data for Name: partner_project_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."partner_project_link" (
		"id",
		"created_at",
		"partner_id",
		"project_id",
		"assigned_date",
		"status"
	)
VALUES (
		'54649192-896c-46e6-bfc8-bcd7bf0ddb1d',
		'2023-11-03 06:47:47.500277+00',
		'3f6bba3b-d6e8-4609-a3b4-4625053dc29d',
		'32c45d0e-5b54-4f75-9a58-ad605d8542e8',
		'2023-01-01',
		'PENDING'
	);
--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profile" (
		"id",
		"created_at",
		"first_name",
		"last_name",
		"email"
	)
VALUES (
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-02 12:43:58.273613+00',
		'Admin',
		'Admin',
		NULL
	);
--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 6, true);
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