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
-- Name: meeting_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_types (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.meeting_types OWNER TO postgres;

--
-- Name: meeting_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meeting_types_id_seq OWNER TO postgres;

--
-- Name: meeting_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_types_id_seq OWNED BY public.meeting_types.id;


--
-- Name: meeting_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_types ALTER COLUMN id SET DEFAULT nextval('public.meeting_types_id_seq'::regclass);


--
-- Data for Name: meeting_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_types (id, name) FROM stdin;
2	Удаленно
3	Очно
\.


--
-- Name: meeting_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_types_id_seq', 3, true);


--
-- Name: meeting_types meeting_types_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_types
    ADD CONSTRAINT meeting_types_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

