--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    number_planets integer,
    description text NOT NULL,
    description1 text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description1 text,
    description2 text,
    description3 text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    number_moons integer,
    size numeric NOT NULL,
    description text,
    water boolean,
    life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    description1 text,
    description2 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stats (
    name character varying(30) NOT NULL,
    description1 text NOT NULL,
    description2 text,
    stats_id integer NOT NULL
);


ALTER TABLE public.stats OWNER TO freecodecamp;

--
-- Name: stats_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stats_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_stats_id_seq OWNER TO freecodecamp;

--
-- Name: stats_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stats_stats_id_seq OWNED BY public.stats.stats_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: stats stats_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats ALTER COLUMN stats_id SET DEFAULT nextval('public.stats_stats_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', 1, 'Opis dla Galaxy1', 'Dodatkowy opis dla Galaxy1');
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', 2, 'Opis dla Galaxy2', 'Dodatkowy opis dla Galaxy2');
INSERT INTO public.galaxy VALUES (3, 'Galaxy3', 3, 'Opis dla Galaxy3', 'Dodatkowy opis dla Galaxy3');
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', 4, 'Opis dla Galaxy4', 'Dodatkowy opis dla Galaxy4');
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', 5, 'Opis dla Galaxy5', 'Dodatkowy opis dla Galaxy5');
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', 6, 'Opis dla Galaxy6', 'Dodatkowy opis dla Galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'merkury', 1, 2300, 'merkury jest fajny', false, false, 2);
INSERT INTO public.planet VALUES (2, 'wenus', 1, 2300, 'merkury jest fajny', false, false, 3);
INSERT INTO public.planet VALUES (3, 'ziemia', 1, 2300, 'merkury jest fajny', false, false, 4);
INSERT INTO public.planet VALUES (4, 'mars', 1, 2300, 'merkury jest fajny', false, false, 5);
INSERT INTO public.planet VALUES (5, 'mars1', 1, 2300, 'merkury jest fajny', false, false, 6);
INSERT INTO public.planet VALUES (6, 'mars2', 1, 2300, 'merkury jest fajny', false, false, 1);
INSERT INTO public.planet VALUES (7, 'mars3', 1, 2300, 'merkury jest fajny', false, false, 2);
INSERT INTO public.planet VALUES (8, 'mars4', 1, 2300, 'merkury jest fajny', false, false, 3);
INSERT INTO public.planet VALUES (9, 'mars5', 1, 2300, 'merkury jest fajny', false, false, 4);
INSERT INTO public.planet VALUES (10, 'mars6', 1, 2300, 'merkury jest fajny', false, false, 5);
INSERT INTO public.planet VALUES (11, 'mars7', 1, 2300, 'merkury jest fajny', false, false, 6);
INSERT INTO public.planet VALUES (12, 'mars8', 1, 2300, 'merkury jest fajny', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star5', 6, NULL, NULL);


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stats VALUES ('Nazwa1', 'Opis1 dla Nazwa1', 'Opis2 dla Nazwa1', 1);
INSERT INTO public.stats VALUES ('Nazwa2', 'Opis1 dla Nazwa2', 'Opis2 dla Nazwa2', 2);
INSERT INTO public.stats VALUES ('Nazwa3', 'Opis1 dla Nazwa3', 'Opis2 dla Nazwa3', 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: stats_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stats_stats_id_seq', 3, true);


--
-- Name: galaxy description1_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description1_unique UNIQUE (description1);


--
-- Name: galaxy description_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description_unique UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: stats stats_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_name_key UNIQUE (name);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (stats_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

