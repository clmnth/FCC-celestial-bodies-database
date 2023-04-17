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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    mass integer,
    surface_area integer,
    composition text,
    description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_name_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_name_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_stars integer,
    age integer,
    description text
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    radius integer,
    distance_from_planet numeric(10,2),
    description text
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
    name character varying(255) NOT NULL,
    radius numeric(10,2),
    mass numeric(10,2),
    has_life boolean DEFAULT false NOT NULL,
    description text,
    has_atmosphere boolean DEFAULT false,
    star_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    size integer,
    temperature integer,
    luminosity integer,
    color character varying(50) NOT NULL,
    descruption text,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_name_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, NULL, NULL, NULL, NULL, 'ceres');
INSERT INTO public.asteroid VALUES (2, NULL, NULL, NULL, NULL, 'vesta');
INSERT INTO public.asteroid VALUES (3, NULL, NULL, NULL, NULL, 'eros');
INSERT INTO public.asteroid VALUES (4, NULL, NULL, NULL, NULL, 'pallas');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromedia', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'triangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'large magellanic', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'phobos', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'deimos', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'io', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'europa', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'ganymede', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'callisto', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'amalthea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'himalia', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'elara', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'metis', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'adrastea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'thebe', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'dione', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'enceladus', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'mimas', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'rhea', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'titan', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'iapetus', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'triton', 9, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (3, 'venus', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (4, 'earth', NULL, NULL, true, NULL, false, 7);
INSERT INTO public.planet VALUES (5, 'mars', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (6, 'jupiter', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (7, 'saturn', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (8, 'uranus', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (9, 'neptune', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (10, 'pluto', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (11, 'Eris', NULL, NULL, false, NULL, false, 7);
INSERT INTO public.planet VALUES (12, 'kepler-452b', NULL, NULL, false, NULL, false, 8);
INSERT INTO public.planet VALUES (13, 'hd 209458b', NULL, NULL, false, NULL, false, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'vega', NULL, NULL, NULL, 'blue_white', NULL, 2);
INSERT INTO public.star VALUES (5, 'proxima centauri', NULL, NULL, NULL, 'red', NULL, 2);
INSERT INTO public.star VALUES (6, 'polaris', NULL, NULL, NULL, 'yellow', NULL, 2);
INSERT INTO public.star VALUES (1, 'sirus', NULL, NULL, NULL, 'blue-white', NULL, 2);
INSERT INTO public.star VALUES (2, 'betelgeuse', NULL, NULL, NULL, 'red', NULL, 2);
INSERT INTO public.star VALUES (7, 'sun', NULL, NULL, NULL, 'white', NULL, 2);
INSERT INTO public.star VALUES (3, 'alpha centauri', NULL, NULL, NULL, 'yellow', NULL, 2);
INSERT INTO public.star VALUES (8, 'kepler-452', NULL, NULL, NULL, 'yellow-white', NULL, 2);
INSERT INTO public.star VALUES (9, 'hd 209458', NULL, NULL, NULL, 'yellow', NULL, 2);


--
-- Name: asteroid_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_name_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_surface_area_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_surface_area_key UNIQUE (surface_area);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_distance_from_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_distance_from_planet UNIQUE (distance_from_planet);


--
-- Name: star unique_luminosity; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_luminosity UNIQUE (luminosity);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_number_of_stars; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_number_of_stars UNIQUE (number_of_stars);


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

