--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)

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
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    number_of_copies integer NOT NULL
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    id integer NOT NULL,
    memberid integer,
    bookid integer,
    dateloan date NOT NULL,
    datereturnpreview date NOT NULL,
    effectivereturndate date
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- Name: loans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loans_id_seq OWNER TO postgres;

--
-- Name: loans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loans_id_seq OWNED BY public.loans.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    membership_date date NOT NULL
);


ALTER TABLE public.members OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.members_id_seq OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: loans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans ALTER COLUMN id SET DEFAULT nextval('public.loans_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, title, author, category, number_of_copies) FROM stdin;
1	The Great Gatsby	F. Scott Fitzgerald	Classic	12
2	To Kill a Mockingbird	Harper Lee	Classic	15
3	1984	George Orwell	Dystopian	10
5	The Catcher in the Rye	J.D. Salinger	Classic	7
6	The Hobbit	J.R.R. Tolkien	Fantasy	10
7	Moby Dick	Herman Melville	Adventure	5
8	The Lord of the Rings	J.R.R. Tolkien	Fantasy	9
9	Jane Eyre	Charlotte Bronte	Romance	12
10	Animal Farm	George Orwell	Political Satire	13
11	War and Peace	Leo Tolstoy	Historical	6
12	The Odyssey	Homer	Epic	11
13	Ulysses	James Joyce	Modernist	8
14	The Divine Comedy	Dante Alighieri	Epic	7
15	Brave New World	Aldous Huxley	Dystopian	14
16	Les Misérables	Victor Hugo	Historical	10
17	Crime and Punishment	Fyodor Dostoevsky	Psychological	9
18	Wuthering Heights	Emily Bronte	Romance	8
19	The Iliad	Homer	Epic	11
20	The Brothers Karamazov	Fyodor Dostoevsky	Philosophical	5
21	Anna Karenina	Leo Tolstoy	Romance	12
22	The Metamorphosis	Franz Kafka	Absurdist	7
23	One Hundred Years of Solitude	Gabriel Garcia Marquez	Magic Realism	9
24	Don Quixote	Miguel de Cervantes	Adventure	14
25	The Trial	Franz Kafka	Absurdist	8
26	The Picture of Dorian Gray	Oscar Wilde	Philosophical	11
27	Catch-22	Joseph Heller	Satire	10
28	Great Expectations	Charles Dickens	Bildungsroman	7
29	The Grapes of Wrath	John Steinbeck	Historical	8
30	The Old Man and the Sea	Ernest Hemingway	Literary	6
32	The Little Prince	Antoine de Saint-Exupéry	Conte philosophique	25
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (id, memberid, bookid, dateloan, datereturnpreview, effectivereturndate) FROM stdin;
1	1	1	2023-01-10	2023-01-20	2023-01-18
2	2	3	2023-02-16	2023-02-26	2023-02-25
3	3	5	2023-03-11	2023-03-21	2023-03-20
4	4	7	2023-04-06	2023-04-16	2023-04-14
5	5	9	2023-05-21	2023-05-31	2023-05-30
6	6	11	2023-06-26	2023-07-06	2023-07-05
7	7	13	2023-07-16	2023-07-26	2023-07-25
8	8	15	2023-08-31	2023-09-10	2023-09-09
9	9	17	2023-09-19	2023-09-29	2023-09-28
10	10	19	2023-10-02	2023-10-12	2023-10-11
11	11	21	2023-11-12	2023-11-22	2023-11-21
12	12	23	2023-12-22	2024-01-01	2023-12-31
13	13	25	2024-01-13	2024-01-23	2024-01-22
14	14	27	2024-02-23	2024-03-04	2024-03-03
15	15	29	2024-03-02	2024-03-12	2024-03-11
16	16	2	2024-04-18	2024-04-28	2024-04-27
18	18	6	2024-06-28	2024-07-08	2024-07-07
19	19	8	2024-07-04	2024-07-14	2024-07-13
20	20	10	2024-08-16	2024-08-26	2024-08-25
21	21	12	2024-09-26	2024-10-06	2024-10-05
22	22	14	2024-10-09	2024-10-19	2024-10-18
23	23	16	2024-11-13	2024-11-23	2024-11-22
24	24	18	2024-12-15	2024-12-25	2024-12-24
25	25	20	2025-01-03	2025-01-13	2025-01-12
26	26	22	2025-02-10	2025-02-20	2025-02-19
27	27	24	2025-03-05	2025-03-15	2025-03-14
28	28	26	2025-04-18	2025-04-28	2025-04-27
29	29	28	2025-05-11	2025-05-21	2025-05-20
34	1	1	2024-01-12	2024-01-24	2025-01-20
35	25	20	2022-05-05	2022-07-05	\N
30	30	30	2025-06-14	2025-06-24	2025-07-01
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (id, firstname, lastname, email, membership_date) FROM stdin;
1	Doe	John	john.doe@example.com	2023-01-01
2	Smith	Jane	jane.smith@example.com	2023-02-15
3	Brown	Michael	michael.brown@example.com	2023-03-10
4	Johnson	Emily	emily.johnson@example.com	2023-04-05
5	Williams	Christopher	christopher.williams@example.com	2023-05-20
6	Jones	Amanda	amanda.jones@example.com	2023-06-25
7	Davis	Daniel	daniel.davis@example.com	2023-07-15
8	Garcia	Patricia	patricia.garcia@example.com	2023-08-30
9	Miller	Richard	richard.miller@example.com	2023-09-18
10	Wilson	Elizabeth	elizabeth.wilson@example.com	2023-10-01
11	Moore	David	david.moore@example.com	2023-11-11
12	Taylor	Linda	linda.taylor@example.com	2023-12-21
13	Anderson	Joseph	joseph.anderson@example.com	2024-01-12
14	Thomas	Barbara	barbara.thomas@example.com	2024-02-22
15	Jackson	Charles	charles.jackson@example.com	2024-03-01
16	White	Margaret	margaret.white@example.com	2024-04-17
17	Harris	Steven	steven.harris@example.com	2024-05-07
18	Martin	Sarah	sarah.martin@example.com	2024-06-27
19	Thompson	Paul	paul.thompson@example.com	2024-07-03
20	Garcia	Mark	mark.garcia@example.com	2024-08-15
21	Martinez	Nancy	nancy.martinez@example.com	2024-09-25
22	Robinson	Andrew	andrew.robinson@example.com	2024-10-08
23	Clark	Sandra	sandra.clark@example.com	2024-11-12
24	Rodriguez	Joshua	joshua.rodriguez@example.com	2024-12-31
25	Lewis	Karen	karen.lewis@example.com	2025-01-14
26	Lee	Brian	brian.lee@example.com	2025-02-28
27	Walker	Carol	carol.walker@example.com	2025-03-15
28	Hall	Kevin	kevin.hall@example.com	2025-04-05
29	Allen	Laura	laura.allen@example.com	2025-05-20
30	Young	Edward	edward.young@example.com	2025-06-25
31	Leale	Leale	ashleykountlea@gmail.com	2025-01-11
34	Cherif	Djamen	cherifdjamen@gmail.com	2024-12-25
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 32, true);


--
-- Name: loans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loans_id_seq', 35, true);


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_id_seq', 35, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: loans loans_bookid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(id);


--
-- Name: loans loans_memberid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_memberid_fkey FOREIGN KEY (memberid) REFERENCES public.members(id);


--
-- PostgreSQL database dump complete
--

