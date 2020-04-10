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
-- Name: proj_budget; Type: TABLE; Schema: public; Owner: ntao
--

CREATE TABLE public.proj_budget (
    name text,
    id integer,
    proj text,
    budget integer
);


ALTER TABLE public.proj_budget OWNER TO ntao;

--
-- Data for Name: proj_budget; Type: TABLE DATA; Schema: public; Owner: ntao
--

INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Alabama', 1, 'A', 5);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Alaska', 2, 'B', 6);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Arizona', 3, 'C', 7);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Arkansas', 4, 'D', 8);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('California', 5, 'E', 9);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Colorado', 6, 'F', 10);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Connecticut', 7, 'G', 11);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Delaware', 8, 'H', 12);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Florida', 9, 'I', 13);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Georgia', 10, 'J', 14);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Hawaii', 11, 'K', 15);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Idaho', 12, 'L', 16);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Illinois', 13, 'M', 17);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Indiana', 14, 'N', 18);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Iowa', 15, 'O', 19);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Kansas', 16, 'P', 20);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Kentucky', 17, 'Q', 21);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Louisiana', 18, 'R', 22);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Maine', 19, 'S', 23);
INSERT INTO public.proj_budget (name, id, proj, budget) VALUES ('Maryland', 20, 'T', 24);


--
-- PostgreSQL database dump complete
--

