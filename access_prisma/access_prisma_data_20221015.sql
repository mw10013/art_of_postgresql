--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

-- Started on 2022-10-15 12:31:39 EDT

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
-- TOC entry 3391 (class 0 OID 98363)
-- Dependencies: 219
-- Data for Name: AccessEvent; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 18213
--

INSERT INTO public."AccessEvent" VALUES (1, '2022-10-15 15:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (2, '2022-10-15 13:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (3, '2022-10-15 12:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (4, '2022-10-15 10:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (5, '2022-10-15 09:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (6, '2022-10-15 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (7, '2022-10-15 06:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (8, '2022-10-15 04:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" VALUES (9, '2022-10-15 03:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (10, '2022-10-15 01:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (11, '2022-10-15 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (12, '2022-10-14 22:49:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (13, '2022-10-14 21:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (14, '2022-10-14 19:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (15, '2022-10-14 18:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (16, '2022-10-14 16:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (17, '2022-10-14 15:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (18, '2022-10-14 13:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (19, '2022-10-14 12:19:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (20, '2022-10-14 10:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (21, '2022-10-14 09:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (22, '2022-10-14 07:49:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" VALUES (23, '2022-10-14 06:19:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (24, '2022-10-14 04:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (25, '2022-10-14 03:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (26, '2022-10-14 01:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (27, '2022-10-14 00:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (28, '2022-10-13 22:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (29, '2022-10-13 21:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (30, '2022-10-13 19:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (31, '2022-10-13 18:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (32, '2022-10-13 16:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (33, '2022-10-13 15:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (34, '2022-10-13 13:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (35, '2022-10-13 12:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (36, '2022-10-13 10:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (37, '2022-10-13 09:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" VALUES (38, '2022-10-13 07:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (39, '2022-10-13 06:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" VALUES (40, '2022-10-13 04:49:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (41, '2022-10-13 03:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (42, '2022-10-13 01:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (43, '2022-10-13 00:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" VALUES (44, '2022-10-12 22:49:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (45, '2022-10-12 21:19:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (46, '2022-10-12 19:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (47, '2022-10-12 18:19:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" VALUES (48, '2022-10-12 16:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" VALUES (49, '2022-10-12 15:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (50, '2022-10-12 13:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (51, '2022-10-12 12:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (52, '2022-10-12 10:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (53, '2022-10-12 09:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (54, '2022-10-12 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (55, '2022-10-12 06:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (56, '2022-10-12 04:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (57, '2022-10-12 03:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (58, '2022-10-12 01:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (59, '2022-10-12 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (60, '2022-10-11 22:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (61, '2022-10-11 21:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (62, '2022-10-11 19:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (63, '2022-10-11 18:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (64, '2022-10-11 16:49:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" VALUES (65, '2022-10-11 15:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (66, '2022-10-11 13:49:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (67, '2022-10-11 12:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (68, '2022-10-11 10:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (69, '2022-10-11 09:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (70, '2022-10-11 07:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (71, '2022-10-11 06:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (72, '2022-10-11 04:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (73, '2022-10-11 03:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (74, '2022-10-11 01:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (75, '2022-10-11 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (76, '2022-10-10 22:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (77, '2022-10-10 21:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (78, '2022-10-10 19:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (79, '2022-10-10 18:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" VALUES (80, '2022-10-10 16:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (81, '2022-10-10 15:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (82, '2022-10-10 13:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (83, '2022-10-10 12:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" VALUES (84, '2022-10-10 10:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (85, '2022-10-10 09:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (86, '2022-10-10 07:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (87, '2022-10-10 06:19:39.943', 'deny', '111', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (88, '2022-10-10 04:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (89, '2022-10-10 03:19:39.943', 'deny', '111', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (90, '2022-10-10 01:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (91, '2022-10-10 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (92, '2022-10-09 22:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" VALUES (93, '2022-10-09 21:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (94, '2022-10-09 19:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" VALUES (95, '2022-10-09 18:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (96, '2022-10-09 16:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" VALUES (97, '2022-10-09 15:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (98, '2022-10-09 13:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (99, '2022-10-09 12:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" VALUES (100, '2022-10-09 10:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (101, '2022-10-09 09:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" VALUES (102, '2022-10-09 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (103, '2022-10-09 06:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" VALUES (104, '2022-10-09 04:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (105, '2022-10-09 03:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (106, '2022-10-09 01:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (107, '2022-10-09 00:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (108, '2022-10-08 22:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" VALUES (109, '2022-10-08 21:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (110, '2022-10-08 19:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (111, '2022-10-08 18:19:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" VALUES (112, '2022-10-08 16:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (113, '2022-10-08 15:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" VALUES (114, '2022-10-08 13:49:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (115, '2022-10-08 12:19:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (116, '2022-10-08 10:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (117, '2022-10-08 09:19:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" VALUES (118, '2022-10-08 07:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" VALUES (119, '2022-10-08 06:19:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (120, '2022-10-08 04:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" VALUES (121, '2022-10-08 03:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (122, '2022-10-08 01:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" VALUES (123, '2022-10-08 00:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" VALUES (124, '2022-10-07 22:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (125, '2022-10-07 21:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" VALUES (126, '2022-10-15 15:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (127, '2022-10-15 13:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (128, '2022-10-15 12:19:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (129, '2022-10-15 10:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (130, '2022-10-15 09:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (131, '2022-10-15 07:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (132, '2022-10-15 06:19:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (133, '2022-10-15 04:49:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (134, '2022-10-15 03:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (135, '2022-10-15 01:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (136, '2022-10-15 00:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (137, '2022-10-14 22:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (138, '2022-10-14 21:19:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (139, '2022-10-14 19:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (140, '2022-10-14 18:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (141, '2022-10-14 16:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (142, '2022-10-14 15:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (143, '2022-10-14 13:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (144, '2022-10-14 12:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (145, '2022-10-14 10:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (146, '2022-10-14 09:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (147, '2022-10-14 07:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (148, '2022-10-14 06:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (149, '2022-10-14 04:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (150, '2022-10-14 03:19:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (151, '2022-10-14 01:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (152, '2022-10-14 00:19:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (153, '2022-10-13 22:49:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (154, '2022-10-13 21:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (155, '2022-10-13 19:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (156, '2022-10-13 18:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (157, '2022-10-13 16:49:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" VALUES (158, '2022-10-13 15:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (159, '2022-10-13 13:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (160, '2022-10-13 12:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (161, '2022-10-13 10:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (162, '2022-10-13 09:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (163, '2022-10-13 07:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (164, '2022-10-13 06:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (165, '2022-10-13 04:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (166, '2022-10-13 03:19:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (167, '2022-10-13 01:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (168, '2022-10-13 00:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (169, '2022-10-12 22:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (170, '2022-10-12 21:19:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" VALUES (171, '2022-10-12 19:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (172, '2022-10-12 18:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (173, '2022-10-12 16:49:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (174, '2022-10-12 15:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (175, '2022-10-12 13:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (176, '2022-10-12 12:19:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (177, '2022-10-12 10:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (178, '2022-10-12 09:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (179, '2022-10-12 07:49:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (180, '2022-10-12 06:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (181, '2022-10-12 04:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (182, '2022-10-12 03:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (183, '2022-10-12 01:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (184, '2022-10-12 00:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (185, '2022-10-11 22:49:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (186, '2022-10-11 21:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (187, '2022-10-11 19:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (188, '2022-10-11 18:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (189, '2022-10-11 16:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (190, '2022-10-11 15:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (191, '2022-10-11 13:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (192, '2022-10-11 12:19:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" VALUES (193, '2022-10-11 10:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (194, '2022-10-11 09:19:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (195, '2022-10-11 07:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (196, '2022-10-11 06:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (197, '2022-10-11 04:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (198, '2022-10-11 03:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (199, '2022-10-11 01:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (200, '2022-10-11 00:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (201, '2022-10-10 22:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (202, '2022-10-10 21:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (203, '2022-10-10 19:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (204, '2022-10-10 18:19:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (205, '2022-10-10 16:49:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (206, '2022-10-10 15:19:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (207, '2022-10-10 13:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" VALUES (208, '2022-10-10 12:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (209, '2022-10-10 10:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (210, '2022-10-10 09:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (211, '2022-10-10 07:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (212, '2022-10-10 06:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (213, '2022-10-10 04:49:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (214, '2022-10-10 03:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (215, '2022-10-10 01:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (216, '2022-10-10 00:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (217, '2022-10-09 22:49:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (218, '2022-10-09 21:19:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" VALUES (219, '2022-10-09 19:49:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" VALUES (220, '2022-10-09 18:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (221, '2022-10-09 16:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (222, '2022-10-09 15:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (223, '2022-10-09 13:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (224, '2022-10-09 12:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (225, '2022-10-09 10:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (226, '2022-10-09 09:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" VALUES (227, '2022-10-09 07:49:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" VALUES (228, '2022-10-09 06:19:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (229, '2022-10-09 04:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (230, '2022-10-09 03:19:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (231, '2022-10-09 01:49:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (232, '2022-10-09 00:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (233, '2022-10-08 22:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (234, '2022-10-08 21:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" VALUES (235, '2022-10-08 19:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (236, '2022-10-08 18:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" VALUES (237, '2022-10-08 16:49:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (238, '2022-10-08 15:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (239, '2022-10-08 13:49:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (240, '2022-10-08 12:19:40.683', 'deny', '444', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (241, '2022-10-08 10:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" VALUES (242, '2022-10-08 09:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" VALUES (243, '2022-10-08 07:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" VALUES (244, '2022-10-08 06:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (245, '2022-10-08 04:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" VALUES (246, '2022-10-08 03:19:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (247, '2022-10-08 01:49:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" VALUES (248, '2022-10-08 00:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" VALUES (249, '2022-10-07 22:49:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" VALUES (250, '2022-10-07 21:19:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" VALUES (251, '2022-10-15 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (252, '2022-10-15 13:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (253, '2022-10-15 12:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (254, '2022-10-15 10:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (255, '2022-10-15 09:19:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (256, '2022-10-15 07:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (257, '2022-10-15 06:19:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (258, '2022-10-15 04:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (259, '2022-10-15 03:19:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (260, '2022-10-15 01:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (261, '2022-10-15 00:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (262, '2022-10-14 22:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (263, '2022-10-14 21:19:41.448', 'grant', '999', 6, 9);
INSERT INTO public."AccessEvent" VALUES (264, '2022-10-14 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (265, '2022-10-14 18:19:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (266, '2022-10-14 16:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (267, '2022-10-14 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (268, '2022-10-14 13:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (269, '2022-10-14 12:19:41.448', 'deny', '222', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (270, '2022-10-14 10:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (271, '2022-10-14 09:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (272, '2022-10-14 07:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (273, '2022-10-14 06:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (274, '2022-10-14 04:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (275, '2022-10-14 03:19:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (276, '2022-10-14 01:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (277, '2022-10-14 00:19:41.448', 'grant', '999', 6, 9);
INSERT INTO public."AccessEvent" VALUES (278, '2022-10-13 22:49:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (279, '2022-10-13 21:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (280, '2022-10-13 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (281, '2022-10-13 18:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (282, '2022-10-13 16:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (283, '2022-10-13 15:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (284, '2022-10-13 13:49:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (285, '2022-10-13 12:19:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (286, '2022-10-13 10:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (287, '2022-10-13 09:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (288, '2022-10-13 07:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (289, '2022-10-13 06:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (290, '2022-10-13 04:49:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (291, '2022-10-13 03:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (292, '2022-10-13 01:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (293, '2022-10-13 00:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (294, '2022-10-12 22:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (295, '2022-10-12 21:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (296, '2022-10-12 19:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (297, '2022-10-12 18:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (298, '2022-10-12 16:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (299, '2022-10-12 15:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (300, '2022-10-12 13:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (301, '2022-10-12 12:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (302, '2022-10-12 10:49:41.448', 'deny', '222', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (303, '2022-10-12 09:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (304, '2022-10-12 07:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (305, '2022-10-12 06:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (306, '2022-10-12 04:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (307, '2022-10-12 03:19:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (308, '2022-10-12 01:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (309, '2022-10-12 00:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (310, '2022-10-11 22:49:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" VALUES (311, '2022-10-11 21:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (312, '2022-10-11 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (313, '2022-10-11 18:19:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" VALUES (314, '2022-10-11 16:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (315, '2022-10-11 15:19:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (316, '2022-10-11 13:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (317, '2022-10-11 12:19:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" VALUES (318, '2022-10-11 10:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (319, '2022-10-11 09:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (320, '2022-10-11 07:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (321, '2022-10-11 06:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (322, '2022-10-11 04:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (323, '2022-10-11 03:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (324, '2022-10-11 01:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (325, '2022-10-11 00:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (326, '2022-10-10 22:49:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (327, '2022-10-10 21:19:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (328, '2022-10-10 19:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (329, '2022-10-10 18:19:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (330, '2022-10-10 16:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (331, '2022-10-10 15:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" VALUES (332, '2022-10-10 13:49:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (333, '2022-10-10 12:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (334, '2022-10-10 10:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (335, '2022-10-10 09:19:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (336, '2022-10-10 07:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (337, '2022-10-10 06:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (338, '2022-10-10 04:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (339, '2022-10-10 03:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (340, '2022-10-10 01:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (341, '2022-10-10 00:19:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (342, '2022-10-09 22:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (343, '2022-10-09 21:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (344, '2022-10-09 19:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (345, '2022-10-09 18:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (346, '2022-10-09 16:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (347, '2022-10-09 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" VALUES (348, '2022-10-09 13:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (349, '2022-10-09 12:19:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (350, '2022-10-09 10:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" VALUES (351, '2022-10-09 09:19:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (352, '2022-10-09 07:49:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (353, '2022-10-09 06:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (354, '2022-10-09 04:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (355, '2022-10-09 03:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (356, '2022-10-09 01:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (357, '2022-10-09 00:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (358, '2022-10-08 22:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" VALUES (359, '2022-10-08 21:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (360, '2022-10-08 19:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (361, '2022-10-08 18:19:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (362, '2022-10-08 16:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" VALUES (363, '2022-10-08 15:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (364, '2022-10-08 13:49:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" VALUES (365, '2022-10-08 12:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (366, '2022-10-08 10:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (367, '2022-10-08 09:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (368, '2022-10-08 07:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" VALUES (369, '2022-10-08 06:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (370, '2022-10-08 04:49:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" VALUES (371, '2022-10-08 03:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" VALUES (372, '2022-10-08 01:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (373, '2022-10-08 00:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" VALUES (374, '2022-10-07 22:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (375, '2022-10-07 21:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" VALUES (376, '2022-10-15 15:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (377, '2022-10-15 13:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" VALUES (378, '2022-10-15 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (379, '2022-10-15 10:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (380, '2022-10-15 09:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (381, '2022-10-15 07:49:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" VALUES (382, '2022-10-15 06:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (383, '2022-10-15 04:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (384, '2022-10-15 03:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (385, '2022-10-15 01:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (386, '2022-10-15 00:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (387, '2022-10-14 22:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (388, '2022-10-14 21:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (389, '2022-10-14 19:49:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (390, '2022-10-14 18:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (391, '2022-10-14 16:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (392, '2022-10-14 15:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (393, '2022-10-14 13:49:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (394, '2022-10-14 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (395, '2022-10-14 10:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (396, '2022-10-14 09:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (397, '2022-10-14 07:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (398, '2022-10-14 06:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (399, '2022-10-14 04:49:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (400, '2022-10-14 03:19:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" VALUES (401, '2022-10-14 01:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (402, '2022-10-14 00:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (403, '2022-10-13 22:49:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" VALUES (404, '2022-10-13 21:19:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (405, '2022-10-13 19:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (406, '2022-10-13 18:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (407, '2022-10-13 16:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (408, '2022-10-13 15:19:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (409, '2022-10-13 13:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (410, '2022-10-13 12:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (411, '2022-10-13 10:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (412, '2022-10-13 09:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (413, '2022-10-13 07:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (414, '2022-10-13 06:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (415, '2022-10-13 04:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (416, '2022-10-13 03:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (417, '2022-10-13 01:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (418, '2022-10-13 00:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" VALUES (419, '2022-10-12 22:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (420, '2022-10-12 21:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (421, '2022-10-12 19:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (422, '2022-10-12 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (423, '2022-10-12 16:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (424, '2022-10-12 15:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (425, '2022-10-12 13:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (426, '2022-10-12 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (427, '2022-10-12 10:49:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (428, '2022-10-12 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (429, '2022-10-12 07:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (430, '2022-10-12 06:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (431, '2022-10-12 04:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (432, '2022-10-12 03:19:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (433, '2022-10-12 01:49:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" VALUES (434, '2022-10-12 00:19:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (435, '2022-10-11 22:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (436, '2022-10-11 21:19:42.147', 'deny', '222', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (437, '2022-10-11 19:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (438, '2022-10-11 18:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" VALUES (439, '2022-10-11 16:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (440, '2022-10-11 15:19:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (441, '2022-10-11 13:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (442, '2022-10-11 12:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" VALUES (443, '2022-10-11 10:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" VALUES (444, '2022-10-11 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (445, '2022-10-11 07:49:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (446, '2022-10-11 06:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (447, '2022-10-11 04:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (448, '2022-10-11 03:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (449, '2022-10-11 01:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (450, '2022-10-11 00:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (451, '2022-10-10 22:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (452, '2022-10-10 21:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (453, '2022-10-10 19:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (454, '2022-10-10 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (455, '2022-10-10 16:49:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" VALUES (456, '2022-10-10 15:19:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" VALUES (457, '2022-10-10 13:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" VALUES (458, '2022-10-10 12:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (459, '2022-10-10 10:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (460, '2022-10-10 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (461, '2022-10-10 07:49:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" VALUES (462, '2022-10-10 06:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (463, '2022-10-10 04:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (464, '2022-10-10 03:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (465, '2022-10-10 01:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (466, '2022-10-10 00:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (467, '2022-10-09 22:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (468, '2022-10-09 21:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (469, '2022-10-09 19:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (470, '2022-10-09 18:19:42.147', 'deny', '222', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (471, '2022-10-09 16:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (472, '2022-10-09 15:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (473, '2022-10-09 13:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (474, '2022-10-09 12:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (475, '2022-10-09 10:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (476, '2022-10-09 09:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (477, '2022-10-09 07:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (478, '2022-10-09 06:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" VALUES (479, '2022-10-09 04:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (480, '2022-10-09 03:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (481, '2022-10-09 01:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (482, '2022-10-09 00:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (483, '2022-10-08 22:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (484, '2022-10-08 21:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (485, '2022-10-08 19:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (486, '2022-10-08 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (487, '2022-10-08 16:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (488, '2022-10-08 15:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (489, '2022-10-08 13:49:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" VALUES (490, '2022-10-08 12:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" VALUES (491, '2022-10-08 10:49:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" VALUES (492, '2022-10-08 09:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" VALUES (493, '2022-10-08 07:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (494, '2022-10-08 06:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (495, '2022-10-08 04:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" VALUES (496, '2022-10-08 03:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" VALUES (497, '2022-10-08 01:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" VALUES (498, '2022-10-08 00:19:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" VALUES (499, '2022-10-07 22:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" VALUES (500, '2022-10-07 21:19:42.147', 'deny', '444', NULL, 14);


--
-- TOC entry 3386 (class 0 OID 98337)
-- Dependencies: 214
-- Data for Name: AccessHub; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 22032
--

INSERT INTO public."AccessHub" VALUES ('cl2uwi6uv0030ybthbkls5w0i', 'The scarab2022@gmail.com BnB', '', NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."AccessHub" VALUES ('cl9a2ef0900298bth3t49wmap', 'The scarab2022@gmail.com Nook', '', NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."AccessHub" VALUES ('cl9a2eflj00458bthwn24558h', 'The scarab3033@gmail.com BnB', '', NULL, 'cl9a2efki00388bth4xdjzcza');
INSERT INTO public."AccessHub" VALUES ('cl9a2eg4z00558bthlhnb5vwh', 'The scarab3033@gmail.com Nook', '', NULL, 'cl9a2efki00388bth4xdjzcza');


--
-- TOC entry 3389 (class 0 OID 98353)
-- Dependencies: 217
-- Data for Name: AccessPoint; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 22280
--

INSERT INTO public."AccessPoint" VALUES (1, 'Front Door', '', 'cl2uwi6uv0030ybthbkls5w0i', 1);
INSERT INTO public."AccessPoint" VALUES (2, 'First Floor', '', 'cl2uwi6uv0030ybthbkls5w0i', 2);
INSERT INTO public."AccessPoint" VALUES (3, 'Second Floor', '', 'cl2uwi6uv0030ybthbkls5w0i', 3);
INSERT INTO public."AccessPoint" VALUES (4, 'Basement Door', '', 'cl2uwi6uv0030ybthbkls5w0i', 4);
INSERT INTO public."AccessPoint" VALUES (5, 'Front Door', '', 'cl9a2ef0900298bth3t49wmap', 1);
INSERT INTO public."AccessPoint" VALUES (6, 'First Floor', '', 'cl9a2ef0900298bth3t49wmap', 2);
INSERT INTO public."AccessPoint" VALUES (7, 'Second Floor', '', 'cl9a2ef0900298bth3t49wmap', 3);
INSERT INTO public."AccessPoint" VALUES (8, 'Basement Door', '', 'cl9a2ef0900298bth3t49wmap', 4);
INSERT INTO public."AccessPoint" VALUES (9, 'Front Door', '', 'cl9a2eflj00458bthwn24558h', 1);
INSERT INTO public."AccessPoint" VALUES (10, 'First Floor', '', 'cl9a2eflj00458bthwn24558h', 2);
INSERT INTO public."AccessPoint" VALUES (11, 'Second Floor', '', 'cl9a2eflj00458bthwn24558h', 3);
INSERT INTO public."AccessPoint" VALUES (12, 'Basement Door', '', 'cl9a2eflj00458bthwn24558h', 4);
INSERT INTO public."AccessPoint" VALUES (13, 'Front Door', '', 'cl9a2eg4z00558bthlhnb5vwh', 1);
INSERT INTO public."AccessPoint" VALUES (14, 'First Floor', '', 'cl9a2eg4z00558bthlhnb5vwh', 2);
INSERT INTO public."AccessPoint" VALUES (15, 'Second Floor', '', 'cl9a2eg4z00558bthlhnb5vwh', 3);
INSERT INTO public."AccessPoint" VALUES (16, 'Basement Door', '', 'cl9a2eg4z00558bthlhnb5vwh', 4);


--
-- TOC entry 3385 (class 0 OID 98327)
-- Dependencies: 213
-- Data for Name: AccessUser; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 22573
--

INSERT INTO public."AccessUser" VALUES (1, 'Master', 'Access to everything', '999', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (2, 'Guest1', 'Guest1 for Brooklyn BnB', '111', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (3, 'Guest2', 'Guest2 for Brooklyn BnB', '222', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (4, 'Guest3', 'Guest1 for Staten Island BnB', '333', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (5, 'Guest4', 'Guest2 for Brooklyn BnB', '444', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (6, 'Master', 'Access to everything', '999', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (7, 'Guest1', 'Guest1 for Brooklyn BnB', '111', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (8, 'Guest2', 'Guest2 for Brooklyn BnB', '222', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (9, 'Guest3', 'Guest1 for Staten Island BnB', '333', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" VALUES (10, 'Guest4', 'Guest2 for Brooklyn BnB', '444', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');


--
-- TOC entry 3387 (class 0 OID 98346)
-- Dependencies: 215
-- Data for Name: ApiToken; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 22859
--

INSERT INTO public."ApiToken" VALUES ('d627713660c1891414ac55a6ccd1c1294292bb19a9e6be741f340782a531e331', 'cl2uwi6uv0030ybthbkls5w0i');
INSERT INTO public."ApiToken" VALUES ('d627713660c1891414ac55a6ccd1c1294292bb19a9e6be741f340782a531e331', 'cl9a2ef0900298bth3t49wmap');
INSERT INTO public."ApiToken" VALUES ('', 'cl9a2eflj00458bthwn24558h');
INSERT INTO public."ApiToken" VALUES ('', 'cl9a2eg4z00558bthlhnb5vwh');


--
-- TOC entry 3383 (class 0 OID 98318)
-- Dependencies: 211
-- Data for Name: Note; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 23071
--



--
-- TOC entry 3382 (class 0 OID 98313)
-- Dependencies: 210
-- Data for Name: Password; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 23097
--

INSERT INTO public."Password" VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eeck00008bthyxhscmla');
INSERT INTO public."Password" VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eed300078bth0xaq9vh6');
INSERT INTO public."Password" VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."Password" VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2efki00388bth4xdjzcza');


--
-- TOC entry 3381 (class 0 OID 98305)
-- Dependencies: 209
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 23312
--

INSERT INTO public."User" VALUES ('cl9a2eeck00008bthyxhscmla', 'ola.scarab@gmail.com', 'admin', '2022-10-15 15:19:39.812', '2022-10-15 15:19:39.816');
INSERT INTO public."User" VALUES ('cl9a2eed300078bth0xaq9vh6', 'mw10013@gmail.com', 'admin', '2022-10-15 15:19:39.831', '2022-10-15 15:19:39.832');
INSERT INTO public."User" VALUES ('cl9a2eedf00148bth2tt1uutk', 'scarab2022@gmail.com', 'customer', '2022-10-15 15:19:39.843', '2022-10-15 15:19:39.843');
INSERT INTO public."User" VALUES ('cl9a2efki00388bth4xdjzcza', 'scarab3033@gmail.com', 'customer', '2022-10-15 15:19:41.394', '2022-10-15 15:19:41.394');


--
-- TOC entry 3392 (class 0 OID 98371)
-- Dependencies: 220
-- Data for Name: _AccessPointToAccessUser; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data Pos: 23564
--

INSERT INTO public."_AccessPointToAccessUser" VALUES (1, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (1, 2);
INSERT INTO public."_AccessPointToAccessUser" VALUES (1, 3);
INSERT INTO public."_AccessPointToAccessUser" VALUES (2, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (2, 2);
INSERT INTO public."_AccessPointToAccessUser" VALUES (3, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (3, 2);
INSERT INTO public."_AccessPointToAccessUser" VALUES (4, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (5, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (5, 4);
INSERT INTO public."_AccessPointToAccessUser" VALUES (5, 5);
INSERT INTO public."_AccessPointToAccessUser" VALUES (6, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (6, 4);
INSERT INTO public."_AccessPointToAccessUser" VALUES (7, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (7, 4);
INSERT INTO public."_AccessPointToAccessUser" VALUES (8, 1);
INSERT INTO public."_AccessPointToAccessUser" VALUES (9, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (9, 7);
INSERT INTO public."_AccessPointToAccessUser" VALUES (9, 8);
INSERT INTO public."_AccessPointToAccessUser" VALUES (10, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (10, 7);
INSERT INTO public."_AccessPointToAccessUser" VALUES (11, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (11, 7);
INSERT INTO public."_AccessPointToAccessUser" VALUES (12, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (13, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (13, 9);
INSERT INTO public."_AccessPointToAccessUser" VALUES (13, 10);
INSERT INTO public."_AccessPointToAccessUser" VALUES (14, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (14, 9);
INSERT INTO public."_AccessPointToAccessUser" VALUES (15, 6);
INSERT INTO public."_AccessPointToAccessUser" VALUES (15, 9);
INSERT INTO public."_AccessPointToAccessUser" VALUES (16, 6);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 218
-- Name: AccessEvent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
-- Data Pos: 0
--

SELECT pg_catalog.setval('public."AccessEvent_id_seq"', 500, true);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 216
-- Name: AccessPoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
-- Data Pos: 0
--

SELECT pg_catalog.setval('public."AccessPoint_id_seq"', 16, true);


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 212
-- Name: AccessUser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
-- Data Pos: 0
--

SELECT pg_catalog.setval('public."AccessUser_id_seq"', 10, true);


-- Completed on 2022-10-15 12:33:34 EDT

--
-- PostgreSQL database dump complete
--

