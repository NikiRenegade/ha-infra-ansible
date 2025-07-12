--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-1.pgdg20.04+1)

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
-- Name: absence_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.absence_reasons (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.absence_reasons OWNER TO postgres;

--
-- Name: absence_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.absence_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.absence_reasons_id_seq OWNER TO postgres;

--
-- Name: absence_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.absence_reasons_id_seq OWNED BY public.absence_reasons.id;


--
-- Name: absence_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence_reasons ALTER COLUMN id SET DEFAULT nextval('public.absence_reasons_id_seq'::regclass);


--
-- Data for Name: absence_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.absence_reasons (id, name) FROM stdin;
\.


--
-- Name: absence_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.absence_reasons_id_seq', 1, false);


--
-- Name: absence_reasons absence_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence_reasons
    ADD CONSTRAINT absence_reasons_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

