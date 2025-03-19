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
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 450);
INSERT INTO public.games VALUES (2, 1, 479);
INSERT INTO public.games VALUES (3, 2, 792);
INSERT INTO public.games VALUES (4, 2, 458);
INSERT INTO public.games VALUES (5, 1, 798);
INSERT INTO public.games VALUES (6, 1, 481);
INSERT INTO public.games VALUES (7, 1, 180);
INSERT INTO public.games VALUES (8, 3, 881);
INSERT INTO public.games VALUES (9, 3, 561);
INSERT INTO public.games VALUES (10, 4, 10);
INSERT INTO public.games VALUES (11, 4, 141);
INSERT INTO public.games VALUES (12, 3, 653);
INSERT INTO public.games VALUES (13, 3, 678);
INSERT INTO public.games VALUES (14, 3, 182);
INSERT INTO public.games VALUES (15, 5, 504);
INSERT INTO public.games VALUES (16, 5, 267);
INSERT INTO public.games VALUES (17, 6, 626);
INSERT INTO public.games VALUES (18, 6, 613);
INSERT INTO public.games VALUES (19, 5, 991);
INSERT INTO public.games VALUES (20, 5, 219);
INSERT INTO public.games VALUES (21, 5, 51);
INSERT INTO public.games VALUES (22, 7, 793);
INSERT INTO public.games VALUES (23, 7, 280);
INSERT INTO public.games VALUES (24, 8, 618);
INSERT INTO public.games VALUES (25, 8, 175);
INSERT INTO public.games VALUES (26, 7, 392);
INSERT INTO public.games VALUES (27, 7, 633);
INSERT INTO public.games VALUES (28, 7, 100);
INSERT INTO public.games VALUES (29, 9, 991);
INSERT INTO public.games VALUES (30, 9, 331);
INSERT INTO public.games VALUES (31, 10, 173);
INSERT INTO public.games VALUES (32, 10, 591);
INSERT INTO public.games VALUES (33, 9, 597);
INSERT INTO public.games VALUES (34, 9, 280);
INSERT INTO public.games VALUES (35, 9, 455);
INSERT INTO public.games VALUES (36, 11, 41);
INSERT INTO public.games VALUES (37, 11, 4);
INSERT INTO public.games VALUES (38, 12, 379);
INSERT INTO public.games VALUES (39, 12, 758);
INSERT INTO public.games VALUES (40, 11, 584);
INSERT INTO public.games VALUES (41, 11, 57);
INSERT INTO public.games VALUES (42, 11, 225);
INSERT INTO public.games VALUES (43, 13, 2);
INSERT INTO public.games VALUES (44, 13, 711);
INSERT INTO public.games VALUES (45, 14, 458);
INSERT INTO public.games VALUES (46, 14, 84);
INSERT INTO public.games VALUES (47, 13, 486);
INSERT INTO public.games VALUES (48, 13, 152);
INSERT INTO public.games VALUES (49, 13, 744);
INSERT INTO public.games VALUES (50, 15, 947);
INSERT INTO public.games VALUES (51, 15, 142);
INSERT INTO public.games VALUES (52, 16, 681);
INSERT INTO public.games VALUES (53, 16, 803);
INSERT INTO public.games VALUES (54, 15, 33);
INSERT INTO public.games VALUES (55, 15, 158);
INSERT INTO public.games VALUES (56, 15, 899);
INSERT INTO public.games VALUES (57, 17, 444);
INSERT INTO public.games VALUES (58, 17, 461);
INSERT INTO public.games VALUES (59, 18, 69);
INSERT INTO public.games VALUES (60, 18, 683);
INSERT INTO public.games VALUES (61, 17, 548);
INSERT INTO public.games VALUES (62, 17, 117);
INSERT INTO public.games VALUES (63, 17, 628);
INSERT INTO public.games VALUES (64, 19, 311);
INSERT INTO public.games VALUES (65, 19, 955);
INSERT INTO public.games VALUES (66, 20, 36);
INSERT INTO public.games VALUES (67, 20, 481);
INSERT INTO public.games VALUES (68, 19, 666);
INSERT INTO public.games VALUES (69, 19, 98);
INSERT INTO public.games VALUES (70, 19, 65);
INSERT INTO public.games VALUES (71, 21, 870);
INSERT INTO public.games VALUES (72, 21, 760);
INSERT INTO public.games VALUES (73, 22, 493);
INSERT INTO public.games VALUES (74, 22, 763);
INSERT INTO public.games VALUES (75, 21, 557);
INSERT INTO public.games VALUES (76, 21, 496);
INSERT INTO public.games VALUES (77, 21, 91);
INSERT INTO public.games VALUES (78, 23, 100);
INSERT INTO public.games VALUES (79, 23, 239);
INSERT INTO public.games VALUES (80, 24, 703);
INSERT INTO public.games VALUES (81, 24, 215);
INSERT INTO public.games VALUES (82, 23, 944);
INSERT INTO public.games VALUES (83, 23, 135);
INSERT INTO public.games VALUES (84, 23, 273);
INSERT INTO public.games VALUES (85, 25, 375);
INSERT INTO public.games VALUES (86, 25, 78);
INSERT INTO public.games VALUES (87, 26, 204);
INSERT INTO public.games VALUES (88, 26, 794);
INSERT INTO public.games VALUES (89, 25, 278);
INSERT INTO public.games VALUES (90, 25, 198);
INSERT INTO public.games VALUES (91, 25, 96);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1742390643321', 2);
INSERT INTO public.users VALUES (1, 'user_1742390643322', 5);
INSERT INTO public.users VALUES (26, 'user_1742391181079', 2);
INSERT INTO public.users VALUES (4, 'user_1742390656515', 2);
INSERT INTO public.users VALUES (3, 'user_1742390656516', 5);
INSERT INTO public.users VALUES (25, 'user_1742391181080', 5);
INSERT INTO public.users VALUES (6, 'user_1742390673286', 2);
INSERT INTO public.users VALUES (5, 'user_1742390673287', 5);
INSERT INTO public.users VALUES (8, 'user_1742390677391', 2);
INSERT INTO public.users VALUES (7, 'user_1742390677392', 5);
INSERT INTO public.users VALUES (10, 'user_1742390754707', 2);
INSERT INTO public.users VALUES (9, 'user_1742390754708', 5);
INSERT INTO public.users VALUES (12, 'user_1742390760300', 2);
INSERT INTO public.users VALUES (11, 'user_1742390760301', 5);
INSERT INTO public.users VALUES (14, 'user_1742391088820', 2);
INSERT INTO public.users VALUES (13, 'user_1742391088821', 5);
INSERT INTO public.users VALUES (16, 'user_1742391120592', 2);
INSERT INTO public.users VALUES (15, 'user_1742391120593', 5);
INSERT INTO public.users VALUES (18, 'user_1742391125682', 2);
INSERT INTO public.users VALUES (17, 'user_1742391125683', 5);
INSERT INTO public.users VALUES (20, 'user_1742391129562', 2);
INSERT INTO public.users VALUES (19, 'user_1742391129563', 5);
INSERT INTO public.users VALUES (22, 'user_1742391139491', 2);
INSERT INTO public.users VALUES (21, 'user_1742391139492', 5);
INSERT INTO public.users VALUES (24, 'user_1742391143678', 2);
INSERT INTO public.users VALUES (23, 'user_1742391143679', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


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

