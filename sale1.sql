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
-- Name: sale1; Type: TABLE; Schema: public; Owner: ntao
--

CREATE TABLE public.sale1 (
    year double precision,
    month integer,
    s integer
);


ALTER TABLE public.sale1 OWNER TO ntao;

--
-- Data for Name: sale1; Type: TABLE DATA; Schema: public; Owner: ntao
--

INSERT INTO public.sale1 (year, month, s) VALUES (2020, 1, 20);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 2, 91);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 3, 33);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 4, 37);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 5, 14);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 6, 41);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 7, 43);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 8, 26);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 9, 54);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 10, 39);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 11, 41);
INSERT INTO public.sale1 (year, month, s) VALUES (2020, 12, 99);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 1, 45);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 2, 76);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 3, 82);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 4, 35);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 5, 26);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 6, 18);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 7, 14);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 8, 92);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 9, 78);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 10, 5);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 11, 2);
INSERT INTO public.sale1 (year, month, s) VALUES (2019, 12, 56);


--
-- PostgreSQL database dump complete
--

