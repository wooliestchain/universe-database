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
    description text,
    galaxy_types character varying,
    distance_from_earth integer NOT NULL,
    name character varying,
    etoile_min_milliard integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    descritpion text,
    planet_id integer,
    name character varying,
    demi_grand_axe integer NOT NULL,
    periapside integer NOT NULL
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_years integer NOT NULL,
    planet_types character varying,
    distance_from_earth integer NOT NULL,
    radius numeric(40,0),
    star_id integer,
    name character varying
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
    desctiption text,
    age_in_millions_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    star_types character varying,
    galaxy_id integer,
    name character varying
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
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying NOT NULL,
    descritpion text NOT NULL
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 'spirale baree', 0, 'voie lactee', 100);
INSERT INTO public.galaxy VALUES (2, NULL, 'spirale', 2550000, 'andromede', 1000);
INSERT INTO public.galaxy VALUES (3, NULL, 'lenticulaire a anneau', 423000000, 'Roue de chariot', 7);
INSERT INTO public.galaxy VALUES (4, NULL, 'spirale', 16700000, 'cigare', 5);
INSERT INTO public.galaxy VALUES (5, NULL, 'spirale', 324000000, 'comete', 10);
INSERT INTO public.galaxy VALUES (6, NULL, 'naine', 163000, 'grand nuage de magellan', 1);
INSERT INTO public.galaxy VALUES (7, NULL, 'naine', 199000, 'petit nuage de magellan', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 3, 'lune', 384399, 5);
INSERT INTO public.moon VALUES (2, NULL, 5, 'ganymede', 384399, 5);
INSERT INTO public.moon VALUES (3, NULL, 5, 'callisto', 384399, 5);
INSERT INTO public.moon VALUES (4, NULL, 5, 'europe', 384399, 5);
INSERT INTO public.moon VALUES (5, NULL, 5, 'io', 384399, 5);
INSERT INTO public.moon VALUES (6, NULL, 5, 'amalthee', 384399, 5);
INSERT INTO public.moon VALUES (7, NULL, 5, 'himalia', 384399, 5);
INSERT INTO public.moon VALUES (8, NULL, 5, 'thebe', 384399, 5);
INSERT INTO public.moon VALUES (9, NULL, 5, 'sinope', 384399, 5);
INSERT INTO public.moon VALUES (10, NULL, 5, 'pasiphae', 384399, 5);
INSERT INTO public.moon VALUES (11, NULL, 5, 'carme', 384399, 5);
INSERT INTO public.moon VALUES (12, NULL, 5, 'ananke', 384399, 5);
INSERT INTO public.moon VALUES (13, NULL, 5, 'elara', 384399, 5);
INSERT INTO public.moon VALUES (14, NULL, 5, 'leda', 384399, 5);
INSERT INTO public.moon VALUES (15, NULL, 5, 'adrastee', 384399, 5);
INSERT INTO public.moon VALUES (16, NULL, 5, 'metis', 384399, 5);
INSERT INTO public.moon VALUES (17, NULL, 4, 'phobos', 384399, 5);
INSERT INTO public.moon VALUES (18, NULL, 4, 'deimos', 384399, 5);
INSERT INTO public.moon VALUES (19, NULL, 6, 'titan', 384399, 5);
INSERT INTO public.moon VALUES (20, NULL, 6, 'japet', 384399, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, true, true, 600000000, 'planete tellurique', 42, 6051, 2, 'venus');
INSERT INTO public.planet VALUES (2, NULL, true, true, 4503, 'planete tellurique', 42, 2439, 2, 'mercure');
INSERT INTO public.planet VALUES (3, NULL, true, true, 4543, 'planete tellurique', 0, 6378, 2, 'terre');
INSERT INTO public.planet VALUES (4, NULL, false, false, 4603, 'planete tellurique', 225, 6378, 2, 'mars');
INSERT INTO public.planet VALUES (5, NULL, false, false, 4603, 'planete tellurique', 590, 71492, 2, 'jupiter');
INSERT INTO public.planet VALUES (6, NULL, false, true, 4503, 'planete gazeuse', 1300, 58232, 2, 'saturne');
INSERT INTO public.planet VALUES (7, NULL, false, true, 4503, 'planete glaciere', 2300, 25559, 2, 'uranus');
INSERT INTO public.planet VALUES (8, NULL, false, true, 4503, 'planete glaciere', 2300, 24764, 2, 'neptune');
INSERT INTO public.planet VALUES (9, NULL, false, true, 4800, 'planete naine', 100, 1185, 2, 'pluton');
INSERT INTO public.planet VALUES (10, NULL, false, true, 4500, 'planete naine', 0, 476, 2, 'ceres');
INSERT INTO public.planet VALUES (11, NULL, false, true, 4500, 'planete naine', 0, 1434, 2, 'makemake');
INSERT INTO public.planet VALUES (12, NULL, false, true, 4500, 'planete naine', 0, 1434, 2, 'heris');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 237, 9, 'etoile blanche', 1, 'sirius');
INSERT INTO public.star VALUES (2, NULL, 2, 0, 'naine jaune', 1, 'soleil');
INSERT INTO public.star VALUES (3, NULL, 8, 863, 'supergeante bleue', 1, 'rigel');
INSERT INTO public.star VALUES (4, NULL, 8, 197, 'supergeante rouge', 1, 'betelgeuse');
INSERT INTO public.star VALUES (5, NULL, 520, 43, 'naine rouge', 1, 'capella');
INSERT INTO public.star VALUES (6, NULL, 1, 17, 'naine rouge', 1, 'altair');


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'solaire', 'systeme de 9 planetes');
INSERT INTO public.system VALUES (2, 'sirius', 'systeme proche du systeme solaire');
INSERT INTO public.system VALUES (3, 'betelgeuse', 'systeme proche du systeme solaire');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: system system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_name_key UNIQUE (name);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


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
-- PostgreSQL database dump complete
--

