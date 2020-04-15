--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _secret; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._secret (
    person_id bigint NOT NULL,
    password text NOT NULL
);


ALTER TABLE public._secret OWNER TO postgres;

--
-- Name: album_audio; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.album_audio (
    id bigint NOT NULL,
    album_name character varying(255) NOT NULL,
    year smallint,
    description text,
    owner_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.album_audio OWNER TO admin;

--
-- Name: COLUMN album_audio.year; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_audio.year IS '?';


--
-- Name: COLUMN album_audio.date_time; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_audio.date_time IS 'Album update date and time.';


--
-- Name: album_audio_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.album_audio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_audio_id_seq OWNER TO admin;

--
-- Name: album_audio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.album_audio_id_seq OWNED BY public.album_audio.id;


--
-- Name: album_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.album_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_photo_id_seq OWNER TO admin;

--
-- Name: album_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album_photo (
    id bigint DEFAULT nextval('public.album_photo_id_seq'::regclass) NOT NULL,
    album_name character varying(255) NOT NULL,
    year smallint,
    description text,
    owner_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.album_photo OWNER TO postgres;

--
-- Name: COLUMN album_photo.year; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.album_photo.year IS '?';


--
-- Name: COLUMN album_photo.date_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.album_photo.date_time IS 'Album update date and time.';


--
-- Name: album_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_id_seq OWNER TO postgres;

--
-- Name: album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.album_id_seq OWNED BY public.album_photo.id;


--
-- Name: album_story_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.album_story_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_story_id_seq OWNER TO admin;

--
-- Name: album_story; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.album_story (
    id bigint DEFAULT nextval('public.album_story_id_seq'::regclass) NOT NULL,
    album_name character varying(255) NOT NULL,
    year smallint,
    description text,
    owner_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.album_story OWNER TO admin;

--
-- Name: COLUMN album_story.year; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_story.year IS '?';


--
-- Name: COLUMN album_story.date_time; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_story.date_time IS 'Album update date and time.';


--
-- Name: album_video; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.album_video (
    id bigint NOT NULL,
    album_name character varying(255) NOT NULL,
    year smallint,
    description text,
    owner_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.album_video OWNER TO admin;

--
-- Name: COLUMN album_video.year; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_video.year IS '?';


--
-- Name: COLUMN album_video.date_time; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.album_video.date_time IS 'Album update date and time.';


--
-- Name: album_video_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.album_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_video_id_seq OWNER TO admin;

--
-- Name: album_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.album_video_id_seq OWNED BY public.album_video.id;


--
-- Name: unit_audio_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.unit_audio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_audio_id_seq OWNER TO admin;

--
-- Name: unit_audio; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.unit_audio (
    id bigint DEFAULT nextval('public.unit_audio_id_seq'::regclass) NOT NULL,
    content_url character varying(255) NOT NULL,
    author_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.unit_audio OWNER TO admin;

--
-- Name: COLUMN unit_audio.date_time; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.unit_audio.date_time IS 'Audio recorded date and time.';


--
-- Name: audio_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.audio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audio_id_seq OWNER TO admin;

--
-- Name: audio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.audio_id_seq OWNED BY public.unit_audio.id;


--
-- Name: family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family (
    id integer NOT NULL,
    last_name character varying(255) NOT NULL,
    person_role character varying(30),
    ico_url character varying(255)
);


ALTER TABLE public.family OWNER TO postgres;

--
-- Name: COLUMN family.person_role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.family.person_role IS '?';


--
-- Name: family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.family_id_seq OWNER TO postgres;

--
-- Name: family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_id_seq OWNED BY public.family.id;


--
-- Name: members_of_audio; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.members_of_audio (
    audio_id bigint NOT NULL,
    member_id bigint NOT NULL
);


ALTER TABLE public.members_of_audio OWNER TO admin;

--
-- Name: members_of_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members_of_photo (
    photo_id bigint NOT NULL,
    member_id bigint NOT NULL
);


ALTER TABLE public.members_of_photo OWNER TO postgres;

--
-- Name: members_of_story; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members_of_story (
    story_id bigint NOT NULL,
    member_id bigint NOT NULL
);


ALTER TABLE public.members_of_story OWNER TO postgres;

--
-- Name: members_of_video; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.members_of_video (
    video_id bigint NOT NULL,
    member_id bigint NOT NULL
);


ALTER TABLE public.members_of_video OWNER TO admin;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id bigint NOT NULL,
    first_name character varying(1500) NOT NULL,
    patronymic character varying(30),
    last_name character varying(50),
    email public.citext NOT NULL,
    city text,
    marital_status character varying(8),
    phone numeric,
    role character varying(30),
    ico_url character varying(255),
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: COLUMN person.marital_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.person.marital_status IS '?';


--
-- Name: COLUMN person.role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.person.role IS '?';


--
-- Name: COLUMN person.ico_url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.person.ico_url IS 'Or photo_id as name of this column and fkey to photo.id?';


--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- Name: persons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persons_id_seq OWNER TO postgres;

--
-- Name: persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persons_id_seq OWNED BY public.person.id;


--
-- Name: unit_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.unit_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_photo_id_seq OWNER TO admin;

--
-- Name: unit_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unit_photo (
    id bigint DEFAULT nextval('public.unit_photo_id_seq'::regclass) NOT NULL,
    content_url character varying(255) NOT NULL,
    author_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.unit_photo OWNER TO postgres;

--
-- Name: COLUMN unit_photo.date_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.unit_photo.date_time IS 'Photo taken date and time.';


--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO postgres;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.unit_photo.id;


--
-- Name: questionnaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questionnaire (
    biography text,
    person_id bigint NOT NULL
);


ALTER TABLE public.questionnaire OWNER TO postgres;

--
-- Name: questionnaire_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questionnaire_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questionnaire_person_id_seq OWNER TO postgres;

--
-- Name: questionnaire_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questionnaire_person_id_seq OWNED BY public.questionnaire.person_id;


--
-- Name: relation_album_audio; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.relation_album_audio (
    album_id bigint NOT NULL,
    audio_id bigint NOT NULL
);


ALTER TABLE public.relation_album_audio OWNER TO admin;

--
-- Name: relation_album_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_album_photo (
    album_id bigint NOT NULL,
    photo_id bigint NOT NULL
);


ALTER TABLE public.relation_album_photo OWNER TO postgres;

--
-- Name: relation_album_story; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.relation_album_story (
    album_id bigint NOT NULL,
    story_id bigint NOT NULL
);


ALTER TABLE public.relation_album_story OWNER TO admin;

--
-- Name: relation_album_video; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.relation_album_video (
    album_id bigint NOT NULL,
    video_id bigint NOT NULL
);


ALTER TABLE public.relation_album_video OWNER TO admin;

--
-- Name: relation_family_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_family_person (
    family_id integer NOT NULL,
    person_id bigint NOT NULL,
    person_role character varying(30)
);


ALTER TABLE public.relation_family_person OWNER TO postgres;

--
-- Name: COLUMN relation_family_person.person_role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.relation_family_person.person_role IS '?';


--
-- Name: unit_story_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.unit_story_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_story_id_seq OWNER TO admin;

--
-- Name: unit_story; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unit_story (
    id bigint DEFAULT nextval('public.unit_story_id_seq'::regclass) NOT NULL,
    content text NOT NULL,
    author_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.unit_story OWNER TO postgres;

--
-- Name: COLUMN unit_story.date_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.unit_story.date_time IS 'Story told date and time.';


--
-- Name: story_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.story_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.story_id_seq OWNER TO postgres;

--
-- Name: story_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.story_id_seq OWNED BY public.unit_story.id;


--
-- Name: unit_video_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.unit_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_video_id_seq OWNER TO admin;

--
-- Name: unit_video; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.unit_video (
    id bigint DEFAULT nextval('public.unit_video_id_seq'::regclass) NOT NULL,
    content_url character varying(255) NOT NULL,
    author_id bigint NOT NULL,
    date_time timestamp with time zone
);


ALTER TABLE public.unit_video OWNER TO admin;

--
-- Name: COLUMN unit_video.date_time; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.unit_video.date_time IS 'Video recorded date and time.';


--
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO admin;

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.unit_video.id;


--
-- Name: album_audio id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_audio ALTER COLUMN id SET DEFAULT nextval('public.album_audio_id_seq'::regclass);


--
-- Name: album_video id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_video ALTER COLUMN id SET DEFAULT nextval('public.album_video_id_seq'::regclass);


--
-- Name: family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family ALTER COLUMN id SET DEFAULT nextval('public.family_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.persons_id_seq'::regclass);


--
-- Data for Name: _secret; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._secret (person_id, password) FROM stdin;
\.


--
-- Data for Name: album_audio; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.album_audio (id, album_name, year, description, owner_id, date_time) FROM stdin;
\.


--
-- Data for Name: album_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album_photo (id, album_name, year, description, owner_id, date_time) FROM stdin;
\.


--
-- Data for Name: album_story; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.album_story (id, album_name, year, description, owner_id, date_time) FROM stdin;
\.


--
-- Data for Name: album_video; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.album_video (id, album_name, year, description, owner_id, date_time) FROM stdin;
\.


--
-- Data for Name: family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.family (id, last_name, person_role, ico_url) FROM stdin;
\.


--
-- Data for Name: members_of_audio; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.members_of_audio (audio_id, member_id) FROM stdin;
\.


--
-- Data for Name: members_of_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members_of_photo (photo_id, member_id) FROM stdin;
\.


--
-- Data for Name: members_of_story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members_of_story (story_id, member_id) FROM stdin;
\.


--
-- Data for Name: members_of_video; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.members_of_video (video_id, member_id) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id, first_name, patronymic, last_name, email, city, marital_status, phone, role, ico_url, active) FROM stdin;
\.


--
-- Data for Name: questionnaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questionnaire (biography, person_id) FROM stdin;
\.


--
-- Data for Name: relation_album_audio; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.relation_album_audio (album_id, audio_id) FROM stdin;
\.


--
-- Data for Name: relation_album_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_album_photo (album_id, photo_id) FROM stdin;
\.


--
-- Data for Name: relation_album_story; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.relation_album_story (album_id, story_id) FROM stdin;
\.


--
-- Data for Name: relation_album_video; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.relation_album_video (album_id, video_id) FROM stdin;
\.


--
-- Data for Name: relation_family_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_family_person (family_id, person_id, person_role) FROM stdin;
\.


--
-- Data for Name: unit_audio; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.unit_audio (id, content_url, author_id, date_time) FROM stdin;
\.


--
-- Data for Name: unit_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unit_photo (id, content_url, author_id, date_time) FROM stdin;
\.


--
-- Data for Name: unit_story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unit_story (id, content, author_id, date_time) FROM stdin;
\.


--
-- Data for Name: unit_video; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.unit_video (id, content_url, author_id, date_time) FROM stdin;
\.


--
-- Name: album_audio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.album_audio_id_seq', 1, false);


--
-- Name: album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.album_id_seq', 1, false);


--
-- Name: album_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.album_photo_id_seq', 1, false);


--
-- Name: album_story_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.album_story_id_seq', 1, false);


--
-- Name: album_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.album_video_id_seq', 1, false);


--
-- Name: audio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.audio_id_seq', 1, false);


--
-- Name: family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_id_seq', 1, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 1, false);


--
-- Name: persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persons_id_seq', 15, true);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photo_id_seq', 1, false);


--
-- Name: questionnaire_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questionnaire_person_id_seq', 1, false);


--
-- Name: story_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.story_id_seq', 1, false);


--
-- Name: unit_audio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.unit_audio_id_seq', 1, false);


--
-- Name: unit_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.unit_photo_id_seq', 1, false);


--
-- Name: unit_story_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.unit_story_id_seq', 1, false);


--
-- Name: unit_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.unit_video_id_seq', 1, false);


--
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.video_id_seq', 1, false);


--
-- Name: _secret _secret_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._secret
    ADD CONSTRAINT _secret_pkey PRIMARY KEY (person_id);


--
-- Name: album_audio album_audio_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_audio
    ADD CONSTRAINT album_audio_pkey PRIMARY KEY (id);


--
-- Name: album_photo album_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_photo
    ADD CONSTRAINT album_photo_pkey PRIMARY KEY (id);


--
-- Name: album_story album_story_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_story
    ADD CONSTRAINT album_story_pkey PRIMARY KEY (id);


--
-- Name: album_video album_video_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_video
    ADD CONSTRAINT album_video_pkey PRIMARY KEY (id);


--
-- Name: family family_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (id);


--
-- Name: members_of_audio members_of_audio_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_audio
    ADD CONSTRAINT members_of_audio_pkey PRIMARY KEY (audio_id, member_id);


--
-- Name: members_of_photo members_of_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_photo
    ADD CONSTRAINT members_of_photo_pkey PRIMARY KEY (photo_id, member_id);


--
-- Name: members_of_story members_of_story_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_story
    ADD CONSTRAINT members_of_story_pkey PRIMARY KEY (story_id, member_id);


--
-- Name: members_of_video members_of_video_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_video
    ADD CONSTRAINT members_of_video_pkey PRIMARY KEY (video_id, member_id);


--
-- Name: person person_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_email_key UNIQUE (email);


--
-- Name: person person_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_phone_key UNIQUE (phone);


--
-- Name: person persons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);


--
-- Name: questionnaire questionnaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionnaire
    ADD CONSTRAINT questionnaire_pkey PRIMARY KEY (person_id);


--
-- Name: relation_album_audio relation_album_audio_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_audio
    ADD CONSTRAINT relation_album_audio_pkey PRIMARY KEY (album_id, audio_id);


--
-- Name: relation_album_photo relation_album_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_album_photo
    ADD CONSTRAINT relation_album_photo_pkey PRIMARY KEY (album_id, photo_id);


--
-- Name: relation_album_story relation_album_story_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_story
    ADD CONSTRAINT relation_album_story_pkey PRIMARY KEY (album_id, story_id);


--
-- Name: relation_album_video relation_album_video_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_video
    ADD CONSTRAINT relation_album_video_pkey PRIMARY KEY (album_id, video_id);


--
-- Name: relation_family_person relation_family_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_family_person
    ADD CONSTRAINT relation_family_person_pkey PRIMARY KEY (family_id, person_id);


--
-- Name: unit_audio unit_audio_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unit_audio
    ADD CONSTRAINT unit_audio_pkey PRIMARY KEY (id);


--
-- Name: unit_photo unit_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unit_photo
    ADD CONSTRAINT unit_photo_pkey PRIMARY KEY (id);


--
-- Name: unit_story unit_story_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unit_story
    ADD CONSTRAINT unit_story_pkey PRIMARY KEY (id);


--
-- Name: unit_video unit_video_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unit_video
    ADD CONSTRAINT unit_video_pkey PRIMARY KEY (id);


--
-- Name: person_lower_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX person_lower_idx ON public.person USING btree (lower((email)::text));


--
-- Name: _secret _secret_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._secret
    ADD CONSTRAINT _secret_person_id FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: album_audio album_audio_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_audio
    ADD CONSTRAINT album_audio_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: album_photo album_photo_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_photo
    ADD CONSTRAINT album_photo_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: album_story album_story_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_story
    ADD CONSTRAINT album_story_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: album_video album_video_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.album_video
    ADD CONSTRAINT album_video_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_audio members_of_audio_audio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_audio
    ADD CONSTRAINT members_of_audio_audio_id_fkey FOREIGN KEY (audio_id) REFERENCES public.unit_audio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_audio members_of_audio_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_audio
    ADD CONSTRAINT members_of_audio_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_photo members_of_photo_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_photo
    ADD CONSTRAINT members_of_photo_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_photo members_of_photo_photo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_photo
    ADD CONSTRAINT members_of_photo_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES public.unit_photo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_story members_of_story_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_story
    ADD CONSTRAINT members_of_story_person_id_fkey FOREIGN KEY (member_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_story members_of_story_story_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_of_story
    ADD CONSTRAINT members_of_story_story_id_fkey FOREIGN KEY (story_id) REFERENCES public.unit_story(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_video members_of_video_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_video
    ADD CONSTRAINT members_of_video_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: members_of_video members_of_video_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.members_of_video
    ADD CONSTRAINT members_of_video_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.unit_video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: questionnaire questionnaire_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionnaire
    ADD CONSTRAINT questionnaire_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_audio relation_album_audio_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_audio
    ADD CONSTRAINT relation_album_audio_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album_audio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_audio relation_album_audio_audio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_audio
    ADD CONSTRAINT relation_album_audio_audio_id_fkey FOREIGN KEY (audio_id) REFERENCES public.unit_audio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_photo relation_album_photo_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_album_photo
    ADD CONSTRAINT relation_album_photo_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album_photo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_photo relation_album_photo_photo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_album_photo
    ADD CONSTRAINT relation_album_photo_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES public.unit_photo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_story relation_album_story_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_story
    ADD CONSTRAINT relation_album_story_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album_story(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_story relation_album_story_story_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_story
    ADD CONSTRAINT relation_album_story_story_id_fkey FOREIGN KEY (story_id) REFERENCES public.unit_story(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_video relation_album_video_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_video
    ADD CONSTRAINT relation_album_video_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album_video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_album_video relation_album_video_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.relation_album_video
    ADD CONSTRAINT relation_album_video_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.unit_video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_family_person relation_family_person_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_family_person
    ADD CONSTRAINT relation_family_person_family_id_fkey FOREIGN KEY (family_id) REFERENCES public.family(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: relation_family_person relation_family_person_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_family_person
    ADD CONSTRAINT relation_family_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: unit_audio unit_audio_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unit_audio
    ADD CONSTRAINT unit_audio_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: unit_photo unit_photo_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unit_photo
    ADD CONSTRAINT unit_photo_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: unit_story unit_story_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unit_story
    ADD CONSTRAINT unit_story_person_id_fkey FOREIGN KEY (author_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: unit_video unit_video_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unit_video
    ADD CONSTRAINT unit_video_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

