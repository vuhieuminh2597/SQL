--
-- PostgreSQL database cluster dump
--

-- Started on 2024-01-05 20:44:17

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-05 20:44:17

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

-- Completed on 2024-01-05 20:44:17

--
-- PostgreSQL database dump complete
--

--
-- Database "customer" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-05 20:44:17

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
-- TOC entry 4812 (class 1262 OID 16910)
-- Name: customer; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE customer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE customer OWNER TO postgres;

\connect customer

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
-- TOC entry 215 (class 1259 OID 17545)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id character varying(255) NOT NULL,
    course_des character varying(255),
    course_name character varying(255)
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17552)
-- Name: customer_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_course (
    customer_id character varying(255) NOT NULL,
    course_id character varying(255) NOT NULL
);


ALTER TABLE public.customer_course OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17559)
-- Name: custumers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custumers (
    customer_id character varying(255) NOT NULL,
    customer_address character varying(255),
    customer_dob character varying(255),
    customer_email character varying(255),
    customer_gender character varying(255),
    status_is_delete boolean,
    customer_name character varying(255),
    customer_phone character varying(255)
);


ALTER TABLE public.custumers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17567)
-- Name: regis_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regis_record (
    regis_id bigint NOT NULL,
    end_date timestamp(6) without time zone,
    start_date timestamp(6) without time zone,
    fk_course_id character varying(255) NOT NULL,
    fk_customer_id character varying(255) NOT NULL
);


ALTER TABLE public.regis_record OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17566)
-- Name: regis_record_regis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regis_record_regis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.regis_record_regis_id_seq OWNER TO postgres;

--
-- TOC entry 4813 (class 0 OID 0)
-- Dependencies: 218
-- Name: regis_record_regis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regis_record_regis_id_seq OWNED BY public.regis_record.regis_id;


--
-- TOC entry 4646 (class 2604 OID 17570)
-- Name: regis_record regis_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record ALTER COLUMN regis_id SET DEFAULT nextval('public.regis_record_regis_id_seq'::regclass);


--
-- TOC entry 4802 (class 0 OID 17545)
-- Dependencies: 215
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_des, course_name) FROM stdin;
978c8d52-a970-4bce-9458-0247dc869364	Khóa học java từ cơ bản đến hướng đối tượng	Java Core
ad380748-77f1-4c3d-b709-3f5de1d9c97e	Khóa học Font End bao gồm html,css,js	Html,css,js
e985d9e9-f9f6-4d29-809e-b0260c167199	Khóa học C# từ cơ bản đến hướng đối tượng	C#
7f5064ef-db87-4fb2-97f7-78f9350db41c	Khoá học c++ cơ bản	C++
38b52fbd-446d-4a74-9f67-4440f4736dcf	Khóa học python cơ bản	Python
f56f4fc1-ed38-4d5b-bcbf-302b2d08865d	Khóa học Android từ cơ bản đến nâng cao	Android
445802fa-2156-4c6a-9f17-986b42d16026	Khóa học lập trình Back End sử dụng Spring Framework	Java Spring Boot
24164a0b-0eda-42a9-9dfb-d0ca834a8f31	Khóa học C cơ bản	C
66b1a88d-c3fe-4f9b-af10-8b00ba0f5d76	Khóa học sql tương tác với cơ sở dữ liệu	Sql
\.


--
-- TOC entry 4803 (class 0 OID 17552)
-- Dependencies: 216
-- Data for Name: customer_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_course (customer_id, course_id) FROM stdin;
bfa6407d-d86e-4856-9342-9ab3c3785636	978c8d52-a970-4bce-9458-0247dc869364
\.


