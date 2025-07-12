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
-- Name: attendance_journal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance_journal (
    id integer NOT NULL,
    employee_id bigint NOT NULL,
    meeting_id bigint NOT NULL,
    meeting_date date NOT NULL,
    attended boolean NOT NULL,
    absence_reason_id integer
);


ALTER TABLE public.attendance_journal OWNER TO postgres;

--
-- Name: attendance_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_journal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_journal_id_seq OWNER TO postgres;

--
-- Name: attendance_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_journal_id_seq OWNED BY public.attendance_journal.id;


--
-- Name: attendance_journal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_journal ALTER COLUMN id SET DEFAULT nextval('public.attendance_journal_id_seq'::regclass);


--
-- Data for Name: attendance_journal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance_journal (id, employee_id, meeting_id, meeting_date, attended, absence_reason_id) FROM stdin;
1	2	1	2025-07-11	t	\N
2	3	1	2025-07-11	t	\N
3	4	1	2025-07-11	t	\N
4	5	1	2025-07-11	t	\N
5	6	1	2025-07-11	t	\N
6	2	1	2025-07-08	t	\N
7	3	1	2025-07-08	t	\N
8	4	1	2025-07-08	t	\N
9	5	1	2025-07-08	t	\N
10	6	1	2025-07-08	t	\N
\.


--
-- Name: attendance_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendance_journal_id_seq', 10, true);


--
-- Name: attendance_journal attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_journal
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);


--
-- Name: attendance_journal fk_absence_reason; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_journal
    ADD CONSTRAINT fk_absence_reason FOREIGN KEY (absence_reason_id) REFERENCES public.absence_reasons(id) ON DELETE SET NULL;


--
-- Name: attendance_journal fk_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_journal
    ADD CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON DELETE CASCADE;


--
-- Name: attendance_journal fk_meeting; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_journal
    ADD CONSTRAINT fk_meeting FOREIGN KEY (meeting_id) REFERENCES public.meetings(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

