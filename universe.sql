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
    name character varying(30),
    age_in_millions_of_years integer,
    type character varying(30),
    diameter numeric(5,2) NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,3) NOT NULL,
    planet_id integer,
    is_orbiting boolean
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
-- Name: placeholder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.placeholder (
    placeholder_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    value numeric(10,2) NOT NULL
);


ALTER TABLE public.placeholder OWNER TO freecodecamp;

--
-- Name: placeholder_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.placeholder_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placeholder_name_id_seq OWNER TO freecodecamp;

--
-- Name: placeholder_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.placeholder_name_id_seq OWNED BY public.placeholder.placeholder_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,3) NOT NULL,
    planet_type text,
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
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,3) NOT NULL,
    is_spherical boolean,
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
-- Name: placeholder placeholder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder ALTER COLUMN placeholder_id SET DEFAULT nextval('public.placeholder_name_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, NULL, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10100, NULL, 0.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 4000, NULL, 0.00);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 4500, NULL, 0.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13000, NULL, 0.00);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 8000, NULL, 0.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 4.365, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 3200, 10.456, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5100, 5.678, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 6000, 12.345, 2, NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 4200, 20.987, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Enceladus', 3500, 7.654, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 4700, 15.234, 4, NULL);
INSERT INTO public.moon VALUES (8, 'Phobos', 3000, 9.876, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos', 2500, 3.210, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Triton', 5500, 2.456, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Oberon', 4000, 8.123, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Titania', 2800, 6.789, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 2600, 13.987, 1, NULL);
INSERT INTO public.moon VALUES (14, 'Mimas', 1200, 22.134, 2, NULL);
INSERT INTO public.moon VALUES (15, 'Iapetus', 3500, 11.654, 3, NULL);
INSERT INTO public.moon VALUES (16, 'Hyperion', 4000, 7.555, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', 3700, 9.234, 5, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 4300, 12.333, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 2000, 19.111, 1, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 1500, 4.876, 3, NULL);


--
-- Data for Name: placeholder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.placeholder VALUES (1, 'Alpha', 'A description for Alpha', 123.45);
INSERT INTO public.placeholder VALUES (2, 'Beta', 'A description for Beta', 678.90);
INSERT INTO public.placeholder VALUES (3, 'Gamma', 'A description for Gamma', 234.56);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', 4500, 4.365, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (2, 'Planet B', 3200, 10.456, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Planet C', 5100, 5.678, 'Ice Giant', 2);
INSERT INTO public.planet VALUES (4, 'Planet D', 6000, 12.345, 'Dwarf Planet', 2);
INSERT INTO public.planet VALUES (5, 'Planet E', 4200, 20.987, 'Terrestrial', 3);
INSERT INTO public.planet VALUES (6, 'Planet F', 3500, 7.654, 'Gas Giant', 3);
INSERT INTO public.planet VALUES (7, 'Planet G', 4700, 15.234, 'Ice Giant', 4);
INSERT INTO public.planet VALUES (8, 'Planet H', 3000, 9.876, 'Gas Giant', 4);
INSERT INTO public.planet VALUES (9, 'Planet I', 2500, 3.210, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (10, 'Planet J', 5500, 2.456, 'Dwarf Planet', 5);
INSERT INTO public.planet VALUES (11, 'Planet K', 4000, 8.123, 'Ice Giant', 6);
INSERT INTO public.planet VALUES (12, 'Planet L', 2800, 6.789, 'Gas Giant', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4500, 4.244, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8000, 643.000, false, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 2500, 8.611, true, 2);
INSERT INTO public.star VALUES (4, 'Vega', 4550, 25.040, true, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 9000, 860.000, false, 3);
INSERT INTO public.star VALUES (6, 'Altair', 2000, 16.730, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: placeholder_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.placeholder_name_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: moon distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT distance_from_earth UNIQUE (distance_from_earth);


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
-- Name: placeholder placeholder_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_name_key UNIQUE (name);


--
-- Name: placeholder placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_pkey PRIMARY KEY (placeholder_id);


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
-- Name: star unique_distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_distance_from_earth UNIQUE (distance_from_earth);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: placeholder unique_value; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT unique_value UNIQUE (value);


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