--
-- TOC entry 4804 (class 0 OID 17559)
-- Dependencies: 217
-- Data for Name: custumers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custumers (customer_id, customer_address, customer_dob, customer_email, customer_gender, status_is_delete, customer_name, customer_phone) FROM stdin;
19075447-a3c7-440a-8e3a-dfd05802da28	Hà Nam	25/09/1997	vuhieuminh2597@gmail.com	Nam	f	Vũ Minh Hiếu	0966916002
36967bb8-512f-4bb2-9849-ab20ebcfdb82	Đăk Lăk	03/03/1987	dinhcong87@gmail.com	Nam	f	Đinh Văn Công	0123456789
ea382f81-b47d-4adc-98f9-25d7ad4fb634	Thanh Hóa	26/10/1980	phamtuyen80@gmail.com	Nam	f	Phạm Văn Tuyến	0123123123
d89dc70f-dc11-43a4-9843-b195fce05c20	Nghệ An	16/09/1992	banam92@gmail.com	Nam	f	Nguyễn Bá Nam	0123546234
b5af43b2-3b3a-4614-bc0a-63713e18e03e	Cà Mau	18/03/1988	hieuhuynh88@gmail.com	Nam	f	Huỳnh Văn Hiếu	0999123123
02a3c636-8be8-473a-9989-0c86017a14c8	Huế	30/12/1996	xuanhoang96@gmail.com	Nam	f	Nguyễn Xuân Hoàng	023411233311
72c4718a-8bfd-49a5-a9fc-03e3a23836c4	Bình Dương	10/12/1983	ngocphuong83@gmail.com	Nam	f	Hồ Ngọc Phương	0909090909
635b389a-7f9e-4b06-a834-e27a61689473	Quảng trị	11/10/1988	doanhieu1357@gmail.com	Nam	f	Lê Doãn Hiếu	064323426232
b3b6ad3d-7bf9-4fee-844e-7b520a219143	Bình Dương	07/06/1973	vanduan1234@gmail.com	Nam	f	Vũ Văn Duẩn	03342113124
bfa6407d-d86e-4856-9342-9ab3c3785636	Sóc Trăng	14/11/1986	toancai999@gmail.com	Nam	f	Cái Hữu Toàn	05232242413
ddd25cc8-ad06-4960-b9a8-2ee137b5cd1e	Hải Dương	16/10/1999	minhnguyen1999@gmail.com	Nam	f	Nguyễn Văn Minh	04632234234
06716654-0e4c-4ff1-ada9-347cbad6f7db	Hà Nam	01/03/1997	thuynguyen97@gmail.com	Nữ	f	Nguyễn Thị Thủy	06345232451
66b1a88d-c3fe-4f9b-af10-8b00ba0f5d76	Bình Dương	07/07/1997	hoangngocthuy97@gmail.com	Nữ	f	Hoàng Ngọc Thúy	0673214643
ca7539c4-bdf3-4334-97c7-5437197f1353	Lạng Sơn	03/08/1998	nguyenthithương98@gmail.com	Nữ	f	Nguyễn Thị Thương	09996566123
\.


--
-- TOC entry 4806 (class 0 OID 17567)
-- Dependencies: 219
-- Data for Name: regis_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regis_record (regis_id, end_date, start_date, fk_course_id, fk_customer_id) FROM stdin;
8	2024-04-04 20:26:53.78151	2024-01-05 20:26:53.78151	978c8d52-a970-4bce-9458-0247dc869364	bfa6407d-d86e-4856-9342-9ab3c3785636
\.


--
-- TOC entry 4814 (class 0 OID 0)
-- Dependencies: 218
-- Name: regis_record_regis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regis_record_regis_id_seq', 8, true);


--
-- TOC entry 4648 (class 2606 OID 17551)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4650 (class 2606 OID 17558)
-- Name: customer_course customer_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT customer_course_pkey PRIMARY KEY (customer_id, course_id);


--
-- TOC entry 4652 (class 2606 OID 17565)
-- Name: custumers custumers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custumers
    ADD CONSTRAINT custumers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4654 (class 2606 OID 17574)
