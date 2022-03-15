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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

COPY public.channels ("Channel Id", "Channel", "Week 1 GRP", "Week 1 Rank", "Week 2 GRP", "Week 2 Rank", "Week 3 GRP", "Week 3 Rank", "Week 4 GRP", "Week 4 Rank", "Week 5 GRP", "Week 5 Rank", "Week 6 GRP", "Week 6 Rank", "Week 7 GRP", "Week 7 Rank", "Week 8 GRP", "Week 8 Rank", "Week 9 GRP", "Week 9 Rank") FROM stdin;
1	Colors Marathi	430.32	4	468.57	4	484.15	4	512.4	3	471.2	3	468.64	3	423.05	3	414.58	3	392.41	4
2	Sony SAB	488.02	3	524.12	3	533.76	3	505.78	4	447.84	4	425.13	4	409.36	4	414.5	4	412.4	3
3	Star Plus	351.31	5	354.88	5	339.87	5	326.16	5	\N	\N	\N	\N	\N	\N	361.45	5	360.87	5
4	Star Pravah	1578.27	1	1492.66	1	1474.24	1	1442.81	1	1372.02	1	1321.8	1	1326.7	1	1415.89	1	1451.78	1
5	Star Utsav	\N	\N	\N	\N	\N	\N	\N	\N	329.15	5	332.07	5	\N	\N	\N	\N	\N	\N
6	Zee Marathi	695.06	2	668.41	2	636.87	2	609.23	2	742.99	2	609.9	2	609.41	2	605.05	2	596.76	2
7	Zee TV	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	337.73	5	\N	\N	\N	\N
\.


