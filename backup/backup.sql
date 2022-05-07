--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channels (
    "Channel Id" smallint NOT NULL,
    "Channel" text,
    "Week 1 GRP" real,
    "Week 1 Rank" integer,
    "Week 10 GRP" real,
    "Week 10 Rank" integer,
    "Week 11 GRP" real,
    "Week 11 Rank" integer,
    "Week 12 GRP" real,
    "Week 12 Rank" integer,
    "Week 13 GRP" real,
    "Week 13 Rank" integer,
    "Week 14 GRP" real,
    "Week 14 Rank" integer,
    "Week 15 GRP" real,
    "Week 15 Rank" integer,
    "Week 16 GRP" real,
    "Week 16 Rank" integer,
    "Week 17 GRP" real,
    "Week 17 Rank" integer,
    "Week 2 GRP" real,
    "Week 2 Rank" integer,
    "Week 3 GRP" real,
    "Week 3 Rank" integer,
    "Week 4 GRP" real,
    "Week 4 Rank" integer,
    "Week 5 GRP" real,
    "Week 5 Rank" integer,
    "Week 6 GRP" real,
    "Week 6 Rank" integer,
    "Week 7 GRP" real,
    "Week 7 Rank" integer,
    "Week 8 GRP" real,
    "Week 8 Rank" integer,
    "Week 9 GRP" real,
    "Week 9 Rank" integer
);


ALTER TABLE public.channels OWNER TO postgres;

--
-- Name: channels_Channel Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."channels_Channel Id_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."channels_Channel Id_seq" OWNER TO postgres;

--
-- Name: channels_Channel Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."channels_Channel Id_seq" OWNED BY public.channels."Channel Id";


--
-- Name: mahaepisodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahaepisodes (
    "Mahaepisode Id" smallint NOT NULL,
    "Show" text,
    "Channel" text,
    "Platform" text,
    "Week 2 TRP" text,
    "Week 2 Rank" integer,
    "Week 2 Time" text,
    "Week 5 TRP" text,
    "Week 5 Rank" integer,
    "Week 5 Time" text,
    "Week 6 TRP" text,
    "Week 6 Rank" integer,
    "Week 6 Time" text,
    "Week 7 TRP" text,
    "Week 7 Rank" integer,
    "Week 7 Time" text,
    "Week 8 TRP" text,
    "Week 8 Rank" integer,
    "Week 8 Time" text,
    "Week 9 TRP" text,
    "Week 9 Rank" integer,
    "Week 9 Time" text,
    "Week 10 TRP" text,
    "Week 10 Rank" integer,
    "Week 10 Time" text,
    "Week 12 TRP" text,
    "Week 12 Rank" integer,
    "Week 12 Time" text,
    "Week 13 TRP" text,
    "Week 13 Rank" integer,
    "Week 13 Time" text,
    "Week 14 TRP" text,
    "Week 14 Rank" integer,
    "Week 14 Time" text,
    "Week 15 TRP" text,
    "Week 15 Rank" integer,
    "Week 15 Time" text,
    "Week 16 TRP" text,
    "Week 16 Rank" integer,
    "Week 16 Time" text,
    "Type" text
);


ALTER TABLE public.mahaepisodes OWNER TO postgres;

--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."mahaepisodes_Mahaepisode Id_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."mahaepisodes_Mahaepisode Id_seq" OWNER TO postgres;

--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."mahaepisodes_Mahaepisode Id_seq" OWNED BY public.mahaepisodes."Mahaepisode Id";


