--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: basket_movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_movies (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer
);


ALTER TABLE public.basket_movies OWNER TO postgres;

--
-- Name: basket_movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.basket_movies_id_seq OWNER TO postgres;

--
-- Name: basket_movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_movies_id_seq OWNED BY public.basket_movies.id;


--
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.baskets_id_seq OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- Name: cinemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinemas (
    id integer NOT NULL,
    namecinema character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    addres character varying(255),
    seance_1 character varying(255),
    seance_2 character varying(255),
    seance_3 character varying(255)
);


ALTER TABLE public.cinemas OWNER TO postgres;

--
-- Name: cinemas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cinemas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cinemas_id_seq OWNER TO postgres;

--
-- Name: cinemas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cinemas_id_seq OWNED BY public.cinemas.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    startdate date,
    finishdate date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "movieId" integer,
    "cinemaId" integer
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    namemovie character varying(255) NOT NULL,
    img character varying(255),
    defaultprice integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    datacreated date,
    total integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "eventId" integer,
    "placeId" integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    sum integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: paymentstatuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paymentstatuses (
    id integer NOT NULL,
    name character varying(255),
    color character(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer,
    "paymentId" integer
);


ALTER TABLE public.paymentstatuses OWNER TO postgres;

--
-- Name: paymentstatuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paymentstatuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.paymentstatuses_id_seq OWNER TO postgres;

--
-- Name: paymentstatuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paymentstatuses_id_seq OWNED BY public.paymentstatuses.id;


--
-- Name: placeorders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.placeorders (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.placeorders OWNER TO postgres;

--
-- Name: placeorders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.placeorders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.placeorders_id_seq OWNER TO postgres;

--
-- Name: placeorders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.placeorders_id_seq OWNED BY public.placeorders.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.places (
    id integer NOT NULL,
    "row" integer,
    col integer,
    defaultpriceplace integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "placeorderId" integer
);


ALTER TABLE public.places OWNER TO postgres;

--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.places_id_seq OWNER TO postgres;

--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: basket_movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_movies ALTER COLUMN id SET DEFAULT nextval('public.basket_movies_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- Name: cinemas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinemas ALTER COLUMN id SET DEFAULT nextval('public.cinemas_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: paymentstatuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paymentstatuses ALTER COLUMN id SET DEFAULT nextval('public.paymentstatuses_id_seq'::regclass);


--
-- Name: placeorders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placeorders ALTER COLUMN id SET DEFAULT nextval('public.placeorders_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: basket_movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_movies (id, "createdAt", "updatedAt", "basketId") FROM stdin;
\.


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
1	2023-11-24 14:06:26.183+03	2023-11-24 14:06:26.183+03	\N
2	2023-11-24 14:09:08.795+03	2023-11-24 14:09:08.795+03	\N
3	2023-11-24 14:18:19.335+03	2023-11-24 14:18:19.335+03	\N
5	2023-12-04 16:11:10.525+03	2023-12-04 16:11:10.525+03	\N
6	2023-12-04 16:25:04.326+03	2023-12-04 16:25:04.326+03	\N
7	2023-12-04 16:36:10.041+03	2023-12-04 16:36:10.041+03	\N
8	2023-12-04 16:37:48.846+03	2023-12-04 16:37:48.846+03	\N
9	2023-12-04 16:48:48.715+03	2023-12-04 16:48:48.715+03	\N
10	2023-12-09 00:33:10.308+03	2023-12-09 00:33:10.308+03	\N
4	2023-11-24 15:13:59.228+03	2023-11-24 15:13:59.228+03	1
11	2023-12-09 13:22:27.263+03	2023-12-09 13:22:27.263+03	2
12	2023-12-12 20:33:19.036+03	2023-12-12 20:33:19.036+03	\N
13	2023-12-12 20:37:52.242+03	2023-12-12 20:37:52.242+03	\N
14	2023-12-12 21:17:38.475+03	2023-12-12 21:17:38.475+03	14
\.


--
-- Data for Name: cinemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinemas (id, namecinema, "createdAt", "updatedAt", addres, seance_1, seance_2, seance_3) FROM stdin;
1	Большой	2023-11-22 23:10:29.994+03	2023-11-22 23:10:29.994+03	ул. Красноармейская, 105, ТЦ «Большой»	17:35	16:40	15:20
2	Иллюзион(Батайск)	2023-11-24 15:16:46.011+03	2023-11-24 15:16:46.011+03	г. Батайск, ул. Кирова, 51б	22:20	18:15	15:00
10	Горизонт Cinema & Emotion	2023-12-12 01:33:41.972+03	2023-12-12 01:33:41.972+03	просп. Михаила Нагибина, 32д/2	20:30	19:20	17:05
11	Синема Стар Рио	2023-12-12 01:34:25.157+03	2023-12-12 01:34:25.157+03	просп. Михаила Нагибина, 17, ТРЦ «Рио», 3 этаж	22:20	14:40	13:35
12	Феникс	2023-12-12 01:34:49.045+03	2023-12-12 01:34:49.045+03	ул. Малиновского, 25, ТРЦ «Золотой Вавилон»	19:40	18:40	14:35
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, startdate, finishdate, "createdAt", "updatedAt", "movieId", "cinemaId") FROM stdin;
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, namemovie, img, defaultprice, "createdAt", "updatedAt") FROM stdin;
2	Тут все свои	a0512ec7-6892-4143-99a2-d55d101d2033.jpg	600	2023-12-06 23:29:00.01+03	2023-12-06 23:29:00.01+03
3	Гардемарины 1787. Мир	f18d002b-4f93-426a-ab70-5f17ad00da34.jpg	650	2023-12-09 00:01:59.747+03	2023-12-09 00:01:59.747+03
4	После. Навсегда	48e25443-d079-4c89-8d0b-43b5e42173f2.jpg	500	2023-12-09 00:03:15.645+03	2023-12-09 00:03:15.645+03
5	Неудержимые 4	7c3799dd-a840-444c-ac3a-007d29966420.jpg	450	2023-12-09 00:03:33.779+03	2023-12-09 00:03:33.779+03
6	Иван Семенов: Большой поход	42fcaee0-9208-4ab6-a4a3-b375f33effab.jpg	400	2023-12-09 00:03:45.971+03	2023-12-09 00:03:45.971+03
7	Школа магических зверей. Тайна подземелья	78f44c9c-d2c1-4f37-8d18-6216ef96024c.jpg	700	2023-12-09 00:05:00.6+03	2023-12-09 00:05:00.6+03
8	Заклятие. Зло внутри	2e6def54-7601-479a-8c30-7d9b6f858b01.jpg	750	2023-12-09 00:05:26.005+03	2023-12-09 00:05:26.005+03
9	Дурные деньги	0291eb5c-895b-4175-929d-3484d1eb6b77.jpg	350	2023-12-09 00:05:34.991+03	2023-12-09 00:05:34.991+03
10	Капкан: Судная ночь	55b0033c-ca52-437c-8a76-d67e1035fa2a.jpg	300	2023-12-09 00:05:50.282+03	2023-12-09 00:05:50.282+03
11	Баба Яга спасает мир	b7e3c0e7-85f1-42cf-9eb6-6e2265153502.jpg	800	2023-12-09 00:06:00.252+03	2023-12-09 00:06:00.252+03
12	Анатомия падения	afe98b7f-ada1-4269-aa24-526a06756cc9.jpg	850	2023-12-09 00:06:16.488+03	2023-12-09 00:06:16.488+03
1	Повелитель Ветра	e2b2a01e-6589-409d-ae11-fd8acd4751d2.jpg	550	2023-11-23 00:31:34.855+03	2023-11-23 00:31:34.855+03
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, datacreated, total, "createdAt", "updatedAt", "userId", "eventId", "placeId") FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, sum, "createdAt", "updatedAt", "orderId") FROM stdin;
\.