-- Name: regis_record regis_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT regis_record_pkey PRIMARY KEY (regis_id);


--
-- TOC entry 4657 (class 2606 OID 17590)
-- Name: regis_record fk1vux9uvr4b14ash02brhar2ro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT fk1vux9uvr4b14ash02brhar2ro FOREIGN KEY (fk_customer_id) REFERENCES public.custumers(customer_id);


--
-- TOC entry 4655 (class 2606 OID 17580)
-- Name: customer_course fkecbxp6igwlyb8ko37oadsudc6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT fkecbxp6igwlyb8ko37oadsudc6 FOREIGN KEY (customer_id) REFERENCES public.custumers(customer_id);


--
-- TOC entry 4658 (class 2606 OID 17585)
-- Name: regis_record fkmt0qxnniy2rv3qjrfnkp7aox7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT fkmt0qxnniy2rv3qjrfnkp7aox7 FOREIGN KEY (fk_course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 4656 (class 2606 OID 17575)
-- Name: customer_course fksugg1fmt36dlb63odxt2sehbn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT fksugg1fmt36dlb63odxt2sehbn FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


-- Completed on 2024-01-05 20:44:17

--
-- PostgreSQL database dump complete
--

--
-- Database "customer_course_ms" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-05 20:44:17

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
-- TOC entry 4812 (class 1262 OID 17444)
-- Name: customer_course_ms; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE customer_course_ms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE customer_course_ms OWNER TO postgres;

\connect customer_course_ms

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
-- TOC entry 215 (class 1259 OID 17495)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id character varying(255) NOT NULL,
    course_des character varying(255),
    course_name character varying(255)
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17528)
-- Name: customer_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_course (
    customer_id character varying(255) NOT NULL,
    course_id character varying(255) NOT NULL
);


ALTER TABLE public.customer_course OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17502)
-- Name: custumers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custumers (
    customer_id character varying(255) NOT NULL,
    customer_address character varying(255),
    customer_dob character varying(255),
    customer_email character varying(255),
    customer_gender character varying(255),
    status_is_delete boolean,
    customer_name character varying(255),
    customer_phone character varying(255)
);


ALTER TABLE public.custumers OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17510)
-- Name: regis_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regis_record (
    regis_id bigint NOT NULL,
    end_date timestamp(6) without time zone,
    start_date timestamp(6) without time zone,
    fk_course_id character varying(255) NOT NULL,
    fk_customer_id character varying(255) NOT NULL
);


ALTER TABLE public.regis_record OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17509)
-- Name: regis_record_regis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regis_record_regis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.regis_record_regis_id_seq OWNER TO postgres;

--
-- TOC entry 4813 (class 0 OID 0)
-- Dependencies: 217
-- Name: regis_record_regis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regis_record_regis_id_seq OWNED BY public.regis_record.regis_id;


--
-- TOC entry 4646 (class 2604 OID 17513)
-- Name: regis_record regis_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record ALTER COLUMN regis_id SET DEFAULT nextval('public.regis_record_regis_id_seq'::regclass);


--
-- TOC entry 4802 (class 0 OID 17495)
-- Dependencies: 215
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_des, course_name) FROM stdin;
978c8d52-a970-4bce-9458-0247dc869364	Khóa học java từ cơ bản đến hướng đối tượng	Java Core
ad380748-77f1-4c3d-b709-3f5de1d9c97e	Khóa học Font End bao gồm html,css,js	Html,css,js
e985d9e9-f9f6-4d29-809e-b0260c167199	Khóa học C# từ cơ bản đến hướng đối tượng	C#
7f5064ef-db87-4fb2-97f7-78f9350db41c	Khoá học c++ cơ bản	C++
38b52fbd-446d-4a74-9f67-4440f4736dcf	Khóa học python cơ bản	Python
f56f4fc1-ed38-4d5b-bcbf-302b2d08865d	Khóa học Android từ cơ bản đến nâng cao	Android
445802fa-2156-4c6a-9f17-986b42d16026	Khóa học lập trình Back End sử dụng Spring Framework	Java Spring Boot
24164a0b-0eda-42a9-9dfb-d0ca834a8f31	Khóa học C cơ bản	C
66b1a88d-c3fe-4f9b-af10-8b00ba0f5d76	Khóa học sql tương tác với cơ sở dữ liệu	Sql
\.


