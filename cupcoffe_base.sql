--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-21 19:22:17

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
-- TOC entry 6 (class 2615 OID 16525)
-- Name: cupc_schem; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cupc_schem;


ALTER SCHEMA cupc_schem OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16526)
-- Name: basket; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem.basket (
    basket_id integer NOT NULL,
    pr_id integer NOT NULL,
    numb integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE cupc_schem.basket OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE basket; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem.basket IS 'Таблица с данными содержимого корзины покупок.
Содержит 4 столбца: 
basket_id - id заказа добавленного в корзину;
pr_id - id товара;
numb - количество добавленных товаров;
price - цена';


--
-- TOC entry 216 (class 1259 OID 16529)
-- Name: categories; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem.categories (
    cat_id integer NOT NULL,
    category character varying NOT NULL
);


ALTER TABLE cupc_schem.categories OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE categories; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem.categories IS 'Таблица категорий товаров
Содержит два столбца:
cat_id - id категории товаров;
category - наименование категории';


--
-- TOC entry 217 (class 1259 OID 16534)
-- Name: product; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem.product (
    prod_id integer NOT NULL,
    prod_name character varying NOT NULL,
    prod_weight integer NOT NULL,
    prod_price integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE cupc_schem.product OWNER TO postgres;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE product; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem.product IS 'Таблица содержит данные о товарах:
prod_id - id товара;
prod_name - наименование товара;
prod_weight - вес товара;
prod_price - цена товара;
category_id - id категории товара.
';


--
-- TOC entry 218 (class 1259 OID 16539)
-- Name: purchase; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem.purchase (
    pur_id integer NOT NULL,
    id_user integer NOT NULL,
    data_order date NOT NULL,
    data_del date NOT NULL,
    price_pur integer NOT NULL,
    status character varying(100) NOT NULL
);


ALTER TABLE cupc_schem.purchase OWNER TO postgres;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE purchase; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem.purchase IS 'Таблица заказов.
Содержит 6 столбцов:
pur_id - id заказа;
id_user - id пользователя;
date_order - дата заказа;
date_del - дата доставки;
price_pur - цена за заказ;
status - статус заказа;
';


--
-- TOC entry 219 (class 1259 OID 16542)
-- Name: purchase_item; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem.purchase_item (
    id_puri integer NOT NULL,
    item_id integer NOT NULL,
    id_pr integer NOT NULL,
    numb integer NOT NULL
);


ALTER TABLE cupc_schem.purchase_item OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE purchase_item; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem.purchase_item IS 'Таблица содержит в себе допю информацию о заказанном товаре.
4 столбца:
id_puri - id заказанного товара;
item_id - id заказа;
id_pr - id товара;
numb - количество';


--
-- TOC entry 220 (class 1259 OID 16545)
-- Name: user; Type: TABLE; Schema: cupc_schem; Owner: postgres
--

CREATE TABLE cupc_schem."user" (
    user_id integer NOT NULL,
    user_name character varying(80) NOT NULL,
    email character varying(80) NOT NULL,
    password character varying(80) NOT NULL
);


ALTER TABLE cupc_schem."user" OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE "user"; Type: COMMENT; Schema: cupc_schem; Owner: postgres
--

COMMENT ON TABLE cupc_schem."user" IS 'Таблица содержит данные о пользователях:
user_id - id пользователя;
user_name - имя пользователя;
email - эмейл пользователя;
password - пароль.';


--
-- TOC entry 3350 (class 0 OID 16526)
-- Dependencies: 215
-- Data for Name: basket; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3351 (class 0 OID 16529)
-- Dependencies: 216
-- Data for Name: categories; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3352 (class 0 OID 16534)
-- Dependencies: 217
-- Data for Name: product; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3353 (class 0 OID 16539)
-- Dependencies: 218
-- Data for Name: purchase; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3354 (class 0 OID 16542)
-- Dependencies: 219
-- Data for Name: purchase_item; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3355 (class 0 OID 16545)
-- Dependencies: 220
-- Data for Name: user; Type: TABLE DATA; Schema: cupc_schem; Owner: postgres
--



--
-- TOC entry 3194 (class 2606 OID 16549)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (cat_id);


--
-- TOC entry 3196 (class 2606 OID 16551)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);


--
-- TOC entry 3200 (class 2606 OID 16553)
-- Name: purchase_item purchase_item_pkey; Type: CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.purchase_item
    ADD CONSTRAINT purchase_item_pkey PRIMARY KEY (id_puri);


--
-- TOC entry 3198 (class 2606 OID 16555)
-- Name: purchase purchase_pkey; Type: CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (pur_id);


--
-- TOC entry 3202 (class 2606 OID 16557)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3204 (class 2606 OID 16558)
-- Name: product category_key; Type: FK CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.product
    ADD CONSTRAINT category_key FOREIGN KEY (category_id) REFERENCES cupc_schem.categories(cat_id);


--
-- TOC entry 3206 (class 2606 OID 16563)
-- Name: purchase_item item_key; Type: FK CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.purchase_item
    ADD CONSTRAINT item_key FOREIGN KEY (item_id) REFERENCES cupc_schem.purchase(pur_id);


--
-- TOC entry 3203 (class 2606 OID 16568)
-- Name: basket prod_id_key; Type: FK CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.basket
    ADD CONSTRAINT prod_id_key FOREIGN KEY (pr_id) REFERENCES cupc_schem.product(prod_id);


--
-- TOC entry 3207 (class 2606 OID 16573)
-- Name: purchase_item prod_key; Type: FK CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.purchase_item
    ADD CONSTRAINT prod_key FOREIGN KEY (id_pr) REFERENCES cupc_schem.product(prod_id);


--
-- TOC entry 3205 (class 2606 OID 16578)
-- Name: purchase user_key; Type: FK CONSTRAINT; Schema: cupc_schem; Owner: postgres
--

ALTER TABLE ONLY cupc_schem.purchase
    ADD CONSTRAINT user_key FOREIGN KEY (id_user) REFERENCES cupc_schem."user"(user_id);


-- Completed on 2023-06-21 19:22:18

--
-- PostgreSQL database dump complete
--

