--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: tree; Type: TABLE; Schema: public; Owner: ntao
--

CREATE TABLE public.tree (
    id integer NOT NULL,
    pid integer,
    name character varying NOT NULL
);


ALTER TABLE public.tree OWNER TO ntao;

--
-- Data for Name: tree; Type: TABLE DATA; Schema: public; Owner: ntao
--

INSERT INTO public.tree (id, pid, name) VALUES (1, NULL, 'John');
INSERT INTO public.tree (id, pid, name) VALUES (2, 1, 'Brian');
INSERT INTO public.tree (id, pid, name) VALUES (3, 2, 'Adam');
INSERT INTO public.tree (id, pid, name) VALUES (4, NULL, 'Jack');
INSERT INTO public.tree (id, pid, name) VALUES (5, 4, 'Gary');
INSERT INTO public.tree (id, pid, name) VALUES (6, 4, 'Gerry');
INSERT INTO public.tree (id, pid, name) VALUES (7, 5, 'Sam');


--
-- PostgreSQL database dump complete
--

