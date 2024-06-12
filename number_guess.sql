--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 682);
INSERT INTO public.games VALUES (2, 1, 911);
INSERT INTO public.games VALUES (3, 2, 258);
INSERT INTO public.games VALUES (4, 2, 509);
INSERT INTO public.games VALUES (5, 1, 147);
INSERT INTO public.games VALUES (6, 1, 753);
INSERT INTO public.games VALUES (7, 1, 521);
INSERT INTO public.games VALUES (8, 3, 191);
INSERT INTO public.games VALUES (9, 3, 406);
INSERT INTO public.games VALUES (10, 4, 513);
INSERT INTO public.games VALUES (11, 4, 421);
INSERT INTO public.games VALUES (12, 3, 689);
INSERT INTO public.games VALUES (13, 3, 713);
INSERT INTO public.games VALUES (14, 3, 460);
INSERT INTO public.games VALUES (15, 5, 225);
INSERT INTO public.games VALUES (16, 5, 560);
INSERT INTO public.games VALUES (17, 6, 466);
INSERT INTO public.games VALUES (18, 6, 710);
INSERT INTO public.games VALUES (19, 5, 608);
INSERT INTO public.games VALUES (20, 5, 110);
INSERT INTO public.games VALUES (21, 5, 636);
INSERT INTO public.games VALUES (22, 7, 595);
INSERT INTO public.games VALUES (23, 7, 440);
INSERT INTO public.games VALUES (24, 8, 19);
INSERT INTO public.games VALUES (25, 8, 266);
INSERT INTO public.games VALUES (26, 7, 616);
INSERT INTO public.games VALUES (27, 7, 931);
INSERT INTO public.games VALUES (28, 7, 700);
INSERT INTO public.games VALUES (29, 9, 363);
INSERT INTO public.games VALUES (30, 9, 459);
INSERT INTO public.games VALUES (31, 10, 188);
INSERT INTO public.games VALUES (32, 10, 873);
INSERT INTO public.games VALUES (33, 9, 710);
INSERT INTO public.games VALUES (34, 9, 507);
INSERT INTO public.games VALUES (35, 9, 7);
INSERT INTO public.games VALUES (36, 11, 13);
INSERT INTO public.games VALUES (37, 11, 659);
INSERT INTO public.games VALUES (38, 12, 862);
INSERT INTO public.games VALUES (39, 12, 838);
INSERT INTO public.games VALUES (40, 11, 961);
INSERT INTO public.games VALUES (41, 11, 68);
INSERT INTO public.games VALUES (42, 11, 117);
INSERT INTO public.games VALUES (43, 13, 413);
INSERT INTO public.games VALUES (44, 13, 465);
INSERT INTO public.games VALUES (45, 14, 543);
INSERT INTO public.games VALUES (46, 14, 722);
INSERT INTO public.games VALUES (47, 13, 869);
INSERT INTO public.games VALUES (48, 13, 184);
INSERT INTO public.games VALUES (49, 13, 566);
INSERT INTO public.games VALUES (50, 15, 489);
INSERT INTO public.games VALUES (51, 15, 206);
INSERT INTO public.games VALUES (52, 16, 494);
INSERT INTO public.games VALUES (53, 16, 476);
INSERT INTO public.games VALUES (54, 15, 852);
INSERT INTO public.games VALUES (55, 15, 990);
INSERT INTO public.games VALUES (56, 15, 940);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1718203924432');
INSERT INTO public.users VALUES (2, 'user_1718203924431');
INSERT INTO public.users VALUES (3, 'user_1718204412221');
INSERT INTO public.users VALUES (4, 'user_1718204412220');
INSERT INTO public.users VALUES (5, 'user_1718204449964');
INSERT INTO public.users VALUES (6, 'user_1718204449963');
INSERT INTO public.users VALUES (7, 'user_1718204659771');
INSERT INTO public.users VALUES (8, 'user_1718204659770');
INSERT INTO public.users VALUES (9, 'user_1718205183996');
INSERT INTO public.users VALUES (10, 'user_1718205183995');
INSERT INTO public.users VALUES (11, 'user_1718205238592');
INSERT INTO public.users VALUES (12, 'user_1718205238591');
INSERT INTO public.users VALUES (13, 'user_1718205356014');
INSERT INTO public.users VALUES (14, 'user_1718205356013');
INSERT INTO public.users VALUES (15, 'user_1718205384583');
INSERT INTO public.users VALUES (16, 'user_1718205384582');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

