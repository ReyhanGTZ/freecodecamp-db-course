--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (40, 12, 14);
INSERT INTO public.games VALUES (41, 13, 284);
INSERT INTO public.games VALUES (42, 13, 387);
INSERT INTO public.games VALUES (43, 14, 613);
INSERT INTO public.games VALUES (44, 14, 688);
INSERT INTO public.games VALUES (45, 13, 288);
INSERT INTO public.games VALUES (46, 13, 517);
INSERT INTO public.games VALUES (47, 13, 381);
INSERT INTO public.games VALUES (48, 12, 17);
INSERT INTO public.games VALUES (49, 15, 255);
INSERT INTO public.games VALUES (50, 15, 491);
INSERT INTO public.games VALUES (51, 16, 898);
INSERT INTO public.games VALUES (52, 16, 565);
INSERT INTO public.games VALUES (53, 15, 880);
INSERT INTO public.games VALUES (54, 15, 89);
INSERT INTO public.games VALUES (55, 15, 916);
INSERT INTO public.games VALUES (56, 17, 947);
INSERT INTO public.games VALUES (57, 17, 993);
INSERT INTO public.games VALUES (58, 18, 834);
INSERT INTO public.games VALUES (59, 18, 485);
INSERT INTO public.games VALUES (60, 17, 28);
INSERT INTO public.games VALUES (61, 17, 621);
INSERT INTO public.games VALUES (62, 17, 458);
INSERT INTO public.games VALUES (63, 19, 939);
INSERT INTO public.games VALUES (64, 19, 427);
INSERT INTO public.games VALUES (65, 20, 237);
INSERT INTO public.games VALUES (66, 20, 941);
INSERT INTO public.games VALUES (67, 19, 594);
INSERT INTO public.games VALUES (68, 19, 104);
INSERT INTO public.games VALUES (69, 19, 397);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (12, 'Reyhan');
INSERT INTO public.users VALUES (13, 'user_1767132168862');
INSERT INTO public.users VALUES (14, 'user_1767132168861');
INSERT INTO public.users VALUES (15, 'user_1767132261189');
INSERT INTO public.users VALUES (16, 'user_1767132261188');
INSERT INTO public.users VALUES (17, 'user_1767132280966');
INSERT INTO public.users VALUES (18, 'user_1767132280965');
INSERT INTO public.users VALUES (19, 'user_1767132310677');
INSERT INTO public.users VALUES (20, 'user_1767132310676');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

