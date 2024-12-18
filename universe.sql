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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id character varying(10) NOT NULL,
    planet_id character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    asteroid_composition character varying(40),
    asteroid_is_spherical boolean,
    dangerous text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_type character varying(40),
    galaxy_is_spherical boolean,
    galaxy_age_in_million_in_years numeric(5,2),
    galaxy_id character varying(10) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(10) NOT NULL,
    planet_id character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    moon_type character varying(40) NOT NULL,
    moon_distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(10) NOT NULL,
    star_id character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(40) NOT NULL,
    planet_has_life boolean,
    planet_distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(10) NOT NULL,
    galaxy_id character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    star_type character varying(40) NOT NULL,
    star_is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('A001', 'P004', 'Ceres', 'Rocky', false, NULL);
INSERT INTO public.asteroid VALUES ('A002', 'P004', 'Vesta', 'Metallic', false, NULL);
INSERT INTO public.asteroid VALUES ('A003', 'P005', 'Eros', 'Rocky', false, NULL);
INSERT INTO public.asteroid VALUES ('A004', 'P005', 'Hygiea', 'Icy', true, NULL);
INSERT INTO public.asteroid VALUES ('A005', 'P008', 'Proxima Ast 1', 'Rocky', false, NULL);
INSERT INTO public.asteroid VALUES ('A006', 'P012', 'Vega Asteroid', 'Metallic', false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Spiral', true, 130.00, 'G001');
INSERT INTO public.galaxy VALUES ('Andromeda', 'Spiral', true, 100.00, 'G002');
INSERT INTO public.galaxy VALUES ('Sombrero', 'Elliptical', true, 130.00, 'G003');
INSERT INTO public.galaxy VALUES ('Whirlpool', 'Spiral', true, 120.00, 'G004');
INSERT INTO public.galaxy VALUES ('Magellanic', 'Irregular', false, 700.00, 'G005');
INSERT INTO public.galaxy VALUES ('Triangulum', 'Spiral', false, 110.00, 'G006');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('M001', 'P003', 'Moon', 'Rocky', 0);
INSERT INTO public.moon VALUES ('M002', 'P004', 'Phobos', 'Rocky', 77);
INSERT INTO public.moon VALUES ('M003', 'P004', 'Deimos', 'Rocky', 78);
INSERT INTO public.moon VALUES ('M004', 'P005', 'Io', 'Volcanic', 628);
INSERT INTO public.moon VALUES ('M005', 'P005', 'Europa', 'Icy', 628);
INSERT INTO public.moon VALUES ('M006', 'P005', 'Ganymede', 'Rocky', 628);
INSERT INTO public.moon VALUES ('M007', 'P005', 'Callisto', 'Rocky', 628);
INSERT INTO public.moon VALUES ('M008', 'P006', 'Titan', 'Icy', 1277);
INSERT INTO public.moon VALUES ('M009', 'P006', 'Enceladus', 'Icy', 1277);
INSERT INTO public.moon VALUES ('M010', 'P006', 'Tethys', 'Rocky', 1277);
INSERT INTO public.moon VALUES ('M011', 'P006', 'Dione', 'Rocky', 1277);
INSERT INTO public.moon VALUES ('M012', 'P006', 'Rhea', 'Icy', 1277);
INSERT INTO public.moon VALUES ('M013', 'P008', 'Proxima Moon 1', 'Icy', 42400);
INSERT INTO public.moon VALUES ('M014', 'P008', 'Proxima Moon 2', 'Rocky', 42410);
INSERT INTO public.moon VALUES ('M015', 'P009', 'Antares Moon A', 'Rocky', 550000);
INSERT INTO public.moon VALUES ('M016', 'P009', 'Antares Moon B', 'Volcanic', 550050);
INSERT INTO public.moon VALUES ('M017', 'P011', 'Megallen Moon 1', 'Icy', 32010);
INSERT INTO public.moon VALUES ('M018', 'P011', 'Megallen Moon 2', 'Rocky', 32020);
INSERT INTO public.moon VALUES ('M019', 'P012', 'Vega Lunar A', 'Volcanic', 25010);
INSERT INTO public.moon VALUES ('M020', 'P012', 'Vega Lunar B', 'Icy', 25015);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('P001', 'S001', 'Mercury', 'Terrestrial', false, 77);
INSERT INTO public.planet VALUES ('P002', 'S001', 'Venus', 'Terrestrial', false, 261);
INSERT INTO public.planet VALUES ('P003', 'S001', 'Earth', 'Terrestrial', true, 0);
INSERT INTO public.planet VALUES ('P004', 'S001', 'Mars', 'Terrestrial', false, 76);
INSERT INTO public.planet VALUES ('P005', 'S001', 'Jupiter', 'Gas Giant', false, 628);
INSERT INTO public.planet VALUES ('P006', 'S001', 'Saturn', 'Gas Giant', false, 1277);
INSERT INTO public.planet VALUES ('P007', 'S002', 'Alpha Centauri b', 'Terrestrial', false, 41000);
INSERT INTO public.planet VALUES ('P008', 'S002', 'Proxima b', 'Terrestrial', true, 42400);
INSERT INTO public.planet VALUES ('P009', 'S003', 'Antares I', 'Gas Giant', false, 550000);
INSERT INTO public.planet VALUES ('P010', 'S004', 'Sirius A1', 'Rocky', false, 8600);
INSERT INTO public.planet VALUES ('P011', 'S005', 'Magellan I', 'Ice Giant', false, 32000);
INSERT INTO public.planet VALUES ('P012', 'S006', 'Vega Prima', 'Terrestrial', true, 25000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('S001', 'G001', 'Sun', 'Main Sequence', true);
INSERT INTO public.star VALUES ('S002', 'G002', 'Proxima', 'Red Dwarf', true);
INSERT INTO public.star VALUES ('S003', 'G003', 'Betelgeuse', 'Red Giant', true);
INSERT INTO public.star VALUES ('S004', 'G004', 'Sirius', 'Binary Star System', true);
INSERT INTO public.star VALUES ('S005', 'G005', 'Canopus', 'Supergiant', true);
INSERT INTO public.star VALUES ('S006', 'G006', 'Vega', 'Main Sequence', true);


--
-- Name: asteroid asteroids_asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: asteroid asteroids_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