--
-- TOC entry 4806 (class 0 OID 17528)
-- Dependencies: 219
-- Data for Name: customer_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_course (customer_id, course_id) FROM stdin;
\.


--
-- TOC entry 4803 (class 0 OID 17502)
-- Dependencies: 216
-- Data for Name: custumers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custumers (customer_id, customer_address, customer_dob, customer_email, customer_gender, status_is_delete, customer_name, customer_phone) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N
2	\N	\N	\N	\N	\N	\N	\N
19075447-a3c7-440a-8e3a-dfd05802da28	Hà Nam	25/09/1997	vuhieuminh2597@gmail.com	Nam	f	Vũ Minh Hiếu	0966916002
36967bb8-512f-4bb2-9849-ab20ebcfdb82	Đăk Lăk	03/03/1987	dinhcong87@gmail.com	Nam	f	Đinh Văn Công	0123456789
ea382f81-b47d-4adc-98f9-25d7ad4fb634	Thanh Hóa	26/10/1980	phamtuyen80@gmail.com	Nam	f	Phạm Văn Tuyến	0123123123
d89dc70f-dc11-43a4-9843-b195fce05c20	Nghệ An	16/09/1992	banam92@gmail.com	Nam	f	Nguyễn Bá Nam	0123546234
b5af43b2-3b3a-4614-bc0a-63713e18e03e	Cà Mau	18/03/1988	hieuhuynh88@gmail.com	Nam	f	Huỳnh Văn Hiếu	0999123123
02a3c636-8be8-473a-9989-0c86017a14c8	Huế	30/12/1996	xuanhoang96@gmail.com	Nam	f	Nguyễn Xuân Hoàng	023411233311
72c4718a-8bfd-49a5-a9fc-03e3a23836c4	Bình Dương	10/12/1983	ngocphuong83@gmail.com	Nam	f	Hồ Ngọc Phương	0909090909
635b389a-7f9e-4b06-a834-e27a61689473	Quảng trị	11/10/1988	doanhieu1357@gmail.com	Nam	f	Lê Doãn Hiếu	064323426232
b3b6ad3d-7bf9-4fee-844e-7b520a219143	Bình Dương	07/06/1973	vanduan1234@gmail.com	Nam	f	Vũ Văn Duẩn	03342113124
bfa6407d-d86e-4856-9342-9ab3c3785636	Sóc Trăng	14/11/1986	toancai999@gmail.com	Nam	f	Cái Hữu Toàn	05232242413
ddd25cc8-ad06-4960-b9a8-2ee137b5cd1e	Hải Dương	16/10/1999	minhnguyen1999@gmail.com	Nam	f	Nguyễn Văn Minh	04632234234
06716654-0e4c-4ff1-ada9-347cbad6f7db	Hà Nam	01/03/1997	thuynguyen97@gmail.com	Nữ	f	Nguyễn Thị Thủy	06345232451
\.


--
-- TOC entry 4805 (class 0 OID 17510)
-- Dependencies: 218
-- Data for Name: regis_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regis_record (regis_id, end_date, start_date, fk_course_id, fk_customer_id) FROM stdin;
\.


--
-- TOC entry 4814 (class 0 OID 0)
-- Dependencies: 217
-- Name: regis_record_regis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regis_record_regis_id_seq', 1, false);


--
-- TOC entry 4648 (class 2606 OID 17501)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4654 (class 2606 OID 17534)
-- Name: customer_course customer_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT customer_course_pkey PRIMARY KEY (customer_id, course_id);


