--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.0

-- Started on 2023-04-13 09:38:33

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
-- TOC entry 3423 (class 1262 OID 16389)
-- Name: WorkanaTest; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE "WorkanaTest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "WorkanaTest" OWNER TO admin;

\connect "WorkanaTest"

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
-- TOC entry 217 (class 1259 OID 16405)
-- Name: categories; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.categories OWNER TO admin;

--
-- TOC entry 216 (class 1259 OID 16404)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO admin;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 216
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 231 (class 1259 OID 16538)
-- Name: categories_taxes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categories_taxes (
    id bigint NOT NULL,
    category_id bigint NOT NULL,
    tax_id bigint NOT NULL,
    tax_rate numeric(7,3) NOT NULL
);


ALTER TABLE public.categories_taxes OWNER TO admin;

--
-- TOC entry 230 (class 1259 OID 16537)
-- Name: categories_taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categories_taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_taxes_id_seq OWNER TO admin;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 230
-- Name: categories_taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categories_taxes_id_seq OWNED BY public.categories_taxes.id;


--
-- TOC entry 223 (class 1259 OID 16483)
-- Name: customers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.customers OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 16482)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO admin;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 222
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 219 (class 1259 OID 16412)
-- Name: products; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.products OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 16411)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO admin;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 218
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 221 (class 1259 OID 16424)
-- Name: products_pricies; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.products_pricies (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    price numeric(12,5) NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.products_pricies OWNER TO admin;

--
-- TOC entry 220 (class 1259 OID 16423)
-- Name: products_pricies_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.products_pricies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_pricies_id_seq OWNER TO admin;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 220
-- Name: products_pricies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.products_pricies_id_seq OWNED BY public.products_pricies.id;


--
-- TOC entry 229 (class 1259 OID 16521)
-- Name: sale_product_taxes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sale_product_taxes (
    id bigint NOT NULL,
    sale_product_id bigint NOT NULL,
    tax_id bigint NOT NULL,
    tax_rate numeric(7,3) NOT NULL,
    tax_value numeric(12,5) NOT NULL
);


ALTER TABLE public.sale_product_taxes OWNER TO admin;

--
-- TOC entry 228 (class 1259 OID 16520)
-- Name: sale_product_taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.sale_product_taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sale_product_taxes_id_seq OWNER TO admin;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 228
-- Name: sale_product_taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.sale_product_taxes_id_seq OWNED BY public.sale_product_taxes.id;


--
-- TOC entry 227 (class 1259 OID 16504)
-- Name: sale_products; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sale_products (
    id bigint NOT NULL,
    sale_id bigint NOT NULL,
    product_price_id bigint NOT NULL,
    quantity numeric(12,5) NOT NULL,
    total_price numeric(12,5) NOT NULL
);


ALTER TABLE public.sale_products OWNER TO admin;

--
-- TOC entry 226 (class 1259 OID 16503)
-- Name: sale_products_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.sale_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sale_products_id_seq OWNER TO admin;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 226
-- Name: sale_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.sale_products_id_seq OWNED BY public.sale_products.id;


--
-- TOC entry 225 (class 1259 OID 16492)
-- Name: sales; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sales (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    date date NOT NULL,
    total_value numeric(12,5) NOT NULL
);


ALTER TABLE public.sales OWNER TO admin;

--
-- TOC entry 224 (class 1259 OID 16491)
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_id_seq OWNER TO admin;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 224
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;


--
-- TOC entry 215 (class 1259 OID 16398)
-- Name: taxes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.taxes (
    id bigint NOT NULL,
    code character varying(10) NOT NULL
);


ALTER TABLE public.taxes OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 16397)
-- Name: taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taxes_id_seq OWNER TO admin;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 214
-- Name: taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.taxes_id_seq OWNED BY public.taxes.id;


--
-- TOC entry 3237 (class 2604 OID 16408)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16541)
-- Name: categories_taxes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_taxes ALTER COLUMN id SET DEFAULT nextval('public.categories_taxes_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 16486)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 16415)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 16427)
-- Name: products_pricies id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products_pricies ALTER COLUMN id SET DEFAULT nextval('public.products_pricies_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 16524)
-- Name: sale_product_taxes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_product_taxes ALTER COLUMN id SET DEFAULT nextval('public.sale_product_taxes_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 16507)
-- Name: sale_products id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_products ALTER COLUMN id SET DEFAULT nextval('public.sale_products_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16495)
-- Name: sales id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 16401)
-- Name: taxes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taxes ALTER COLUMN id SET DEFAULT nextval('public.taxes_id_seq'::regclass);


--
-- TOC entry 3248 (class 2606 OID 16410)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 16556)
-- Name: categories_taxes categories_taxes_idx; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_taxes
    ADD CONSTRAINT categories_taxes_idx UNIQUE (category_id, tax_id);


--
-- TOC entry 3266 (class 2606 OID 16543)
-- Name: categories_taxes categories_taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_taxes
    ADD CONSTRAINT categories_taxes_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 16490)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 3256 (class 2606 OID 16488)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 16417)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 16429)
-- Name: products_pricies products_pricies_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products_pricies
    ADD CONSTRAINT products_pricies_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 16526)
-- Name: sale_product_taxes sale_product_taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_product_taxes
    ADD CONSTRAINT sale_product_taxes_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 16509)
-- Name: sale_products sale_products_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_products
    ADD CONSTRAINT sale_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 16497)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 16403)
-- Name: taxes taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT taxes_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 16544)
-- Name: categories_taxes categories_taxes_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_taxes
    ADD CONSTRAINT categories_taxes_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE;


--
-- TOC entry 3275 (class 2606 OID 16549)
-- Name: categories_taxes categories_taxes_fk1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_taxes
    ADD CONSTRAINT categories_taxes_fk1 FOREIGN KEY (tax_id) REFERENCES public.taxes(id) ON UPDATE CASCADE;


--
-- TOC entry 3267 (class 2606 OID 16418)
-- Name: products products_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE;


--
-- TOC entry 3268 (class 2606 OID 16430)
-- Name: products_pricies products_pricies_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.products_pricies
    ADD CONSTRAINT products_pricies_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE;


--
-- TOC entry 3272 (class 2606 OID 16527)
-- Name: sale_product_taxes sale_product_taxes_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_product_taxes
    ADD CONSTRAINT sale_product_taxes_fk FOREIGN KEY (sale_product_id) REFERENCES public.sale_products(id) ON UPDATE CASCADE;


--
-- TOC entry 3273 (class 2606 OID 16532)
-- Name: sale_product_taxes sale_product_taxes_fk1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_product_taxes
    ADD CONSTRAINT sale_product_taxes_fk1 FOREIGN KEY (tax_id) REFERENCES public.taxes(id) ON UPDATE CASCADE;


--
-- TOC entry 3270 (class 2606 OID 16510)
-- Name: sale_products sale_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_products
    ADD CONSTRAINT sale_products_fk FOREIGN KEY (product_price_id) REFERENCES public.products_pricies(id) ON UPDATE CASCADE;


--
-- TOC entry 3271 (class 2606 OID 16515)
-- Name: sale_products sale_products_fk1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sale_products
    ADD CONSTRAINT sale_products_fk1 FOREIGN KEY (sale_id) REFERENCES public.sales(id) ON UPDATE CASCADE;


--
-- TOC entry 3269 (class 2606 OID 16498)
-- Name: sales sales_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE CASCADE;


-- Completed on 2023-04-13 09:38:33

--
-- PostgreSQL database dump complete
--

