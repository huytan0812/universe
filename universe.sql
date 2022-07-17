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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_lightyears numeric(7,1) NOT NULL,
    galaxy_types text NOT NULL
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_lightyears numeric(7,1) NOT NULL,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_lightyears numeric(7,1) NOT NULL,
    planet_types text NOT NULL,
    is_spherical boolean,
    has_life boolean,
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
-- Name: ring; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ring (
    ring_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.ring OWNER TO freecodecamp;

--
-- Name: ring_ring_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ring_ring_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ring_ring_id_seq OWNER TO freecodecamp;

--
-- Name: ring_ring_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ring_ring_id_seq OWNED BY public.ring.ring_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_lightyears numeric(7,1) NOT NULL,
    galaxy_id integer
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
-- Name: ring ring_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ring ALTER COLUMN ring_id SET DEFAULT nextval('public.ring_ring_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 4500, 10000.5, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Antennae', 6000, 7000.9, 'peculiar');
INSERT INTO public.galaxy VALUES (4, 'Backward', 8000, 9000.0, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 10000, 6000.8, 'elliptical');
INSERT INTO public.galaxy VALUES (6, 'Bode', 4000, 6000.0, 'elliptical');
INSERT INTO public.galaxy VALUES (7, 'Butterfly', 6000, 8000.8, 'irregular');
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 10000, 26000.8, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth-moon', 1500, 0.2, 1);
INSERT INTO public.moon VALUES (2, 'Mercury-moon', 2000, 20.0, 2);
INSERT INTO public.moon VALUES (3, 'Venus-moon1', 2000, 15.0, 3);
INSERT INTO public.moon VALUES (4, 'Venus-moon2', 2200, 20.0, 3);
INSERT INTO public.moon VALUES (5, 'Mars-moon1', 2300, 35.0, 4);
INSERT INTO public.moon VALUES (6, 'Mars-moon2', 2400, 37.0, 4);
INSERT INTO public.moon VALUES (7, 'Mars-moon3', 2600, 40.0, 4);
INSERT INTO public.moon VALUES (8, 'Jupiter-moon1', 1500, 50.0, 5);
INSERT INTO public.moon VALUES (9, 'Jupiter-moon2', 1700, 53.0, 5);
INSERT INTO public.moon VALUES (10, 'Jupiter-moon4', 2000, 56.0, 5);
INSERT INTO public.moon VALUES (11, 'Jupiter-moon3', 2300, 54.0, 5);
INSERT INTO public.moon VALUES (12, 'Saturn-moon1', 3000, 60.0, 6);
INSERT INTO public.moon VALUES (13, 'Saturn-moon2', 3500, 63.0, 6);
INSERT INTO public.moon VALUES (14, 'Saturn-moon3', 3700, 68.0, 6);
INSERT INTO public.moon VALUES (15, 'Uranus-moon1', 2000, 70.0, 7);
INSERT INTO public.moon VALUES (16, 'Uranus-moon2', 2300, 73.0, 7);
INSERT INTO public.moon VALUES (17, 'Uranus-moon3', 2400, 75.0, 7);
INSERT INTO public.moon VALUES (18, 'Uranus-moon4', 2600, 77.0, 7);
INSERT INTO public.moon VALUES (19, 'Uranus-moon5', 2800, 79.0, 7);
INSERT INTO public.moon VALUES (20, 'Neptune-big-moon', 3500, 83.0, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 0.0, 'terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 3000, 100.0, 'terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 5000, 1800.0, 'terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 7000, 4200.0, 'terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3500, 1000.0, 'gas giant', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 6500, 2000.0, 'gas giant', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4000, 2300.0, 'ice giant', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 6000, 2600.0, 'ice giant', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler', 7000, 17000.0, 'terrestrial', true, true, 2);
INSERT INTO public.planet VALUES (10, 'Sagit', 10000, 200000.0, 'super earth', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Hemisolos', 6000, 230000.0, 'ice giant', false, false, 4);
INSERT INTO public.planet VALUES (12, 'Athentic', 8000, 260000.0, 'super-earth', true, false, 5);


--
-- Data for Name: ring; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ring VALUES (1, 3, 'comet-ring');
INSERT INTO public.ring VALUES (2, 4, 'dust-ring');
INSERT INTO public.ring VALUES (3, 5, 'gas-ring');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 10000, 150.0, 8);
INSERT INTO public.star VALUES (2, 'Sagittarius A*', 8000, 15000.0, 8);
INSERT INTO public.star VALUES (3, 'Pegasus', 8800, 30000.0, 2);
INSERT INTO public.star VALUES (4, 'Hemisphere', 7500, 32000.0, 2);
INSERT INTO public.star VALUES (5, 'Antennaestic', 8000, 150000.0, 3);
INSERT INTO public.star VALUES (6, 'Messier-8', 10000, 200000.0, 4);
INSERT INTO public.star VALUES (7, 'Messier-68', 12000, 260000.0, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: ring_ring_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ring_ring_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: ring ring_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ring
    ADD CONSTRAINT ring_pkey PRIMARY KEY (ring_id);


--
-- Name: ring ring_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ring
    ADD CONSTRAINT ring_planet_id_key UNIQUE (planet_id);


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
-- Name: ring ring_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ring
    ADD CONSTRAINT ring_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