--
-- Data for Name: paymentstatuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paymentstatuses (id, name, color, "createdAt", "updatedAt", "orderId", "paymentId") FROM stdin;
\.


--
-- Data for Name: placeorders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.placeorders (id, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.places (id, "row", col, defaultpriceplace, "createdAt", "updatedAt", "placeorderId") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
1	user_admin@mail.ru	$2b$05$EMZNr2j0LuLCGcqB7lAG1Oq.RqsNuXOJrs/h0Xv.KXwikjxBXrKC6	ADMIN	2023-11-24 15:13:59.22+03	2023-11-24 15:13:59.22+03
2	user_user@gmail.com	$2b$05$92sAxZqrNf951pNRHk0MCOOwPS1FndT6r9F6zf.KwoREoW.tBtHge	USER	2023-12-09 13:22:27.255+03	2023-12-09 13:22:27.255+03
14	testadmin2@gmail.com	$2b$05$7ujzQ06Dh5EnxUkCHoq2Mu59pWhIdqaepKx4mRhddGY.hBsOpTiHK	ADMIN	2023-12-12 21:17:38.466+03	2023-12-12 21:17:38.466+03
\.


--
-- Name: basket_movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_movies_id_seq', 1, false);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 14, true);


--
-- Name: cinemas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cinemas_id_seq', 15, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 1, false);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 31, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: paymentstatuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paymentstatuses_id_seq', 1, false);


--
-- Name: placeorders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.placeorders_id_seq', 1, false);


--
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.places_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: basket_movies basket_movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_movies
    ADD CONSTRAINT basket_movies_pkey PRIMARY KEY (id);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: cinemas cinemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinemas
    ADD CONSTRAINT cinemas_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: paymentstatuses paymentstatuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paymentstatuses
    ADD CONSTRAINT paymentstatuses_pkey PRIMARY KEY (id);


--
-- Name: placeorders placeorders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placeorders
    ADD CONSTRAINT placeorders_pkey PRIMARY KEY (id);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: basket_movies basket_movies_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_movies
    ADD CONSTRAINT "basket_movies_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: events events_cinemaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_cinemaId_fkey" FOREIGN KEY ("cinemaId") REFERENCES public.cinemas(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: events events_movieId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES public.movies(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_eventId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_placeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_placeId_fkey" FOREIGN KEY ("placeId") REFERENCES public.places(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: payments payments_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "payments_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: paymentstatuses paymentstatuses_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paymentstatuses
    ADD CONSTRAINT "paymentstatuses_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: paymentstatuses paymentstatuses_paymentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paymentstatuses
    ADD CONSTRAINT "paymentstatuses_paymentId_fkey" FOREIGN KEY ("paymentId") REFERENCES public.payments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: places places_placeorderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT "places_placeorderId_fkey" FOREIGN KEY ("placeorderId") REFERENCES public.placeorders(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