--
-- Name: shows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shows (
    "Show Id" smallint NOT NULL,
    "Show" text,
    "Channel" text,
    "Platform" text,
    "Time" text,
    "Week 1 TV TRP TRP" text,
    "Week 1 TV TRP Rank" integer,
    "Week 1 Online TRP TRP" text,
    "Week 1 Online TRP Rank" integer,
    "Week 2 TV TRP TRP" text,
    "Week 2 TV TRP Rank" integer,
    "Week 2 Online TRP TRP" text,
    "Week 2 Online TRP Rank" integer,
    "Week 3 TV TRP TRP" text,
    "Week 3 TV TRP Rank" integer,
    "Week 3 Online TRP TRP" text,
    "Week 3 Online TRP Rank" integer,
    "Week 4 TV TRP TRP" text,
    "Week 4 TV TRP Rank" integer,
    "Week 4 Online TRP TRP" text,
    "Week 4 Online TRP Rank" integer,
    "Week 5 TV TRP TRP" text,
    "Week 5 TV TRP Rank" integer,
    "Week 5 Online TRP TRP" text,
    "Week 5 Online TRP Rank" integer,
    "Week 6 TV TRP TRP" text,
    "Week 6 TV TRP Rank" integer,
    "Week 6 Online TRP TRP" text,
    "Week 6 Online TRP Rank" integer,
    "Week 7 TV TRP TRP" text,
    "Week 7 TV TRP Rank" integer,
    "Week 7 Online TRP TRP" text,
    "Week 7 Online TRP Rank" integer,
    "Week 8 TV TRP TRP" text,
    "Week 8 TV TRP Rank" integer,
    "Week 8 Online TRP TRP" text,
    "Week 8 Online TRP Rank" integer,
    "Week 9 TV TRP TRP" text,
    "Week 9 TV TRP Rank" integer,
    "Week 9 Online TRP TRP" text,
    "Week 9 Online TRP Rank" integer,
    "Week 10 TV TRP TRP" text,
    "Week 10 TV TRP Rank" integer,
    "Week 10 Online TRP TRP" text,
    "Week 10 Online TRP Rank" integer,
    "Week 11 TV TRP TRP" text,
    "Week 11 TV TRP Rank" integer,
    "Week 11 Online TRP TRP" text,
    "Week 11 Online TRP Rank" integer,
    "Week 12 TV TRP TRP" text,
    "Week 12 TV TRP Rank" integer,
    "Week 12 Online TRP TRP" text,
    "Week 12 Online TRP Rank" integer,
    "Week 13 TV TRP TRP" text,
    "Week 13 TV TRP Rank" integer,
    "Week 13 Online TRP TRP" text,
    "Week 13 Online TRP Rank" integer,
    "Week 14 TV TRP TRP" text,
    "Week 14 TV TRP Rank" integer,
    "Week 14 Online TRP TRP" text,
    "Week 14 Online TRP Rank" integer,
    "Week 15 TV TRP TRP" text,
    "Week 15 TV TRP Rank" integer,
    "Week 15 Online TRP TRP" text,
    "Week 15 Online TRP Rank" integer,
    "Week 16 TV TRP TRP" text,
    "Week 16 TV TRP Rank" integer,
    "Week 16 Online TRP TRP" text,
    "Week 16 Online TRP Rank" integer,
    "Week 17 TV TRP TRP" text,
    "Week 17 TV TRP Rank" integer,
    "Week 17 Online TRP TRP" text,
    "Week 17 Online TRP Rank" integer,
    "Type" text
);


ALTER TABLE public.shows OWNER TO postgres;

--
-- Name: shows_Show Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shows_Show Id_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shows_Show Id_seq" OWNER TO postgres;

--
-- Name: shows_Show Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shows_Show Id_seq" OWNED BY public.shows."Show Id";


--
-- Name: special_episodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.special_episodes (
    "Special Episode Id" smallint NOT NULL,
    "Show" text,
    "Channel" text,
    "Platform" text,
    "Week 9 TRP" text,
    "Week 9 Rank" integer,
    "Week 9 Time" text,
    "Week 11 TRP" text,
    "Week 11 Rank" integer,
    "Week 11 Time" text,
    "Type" text
);


ALTER TABLE public.special_episodes OWNER TO postgres;

--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."special_episodes_Special Episode Id_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."special_episodes_Special Episode Id_seq" OWNER TO postgres;

--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."special_episodes_Special Episode Id_seq" OWNED BY public.special_episodes."Special Episode Id";


--
-- Name: channels Channel Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels ALTER COLUMN "Channel Id" SET DEFAULT nextval('public."channels_Channel Id_seq"'::regclass);


--
-- Name: mahaepisodes Mahaepisode Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahaepisodes ALTER COLUMN "Mahaepisode Id" SET DEFAULT nextval('public."mahaepisodes_Mahaepisode Id_seq"'::regclass);


--
-- Name: shows Show Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shows ALTER COLUMN "Show Id" SET DEFAULT nextval('public."shows_Show Id_seq"'::regclass);


