SET session_replication_role = replica;
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
		'0312f6e9-37fe-494b-a837-96f108ec5016',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'2023-11-04 08:01:41.56283+00',
		'2023-11-04 08:01:41.56283+00',
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
		'0312f6e9-37fe-494b-a837-96f108ec5016',
		'2023-11-04 08:01:41.564927+00',
		'2023-11-04 08:01:41.564927+00',
		'password',
		'2a23b609-9b6c-4f6d-ab30-728004cb9d74'
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
		10,
		'rEokIdGkFOivEppbVlPyWg',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		false,
		'2023-11-04 08:01:41.563606+00',
		'2023-11-04 08:01:41.563606+00',
		NULL,
		'0312f6e9-37fe-494b-a837-96f108ec5016'
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
	),
	(
		'0cab95e5-34a4-411f-ac6e-55000e4b72d9',
		'2023-11-04 07:58:47.19971+00',
		'Testing 1234',
		'1234 Street Street',
		'SOLE OWNER',
		'A Gate?'
	);
--
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."area" (
		"id",
		"created_at",
		"property_id",
		"area_name",
		"area_type",
		"area_dimensions",
		"area_description",
		"renovation_status",
		"renovation_requirements",
		"before_images",
		"after_images",
		"current_condition",
		"desired_features",
		"materials_needed"
	)
VALUES (
		'9c4d5215-7c43-4531-86a7-5d889c1ecb86',
		'2023-11-04 05:03:27.289373+00',
		'94f88ea5-2347-4eb3-a8e5-5a63b56053b5',
		'Main Bathroom',
		'BATHROOM',
		'4x8',
		'Bathroom en Suite',
		NULL,
		'Replace Tiles
Install new Mirrors',
		NULL,
		NULL,
		'GOOD',
		NULL,
		NULL
	);
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
-- Data for Name: progress_updates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."progress_updates" (
		"id",
		"created_at",
		"update_description",
		"related_entity_id",
		"update_type",
		"uploaded_by"
	)
VALUES (
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8',
		'2023-11-04 06:22:27.545828+00',
		'-',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'project',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53'
	);
--
-- Data for Name: progress_update_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."progress_update_images" (
		"id",
		"created_at",
		"image_url",
		"progress_update_id"
	)
VALUES (
		'0864a230-5a8d-423b-bda5-c6c882a38ad1',
		'2023-11-04 06:28:06.781381+00',
		'https://source.unsplash.com/random',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'cc890470-5853-40be-86ab-695cd227f022',
		'2023-11-04 06:43:17.822175+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/2f8fefed-dc71-46b5-b325-daa44a1a0d1c","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'ef0d95da-7cb2-44c0-b69a-6d3f3d4ca3b4',
		'2023-11-04 06:50:28.687315+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/7f81f1fa-b4ce-4ab9-af9c-bbf4903d5351","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'0733a0f3-a5c0-408d-951d-0fcbd4a7c0b4',
		'2023-11-04 06:51:24.350055+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/d03293e6-0ee6-4cf2-90e1-d598f1fda44a","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'c24b9e84-fab4-452e-9677-1c58da6e5ded',
		'2023-11-04 06:53:30.154088+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/6773e8be-ad9b-4169-8907-daa426a1ffce","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'9ce4d6d5-c269-4dde-b645-78139b1f14f4',
		'2023-11-04 06:54:06.488359+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/1e6713b3-c062-4b44-bce8-ef8cb91d3ff3","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'ec7f5ec9-cc11-4b24-9fa6-8c5862140195',
		'2023-11-04 06:58:03.846794+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/f54053e7-5df8-4e98-b7ab-1736a30d2849","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'17807ff4-c094-4b89-a520-1fcde1ab5027',
		'2023-11-04 06:58:38.300896+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/b716e533-0058-4d1e-b4ef-cfbf8dbc9971","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'cacc6929-623a-429c-8536-6449ae962ce1',
		'2023-11-04 07:01:11.354184+00',
		'{"rawFile":{"path":"photo-1698106828998-787ee1cc115c.jpeg"},"src":"blob:http://localhost:5173/45ed0a84-87be-422a-8f07-9530dbd3dcbf","title":"photo-1698106828998-787ee1cc115c.jpeg"}',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'79e0e413-5364-42dd-8f42-31836c2fb7b7',
		'2023-11-04 07:03:42.858894+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/-ketUggr80dX8RU8_mkZf_photo-1698106828998-787ee1cc115c.jpeg',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'0b259eb2-fbb9-4fd7-8583-a27e0e6bb421',
		'2023-11-04 07:05:21.04034+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53/9veMYiWkfcspg6k1okoLS.jpeg',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	),
	(
		'0e31c031-66f6-4604-be26-6c36ccfa6055',
		'2023-11-04 07:06:45.350735+00',
		'http://127.0.0.1:54321/storage/v1/object/public/progress_update_images/ad0de4fb-143f-4458-89bb-913e54c6eb53/DqvqjOPDyIZ96fucyDyYD.jpeg',
		'421ae4c9-3992-4c5f-b797-6f842e7cb5a8'
	);
--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."task" (
		"id",
		"created_at",
		"description",
		"to_be_completed_by",
		"status",
		"priority",
		"project_id"
	)
VALUES (
		'bd1198b3-a057-4794-b901-3729e649b15f',
		'2023-11-04 06:09:21.697392+00',
		'DO Stuff',
		'3f6bba3b-d6e8-4609-a3b4-4625053dc29d',
		'PENDING',
		1,
		'32c45d0e-5b54-4f75-9a58-ad605d8542e8'
	);
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
-- Data for Name: user_project_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_project_role_link" (
		"id",
		"created_at",
		"user_id",
		"project_id",
		"role"
	)
VALUES (
		'd787c182-e976-43cb-9e00-974d5de5150d',
		'2023-11-04 07:48:39.598017+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'32c45d0e-5b54-4f75-9a58-ad605d8542e8',
		'admin'
	);
--
-- Data for Name: user_property_role_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_property_role_link" (
		"id",
		"created_at",
		"user_id",
		"property_id",
		"role"
	)
VALUES (
		'88f17af2-b0bc-40b8-a8d4-3f9694883afd',
		'2023-11-04 07:48:24.562064+00',
		'ad0de4fb-143f-4458-89bb-913e54c6eb53',
		'94f88ea5-2347-4eb3-a8e5-5a63b56053b5',
		'admin'
	);
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
		"allowed_mime_types"
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
		"version"
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
		'7117a725-45d3-4306-aa74-77a4a68f75d0'
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
		'cad7ac52-244e-4008-97ff-9215b4ecb994'
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
		'95ee3764-66d5-4c39-96e0-f983a6a4563b'
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
		'762dda8a-b59b-478b-ab5a-8c546cef33c5'
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 10, true);
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
SET session_replication_role = DEFAULT;