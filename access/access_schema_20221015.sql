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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 98363)
-- Name: AccessEvent; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."AccessEvent" (
    id integer NOT NULL,
    at timestamp(3) without time zone NOT NULL,
    access text NOT NULL,
    code text NOT NULL,
    "accessUserId" integer,
    "accessPointId" integer NOT NULL
);


ALTER TABLE public."AccessEvent" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 98362)
-- Dependencies: 219
-- Name: AccessEvent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE SEQUENCE public."AccessEvent_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AccessEvent_id_seq" OWNER TO postgres;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 218
-- Name: AccessEvent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER SEQUENCE public."AccessEvent_id_seq" OWNED BY public."AccessEvent".id;


--
-- TOC entry 214 (class 1259 OID 98337)
-- Name: AccessHub; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."AccessHub" (
    id text NOT NULL,
    name text DEFAULT 'Hub'::text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    "heartbeatAt" timestamp(3) without time zone,
    "userId" text NOT NULL
);


ALTER TABLE public."AccessHub" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 98353)
-- Name: AccessPoint; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."AccessPoint" (
    id integer NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    "accessHubId" text NOT NULL,
    "position" integer NOT NULL
);


ALTER TABLE public."AccessPoint" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 98352)
-- Dependencies: 217
-- Name: AccessPoint_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE SEQUENCE public."AccessPoint_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AccessPoint_id_seq" OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 216
-- Name: AccessPoint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER SEQUENCE public."AccessPoint_id_seq" OWNED BY public."AccessPoint".id;


--
-- TOC entry 213 (class 1259 OID 98327)
-- Name: AccessUser; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."AccessUser" (
    id integer NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    code text NOT NULL,
    "activateCodeAt" timestamp(3) without time zone,
    "expireCodeAt" timestamp(3) without time zone,
    "userId" text NOT NULL,
    "deletedAt" timestamp(3) without time zone DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."AccessUser" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 98326)
-- Dependencies: 213
-- Name: AccessUser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE SEQUENCE public."AccessUser_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AccessUser_id_seq" OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 212
-- Name: AccessUser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER SEQUENCE public."AccessUser_id_seq" OWNED BY public."AccessUser".id;


--
-- TOC entry 215 (class 1259 OID 98346)
-- Name: ApiToken; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."ApiToken" (
    token text DEFAULT ''::text NOT NULL,
    "accessHubId" text NOT NULL
);


ALTER TABLE public."ApiToken" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 98318)
-- Name: Note; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."Note" (
    id text NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "userId" text NOT NULL
);


ALTER TABLE public."Note" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 98313)
-- Name: Password; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."Password" (
    hash text NOT NULL,
    "resetPasswordHash" text,
    "resetPasswordExpireAt" timestamp(3) without time zone,
    "userId" text NOT NULL
);


ALTER TABLE public."Password" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 98305)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."User" (
    id text NOT NULL,
    email text NOT NULL,
    role text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 98371)
-- Name: _AccessPointToAccessUser; Type: TABLE; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE TABLE public."_AccessPointToAccessUser" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


ALTER TABLE public."_AccessPointToAccessUser" OWNER TO postgres;

--
-- TOC entry 3211 (class 2604 OID 98366)
-- Dependencies: 218 219 219
-- Name: AccessEvent id; Type: DEFAULT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessEvent" ALTER COLUMN id SET DEFAULT nextval('public."AccessEvent_id_seq"'::regclass);


--
-- TOC entry 3209 (class 2604 OID 98356)
-- Dependencies: 217 216 217
-- Name: AccessPoint id; Type: DEFAULT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessPoint" ALTER COLUMN id SET DEFAULT nextval('public."AccessPoint_id_seq"'::regclass);


--
-- TOC entry 3203 (class 2604 OID 98330)
-- Dependencies: 212 213 213
-- Name: AccessUser id; Type: DEFAULT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessUser" ALTER COLUMN id SET DEFAULT nextval('public."AccessUser_id_seq"'::regclass);


--
-- TOC entry 3229 (class 2606 OID 98370)
-- Dependencies: 219
-- Name: AccessEvent AccessEvent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessEvent"
    ADD CONSTRAINT "AccessEvent_pkey" PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 98345)
-- Dependencies: 214
-- Name: AccessHub AccessHub_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessHub"
    ADD CONSTRAINT "AccessHub_pkey" PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 98361)
-- Dependencies: 217
-- Name: AccessPoint AccessPoint_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessPoint"
    ADD CONSTRAINT "AccessPoint_pkey" PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 98336)
-- Dependencies: 213
-- Name: AccessUser AccessUser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessUser"
    ADD CONSTRAINT "AccessUser_pkey" PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 98325)
-- Dependencies: 211
-- Name: Note Note_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."Note"
    ADD CONSTRAINT "Note_pkey" PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 98312)
