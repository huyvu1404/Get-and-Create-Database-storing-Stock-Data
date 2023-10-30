--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: HPG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."HPG" (
    recordid integer NOT NULL,
    recordtime timestamp with time zone NOT NULL,
    openprice integer NOT NULL,
    highestprice integer NOT NULL,
    lowestprice integer NOT NULL,
    closingprice integer NOT NULL,
    volume integer NOT NULL,
    ticker character varying(10) NOT NULL
);


ALTER TABLE public."HPG" OWNER TO postgres;

--
-- Name: HPG_recordid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."HPG_recordid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."HPG_recordid_seq" OWNER TO postgres;

--
-- Name: HPG_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."HPG_recordid_seq" OWNED BY public."HPG".recordid;


--
-- Name: SSI; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SSI" (
    recordid integer NOT NULL,
    recordtime timestamp with time zone NOT NULL,
    openprice integer NOT NULL,
    highestprice integer NOT NULL,
    lowestprice integer NOT NULL,
    closingprice integer NOT NULL,
    volume integer NOT NULL,
    ticker character varying(10) NOT NULL
);


ALTER TABLE public."SSI" OWNER TO postgres;

--
-- Name: SSI_recordid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SSI_recordid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."SSI_recordid_seq" OWNER TO postgres;

--
-- Name: SSI_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SSI_recordid_seq" OWNED BY public."SSI".recordid;


--
-- Name: TCB; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TCB" (
    recordid integer NOT NULL,
    recordtime timestamp with time zone NOT NULL,
    openprice integer NOT NULL,
    highestprice integer NOT NULL,
    lowestprice integer NOT NULL,
    closingprice integer NOT NULL,
    volume integer NOT NULL,
    ticker character varying(10) NOT NULL
);


ALTER TABLE public."TCB" OWNER TO postgres;

--
-- Name: TCB_recordid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TCB_recordid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TCB_recordid_seq" OWNER TO postgres;

--
-- Name: TCB_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TCB_recordid_seq" OWNED BY public."TCB".recordid;


--
-- Name: VHM; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VHM" (
    recordid integer NOT NULL,
    recordtime timestamp with time zone NOT NULL,
    openprice integer NOT NULL,
    highestprice integer NOT NULL,
    lowestprice integer NOT NULL,
    closingprice integer NOT NULL,
    volume integer NOT NULL,
    ticker character varying(10) NOT NULL
);


ALTER TABLE public."VHM" OWNER TO postgres;

--
-- Name: VHM_recordid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VHM_recordid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."VHM_recordid_seq" OWNER TO postgres;

--
-- Name: VHM_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VHM_recordid_seq" OWNED BY public."VHM".recordid;


--
-- Name: VIC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VIC" (
    recordid integer NOT NULL,
    recordtime timestamp with time zone NOT NULL,
    openprice integer NOT NULL,
    highestprice integer NOT NULL,
    lowestprice integer NOT NULL,
    closingprice integer NOT NULL,
    volume integer NOT NULL,
    ticker character varying(10) NOT NULL
);


ALTER TABLE public."VIC" OWNER TO postgres;

--
-- Name: VIC_recordid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VIC_recordid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."VIC_recordid_seq" OWNER TO postgres;

--
-- Name: VIC_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VIC_recordid_seq" OWNED BY public."VIC".recordid;


--
-- Name: HPG recordid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HPG" ALTER COLUMN recordid SET DEFAULT nextval('public."HPG_recordid_seq"'::regclass);


--
-- Name: SSI recordid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SSI" ALTER COLUMN recordid SET DEFAULT nextval('public."SSI_recordid_seq"'::regclass);


--
-- Name: TCB recordid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TCB" ALTER COLUMN recordid SET DEFAULT nextval('public."TCB_recordid_seq"'::regclass);


--
-- Name: VHM recordid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VHM" ALTER COLUMN recordid SET DEFAULT nextval('public."VHM_recordid_seq"'::regclass);


--
-- Name: VIC recordid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VIC" ALTER COLUMN recordid SET DEFAULT nextval('public."VIC_recordid_seq"'::regclass);


--
-- Data for Name: HPG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."HPG" (recordid, recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) FROM stdin;
\.


--
-- Data for Name: SSI; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SSI" (recordid, recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) FROM stdin;
\.


--
-- Data for Name: TCB; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TCB" (recordid, recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) FROM stdin;
\.


--
-- Data for Name: VHM; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VHM" (recordid, recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) FROM stdin;
\.


--
-- Data for Name: VIC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VIC" (recordid, recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) FROM stdin;
\.


--
-- Name: HPG_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."HPG_recordid_seq"', 1, false);


--
-- Name: SSI_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SSI_recordid_seq"', 1, false);


--
-- Name: TCB_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TCB_recordid_seq"', 1, false);


--
-- Name: VHM_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."VHM_recordid_seq"', 1, false);


--
-- Name: VIC_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."VIC_recordid_seq"', 1, false);


--
-- Name: HPG HPG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HPG"
    ADD CONSTRAINT "HPG_pkey" PRIMARY KEY (recordid);


--
-- Name: SSI SSI_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SSI"
    ADD CONSTRAINT "SSI_pkey" PRIMARY KEY (recordid);


--
-- Name: TCB TCB_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TCB"
    ADD CONSTRAINT "TCB_pkey" PRIMARY KEY (recordid);


--
-- Name: VHM VHM_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VHM"
    ADD CONSTRAINT "VHM_pkey" PRIMARY KEY (recordid);


--
-- Name: VIC VIC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VIC"
    ADD CONSTRAINT "VIC_pkey" PRIMARY KEY (recordid);


--
-- PostgreSQL database dump complete
--