--
-- TOC entry 4650 (class 2606 OID 17508)
-- Name: custumers custumers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custumers
    ADD CONSTRAINT custumers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4652 (class 2606 OID 17517)
-- Name: regis_record regis_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT regis_record_pkey PRIMARY KEY (regis_id);


--
-- TOC entry 4655 (class 2606 OID 17523)
-- Name: regis_record fk1vux9uvr4b14ash02brhar2ro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT fk1vux9uvr4b14ash02brhar2ro FOREIGN KEY (fk_customer_id) REFERENCES public.custumers(customer_id);


--
-- TOC entry 4657 (class 2606 OID 17540)
-- Name: customer_course fkecbxp6igwlyb8ko37oadsudc6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT fkecbxp6igwlyb8ko37oadsudc6 FOREIGN KEY (customer_id) REFERENCES public.custumers(customer_id);


--
-- TOC entry 4656 (class 2606 OID 17518)
-- Name: regis_record fkmt0qxnniy2rv3qjrfnkp7aox7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis_record
    ADD CONSTRAINT fkmt0qxnniy2rv3qjrfnkp7aox7 FOREIGN KEY (fk_course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 4658 (class 2606 OID 17535)
-- Name: customer_course fksugg1fmt36dlb63odxt2sehbn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_course
    ADD CONSTRAINT fksugg1fmt36dlb63odxt2sehbn FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


-- Completed on 2024-01-05 20:44:17

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-05 20:44:17

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
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 4778 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


-- Completed on 2024-01-05 20:44:17

--
-- PostgreSQL database dump complete
--

--
-- Database "user_ms" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-05 20:44:17

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
-- TOC entry 4787 (class 1262 OID 16825)
-- Name: user_ms; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE user_ms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE user_ms OWNER TO postgres;

\connect user_ms

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
-- TOC entry 216 (class 1259 OID 16827)
-- Name: user_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_entity (
    user_id bigint NOT NULL,
    user_address character varying(255),
    day_of_birth character varying(255),
    user_email character varying(255),
    user_gender character varying(255),
    user_name character varying(255),
    user_password character varying(255),
    user_phone character varying(255)
);


ALTER TABLE public.user_entity OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16826)
-- Name: user_entity_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_entity_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_entity_user_id_seq OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: user_entity_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_entity_user_id_seq OWNED BY public.user_entity.user_id;


--
-- TOC entry 4634 (class 2604 OID 16830)
-- Name: user_entity user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity ALTER COLUMN user_id SET DEFAULT nextval('public.user_entity_user_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16827)
-- Dependencies: 216
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_entity (user_id, user_address, day_of_birth, user_email, user_gender, user_name, user_password, user_phone) FROM stdin;
10	\N	\N	\N	\N	Nguyễn Hải Dương	\N	\N
11	\N	\N	\N	\N	Vũ Văn Hùng	\N	\N
6	Cần Thơ	03/04/1988	hieuhuynh@gmail.com	Nam	Huỳnh Văn Hiếu	\N	65685353452
7	Bình Dương	25/07/1983	ngocphuong83@gmail.com	Nam	Hồ Ngọc Phương	\N	999999999
12	Bình Dương	25/09/1997	vuhieu2597@gmail.com	Nam	Hiếu Minh Vũ	\N	0966916002
13	Bình Dương	1998	huynghuyen123@gmail.com	Nam	Ngô Kiến Huy	\N	1233445645
14	1	1	1	1	Vũ	\N	1
15	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: user_entity_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_entity_user_id_seq', 23, true);


--
-- TOC entry 4636 (class 2606 OID 16834)
-- Name: user_entity user_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT user_entity_pkey PRIMARY KEY (user_id);


-- Completed on 2024-01-05 20:44:18

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-01-05 20:44:18

--
-- PostgreSQL database cluster dump complete
--