--
-- Data for Name: mahaepisodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahaepisodes ("Mahaepisode Id", "Show", "Channel", "Platform", "Week 2 TRP", "Week 2 Rank", "Week 2 Time", "Week 5 TRP", "Week 5 Rank", "Week 5 Time", "Week 6 TRP", "Week 6 Rank", "Week 6 Time", "Week 7 TRP", "Week 7 Rank", "Week 7 Time", "Week 8 TRP", "Week 8 Rank", "Week 8 Time", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Aboli	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.4	2	19:00	\N	\N	\N	Fiction
2	Devmanus S2	Zee Marathi	Zee5	2.6	3	22:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	22:00	\N	\N	\N	Fiction
3	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	4.4	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
4	Man Jhala Bajind	Zee Marathi	Zee5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.2	4	20:00	\N	\N	\N	Fiction
5	Man Udu Udu Jhala	Zee Marathi	Zee5	3.1	1	19:00	\N	\N	\N	\N	\N	\N	3.6	3	20:00	\N	\N	\N	\N	\N	\N	Fiction
6	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	2.2	4	21:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
7	Mulgi Zali Ho	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4	3	19:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
8	Phulala Sugandh Maticha	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	4.8	1	20:00	\N	\N	\N	\N	\N	\N	5.1	2	19:00	Fiction
9	Rang Majha Vegla	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.4	1	20:00	\N	\N	\N	Fiction
10	Sahakutumba Sahaparivar	Star Pravah	Hotstar	2.9	2	20:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
11	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6.2	1	20:00	Fiction
12	Swabhimaan	Star Pravah	Hotstar	\N	\N	\N	\N	\N	\N	\N	\N	\N	4.2	2	19:00	\N	\N	\N	\N	\N	\N	Fiction
13	Thipkyanchi Rangoli	Star Pravah	Hotstar	\N	\N	\N	5.4	1	20:00	\N	\N	\N	5.1	1	20:00	\N	\N	\N	\N	\N	\N	Fiction
14	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	1.1	5	20:00	\N	\N	\N	1.1	4	21:00	1	4	21:00	0.9	5	21:00	\N	\N	\N	Fiction
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shows ("Show Id", "Show", "Channel", "Platform", "Time", "Week 1 TV TRP TRP", "Week 1 TV TRP Rank", "Week 1 Online TRP TRP", "Week 1 Online TRP Rank", "Week 2 TV TRP TRP", "Week 2 TV TRP Rank", "Week 2 Online TRP TRP", "Week 2 Online TRP Rank", "Week 3 TV TRP TRP", "Week 3 TV TRP Rank", "Week 3 Online TRP TRP", "Week 3 Online TRP Rank", "Week 4 TV TRP TRP", "Week 4 TV TRP Rank", "Week 4 Online TRP TRP", "Week 4 Online TRP Rank", "Week 5 TV TRP TRP", "Week 5 TV TRP Rank", "Week 5 Online TRP TRP", "Week 5 Online TRP Rank", "Week 6 TV TRP TRP", "Week 6 TV TRP Rank", "Week 6 Online TRP TRP", "Week 6 Online TRP Rank", "Week 7 TV TRP TRP", "Week 7 TV TRP Rank", "Week 7 Online TRP TRP", "Week 7 Online TRP Rank", "Week 8 TV TRP TRP", "Week 8 TV TRP Rank", "Week 8 Online TRP TRP", "Week 8 Online TRP Rank", "Week 9 TV TRP TRP", "Week 9 TV TRP Rank", "Week 9 Online TRP TRP", "Week 9 Online TRP Rank", "Type") FROM stdin;
1	Aai Kuthe Kay Karte	Star Pravah	Hotstar	['19:30']	6.1	4	41.6	1	6.6	2	42.3	1	6.7	2	39.6	2	6.5	2	39.6	3	6.3	2	40.1	2	6.6	2	41.9	1	6.7	1	41.2	1	6.6	2	41.2	1	6.5	2	43.9	1	Fiction
2	Aai Mayeche Kavach	Colors Marathi	Voot	['22:00']	1.1	20	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.7	23	\N	\N	0.8	19	\N	\N	0.8	21	\N	\N	\N	\N	\N	\N	Fiction
3	Aboli	Star Pravah	Hotstar	['22:30']	2.8	13	\N	\N	1.7	12	\N	\N	1.4	15	\N	\N	2	14	\N	\N	2.2	13	\N	\N	2.4	13	\N	\N	2.1	12	20.8	15	3.1	12	\N	\N	3.1	11	18.3	16	Fiction
4	Ajunahi Barsaat Ahe	Sony Marathi	SonyLiv	['20:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
5	Balumamachya Navana Changbhala	Colors Marathi	Voot	['22:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	\N	\N	\N	\N	Fiction
6	Balumamachya Navana Changbhala - I	Colors Marathi	Voot	['19:30']	0.5	25	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
7	Boss Majhi Ladachi	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1.1	19	\N	\N	Fiction
8	Chala Hawa Yeu Dya	Zee Marathi	Zee5	['22:00', '21:30']	1.6	16	\N	\N	1.3	15	\N	\N	1.2	16	\N	\N	1.7	15	\N	\N	1.6	15	\N	\N	1.9	15	\N	\N	1.3	15	17.9	18	2.1	15	\N	\N	1.9	15	16.2	17	Non-Fiction
9	Criminals Chahul Gunhegaranchi	Sony Marathi	SonyLiv	['22:30', '23:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
10	Devmanus S2	Zee Marathi	Zee5	['22:30']	3.7	10	32.5	7	2.1	10	31.6	8	1.8	13	28.6	10	2.8	11	29.5	9	2.8	11	27.3	9	3	11	25.4	9	2.9	10	27.6	9	3.2	11	26.4	9	3	12	27.4	9	Fiction
11	Garjato Marathi	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	21	\N	\N	Event
12	Ghetala Vasa Taku Nako	Zee Marathi	Zee5	['18:30']	0.4	26	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	27	\N	\N	0.3	24	\N	\N	0.4	25	\N	\N	0.3	25	\N	\N	Fiction
13	He Tar Kahich Nay	Zee Marathi	Zee5	['22:00', '21:30']	0.7	23	\N	\N	0.6	19	\N	\N	0.5	22	\N	\N	0.6	22	\N	\N	0.5	24	\N	\N	0.5	25	\N	\N	0.5	22	\N	\N	0.5	24	\N	\N	0.5	24	\N	\N	Non-Fiction
14	Home Minister	Zee Marathi	Zee5	['18:00']	0.5	25	\N	\N	0.6	19	\N	\N	0.6	21	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.5	22	\N	\N	0.6	23	\N	\N	0.6	23	\N	\N	Non-Fiction
15	Indian Idol Marathi S1	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	26	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Non-Fiction
16	Jai Jai Swami Samarth	Colors Marathi	Voot	['20:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.8	21	\N	\N	0.8	22	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
17	Jeev Majha Guntala	Colors Marathi	Voot	['20:30']	1.3	18	\N	\N	\N	\N	\N	\N	1	17	\N	\N	1.2	18	\N	\N	1.4	16	\N	\N	1.5	16	\N	\N	1.5	14	19.8	16	1.3	17	\N	\N	1.5	16	15.1	18	Fiction
18	Kkusum	Sony Marathi	SonyLiv	['20:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
19	Lagnachi Bedi	Star Pravah	Hotstar	['13:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.7	22	19.9	11	0.9	21	\N	\N	0.8	19	18.6	17	1	19	\N	\N	1	20	25.2	10	Fiction
20	Lek Majhi Durga	Colors Marathi	Voot	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.6	21	\N	\N	0.6	23	\N	\N	\N	\N	\N	\N	Fiction
21	Maharashtracha Favorite Kon Suvarnadashak Sohala	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	1.4	15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
22	Maharashtrachi Hasyajatra	Sony Marathi	SonyLiv	['21:30', '21:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Non-Fiction
23	Majhi Tujhi Reshimgath	Zee Marathi	Zee5	['20:30']	5.1	7	35.9	5	4.6	5	37.6	5	5.4	6	35.9	5	4.5	7	40.3	2	4.6	6	35.4	4	4.1	7	36.8	4	4.6	5	37.2	4	4.8	7	35.4	4	4.6	7	34.7	5	Fiction
24	Man Jhala Bajind	Zee Marathi	Zee5	['19:00']	2.1	15	\N	\N	1.4	14	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	\N	\N	1.3	17	\N	\N	1.2	16	\N	\N	1.6	16	\N	\N	1.3	17	14.3	19	Fiction
25	Man Udu Udu Jhala	Zee Marathi	Zee5	['19:30']	3.1	12	31.6	8	2	11	30.4	9	2.9	11	34.2	6	3.3	10	35.2	6	3.6	9	32.9	6	3.1	10	33.1	6	3.1	9	34	6	3.7	10	30.1	6	3.4	10	30.8	7	Fiction
26	Masta Majedar Kitchen Kallakar	Zee Marathi	Zee5	['22:00', '21:30']	2.5	14	\N	\N	1.5	13	\N	\N	1.5	14	\N	\N	2	14	\N	\N	1.9	14	\N	\N	2.1	14	\N	\N	1.7	13	22	13	2.4	14	\N	\N	2.3	14	19.1	15	Non-Fiction
27	Me Honar Superstar Chote Ustad	Star Pravah	Hotstar	['21:30', '21:00']	0.9	21	\N	\N	0.8	17	\N	\N	0.8	19	\N	\N	0.8	20	\N	\N	0.8	21	\N	\N	0.9	21	\N	\N	0.9	18	15.4	20	1	19	\N	\N	1	20	\N	\N	Non-Fiction
28	Mulgi Zali Ho	Star Pravah	Hotstar	['21:00']	5.6	5	\N	\N	5.8	4	\N	\N	6.4	3	29.8	9	5.8	4	\N	\N	5	4	\N	\N	5.8	4	24.9	10	5.8	3	23.9	11	5.4	5	\N	\N	5.4	5	22.8	12	Fiction
29	Muramba	Star Pravah	Hotstar	['13:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.8	19	22.1	12	0.9	20	\N	\N	0.8	21	20.6	13	Fiction
30	Nave Lakshya	Star Pravah	Hotstar	['22:00', '22:30']	0.6	24	\N	\N	0.6	19	\N	\N	0.4	23	\N	\N	0.6	22	\N	\N	0.6	23	\N	\N	0.6	24	\N	\N	0.7	20	\N	\N	0.6	23	\N	\N	0.7	22	\N	\N	Fiction
31	Pandu	Zee Marathi	Zee5	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3.2	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Movie
32	Phulala Sugandh Maticha	Star Pravah	Hotstar	['20:30']	5.2	6	30	9	4.6	5	34.3	6	5.6	5	30.6	8	4.9	5	30.8	8	5.8	3	29.6	8	5.1	5	27.6	8	5	4	29.8	8	5.6	4	29.6	7	5.6	4	31.2	6	Fiction
33	Pinkycha Vijay Aso	Star Pravah	Hotstar	['23:00']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	19	17.4	12	1	20	\N	\N	0.9	18	\N	\N	0.8	21	\N	\N	1.2	18	\N	\N	Fiction
34	Pravah Utsav	Star Pravah	Hotstar	[]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2.2	13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
35	Raja Ranichi Ga Jodi	Colors Marathi	Voot	['19:00']	0.8	22	\N	\N	\N	\N	\N	\N	0.7	20	\N	\N	0.6	22	\N	\N	0.9	20	\N	\N	0.9	21	\N	\N	0.7	20	\N	\N	0.7	22	\N	\N	\N	\N	\N	\N	Fiction
36	Rang Majha Vegla	Star Pravah	Hotstar	['20:00']	6.9	1	36.8	4	7.1	1	38.6	3	7.2	1	37.2	3	7.1	1	37.2	4	6.9	1	39.6	3	6.8	1	37.2	3	6.7	1	39.6	2	7.1	1	39.6	2	6.9	1	39.6	2	Fiction
37	Ratris Khel Chale S3	Zee Marathi	Zee5	['23:00']	0.6	24	\N	\N	0.4	20	\N	\N	0.3	24	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.4	23	\N	\N	0.4	25	\N	\N	0.5	24	\N	\N	Fiction
38	Sahakutumba Sahaparivar	Star Pravah	Hotstar	['19:00']	3.2	11	\N	\N	3.4	9	\N	\N	3.6	9	\N	\N	3.7	9	\N	\N	4.2	7	\N	\N	3.7	8	\N	\N	4	7	21.7	14	4.1	8	\N	\N	3.9	9	19.8	14	Fiction
39	Sonyachi Pavala	Colors Marathi	Voot	['18:30']	0.3	27	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	0.2	25	\N	\N	0.3	26	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
40	Star Pravah Dhoomdhadaka 2022	Star Pravah	Hotstar	[]	6.7	2	\N	\N	\N	\N	\N	\N	3.1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
41	Sukh Mhanje Nakki Kay Asta	Star Pravah	Hotstar	['21:30']	6.3	3	40.3	2	6.4	3	38.4	4	6.1	4	36.4	4	6.4	3	36.1	5	6.3	2	34.2	5	6.2	3	35.8	5	6.4	2	36.9	5	6.1	3	33.9	5	6	3	36.1	4	Fiction
42	Sundara Manamadhye Bharali	Colors Marathi	Voot	['21:00']	1.2	19	\N	\N	\N	\N	\N	\N	0.9	18	\N	\N	0.9	19	\N	\N	1	19	\N	\N	1.1	19	\N	\N	1.1	17	\N	\N	1.1	18	\N	\N	1.1	19	\N	\N	Fiction
43	Swabhimaan	Star Pravah	Hotstar	['18:30']	4.4	9	34.3	6	4	7	33.2	7	4	8	33.1	7	4	8	33.7	7	3.9	8	30.1	7	3.4	9	30.5	7	3.2	8	32.1	7	3.9	9	27.2	8	4.1	8	29.6	8	Fiction
44	Swarajya Saudamini Tararani	Sony Marathi	SonyLiv	['19:30']	\N	\N	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	\N	\N	\N	\N	Fiction
45	Thipkyanchi Rangoli	Star Pravah	Hotstar	['22:00']	4.6	8	38.4	3	4.2	6	40.7	2	4.9	7	41.2	1	4.8	6	42.3	1	4.7	5	42.4	1	4.7	6	39.6	2	4.5	6	37.6	3	4.9	6	37.2	3	4.8	6	37.5	3	Fiction
46	Tujhya Ishkacha Naadkhula	Star Pravah	Hotstar	['23:30']	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.4	25	\N	\N	0.4	26	\N	\N	0.3	24	\N	\N	0.3	26	\N	\N	0.3	25	\N	\N	Fiction
47	Tujhya Ishkacha Naadkhula - I	Star Pravah	Hotstar	['23:00']	0.7	23	\N	\N	0.7	18	\N	\N	0.6	21	\N	\N	0.7	21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fiction
48	Tujhya Majhya Sansarala Ani Kai Hava	Zee Marathi	Zee5	['21:00']	1.6	16	\N	\N	1	16	\N	\N	1	17	\N	\N	1.4	17	\N	\N	1.2	18	\N	\N	1.2	18	\N	\N	1.1	17	16.2	19	1	19	\N	\N	1	20	14.1	20	Fiction
49	Tujhya Rupacha Chandana	Colors Marathi	Voot	['21:30']	0.7	23	\N	\N	\N	\N	\N	\N	0.5	22	\N	\N	0.5	23	\N	\N	0.4	25	\N	\N	0.6	24	\N	\N	0.6	21	\N	\N	0.5	24	\N	\N	\N	\N	\N	\N	Fiction
50	Tumchi Mulgi Kay Karte	Sony Marathi	SonyLiv	['22:00']	\N	\N	\N	\N	\N	\N	\N	\N	0.2	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.2	27	\N	\N	\N	\N	\N	\N	Fiction
51	Yeu Kashi Tashi Me Nandayla	Zee Marathi	Zee5	['20:00']	3.7	10	29.2	10	3.6	8	29.6	10	2.1	12	\N	\N	2.5	12	27.2	10	2.6	12	25.7	10	2.7	12	\N	\N	2.5	11	25.4	10	2.7	13	24.1	10	2.8	13	24.3	11	Fiction
52	Zee Marathi Jallosh 2022	Zee Marathi	Zee5	[]	1.4	17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Event
\.


--
-- Data for Name: special_episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.special_episodes ("Special Episode Id", "Show", "Channel", "Platform", "Week 9 TRP", "Week 9 Rank", "Week 9 Time", "Type") FROM stdin;
1	Chala Hawa Yeu Dya - Jhund Special	Zee Marathi	Zee5	1.6	1	21:00	Non-Fiction
\.


--
-- Name: channels_Channel Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."channels_Channel Id_seq"', 7, true);


--
-- Name: mahaepisodes_Mahaepisode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mahaepisodes_Mahaepisode Id_seq"', 14, true);


--
-- Name: shows_Show Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shows_Show Id_seq"', 52, true);


--
-- Name: special_episodes_Special Episode Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."special_episodes_Special Episode Id_seq"', 1, true);


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