--
-- Name: special_episodes Special Episode Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_episodes ALTER COLUMN "Special Episode Id" SET DEFAULT nextval('public."special_episodes_Special Episode Id_seq"'::regclass);


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 10 GRP", "Week 10 Rank", "Week 11 GRP", "Week 11 Rank", "Week 12 GRP", "Week 12 Rank", "Week 13 GRP", "Week 13 Rank", "Week 14 GRP", "Week 14 Rank", "Week 15 GRP", "Week 15 Rank", "Week 16 GRP", "Week 16 Rank", "Week 17 GRP", "Week 17 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	369.16	4	384.35	4	405.62	5	430.03	4	395.48	5	379.31	5	353.63	5	323.03	5	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Dhinchaak	\N	\N	\N	\N	\N	\N	458.39	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	Sony SAB	488.02	3	419.16	3	442.3	3	442.04	4	419.38	5	444.1	3	424.86	4	433.61	4	407.13	4	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
4	Star Plus	351.31	5	340.29	5	341.63	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
5	Star Pravah	1578.27	1	1447.35	1	1434.9	1	1445.64	1	1396.25	1	1465.01	1	1319.68	1	1383.18	1	1377.46	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
6	Star Sports 1 Hindi	\N	\N	\N	\N	\N	\N	\N	\N	616.75	2	620.28	2	657.54	2	662.71	2	525.2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
8	Zee Marathi	695.06	2	572.46	2	562.99	2	546.65	2	550.42	3	441.22	4	472.63	3	488.56	3	470.05	3	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
9	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Week 10 TRP", "Week 10 Rank", "Week 10 Time", "Week 12 TRP", "Week 12 Rank", "Week 12 Time", "Week 13 TRP", "Week 13 Rank", "Week 13 Time", "Week 14 TRP", "Week 14 Rank", "Week 14 Time", "Week 15 TRP", "Week 15 Rank", "Week 15 Time", "Week 16 TRP", "Week 16 Rank", "Week 16 Time", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	6	19:00	Fiction
3	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Balumamachya Navana Changbhala	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	5	19:00	\N	\N	\N	Fiction
5	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	1.8	2	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	3	22:00	Fiction
6	Gatha Navanathanchi	Sony Marathi	SonyLiv	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	9	19:00	Fiction
7	Jai Jai Swami Samarth	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	6	19:00	\N	\N	\N	0.3	2	20:00	\N	\N	\N	\N	\N	\N	Fiction
8	Jeev Majha Guntala	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	20:00	\N	\N	\N	Fiction
9	Lagnachi Bedi	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Lek Majhi Durga	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	7	20:00	\N	\N	\N	0.1	3	19:00	\N	\N	\N	\N	\N	\N	Fiction
11	Mahaminister	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	7	18:00	Non-Fiction
12	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
13	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	1.3	4	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.9	3	19:00	\N	\N	\N	Fiction
14	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.7	1	19:00	Fiction
15	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
17	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
18	Pinkycha Vijay Aso	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.7	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
19	Raja Ranichi Ga Jodi	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	5	20:00	Fiction
20	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
21	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.4	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
22	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
23	Sundara Manamadhye Bharali	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	5	21:00	\N	\N	\N	0.5	1	21:00	\N	\N	\N	1	4	21:00	Fiction
24	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
25	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	8	20:00	Fiction
26	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.1	2	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
27	Tu Tevha Tashi	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.8	4	20:00	\N	\N	\N	\N	\N	\N	2.5	1	20:00	2.1	2	20:00	Fiction
28	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	1.1	5	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	4	21:00	Fiction
29	Tujhya Rupacha Chandana	Colors Marathi	Voot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	4	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Week 10 TV TRP TRP", "Week 10 TV TRP Rank", "Week 10 Online TRP TRP", "Week 10 Online TRP Rank", "Week 11 TV TRP TRP", "Week 11 TV TRP Rank", "Week 11 Online TRP TRP", "Week 11 Online TRP Rank", "Week 12 TV TRP TRP", "Week 12 TV TRP Rank", "Week 12 Online TRP TRP", "Week 12 Online TRP Rank", "Week 13 TV TRP TRP", "Week 13 TV TRP Rank", "Week 13 Online TRP TRP", "Week 13 Online TRP Rank", "Week 14 TV TRP TRP", "Week 14 TV TRP Rank", "Week 14 Online TRP TRP", "Week 14 Online TRP Rank", "Week 15 TV TRP TRP", "Week 15 TV TRP Rank", "Week 15 Online TRP TRP", "Week 15 Online TRP Rank", "Week 16 TV TRP TRP", "Week 16 TV TRP Rank", "Week 16 Online TRP TRP", "Week 16 Online TRP Rank", "Week 17 TV TRP TRP", "Week 17 TV TRP Rank", "Week 17 Online TRP TRP", "Week 17 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	6.8	2	42.1	1	6.5	2	42.1	1	6.6	2	43.1	1	6.8	2	44	1	6.4	3	42.1	1	6	4	42.3	1	6.4	2	42.1	1	6.5	2	42.1	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	22	\N	\N	1.4	21	\N	\N	1.4	20	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	3	11	\N	\N	3	11	\N	\N	2.6	10	\N	\N	2.6	10	\N	\N	3.4	10	\N	\N	3.4	9	\N	\N	3.4	9	\N	\N	3.9	9	\N	\N	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	23	\N	\N	1.1	23	\N	\N	1.1	22	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - II	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Band Baja Varat	Zee Marathi	Zee5	['22:00', '21:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	25	\N	\N	1.6	19	\N	\N	1.5	19	\N	\N	\N	\N	\N	\N	Non-Fiction
8	Bhagya Dile Tu Mala	Colors Marathi	Voot	['21:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.3	21	\N	\N	1.5	20	\N	\N	1.5	19	\N	\N	\N	\N	\N	\N	Fiction
9	Bola Jai Bhim	Sony Marathi	SonyLiv	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
10	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	22	\N	\N	0.7	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	1.6	15	\N	\N	1.6	15	\N	\N	1.7	14	\N	\N	1.4	15	\N	\N	2.8	13	\N	\N	2.8	11	\N	\N	2.7	12	\N	\N	2.1	13	\N	\N	Non-Fiction
12	Colors Marathi Awards 2021-22	Colors Marathi	Voot	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.7	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
13	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
14	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	2.6	12	27.6	9	1.8	14	25.1	10	2.3	12	25.4	10	1.5	14	\N	\N	2.5	15	\N	\N	2.5	12	\N	\N	2.6	13	\N	\N	1.8	14	\N	\N	Fiction
15	Filmfare Awards Marathi 2021	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.9	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
16	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
17	Gatha Navanathanchi	Sony Marathi	SonyLiv	['18:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
18	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
19	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
20	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
21	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
22	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.8	20	\N	\N	1.8	17	\N	\N	1.7	18	\N	\N	\N	\N	\N	\N	Fiction
23	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	1.4	16	\N	\N	1.3	16	\N	\N	\N	\N	\N	\N	1.3	16	\N	\N	2.2	17	\N	\N	2.2	14	\N	\N	2	16	\N	\N	1.5	16	\N	\N	Fiction
24	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
25	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	0.9	20	\N	\N	1.2	17	\N	\N	\N	\N	\N	\N	1.3	16	25.4	10	2.8	13	27.6	9	2.8	11	27.2	10	2.8	11	28.4	10	1.7	15	28.3	10	Fiction
26	Lek Majhi Durga	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	26	\N	\N	0.7	24	\N	\N	0.7	23	\N	\N	\N	\N	\N	\N	Fiction
27	Lek Majhi Durga - I	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
28	Mahaminister	Zee Marathi	Zee5	['18:30', '18:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	22	\N	\N	1.2	21	\N	\N	\N	\N	\N	\N	Non-Fiction
29	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
30	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	20	\N	\N	0.7	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
31	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	4.2	7	35.9	5	4.4	7	35.4	5	3.6	7	35	5	4.6	7	34.1	5	4.3	7	36.4	5	4.4	6	35.4	5	4.3	5	37.6	5	4.9	6	36.5	4	Fiction
32	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	1.3	17	\N	\N	1.1	18	\N	\N	\N	\N	\N	\N	1	18	\N	\N	1.9	19	\N	\N	1.7	18	\N	\N	1.7	18	\N	\N	\N	\N	\N	\N	Fiction
33	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	3.1	10	32.6	7	3.1	10	28.3	8	2.5	11	28.6	9	2.1	12	27.1	9	3.3	11	29.8	8	3.4	9	29.6	8	3.4	9	30.1	8	3.5	10	29.6	8	Fiction
34	Masaledar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.1	13	\N	\N	2.1	13	\N	\N	1.5	14	\N	\N	2.4	16	\N	\N	2.4	13	\N	\N	2.4	14	\N	\N	2.4	12	\N	\N	Non-Fiction
35	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	2.4	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
36	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	1	19	\N	\N	1.1	18	\N	\N	1	15	\N	\N	\N	\N	\N	\N	3.6	9	\N	\N	3.4	9	\N	\N	3.6	8	\N	\N	\N	\N	\N	\N	Non-Fiction
37	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	4.7	6	\N	\N	4.6	6	\N	\N	4.5	6	\N	\N	5.4	5	\N	\N	3.9	8	\N	\N	3.6	8	\N	\N	3.8	7	\N	\N	5.2	5	\N	\N	Fiction
38	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	0.8	21	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	0.7	21	\N	\N	2.1	18	\N	\N	2.1	15	\N	\N	2	16	\N	\N	\N	\N	\N	\N	Fiction
39	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.7	14	\N	\N	2.4	13	\N	\N	2.8	11	\N	\N	\N	\N	\N	\N	Fiction
40	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
41	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	5.7	4	34.1	6	5.9	4	30.8	7	5.7	4	31.7	7	6.5	3	32.1	6	6.3	4	34.6	6	6.1	3	33.7	6	6.2	3	33.6	7	6.4	3	32	7	Fiction
42	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	\N	\N	\N	\N	0.9	20	\N	\N	\N	\N	\N	\N	1	18	\N	\N	2.1	18	\N	\N	2.1	15	\N	\N	2.2	15	\N	\N	1.2	17	\N	\N	Fiction
43	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
44	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	21	\N	\N	1.3	21	\N	\N	1.4	21	\N	\N	1.4	20	\N	\N	\N	\N	\N	\N	Fiction
45	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	7	1	37.6	4	6.8	1	38.4	3	6.7	1	39.6	2	6.9	1	39.8	2	6.8	2	39.8	3	6.6	1	38.7	3	6.8	1	40.1	2	6.8	1	40.6	2	Fiction
46	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.9	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
47	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	3.9	8	\N	\N	3.8	9	\N	\N	2.6	10	\N	\N	4	8	\N	\N	5.9	5	\N	\N	3.6	8	\N	\N	3.6	8	\N	\N	4.1	8	\N	\N	Fiction
48	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
49	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
50	Star Pravah Parivar Puraskar 2022	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7.4	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
51	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	6.6	3	38.3	3	6.4	3	39.6	2	6.2	3	37.5	4	6.2	4	37.4	3	6.4	3	40.7	2	6.2	2	40.6	2	6.2	3	39.7	3	6.4	3	36.2	5	Fiction
52	Sundar Amcha Ghar	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	22	\N	\N	0.5	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
53	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	1.3	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	17	\N	\N	2.1	18	\N	\N	2	16	\N	\N	2	16	\N	\N	1.2	17	\N	\N	Fiction
54	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	3.5	9	30.3	8	4.1	8	33.2	6	2.8	9	32.4	6	3.6	9	30.8	7	4.3	7	32.1	7	4.1	7	31.2	7	4.2	6	35.4	6	4.5	7	34.7	6	Fiction
55	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
56	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	4.8	5	40.3	2	4.8	5	37	4	4.7	5	38.8	3	5.1	6	36.5	4	5.1	6	38.1	4	5	5	37.6	4	5.1	4	38.5	4	5.8	4	39.8	3	Fiction
57	Tu Tevha Tashi	Zee Marathi	Zee5	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	8	29.3	8	3.6	9	27.8	8	3	12	27.1	10	3.1	10	27.6	9	3.2	10	29.2	9	3.1	11	28.6	9	Fiction
58	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
59	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
60	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	1.2	18	\N	\N	1	19	\N	\N	\N	\N	\N	\N	0.9	19	\N	\N	1.9	19	\N	\N	1.8	17	\N	\N	1.8	17	\N	\N	1	18	\N	\N	Fiction
61	Tujhya Rupacha Chandana	Colors Marathi	Voot	['18:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	26	\N	\N	0.5	25	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
62	Tujhya Rupacha Chandana - I	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
63	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
64	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	2.5	13	25.4	10	2.3	12	26.2	9	2.3	12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
65	Zee Maha Gaurav 2022	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
66	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Week 11 TRP", "Week 11 Rank", "Week 11 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya	Zee Marathi	Zee5	1.6	1	21:00	\N	\N	\N	Non-Fiction
2	Nave Lakshya	Star Pravah	Hotstar	\N	\N	\N	2.6	1	19:00	Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 9, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 29, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 66, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 2, true);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY ("Channel Id");


--
-- Name: mahaepisodes mahaepisodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahaepisodes
    ADD CONSTRAINT mahaepisodes_pkey PRIMARY KEY ("Mahaepisode Id");


--
-- Name: shows shows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_pkey PRIMARY KEY ("Show Id");


--
-- Name: special_episodes special_episodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_episodes
    ADD CONSTRAINT special_episodes_pkey PRIMARY KEY ("Special Episode Id");


--
-- PostgreSQL database dump complete
--

