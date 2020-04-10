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
-- Name: sale; Type: TABLE; Schema: public; Owner: ntao
--

CREATE TABLE public.sale (
    year double precision,
    month integer,
    n integer,
    s integer
);


ALTER TABLE public.sale OWNER TO ntao;

--
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: ntao
--

INSERT INTO public.sale (year, month, n, s) VALUES (2019, 1, 1, 37);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 1, 2, 63);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 1, 3, 22);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 1, 4, 27);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 2, 1, 27);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 2, 2, 40);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 2, 3, 76);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 2, 4, 24);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 3, 1, 46);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 3, 2, 74);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 3, 3, 23);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 3, 4, 95);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 4, 1, 65);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 4, 2, 45);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 4, 3, 33);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 4, 4, 64);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 5, 1, 3);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 5, 2, 7);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 5, 3, 100);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 5, 4, 65);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 6, 1, 59);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 6, 2, 58);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 6, 3, 19);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 6, 4, 66);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 7, 1, 47);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 7, 2, 88);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 7, 3, 79);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 7, 4, 97);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 8, 1, 84);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 8, 2, 98);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 8, 3, 90);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 8, 4, 21);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 9, 1, 61);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 9, 2, 12);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 9, 3, 48);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 9, 4, 88);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 10, 1, 52);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 10, 2, 24);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 10, 3, 13);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 10, 4, 97);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 11, 1, 98);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 11, 2, 36);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 11, 3, 92);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 11, 4, 63);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 12, 1, 81);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 12, 2, 25);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 12, 3, 27);
INSERT INTO public.sale (year, month, n, s) VALUES (2019, 12, 4, 84);


--
-- PostgreSQL database dump complete
--