-- Dependencies: 209
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 3225 (class 1259 OID 98379)
-- Dependencies: 217 217
-- Name: AccessPoint_accessHubId_position_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "AccessPoint_accessHubId_position_key" ON public."AccessPoint" USING btree ("accessHubId", "position");


--
-- TOC entry 3218 (class 1259 OID 98377)
-- Dependencies: 213 213 213
-- Name: AccessUser_code_userId_deletedAt_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "AccessUser_code_userId_deletedAt_key" ON public."AccessUser" USING btree (code, "userId", "deletedAt");


--
-- TOC entry 3219 (class 1259 OID 98376)
-- Dependencies: 213 213 213
-- Name: AccessUser_name_userId_deletedAt_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "AccessUser_name_userId_deletedAt_key" ON public."AccessUser" USING btree (name, "userId", "deletedAt");


--
-- TOC entry 3224 (class 1259 OID 98378)
-- Dependencies: 215
-- Name: ApiToken_accessHubId_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "ApiToken_accessHubId_key" ON public."ApiToken" USING btree ("accessHubId");


--
-- TOC entry 3215 (class 1259 OID 98375)
-- Dependencies: 210
-- Name: Password_userId_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "Password_userId_key" ON public."Password" USING btree ("userId");


--
-- TOC entry 3212 (class 1259 OID 98374)
-- Dependencies: 209
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- TOC entry 3230 (class 1259 OID 98380)
-- Dependencies: 220 220
-- Name: _AccessPointToAccessUser_AB_unique; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE UNIQUE INDEX "_AccessPointToAccessUser_AB_unique" ON public."_AccessPointToAccessUser" USING btree ("A", "B");


--
-- TOC entry 3231 (class 1259 OID 98381)
-- Dependencies: 220
-- Name: _AccessPointToAccessUser_B_index; Type: INDEX; Schema: public; Owner: postgres
-- Data Pos: 0
--

CREATE INDEX "_AccessPointToAccessUser_B_index" ON public."_AccessPointToAccessUser" USING btree ("B");


--
-- TOC entry 3239 (class 2606 OID 98417)
-- Dependencies: 219 3227 217
-- Name: AccessEvent AccessEvent_accessPointId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessEvent"
    ADD CONSTRAINT "AccessEvent_accessPointId_fkey" FOREIGN KEY ("accessPointId") REFERENCES public."AccessPoint"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3238 (class 2606 OID 98412)
-- Dependencies: 219 213 3221
-- Name: AccessEvent AccessEvent_accessUserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessEvent"
    ADD CONSTRAINT "AccessEvent_accessUserId_fkey" FOREIGN KEY ("accessUserId") REFERENCES public."AccessUser"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3235 (class 2606 OID 98397)
-- Dependencies: 214 3214 209
-- Name: AccessHub AccessHub_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessHub"
    ADD CONSTRAINT "AccessHub_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3237 (class 2606 OID 98407)
-- Dependencies: 217 3223 214
-- Name: AccessPoint AccessPoint_accessHubId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessPoint"
    ADD CONSTRAINT "AccessPoint_accessHubId_fkey" FOREIGN KEY ("accessHubId") REFERENCES public."AccessHub"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3234 (class 2606 OID 98392)
-- Dependencies: 209 3214 213
-- Name: AccessUser AccessUser_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."AccessUser"
    ADD CONSTRAINT "AccessUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3236 (class 2606 OID 98402)
-- Dependencies: 215 3223 214
-- Name: ApiToken ApiToken_accessHubId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."ApiToken"
    ADD CONSTRAINT "ApiToken_accessHubId_fkey" FOREIGN KEY ("accessHubId") REFERENCES public."AccessHub"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3233 (class 2606 OID 98387)
-- Dependencies: 211 3214 209
-- Name: Note Note_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."Note"
    ADD CONSTRAINT "Note_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3232 (class 2606 OID 98382)
-- Dependencies: 210 3214 209
-- Name: Password Password_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."Password"
    ADD CONSTRAINT "Password_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3240 (class 2606 OID 98422)
-- Dependencies: 220 3227 217
-- Name: _AccessPointToAccessUser _AccessPointToAccessUser_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."_AccessPointToAccessUser"
    ADD CONSTRAINT "_AccessPointToAccessUser_A_fkey" FOREIGN KEY ("A") REFERENCES public."AccessPoint"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3241 (class 2606 OID 98427)
-- Dependencies: 220 3221 213
-- Name: _AccessPointToAccessUser _AccessPointToAccessUser_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- Data Pos: 0
--

ALTER TABLE ONLY public."_AccessPointToAccessUser"
    ADD CONSTRAINT "_AccessPointToAccessUser_B_fkey" FOREIGN KEY ("B") REFERENCES public."AccessUser"(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2022-10-15 12:34:47 EDT

--
-- PostgreSQL database dump complete
--

