--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 15.3

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: blog_items; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.blog_items (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    "timeRead" character varying(255),
    "nameUser" character varying(255),
    "jobUser" character varying(255),
    date date,
    description text,
    content text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.blog_items OWNER TO user_developer_portal;

--
-- Name: blog_items_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.blog_items_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    blog_item_id integer NOT NULL
);


ALTER TABLE public.blog_items_components OWNER TO user_developer_portal;

--
-- Name: blog_items_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.blog_items_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_items_components_id_seq OWNER TO user_developer_portal;

--
-- Name: blog_items_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.blog_items_components_id_seq OWNED BY public.blog_items_components.id;


--
-- Name: blog_items_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.blog_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_items_id_seq OWNER TO user_developer_portal;

--
-- Name: blog_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.blog_items_id_seq OWNED BY public.blog_items.id;


--
-- Name: components_apis_filters; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_apis_filters (
    id integer NOT NULL,
    "statusName" character varying(255),
    "projectTypeName" character varying(255),
    "versionName" character varying(255),
    "solutionName" character varying(255),
    "tagsName" character varying(255),
    "orderByName" character varying(255)
);


ALTER TABLE public.components_apis_filters OWNER TO user_developer_portal;

--
-- Name: components_apis_filters_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_apis_filters_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_apis_filter_id integer NOT NULL
);


ALTER TABLE public.components_apis_filters_components OWNER TO user_developer_portal;

--
-- Name: components_apis_filters_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_apis_filters_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_apis_filters_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_apis_filters_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_apis_filters_components_id_seq OWNED BY public.components_apis_filters_components.id;


--
-- Name: components_apis_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_apis_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_apis_filters_id_seq OWNER TO user_developer_portal;

--
-- Name: components_apis_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_apis_filters_id_seq OWNED BY public.components_apis_filters.id;


--
-- Name: components_apis_paginations; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_apis_paginations (
    id integer NOT NULL,
    "firstName" character varying(255),
    "secondName" character varying(255)
);


ALTER TABLE public.components_apis_paginations OWNER TO user_developer_portal;

--
-- Name: components_apis_paginations_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_apis_paginations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_apis_paginations_id_seq OWNER TO user_developer_portal;

--
-- Name: components_apis_paginations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_apis_paginations_id_seq OWNED BY public.components_apis_paginations.id;


--
-- Name: components_cards_card_products; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_card_products (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_cards_card_products OWNER TO user_developer_portal;

--
-- Name: components_cards_card_products_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_card_products_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_cards_card_product_id integer NOT NULL
);


ALTER TABLE public.components_cards_card_products_components OWNER TO user_developer_portal;

--
-- Name: components_cards_card_products_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_card_products_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_card_products_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_card_products_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_card_products_components_id_seq OWNED BY public.components_cards_card_products_components.id;


--
-- Name: components_cards_card_products_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_card_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_card_products_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_card_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_card_products_id_seq OWNED BY public.components_cards_card_products.id;


--
-- Name: components_cards_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_cards (
    id integer NOT NULL,
    title character varying(255),
    description text,
    icon character varying(255),
    "titleFooter" character varying(255),
    "descriptionFooter" character varying(255),
    "LinkName" character varying(255),
    "LinkUrl" character varying(255),
    version character varying(255),
    steps jsonb,
    "descriptionHeader" character varying(255),
    "timeRead" character varying(255)
);


ALTER TABLE public.components_cards_cards OWNER TO user_developer_portal;

--
-- Name: components_cards_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_cards_id_seq OWNED BY public.components_cards_cards.id;


--
-- Name: components_cards_product_link_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_product_link_cards (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_cards_product_link_cards OWNER TO user_developer_portal;

--
-- Name: components_cards_product_link_cards_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_product_link_cards_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_cards_product_link_card_id integer NOT NULL
);


ALTER TABLE public.components_cards_product_link_cards_components OWNER TO user_developer_portal;

--
-- Name: components_cards_product_link_cards_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_product_link_cards_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_product_link_cards_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_product_link_cards_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_product_link_cards_components_id_seq OWNED BY public.components_cards_product_link_cards_components.id;


--
-- Name: components_cards_product_link_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_product_link_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_product_link_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_product_link_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_product_link_cards_id_seq OWNED BY public.components_cards_product_link_cards.id;


--
-- Name: components_cards_use_case_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_cards_use_case_cards (
    id integer NOT NULL,
    estatus character varying(255),
    title character varying(255),
    description text,
    "linkUrl" character varying(255),
    "linkText" character varying(255),
    badge text,
    "statusText" character varying(255)
);


ALTER TABLE public.components_cards_use_case_cards OWNER TO user_developer_portal;

--
-- Name: components_cards_use_case_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_cards_use_case_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_cards_use_case_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_cards_use_case_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_cards_use_case_cards_id_seq OWNED BY public.components_cards_use_case_cards.id;


--
-- Name: components_elements_badgets; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_badgets (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_elements_badgets OWNER TO user_developer_portal;

--
-- Name: components_elements_badgets_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_badgets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_badgets_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_badgets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_badgets_id_seq OWNED BY public.components_elements_badgets.id;


--
-- Name: components_elements_basic_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_basic_cards (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);


ALTER TABLE public.components_elements_basic_cards OWNER TO user_developer_portal;

--
-- Name: components_elements_basic_cards_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_basic_cards_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_basic_card_id integer NOT NULL
);


ALTER TABLE public.components_elements_basic_cards_components OWNER TO user_developer_portal;

--
-- Name: components_elements_basic_cards_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_basic_cards_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_basic_cards_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_basic_cards_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_basic_cards_components_id_seq OWNED BY public.components_elements_basic_cards_components.id;


--
-- Name: components_elements_basic_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_basic_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_basic_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_basic_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_basic_cards_id_seq OWNED BY public.components_elements_basic_cards.id;


--
-- Name: components_elements_big_features; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_big_features (
    id integer NOT NULL,
    title character varying(255),
    description text,
    "position" character varying(255)
);


ALTER TABLE public.components_elements_big_features OWNER TO user_developer_portal;

--
-- Name: components_elements_big_features_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_big_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_big_features_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_big_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_big_features_id_seq OWNED BY public.components_elements_big_features.id;


--
-- Name: components_elements_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_cards (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_elements_cards OWNER TO user_developer_portal;

--
-- Name: components_elements_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_cards_id_seq OWNED BY public.components_elements_cards.id;


--
-- Name: components_elements_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_containers (
    id integer NOT NULL,
    title character varying(255),
    description text,
    keyword character varying(255)
);


ALTER TABLE public.components_elements_containers OWNER TO user_developer_portal;

--
-- Name: components_elements_containers_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_containers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_container_id integer NOT NULL
);


ALTER TABLE public.components_elements_containers_components OWNER TO user_developer_portal;

--
-- Name: components_elements_containers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_containers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_containers_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_containers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_containers_components_id_seq OWNED BY public.components_elements_containers_components.id;


--
-- Name: components_elements_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_containers_id_seq OWNED BY public.components_elements_containers.id;


--
-- Name: components_elements_custom_radios; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_custom_radios (
    id integer NOT NULL,
    title character varying(255),
    estatus character varying(255)
);


ALTER TABLE public.components_elements_custom_radios OWNER TO user_developer_portal;

--
-- Name: components_elements_custom_radios_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_custom_radios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_custom_radios_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_custom_radios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_custom_radios_id_seq OWNED BY public.components_elements_custom_radios.id;


--
-- Name: components_elements_entries; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_entries (
    id integer NOT NULL,
    title character varying(255),
    content text
);


ALTER TABLE public.components_elements_entries OWNER TO user_developer_portal;

--
-- Name: components_elements_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_entries_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_entries_id_seq OWNED BY public.components_elements_entries.id;


--
-- Name: components_elements_filter_versions; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_filter_versions (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_elements_filter_versions OWNER TO user_developer_portal;

--
-- Name: components_elements_filter_versions_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_filter_versions_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_filter_version_id integer NOT NULL
);


ALTER TABLE public.components_elements_filter_versions_components OWNER TO user_developer_portal;

--
-- Name: components_elements_filter_versions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_filter_versions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_filter_versions_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_filter_versions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_filter_versions_components_id_seq OWNED BY public.components_elements_filter_versions_components.id;


--
-- Name: components_elements_filter_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_filter_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_filter_versions_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_filter_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_filter_versions_id_seq OWNED BY public.components_elements_filter_versions.id;


--
-- Name: components_elements_form_checkboxes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_form_checkboxes (
    id integer NOT NULL,
    text character varying(255),
    type character varying(255),
    "isRequired" boolean,
    "validationMessage" text,
    name character varying(255)
);


ALTER TABLE public.components_elements_form_checkboxes OWNER TO user_developer_portal;

--
-- Name: components_elements_form_checkboxes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_form_checkboxes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_form_checkbox_id integer NOT NULL
);


ALTER TABLE public.components_elements_form_checkboxes_components OWNER TO user_developer_portal;

--
-- Name: components_elements_form_checkboxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_form_checkboxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_form_checkboxes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_form_checkboxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_form_checkboxes_components_id_seq OWNED BY public.components_elements_form_checkboxes_components.id;


--
-- Name: components_elements_form_checkboxes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_form_checkboxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_form_checkboxes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_form_checkboxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_form_checkboxes_id_seq OWNED BY public.components_elements_form_checkboxes.id;


--
-- Name: components_elements_form_responses; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_form_responses (
    id integer NOT NULL,
    title character varying(255),
    message text,
    type character varying(255),
    show boolean
);


ALTER TABLE public.components_elements_form_responses OWNER TO user_developer_portal;

--
-- Name: components_elements_form_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_form_responses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_form_responses_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_form_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_form_responses_id_seq OWNED BY public.components_elements_form_responses.id;


--
-- Name: components_elements_image_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_image_lists (
    id integer NOT NULL
);


ALTER TABLE public.components_elements_image_lists OWNER TO user_developer_portal;

--
-- Name: components_elements_image_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_image_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_image_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_image_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_image_lists_id_seq OWNED BY public.components_elements_image_lists.id;


--
-- Name: components_elements_link_texts; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_link_texts (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_elements_link_texts OWNER TO user_developer_portal;

--
-- Name: components_elements_link_texts_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_link_texts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_link_text_id integer NOT NULL
);


ALTER TABLE public.components_elements_link_texts_components OWNER TO user_developer_portal;

--
-- Name: components_elements_link_texts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_link_texts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_link_texts_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_link_texts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_link_texts_components_id_seq OWNED BY public.components_elements_link_texts_components.id;


--
-- Name: components_elements_link_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_link_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_link_texts_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_link_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_link_texts_id_seq OWNED BY public.components_elements_link_texts.id;


--
-- Name: components_elements_logos; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_logos (
    id integer NOT NULL
);


ALTER TABLE public.components_elements_logos OWNER TO user_developer_portal;

--
-- Name: components_elements_logos_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_logos_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_logo_id integer NOT NULL
);


ALTER TABLE public.components_elements_logos_components OWNER TO user_developer_portal;

--
-- Name: components_elements_logos_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_logos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logos_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_logos_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_logos_components_id_seq OWNED BY public.components_elements_logos_components.id;


--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logos_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_logos_id_seq OWNED BY public.components_elements_logos.id;


--
-- Name: components_elements_logotypes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_logotypes (
    id integer NOT NULL,
    "altText" character varying(255)
);


ALTER TABLE public.components_elements_logotypes OWNER TO user_developer_portal;

--
-- Name: components_elements_logotypes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_logotypes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_logotype_id integer NOT NULL
);


ALTER TABLE public.components_elements_logotypes_components OWNER TO user_developer_portal;

--
-- Name: components_elements_logotypes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_logotypes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logotypes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_logotypes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_logotypes_components_id_seq OWNED BY public.components_elements_logotypes_components.id;


--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_logotypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logotypes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_logotypes_id_seq OWNED BY public.components_elements_logotypes.id;


--
-- Name: components_elements_main_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_main_heroes (
    id integer NOT NULL,
    title character varying(255),
    keyword character varying(255),
    "isKeywordInverted" boolean
);


ALTER TABLE public.components_elements_main_heroes OWNER TO user_developer_portal;

--
-- Name: components_elements_main_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_main_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_main_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_main_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_main_heroes_id_seq OWNED BY public.components_elements_main_heroes.id;


--
-- Name: components_elements_navbar_section; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_navbar_section (
    id integer NOT NULL,
    title character varying(255),
    drop boolean
);


ALTER TABLE public.components_elements_navbar_section OWNER TO user_developer_portal;

--
-- Name: components_elements_navbar_section_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_navbar_section_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_navbar_section_id integer NOT NULL
);


ALTER TABLE public.components_elements_navbar_section_components OWNER TO user_developer_portal;

--
-- Name: components_elements_navbar_section_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_navbar_section_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_navbar_section_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_navbar_section_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_navbar_section_components_id_seq OWNED BY public.components_elements_navbar_section_components.id;


--
-- Name: components_elements_navbar_section_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_navbar_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_navbar_section_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_navbar_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_navbar_section_id_seq OWNED BY public.components_elements_navbar_section.id;


--
-- Name: components_elements_notification_banners; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_notification_banners (
    id integer NOT NULL,
    title character varying(255),
    type character varying(255)
);


ALTER TABLE public.components_elements_notification_banners OWNER TO user_developer_portal;

--
-- Name: components_elements_notification_banners_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_notification_banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_notification_banner_id integer NOT NULL
);


ALTER TABLE public.components_elements_notification_banners_components OWNER TO user_developer_portal;

--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_notification_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_notification_banners_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_notification_banners_components_id_seq OWNED BY public.components_elements_notification_banners_components.id;


--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_notification_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_notification_banners_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_notification_banners_id_seq OWNED BY public.components_elements_notification_banners.id;


--
-- Name: components_elements_placeholders; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_placeholders (
    id integer NOT NULL,
    placeholder character varying(255),
    "isRequired" boolean,
    type character varying(255),
    name character varying(255),
    value text,
    "validationMessage" text,
    label character varying(255)
);


ALTER TABLE public.components_elements_placeholders OWNER TO user_developer_portal;

--
-- Name: components_elements_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_placeholders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_placeholders_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_placeholders_id_seq OWNED BY public.components_elements_placeholders.id;


--
-- Name: components_elements_redirect_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_redirect_links (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_elements_redirect_links OWNER TO user_developer_portal;

--
-- Name: components_elements_redirect_links_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_redirect_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_redirect_link_id integer NOT NULL
);


ALTER TABLE public.components_elements_redirect_links_components OWNER TO user_developer_portal;

--
-- Name: components_elements_redirect_links_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_redirect_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_redirect_links_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_redirect_links_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_redirect_links_components_id_seq OWNED BY public.components_elements_redirect_links_components.id;


--
-- Name: components_elements_redirect_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_redirect_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_redirect_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_redirect_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_redirect_links_id_seq OWNED BY public.components_elements_redirect_links.id;


--
-- Name: components_elements_search_inputs; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_search_inputs (
    id integer NOT NULL,
    placeholder character varying(255)
);


ALTER TABLE public.components_elements_search_inputs OWNER TO user_developer_portal;

--
-- Name: components_elements_search_inputs_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_search_inputs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_search_input_id integer NOT NULL
);


ALTER TABLE public.components_elements_search_inputs_components OWNER TO user_developer_portal;

--
-- Name: components_elements_search_inputs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_search_inputs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_search_inputs_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_search_inputs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_search_inputs_components_id_seq OWNED BY public.components_elements_search_inputs_components.id;


--
-- Name: components_elements_search_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_search_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_search_inputs_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_search_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_search_inputs_id_seq OWNED BY public.components_elements_search_inputs.id;


--
-- Name: components_elements_search_outputs; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_search_outputs (
    id integer NOT NULL,
    message character varying(255)
);


ALTER TABLE public.components_elements_search_outputs OWNER TO user_developer_portal;

--
-- Name: components_elements_search_outputs_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_search_outputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_search_outputs_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_search_outputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_search_outputs_id_seq OWNED BY public.components_elements_search_outputs.id;


--
-- Name: components_elements_selects; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_selects (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.components_elements_selects OWNER TO user_developer_portal;

--
-- Name: components_elements_selects_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_selects_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_select_id integer NOT NULL
);


ALTER TABLE public.components_elements_selects_components OWNER TO user_developer_portal;

--
-- Name: components_elements_selects_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_selects_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_selects_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_selects_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_selects_components_id_seq OWNED BY public.components_elements_selects_components.id;


--
-- Name: components_elements_selects_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_selects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_selects_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_selects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_selects_id_seq OWNED BY public.components_elements_selects.id;


--
-- Name: components_elements_sliders; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_sliders (
    id integer NOT NULL,
    title character varying(255),
    "actionButtons" jsonb
);


ALTER TABLE public.components_elements_sliders OWNER TO user_developer_portal;

--
-- Name: components_elements_sliders_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_sliders_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_elements_slider_id integer NOT NULL
);


ALTER TABLE public.components_elements_sliders_components OWNER TO user_developer_portal;

--
-- Name: components_elements_sliders_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_sliders_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_sliders_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_sliders_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_sliders_components_id_seq OWNED BY public.components_elements_sliders_components.id;


--
-- Name: components_elements_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_sliders_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_sliders_id_seq OWNED BY public.components_elements_sliders.id;


--
-- Name: components_elements_social_networks; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_social_networks (
    id integer NOT NULL,
    url character varying(255),
    type character varying(255)
);


ALTER TABLE public.components_elements_social_networks OWNER TO user_developer_portal;

--
-- Name: components_elements_social_networks_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_social_networks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_social_networks_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_social_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_social_networks_id_seq OWNED BY public.components_elements_social_networks.id;


--
-- Name: components_elements_status_enumerables; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_status_enumerables (
    id integer NOT NULL,
    status character varying(255)
);


ALTER TABLE public.components_elements_status_enumerables OWNER TO user_developer_portal;

--
-- Name: components_elements_status_enumerables_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_status_enumerables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_status_enumerables_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_status_enumerables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_status_enumerables_id_seq OWNED BY public.components_elements_status_enumerables.id;


--
-- Name: components_elements_subtitles; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_subtitles (
    id integer NOT NULL,
    text character varying(255),
    "order" integer,
    keyword character varying(255)
);


ALTER TABLE public.components_elements_subtitles OWNER TO user_developer_portal;

--
-- Name: components_elements_subtitles_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_subtitles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_subtitles_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_subtitles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_subtitles_id_seq OWNED BY public.components_elements_subtitles.id;


--
-- Name: components_elements_titles; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_elements_titles (
    id integer NOT NULL,
    title character varying(255),
    label character varying(255),
    class character varying(255),
    tab character varying(255)
);


ALTER TABLE public.components_elements_titles OWNER TO user_developer_portal;

--
-- Name: components_elements_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_elements_titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_titles_id_seq OWNER TO user_developer_portal;

--
-- Name: components_elements_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_elements_titles_id_seq OWNED BY public.components_elements_titles.id;


--
-- Name: components_formulario_button_forms; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_button_forms (
    id integer NOT NULL,
    type character varying(255),
    text character varying(255),
    name character varying(255),
    class character varying(255),
    "order" integer
);


ALTER TABLE public.components_formulario_button_forms OWNER TO user_developer_portal;

--
-- Name: components_formulario_button_forms_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_button_forms_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_formulario_button_form_id integer NOT NULL
);


ALTER TABLE public.components_formulario_button_forms_components OWNER TO user_developer_portal;

--
-- Name: components_formulario_button_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_button_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_button_forms_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_button_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_button_forms_components_id_seq OWNED BY public.components_formulario_button_forms_components.id;


--
-- Name: components_formulario_button_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_button_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_button_forms_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_button_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_button_forms_id_seq OWNED BY public.components_formulario_button_forms.id;


--
-- Name: components_formulario_checkboxes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_checkboxes (
    id integer NOT NULL,
    type character varying(255),
    label character varying(255),
    name character varying(255),
    value boolean,
    "isRequired" boolean,
    "errorMessage" character varying(255),
    "order" integer
);


ALTER TABLE public.components_formulario_checkboxes OWNER TO user_developer_portal;

--
-- Name: components_formulario_checkboxes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_checkboxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_checkboxes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_checkboxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_checkboxes_id_seq OWNED BY public.components_formulario_checkboxes.id;


--
-- Name: components_formulario_filter_estatuses; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_filter_estatuses (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_formulario_filter_estatuses OWNER TO user_developer_portal;

--
-- Name: components_formulario_filter_estatuses_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_filter_estatuses_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_formulario_filter_estatus_id integer NOT NULL
);


ALTER TABLE public.components_formulario_filter_estatuses_components OWNER TO user_developer_portal;

--
-- Name: components_formulario_filter_estatuses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_filter_estatuses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_filter_estatuses_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_filter_estatuses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_filter_estatuses_components_id_seq OWNED BY public.components_formulario_filter_estatuses_components.id;


--
-- Name: components_formulario_filter_estatuses_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_filter_estatuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_filter_estatuses_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_filter_estatuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_filter_estatuses_id_seq OWNED BY public.components_formulario_filter_estatuses.id;


--
-- Name: components_formulario_forms; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_forms (
    id integer NOT NULL,
    title text,
    subtitle text
);


ALTER TABLE public.components_formulario_forms OWNER TO user_developer_portal;

--
-- Name: components_formulario_forms_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_forms_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_formulario_form_id integer NOT NULL
);


ALTER TABLE public.components_formulario_forms_components OWNER TO user_developer_portal;

--
-- Name: components_formulario_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_forms_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_forms_components_id_seq OWNED BY public.components_formulario_forms_components.id;


--
-- Name: components_formulario_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_forms_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_forms_id_seq OWNED BY public.components_formulario_forms.id;


--
-- Name: components_formulario_inputs; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_inputs (
    id integer NOT NULL,
    placeholder character varying(255),
    name character varying(255),
    value character varying(255),
    "isRequired" boolean,
    "errorMessage" character varying(255),
    "order" integer,
    type character varying(255)
);


ALTER TABLE public.components_formulario_inputs OWNER TO user_developer_portal;

--
-- Name: components_formulario_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_inputs_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_inputs_id_seq OWNED BY public.components_formulario_inputs.id;


--
-- Name: components_formulario_options; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_options (
    id integer NOT NULL,
    value character varying(255),
    selected character varying(255),
    text character varying(255)
);


ALTER TABLE public.components_formulario_options OWNER TO user_developer_portal;

--
-- Name: components_formulario_options_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_options_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_options_id_seq OWNED BY public.components_formulario_options.id;


--
-- Name: components_formulario_select_options; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_select_options (
    id integer NOT NULL,
    name character varying(255),
    "isRequired" boolean,
    "errorMessage" character varying(255),
    type character varying(255),
    "order" integer
);


ALTER TABLE public.components_formulario_select_options OWNER TO user_developer_portal;

--
-- Name: components_formulario_select_options_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_formulario_select_options_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_formulario_select_option_id integer NOT NULL
);


ALTER TABLE public.components_formulario_select_options_components OWNER TO user_developer_portal;

--
-- Name: components_formulario_select_options_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_select_options_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_select_options_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_select_options_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_select_options_components_id_seq OWNED BY public.components_formulario_select_options_components.id;


--
-- Name: components_formulario_select_options_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_formulario_select_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_formulario_select_options_id_seq OWNER TO user_developer_portal;

--
-- Name: components_formulario_select_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_formulario_select_options_id_seq OWNED BY public.components_formulario_select_options.id;


--
-- Name: components_home_banner_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_banner_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    search character varying(255)
);


ALTER TABLE public.components_home_banner_sections OWNER TO user_developer_portal;

--
-- Name: components_home_banner_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_banner_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_banner_section_id integer NOT NULL
);


ALTER TABLE public.components_home_banner_sections_components OWNER TO user_developer_portal;

--
-- Name: components_home_banner_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_banner_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_banner_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_banner_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_banner_sections_components_id_seq OWNED BY public.components_home_banner_sections_components.id;


--
-- Name: components_home_banner_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_banner_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_banner_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_banner_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_banner_sections_id_seq OWNED BY public.components_home_banner_sections.id;


--
-- Name: components_home_benefits_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_benefits_lists (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_home_benefits_lists OWNER TO user_developer_portal;

--
-- Name: components_home_benefits_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_benefits_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_benefits_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_benefits_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_benefits_lists_id_seq OWNED BY public.components_home_benefits_lists.id;


--
-- Name: components_home_discover_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_discover_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    "smallText" character varying(255),
    "iconText" character varying(255)
);


ALTER TABLE public.components_home_discover_sections OWNER TO user_developer_portal;

--
-- Name: components_home_discover_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_discover_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_discover_section_id integer NOT NULL
);


ALTER TABLE public.components_home_discover_sections_components OWNER TO user_developer_portal;

--
-- Name: components_home_discover_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_discover_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_discover_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_discover_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_discover_sections_components_id_seq OWNED BY public.components_home_discover_sections_components.id;


--
-- Name: components_home_discover_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_discover_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_discover_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_discover_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_discover_sections_id_seq OWNED BY public.components_home_discover_sections.id;


--
-- Name: components_home_key_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_key_sections (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_home_key_sections OWNER TO user_developer_portal;

--
-- Name: components_home_key_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_key_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_key_section_id integer NOT NULL
);


ALTER TABLE public.components_home_key_sections_components OWNER TO user_developer_portal;

--
-- Name: components_home_key_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_key_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_key_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_key_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_key_sections_components_id_seq OWNED BY public.components_home_key_sections_components.id;


--
-- Name: components_home_key_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_key_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_key_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_key_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_key_sections_id_seq OWNED BY public.components_home_key_sections.id;


--
-- Name: components_home_status_apis; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_status_apis (
    id integer NOT NULL,
    text character varying(255),
    status character varying(255)
);


ALTER TABLE public.components_home_status_apis OWNER TO user_developer_portal;

--
-- Name: components_home_status_apis_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_status_apis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_status_apis_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_status_apis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_status_apis_id_seq OWNED BY public.components_home_status_apis.id;


--
-- Name: components_home_steps; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_steps (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    number character varying(255)
);


ALTER TABLE public.components_home_steps OWNER TO user_developer_portal;

--
-- Name: components_home_steps_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_steps_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_steps_id_seq OWNED BY public.components_home_steps.id;


--
-- Name: components_home_widget_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_widget_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_home_widget_sections OWNER TO user_developer_portal;

--
-- Name: components_home_widget_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_widget_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_widget_section_id integer NOT NULL
);


ALTER TABLE public.components_home_widget_sections_components OWNER TO user_developer_portal;

--
-- Name: components_home_widget_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_widget_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_widget_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_widget_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_widget_sections_components_id_seq OWNED BY public.components_home_widget_sections_components.id;


--
-- Name: components_home_widget_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_widget_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_widget_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_widget_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_widget_sections_id_seq OWNED BY public.components_home_widget_sections.id;


--
-- Name: components_home_work_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_work_sections (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_home_work_sections OWNER TO user_developer_portal;

--
-- Name: components_home_work_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_home_work_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_work_section_id integer NOT NULL
);


ALTER TABLE public.components_home_work_sections_components OWNER TO user_developer_portal;

--
-- Name: components_home_work_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_work_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_work_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_work_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_work_sections_components_id_seq OWNED BY public.components_home_work_sections_components.id;


--
-- Name: components_home_work_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_home_work_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_work_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_home_work_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_home_work_sections_id_seq OWNED BY public.components_home_work_sections.id;


--
-- Name: components_layout_footers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_layout_footers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    copyright character varying(255)
);


ALTER TABLE public.components_layout_footers OWNER TO user_developer_portal;

--
-- Name: components_layout_footers_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_layout_footers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_layout_footer_id integer NOT NULL
);


ALTER TABLE public.components_layout_footers_components OWNER TO user_developer_portal;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_layout_footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_layout_footers_components_id_seq OWNED BY public.components_layout_footers_components.id;


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_layout_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_layout_footers_id_seq OWNED BY public.components_layout_footers.id;


--
-- Name: components_layout_navbars; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_layout_navbars (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_layout_navbars OWNER TO user_developer_portal;

--
-- Name: components_layout_navbars_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_layout_navbars_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_layout_navbar_id integer NOT NULL
);


ALTER TABLE public.components_layout_navbars_components OWNER TO user_developer_portal;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_layout_navbars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_layout_navbars_components_id_seq OWNED BY public.components_layout_navbars_components.id;


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_layout_navbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_id_seq OWNER TO user_developer_portal;

--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_layout_navbars_id_seq OWNED BY public.components_layout_navbars.id;


--
-- Name: components_links_basic_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_basic_links (
    id integer NOT NULL,
    url character varying(255),
    name character varying(255),
    target character varying(255)
);


ALTER TABLE public.components_links_basic_links OWNER TO user_developer_portal;

--
-- Name: components_links_basic_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_basic_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_basic_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_basic_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_basic_links_id_seq OWNED BY public.components_links_basic_links.id;


--
-- Name: components_links_big_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_big_links (
    id integer NOT NULL,
    "altText" character varying(255),
    status character varying(255)
);


ALTER TABLE public.components_links_big_links OWNER TO user_developer_portal;

--
-- Name: components_links_big_links_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_big_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_big_link_id integer NOT NULL
);


ALTER TABLE public.components_links_big_links_components OWNER TO user_developer_portal;

--
-- Name: components_links_big_links_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_big_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_big_links_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_big_links_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_big_links_components_id_seq OWNED BY public.components_links_big_links_components.id;


--
-- Name: components_links_big_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_big_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_big_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_big_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_big_links_id_seq OWNED BY public.components_links_big_links.id;


--
-- Name: components_links_buttons; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_buttons (
    id integer NOT NULL,
    type character varying(255)
);


ALTER TABLE public.components_links_buttons OWNER TO user_developer_portal;

--
-- Name: components_links_buttons_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_buttons_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_button_id integer NOT NULL
);


ALTER TABLE public.components_links_buttons_components OWNER TO user_developer_portal;

--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_buttons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_buttons_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_buttons_components_id_seq OWNED BY public.components_links_buttons_components.id;


--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_buttons_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_buttons_id_seq OWNED BY public.components_links_buttons.id;


--
-- Name: components_links_drop_big_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_drop_big_links (
    id integer NOT NULL
);


ALTER TABLE public.components_links_drop_big_links OWNER TO user_developer_portal;

--
-- Name: components_links_drop_big_links_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_drop_big_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_drop_big_link_id integer NOT NULL
);


ALTER TABLE public.components_links_drop_big_links_components OWNER TO user_developer_portal;

--
-- Name: components_links_drop_big_links_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_drop_big_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_drop_big_links_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_drop_big_links_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_drop_big_links_components_id_seq OWNED BY public.components_links_drop_big_links_components.id;


--
-- Name: components_links_drop_big_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_drop_big_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_drop_big_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_drop_big_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_drop_big_links_id_seq OWNED BY public.components_links_drop_big_links.id;


--
-- Name: components_links_drop_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_drop_links (
    id integer NOT NULL
);


ALTER TABLE public.components_links_drop_links OWNER TO user_developer_portal;

--
-- Name: components_links_drop_links_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_drop_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_drop_link_id integer NOT NULL
);


ALTER TABLE public.components_links_drop_links_components OWNER TO user_developer_portal;

--
-- Name: components_links_drop_links_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_drop_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_drop_links_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_drop_links_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_drop_links_components_id_seq OWNED BY public.components_links_drop_links_components.id;


--
-- Name: components_links_drop_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_drop_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_drop_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_drop_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_drop_links_id_seq OWNED BY public.components_links_drop_links.id;


--
-- Name: components_links_footer_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_footer_sections (
    id integer NOT NULL,
    title character varying(255),
    subtext character varying(255),
    drop boolean
);


ALTER TABLE public.components_links_footer_sections OWNER TO user_developer_portal;

--
-- Name: components_links_footer_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_footer_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_footer_section_id integer NOT NULL
);


ALTER TABLE public.components_links_footer_sections_components OWNER TO user_developer_portal;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_footer_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_footer_sections_components_id_seq OWNED BY public.components_links_footer_sections_components.id;


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_footer_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_footer_sections_id_seq OWNED BY public.components_links_footer_sections.id;


--
-- Name: components_links_icon_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_icon_links (
    id integer NOT NULL
);


ALTER TABLE public.components_links_icon_links OWNER TO user_developer_portal;

--
-- Name: components_links_icon_links_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_icon_links_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_links_icon_link_id integer NOT NULL
);


ALTER TABLE public.components_links_icon_links_components OWNER TO user_developer_portal;

--
-- Name: components_links_icon_links_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_icon_links_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_icon_links_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_icon_links_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_icon_links_components_id_seq OWNED BY public.components_links_icon_links_components.id;


--
-- Name: components_links_icon_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_icon_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_icon_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_icon_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_icon_links_id_seq OWNED BY public.components_links_icon_links.id;


--
-- Name: components_links_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_links (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    target character varying(255)
);


ALTER TABLE public.components_links_links OWNER TO user_developer_portal;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_links_id_seq OWNED BY public.components_links_links.id;


--
-- Name: components_links_share_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_share_lists (
    id integer NOT NULL,
    url text,
    target character varying(255)
);


ALTER TABLE public.components_links_share_lists OWNER TO user_developer_portal;

--
-- Name: components_links_share_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_share_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_share_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_share_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_share_lists_id_seq OWNED BY public.components_links_share_lists.id;


--
-- Name: components_links_simple_buttons; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_simple_buttons (
    id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    "order" integer,
    link character varying(255),
    class character varying(255)
);


ALTER TABLE public.components_links_simple_buttons OWNER TO user_developer_portal;

--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_simple_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_simple_buttons_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_simple_buttons_id_seq OWNED BY public.components_links_simple_buttons.id;


--
-- Name: components_links_sub_links; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_links_sub_links (
    id integer NOT NULL,
    name character varying(255),
    descripcion character varying(255)
);


ALTER TABLE public.components_links_sub_links OWNER TO user_developer_portal;

--
-- Name: components_links_sub_links_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_links_sub_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_sub_links_id_seq OWNER TO user_developer_portal;

--
-- Name: components_links_sub_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_links_sub_links_id_seq OWNED BY public.components_links_sub_links.id;


--
-- Name: components_meta_metadata; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_meta_metadata (
    id integer NOT NULL,
    "metaTitle" character varying(255),
    "metaDescription" text
);


ALTER TABLE public.components_meta_metadata OWNER TO user_developer_portal;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_meta_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_meta_metadata_id_seq OWNER TO user_developer_portal;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_meta_metadata_id_seq OWNED BY public.components_meta_metadata.id;


--
-- Name: components_new_card_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_card_lists (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_new_card_lists OWNER TO user_developer_portal;

--
-- Name: components_new_card_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_card_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_card_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_card_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_card_lists_id_seq OWNED BY public.components_new_card_lists.id;


--
-- Name: components_new_cards_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_cards_lists (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_new_cards_lists OWNER TO user_developer_portal;

--
-- Name: components_new_cards_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_cards_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_cards_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_cards_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_cards_lists_id_seq OWNED BY public.components_new_cards_lists.id;


--
-- Name: components_new_shares; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_shares (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_new_shares OWNER TO user_developer_portal;

--
-- Name: components_new_shares_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_shares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_shares_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_shares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_shares_id_seq OWNED BY public.components_new_shares.id;


--
-- Name: components_new_sharings; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_sharings (
    id integer NOT NULL,
    "shareName" character varying(255)
);


ALTER TABLE public.components_new_sharings OWNER TO user_developer_portal;

--
-- Name: components_new_sharings_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_sharings_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_new_sharing_id integer NOT NULL
);


ALTER TABLE public.components_new_sharings_components OWNER TO user_developer_portal;

--
-- Name: components_new_sharings_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_sharings_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_sharings_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_sharings_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_sharings_components_id_seq OWNED BY public.components_new_sharings_components.id;


--
-- Name: components_new_sharings_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_sharings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_sharings_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_sharings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_sharings_id_seq OWNED BY public.components_new_sharings.id;


--
-- Name: components_new_tests; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_new_tests (
    id integer NOT NULL,
    test character varying(255)
);


ALTER TABLE public.components_new_tests OWNER TO user_developer_portal;

--
-- Name: components_new_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_new_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_new_tests_id_seq OWNER TO user_developer_portal;

--
-- Name: components_new_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_new_tests_id_seq OWNED BY public.components_new_tests.id;


--
-- Name: components_sections_banners; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_banners (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_banners OWNER TO user_developer_portal;

--
-- Name: components_sections_banners_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_banner_id integer NOT NULL
);


ALTER TABLE public.components_sections_banners_components OWNER TO user_developer_portal;

--
-- Name: components_sections_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_banners_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_banners_components_id_seq OWNED BY public.components_sections_banners_components.id;


--
-- Name: components_sections_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_banners_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_banners_id_seq OWNED BY public.components_sections_banners.id;


--
-- Name: components_sections_basic_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_basic_containers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255)
);


ALTER TABLE public.components_sections_basic_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_basic_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_basic_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_basic_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_basic_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_basic_containers_id_seq OWNED BY public.components_sections_basic_containers.id;


--
-- Name: components_sections_big_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_big_containers (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_big_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_big_containers_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_big_containers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_big_container_id integer NOT NULL
);


ALTER TABLE public.components_sections_big_containers_components OWNER TO user_developer_portal;

--
-- Name: components_sections_big_containers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_big_containers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_big_containers_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_big_containers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_big_containers_components_id_seq OWNED BY public.components_sections_big_containers_components.id;


--
-- Name: components_sections_big_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_big_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_big_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_big_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_big_containers_id_seq OWNED BY public.components_sections_big_containers.id;


--
-- Name: components_sections_big_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_big_heroes (
    id integer NOT NULL,
    "idContentType" character varying(255),
    description text
);


ALTER TABLE public.components_sections_big_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_big_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_big_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_big_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_big_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_big_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_big_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_big_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_big_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_big_heroes_components_id_seq OWNED BY public.components_sections_big_heroes_components.id;


--
-- Name: components_sections_big_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_big_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_big_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_big_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_big_heroes_id_seq OWNED BY public.components_sections_big_heroes.id;


--
-- Name: components_sections_breadcumb_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_breadcumb_sections (
    id integer NOT NULL,
    "DevelopersName" character varying(255),
    "shareName" character varying(255)
);


ALTER TABLE public.components_sections_breadcumb_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_breadcumb_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_breadcumb_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_breadcumb_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_breadcumb_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_breadcumb_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_breadcumb_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_breadcumb_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_breadcumb_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_breadcumb_sections_components_id_seq OWNED BY public.components_sections_breadcumb_sections_components.id;


--
-- Name: components_sections_breadcumb_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_breadcumb_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_breadcumb_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_breadcumb_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_breadcumb_sections_id_seq OWNED BY public.components_sections_breadcumb_sections.id;


--
-- Name: components_sections_button_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_button_heroes (
    id integer NOT NULL
);


ALTER TABLE public.components_sections_button_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_button_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_button_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_button_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_button_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_button_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_button_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_button_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_button_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_button_heroes_components_id_seq OWNED BY public.components_sections_button_heroes_components.id;


--
-- Name: components_sections_button_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_button_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_button_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_button_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_button_heroes_id_seq OWNED BY public.components_sections_button_heroes.id;


--
-- Name: components_sections_calculate_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_calculate_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_sections_calculate_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_calculate_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_calculate_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_calculate_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_calculate_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_calculate_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_calculate_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_calculate_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_calculate_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_calculate_sections_components_id_seq OWNED BY public.components_sections_calculate_sections_components.id;


--
-- Name: components_sections_calculate_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_calculate_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_calculate_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_calculate_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_calculate_sections_id_seq OWNED BY public.components_sections_calculate_sections.id;


--
-- Name: components_sections_call_actions; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_call_actions (
    id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.components_sections_call_actions OWNER TO user_developer_portal;

--
-- Name: components_sections_call_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_call_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_call_actions_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_call_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_call_actions_id_seq OWNED BY public.components_sections_call_actions.id;


--
-- Name: components_sections_classic_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_classic_containers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    description text
);


ALTER TABLE public.components_sections_classic_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_classic_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_classic_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_classic_containers_id_seq OWNED BY public.components_sections_classic_containers.id;


--
-- Name: components_sections_classic_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_classic_heroes (
    id integer NOT NULL,
    "idContentType" character varying(255),
    description text
);


ALTER TABLE public.components_sections_classic_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_classic_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_classic_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_classic_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_classic_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_classic_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_classic_heroes_components_id_seq OWNED BY public.components_sections_classic_heroes_components.id;


--
-- Name: components_sections_classic_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_classic_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_classic_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_classic_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_classic_heroes_id_seq OWNED BY public.components_sections_classic_heroes.id;


--
-- Name: components_sections_content_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_content_sections (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_sections_content_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_content_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_content_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_content_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_content_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_content_sections_id_seq OWNED BY public.components_sections_content_sections.id;


--
-- Name: components_sections_contents; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_contents (
    id integer NOT NULL
);


ALTER TABLE public.components_sections_contents OWNER TO user_developer_portal;

--
-- Name: components_sections_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_contents_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_contents_id_seq OWNED BY public.components_sections_contents.id;


--
-- Name: components_sections_cookies; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_cookies (
    id integer NOT NULL
);


ALTER TABLE public.components_sections_cookies OWNER TO user_developer_portal;

--
-- Name: components_sections_cookies_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_cookies_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_cooky_id integer NOT NULL
);


ALTER TABLE public.components_sections_cookies_components OWNER TO user_developer_portal;

--
-- Name: components_sections_cookies_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_cookies_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_cookies_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_cookies_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_cookies_components_id_seq OWNED BY public.components_sections_cookies_components.id;


--
-- Name: components_sections_cookies_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_cookies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_cookies_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_cookies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_cookies_id_seq OWNED BY public.components_sections_cookies.id;


--
-- Name: components_sections_copyrights; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_copyrights (
    id integer NOT NULL,
    "mainText" character varying(255)
);


ALTER TABLE public.components_sections_copyrights OWNER TO user_developer_portal;

--
-- Name: components_sections_copyrights_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_copyrights_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_copyright_id integer NOT NULL
);


ALTER TABLE public.components_sections_copyrights_components OWNER TO user_developer_portal;

--
-- Name: components_sections_copyrights_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_copyrights_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_copyrights_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_copyrights_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_copyrights_components_id_seq OWNED BY public.components_sections_copyrights_components.id;


--
-- Name: components_sections_copyrights_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_copyrights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_copyrights_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_copyrights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_copyrights_id_seq OWNED BY public.components_sections_copyrights.id;


--
-- Name: components_sections_entries_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_entries_lists (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_sections_entries_lists OWNER TO user_developer_portal;

--
-- Name: components_sections_entries_lists_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_entries_lists_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_entries_list_id integer NOT NULL
);


ALTER TABLE public.components_sections_entries_lists_components OWNER TO user_developer_portal;

--
-- Name: components_sections_entries_lists_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_entries_lists_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_entries_lists_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_entries_lists_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_entries_lists_components_id_seq OWNED BY public.components_sections_entries_lists_components.id;


--
-- Name: components_sections_entries_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_entries_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_entries_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_entries_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_entries_lists_id_seq OWNED BY public.components_sections_entries_lists.id;


--
-- Name: components_sections_feature_basic_groups; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_feature_basic_groups (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_feature_basic_groups OWNER TO user_developer_portal;

--
-- Name: components_sections_feature_basic_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_feature_basic_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_feature_basic_groups_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_feature_basic_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_feature_basic_groups_id_seq OWNED BY public.components_sections_feature_basic_groups.id;


--
-- Name: components_sections_for_all_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_for_all_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    content text
);


ALTER TABLE public.components_sections_for_all_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_for_all_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_for_all_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_for_all_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_for_all_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_for_all_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_for_all_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_for_all_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_for_all_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_for_all_sections_components_id_seq OWNED BY public.components_sections_for_all_sections_components.id;


--
-- Name: components_sections_for_all_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_for_all_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_for_all_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_for_all_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_for_all_sections_id_seq OWNED BY public.components_sections_for_all_sections.id;


--
-- Name: components_sections_fourth_footer_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_fourth_footer_sections (
    id integer NOT NULL,
    "IdContentType" character varying(255),
    text text
);


ALTER TABLE public.components_sections_fourth_footer_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_fourth_footer_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_fourth_footer_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_fourth_footer_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_fourth_footer_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_fourth_footer_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_fourth_footer_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_fourth_footer_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_fourth_footer_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_fourth_footer_sections_components_id_seq OWNED BY public.components_sections_fourth_footer_sections_components.id;


--
-- Name: components_sections_fourth_footer_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_fourth_footer_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_fourth_footer_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_fourth_footer_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_fourth_footer_sections_id_seq OWNED BY public.components_sections_fourth_footer_sections.id;


--
-- Name: components_sections_full_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_full_heroes (
    id integer NOT NULL,
    description text
);


ALTER TABLE public.components_sections_full_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_full_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_full_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_full_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_full_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_full_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_full_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_full_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_full_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_full_heroes_components_id_seq OWNED BY public.components_sections_full_heroes_components.id;


--
-- Name: components_sections_full_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_full_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_full_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_full_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_full_heroes_id_seq OWNED BY public.components_sections_full_heroes.id;


--
-- Name: components_sections_how_works; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_how_works (
    id integer NOT NULL,
    "idContentType" character varying(255),
    subtext character varying(255)
);


ALTER TABLE public.components_sections_how_works OWNER TO user_developer_portal;

--
-- Name: components_sections_how_works_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_how_works_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_how_work_id integer NOT NULL
);


ALTER TABLE public.components_sections_how_works_components OWNER TO user_developer_portal;

--
-- Name: components_sections_how_works_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_how_works_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_how_works_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_how_works_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_how_works_components_id_seq OWNED BY public.components_sections_how_works_components.id;


--
-- Name: components_sections_how_works_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_how_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_how_works_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_how_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_how_works_id_seq OWNED BY public.components_sections_how_works.id;


--
-- Name: components_sections_icon_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_icon_containers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255)
);


ALTER TABLE public.components_sections_icon_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_icon_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_icon_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_icon_containers_id_seq OWNED BY public.components_sections_icon_containers.id;


--
-- Name: components_sections_icon_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_icon_heroes (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_icon_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_icon_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_icon_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_icon_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_icon_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_icon_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_icon_heroes_components_id_seq OWNED BY public.components_sections_icon_heroes_components.id;


--
-- Name: components_sections_icon_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_icon_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_icon_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_icon_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_icon_heroes_id_seq OWNED BY public.components_sections_icon_heroes.id;


--
-- Name: components_sections_individual_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_individual_containers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255)
);


ALTER TABLE public.components_sections_individual_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_individual_containers_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_individual_containers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_individual_container_id integer NOT NULL
);


ALTER TABLE public.components_sections_individual_containers_components OWNER TO user_developer_portal;

--
-- Name: components_sections_individual_containers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_individual_containers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_individual_containers_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_individual_containers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_individual_containers_components_id_seq OWNED BY public.components_sections_individual_containers_components.id;


--
-- Name: components_sections_individual_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_individual_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_individual_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_individual_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_individual_containers_id_seq OWNED BY public.components_sections_individual_containers.id;


--
-- Name: components_sections_link_heroes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_link_heroes (
    id integer NOT NULL,
    "idContentType" character varying(255),
    subtitle character varying(255),
    "sideText" character varying(255),
    "imgSideText" character varying(255)
);


ALTER TABLE public.components_sections_link_heroes OWNER TO user_developer_portal;

--
-- Name: components_sections_link_heroes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_link_heroes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_link_hero_id integer NOT NULL
);


ALTER TABLE public.components_sections_link_heroes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_link_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_link_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_link_heroes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_link_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_link_heroes_components_id_seq OWNED BY public.components_sections_link_heroes_components.id;


--
-- Name: components_sections_link_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_link_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_link_heroes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_link_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_link_heroes_id_seq OWNED BY public.components_sections_link_heroes.id;


--
-- Name: components_sections_logotypes; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_logotypes (
    id integer NOT NULL,
    "altText" character varying(255)
);


ALTER TABLE public.components_sections_logotypes OWNER TO user_developer_portal;

--
-- Name: components_sections_logotypes_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_logotypes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_logotype_id integer NOT NULL
);


ALTER TABLE public.components_sections_logotypes_components OWNER TO user_developer_portal;

--
-- Name: components_sections_logotypes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_logotypes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_logotypes_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_logotypes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_logotypes_components_id_seq OWNED BY public.components_sections_logotypes_components.id;


--
-- Name: components_sections_logotypes_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_logotypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_logotypes_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_logotypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_logotypes_id_seq OWNED BY public.components_sections_logotypes.id;


--
-- Name: components_sections_main_containers; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_main_containers (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255)
);


ALTER TABLE public.components_sections_main_containers OWNER TO user_developer_portal;

--
-- Name: components_sections_main_containers_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_main_containers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_main_container_id integer NOT NULL
);


ALTER TABLE public.components_sections_main_containers_components OWNER TO user_developer_portal;

--
-- Name: components_sections_main_containers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_main_containers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_main_containers_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_main_containers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_main_containers_components_id_seq OWNED BY public.components_sections_main_containers_components.id;


--
-- Name: components_sections_main_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_main_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_main_containers_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_main_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_main_containers_id_seq OWNED BY public.components_sections_main_containers.id;


--
-- Name: components_sections_main_features; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_main_features (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_main_features OWNER TO user_developer_portal;

--
-- Name: components_sections_main_features_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_main_features_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_main_feature_id integer NOT NULL
);


ALTER TABLE public.components_sections_main_features_components OWNER TO user_developer_portal;

--
-- Name: components_sections_main_features_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_main_features_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_main_features_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_main_features_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_main_features_components_id_seq OWNED BY public.components_sections_main_features_components.id;


--
-- Name: components_sections_main_features_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_main_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_main_features_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_main_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_main_features_id_seq OWNED BY public.components_sections_main_features.id;


--
-- Name: components_sections_our_products_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_our_products_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_sections_our_products_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_our_products_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_our_products_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_our_products_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_our_products_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_our_products_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_our_products_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_our_products_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_our_products_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_our_products_sections_components_id_seq OWNED BY public.components_sections_our_products_sections_components.id;


--
-- Name: components_sections_our_products_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_our_products_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_our_products_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_our_products_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_our_products_sections_id_seq OWNED BY public.components_sections_our_products_sections.id;


--
-- Name: components_sections_questions_list_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_questions_list_sections (
    id integer NOT NULL
);


ALTER TABLE public.components_sections_questions_list_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_questions_list_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_questions_list_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_questions_list_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_questions_list_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_questions_list_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_questions_list_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_questions_list_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_questions_list_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_questions_list_sections_components_id_seq OWNED BY public.components_sections_questions_list_sections_components.id;


--
-- Name: components_sections_questions_list_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_questions_list_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_questions_list_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_questions_list_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_questions_list_sections_id_seq OWNED BY public.components_sections_questions_list_sections.id;


--
-- Name: components_sections_rich_texts; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_rich_texts (
    id integer NOT NULL,
    content text
);


ALTER TABLE public.components_sections_rich_texts OWNER TO user_developer_portal;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_rich_texts_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_rich_texts_id_seq OWNED BY public.components_sections_rich_texts.id;


--
-- Name: components_sections_searches; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_searches (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_searches OWNER TO user_developer_portal;

--
-- Name: components_sections_searches_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_searches_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_search_id integer NOT NULL
);


ALTER TABLE public.components_sections_searches_components OWNER TO user_developer_portal;

--
-- Name: components_sections_searches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_searches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_searches_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_searches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_searches_components_id_seq OWNED BY public.components_sections_searches_components.id;


--
-- Name: components_sections_searches_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_searches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_searches_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_searches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_searches_id_seq OWNED BY public.components_sections_searches.id;


--
-- Name: components_sections_section_use_cases; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_section_use_cases (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_sections_section_use_cases OWNER TO user_developer_portal;

--
-- Name: components_sections_section_use_cases_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_section_use_cases_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_section_use_case_id integer NOT NULL
);


ALTER TABLE public.components_sections_section_use_cases_components OWNER TO user_developer_portal;

--
-- Name: components_sections_section_use_cases_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_section_use_cases_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_section_use_cases_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_section_use_cases_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_section_use_cases_components_id_seq OWNED BY public.components_sections_section_use_cases_components.id;


--
-- Name: components_sections_section_use_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_section_use_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_section_use_cases_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_section_use_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_section_use_cases_id_seq OWNED BY public.components_sections_section_use_cases.id;


--
-- Name: components_sections_section_widget_forms; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_section_widget_forms (
    id integer NOT NULL,
    description text
);


ALTER TABLE public.components_sections_section_widget_forms OWNER TO user_developer_portal;

--
-- Name: components_sections_section_widget_forms_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_section_widget_forms_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_section_widget_form_id integer NOT NULL
);


ALTER TABLE public.components_sections_section_widget_forms_components OWNER TO user_developer_portal;

--
-- Name: components_sections_section_widget_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_section_widget_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_section_widget_forms_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_section_widget_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_section_widget_forms_components_id_seq OWNED BY public.components_sections_section_widget_forms_components.id;


--
-- Name: components_sections_section_widget_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_section_widget_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_section_widget_forms_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_section_widget_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_section_widget_forms_id_seq OWNED BY public.components_sections_section_widget_forms.id;


--
-- Name: components_sections_share_options; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_share_options (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_sections_share_options OWNER TO user_developer_portal;

--
-- Name: components_sections_share_options_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_share_options_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_share_option_id integer NOT NULL
);


ALTER TABLE public.components_sections_share_options_components OWNER TO user_developer_portal;

--
-- Name: components_sections_share_options_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_share_options_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_share_options_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_share_options_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_share_options_components_id_seq OWNED BY public.components_sections_share_options_components.id;


--
-- Name: components_sections_share_options_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_share_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_share_options_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_share_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_share_options_id_seq OWNED BY public.components_sections_share_options.id;


--
-- Name: components_sections_sidebars; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_sidebars (
    id integer NOT NULL,
    "idContentType" character varying(255)
);


ALTER TABLE public.components_sections_sidebars OWNER TO user_developer_portal;

--
-- Name: components_sections_sidebars_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_sidebars_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_sidebar_id integer NOT NULL
);


ALTER TABLE public.components_sections_sidebars_components OWNER TO user_developer_portal;

--
-- Name: components_sections_sidebars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_sidebars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_sidebars_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_sidebars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_sidebars_components_id_seq OWNED BY public.components_sections_sidebars_components.id;


--
-- Name: components_sections_sidebars_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_sidebars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_sidebars_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_sidebars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_sidebars_id_seq OWNED BY public.components_sections_sidebars.id;


--
-- Name: components_sections_social_networks; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_social_networks (
    id integer NOT NULL
);


ALTER TABLE public.components_sections_social_networks OWNER TO user_developer_portal;

--
-- Name: components_sections_social_networks_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_social_networks_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_social_network_id integer NOT NULL
);


ALTER TABLE public.components_sections_social_networks_components OWNER TO user_developer_portal;

--
-- Name: components_sections_social_networks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_social_networks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_social_networks_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_social_networks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_social_networks_components_id_seq OWNED BY public.components_sections_social_networks_components.id;


--
-- Name: components_sections_social_networks_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_social_networks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_social_networks_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_social_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_social_networks_id_seq OWNED BY public.components_sections_social_networks.id;


--
-- Name: components_sections_time_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_time_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_sections_time_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_time_sections_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_time_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_sections_time_section_id integer NOT NULL
);


ALTER TABLE public.components_sections_time_sections_components OWNER TO user_developer_portal;

--
-- Name: components_sections_time_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_time_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_time_sections_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_time_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_time_sections_components_id_seq OWNED BY public.components_sections_time_sections_components.id;


--
-- Name: components_sections_time_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_time_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_time_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_time_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_time_sections_id_seq OWNED BY public.components_sections_time_sections.id;


--
-- Name: components_sections_title_sections; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_sections_title_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_sections_title_sections OWNER TO user_developer_portal;

--
-- Name: components_sections_title_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_sections_title_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_title_sections_id_seq OWNER TO user_developer_portal;

--
-- Name: components_sections_title_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_sections_title_sections_id_seq OWNED BY public.components_sections_title_sections.id;


--
-- Name: components_slices_bottom_actions; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_bottom_actions (
    id integer NOT NULL,
    title character varying(255),
    keyword character varying(255)
);


ALTER TABLE public.components_slices_bottom_actions OWNER TO user_developer_portal;

--
-- Name: components_slices_bottom_actions_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_bottom_actions_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_bottom_action_id integer NOT NULL
);


ALTER TABLE public.components_slices_bottom_actions_components OWNER TO user_developer_portal;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_bottom_actions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_bottom_actions_components_id_seq OWNED BY public.components_slices_bottom_actions_components.id;


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_bottom_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_bottom_actions_id_seq OWNED BY public.components_slices_bottom_actions.id;


--
-- Name: components_slices_feature_columns; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_columns (
    id integer NOT NULL,
    title character varying(255),
    description text,
    keyword character varying(255)
);


ALTER TABLE public.components_slices_feature_columns OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_groups; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_columns_groups (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    description text,
    keyword character varying(255)
);


ALTER TABLE public.components_slices_feature_columns_groups OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_groups_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_columns_groups_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_feature_columns_group_id integer NOT NULL
);


ALTER TABLE public.components_slices_feature_columns_groups_components OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_components_id_seq OWNED BY public.components_slices_feature_columns_groups_components.id;


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_id_seq OWNED BY public.components_slices_feature_columns_groups.id;


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_columns_id_seq OWNED BY public.components_slices_feature_columns.id;


--
-- Name: components_slices_feature_rows; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_rows (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_slices_feature_rows OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_rows_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_feature_row_id integer NOT NULL
);


ALTER TABLE public.components_slices_feature_rows_components OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_rows_components_id_seq OWNED BY public.components_slices_feature_rows_components.id;


--
-- Name: components_slices_feature_rows_groups; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_rows_groups (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    keyword character varying(255),
    description text
);


ALTER TABLE public.components_slices_feature_rows_groups OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_groups_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_feature_rows_groups_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_feature_rows_group_id integer NOT NULL
);


ALTER TABLE public.components_slices_feature_rows_groups_components OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_components_id_seq OWNED BY public.components_slices_feature_rows_groups_components.id;


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_id_seq OWNED BY public.components_slices_feature_rows_groups.id;


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_feature_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_feature_rows_id_seq OWNED BY public.components_slices_feature_rows.id;


--
-- Name: components_slices_testimonials; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_testimonials (
    id integer NOT NULL,
    title character varying(255),
    description text,
    keyword character varying(255),
    "authorName" character varying(255),
    "authorTitle" character varying(255)
);


ALTER TABLE public.components_slices_testimonials OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_testimonials_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_testimonial_id integer NOT NULL
);


ALTER TABLE public.components_slices_testimonials_components OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_testimonials_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_testimonials_components_id_seq OWNED BY public.components_slices_testimonials_components.id;


--
-- Name: components_slices_testimonials_groups; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_testimonials_groups (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    keyword character varying(255),
    description text
);


ALTER TABLE public.components_slices_testimonials_groups OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_groups_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_slices_testimonials_groups_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_slices_testimonials_group_id integer NOT NULL
);


ALTER TABLE public.components_slices_testimonials_groups_components OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_testimonials_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_testimonials_groups_components_id_seq OWNED BY public.components_slices_testimonials_groups_components.id;


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_testimonials_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_testimonials_groups_id_seq OWNED BY public.components_slices_testimonials_groups.id;


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_slices_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_id_seq OWNER TO user_developer_portal;

--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_slices_testimonials_id_seq OWNED BY public.components_slices_testimonials.id;


--
-- Name: components_portal_carousels; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_carousels (
    id integer NOT NULL,
    slider character varying(255)
);


ALTER TABLE public.components_portal_carousels OWNER TO user_developer_portal;

--
-- Name: components_portal_carousels_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_carousels_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_portal_carousel_id integer NOT NULL
);


ALTER TABLE public.components_portal_carousels_components OWNER TO user_developer_portal;

--
-- Name: components_portal_carousels_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_carousels_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_carousels_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_carousels_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_carousels_components_id_seq OWNED BY public.components_portal_carousels_components.id;


--
-- Name: components_portal_carousels_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_carousels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_carousels_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_carousels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_carousels_id_seq OWNED BY public.components_portal_carousels.id;


--
-- Name: components_portal_chips; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_chips (
    id integer NOT NULL,
    color character varying(255),
    name character varying(255)
);


ALTER TABLE public.components_portal_chips OWNER TO user_developer_portal;

--
-- Name: components_portal_chips_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_chips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_chips_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_chips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_chips_id_seq OWNED BY public.components_portal_chips.id;


--
-- Name: components_portal_items; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_items (
    id integer NOT NULL,
    title character varying(255),
    description text,
    icon character varying(255)
);


ALTER TABLE public.components_portal_items OWNER TO user_developer_portal;

--
-- Name: components_portal_items_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_items_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_items_id_seq OWNED BY public.components_portal_items.id;


--
-- Name: components_portal_list_filters; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_list_filters (
    id integer NOT NULL,
    "Title" character varying(255)
);


ALTER TABLE public.components_portal_list_filters OWNER TO user_developer_portal;

--
-- Name: components_portal_list_filters_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_list_filters_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_portal_list_filter_id integer NOT NULL
);


ALTER TABLE public.components_portal_list_filters_components OWNER TO user_developer_portal;

--
-- Name: components_portal_list_filters_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_list_filters_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_list_filters_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_list_filters_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_list_filters_components_id_seq OWNED BY public.components_portal_list_filters_components.id;


--
-- Name: components_portal_list_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_list_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_list_filters_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_list_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_list_filters_id_seq OWNED BY public.components_portal_list_filters.id;


--
-- Name: components_portal_list_recents; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_list_recents (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_portal_list_recents OWNER TO user_developer_portal;

--
-- Name: components_portal_list_recents_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_list_recents_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_portal_list_recent_id integer NOT NULL
);


ALTER TABLE public.components_portal_list_recents_components OWNER TO user_developer_portal;

--
-- Name: components_portal_list_recents_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_list_recents_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_list_recents_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_list_recents_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_list_recents_components_id_seq OWNED BY public.components_portal_list_recents_components.id;


--
-- Name: components_portal_list_recents_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_list_recents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_list_recents_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_list_recents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_list_recents_id_seq OWNED BY public.components_portal_list_recents.id;


--
-- Name: components_portal_questions; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_questions (
    id integer NOT NULL,
    question character varying(255),
    description character varying(255),
    seccion character varying(255),
    description_two text
);


ALTER TABLE public.components_portal_questions OWNER TO user_developer_portal;

--
-- Name: components_portal_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_questions_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_questions_id_seq OWNED BY public.components_portal_questions.id;


--
-- Name: components_portal_section_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_section_cards (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_portal_section_cards OWNER TO user_developer_portal;

--
-- Name: components_portal_section_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_section_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_section_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_section_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_section_cards_id_seq OWNED BY public.components_portal_section_cards.id;


--
-- Name: components_portal_tab_cards; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_tab_cards (
    id integer NOT NULL,
    name character varying(255),
    tab character varying(255)
);


ALTER TABLE public.components_portal_tab_cards OWNER TO user_developer_portal;

--
-- Name: components_portal_tab_cards_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_portal_tab_cards_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_portal_tab_card_id integer NOT NULL
);


ALTER TABLE public.components_portal_tab_cards_components OWNER TO user_developer_portal;

--
-- Name: components_portal_tab_cards_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_tab_cards_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_tab_cards_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_tab_cards_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_tab_cards_components_id_seq OWNED BY public.components_portal_tab_cards_components.id;


--
-- Name: components_portal_tab_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_portal_tab_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_portal_tab_cards_id_seq OWNER TO user_developer_portal;

--
-- Name: components_portal_tab_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_portal_tab_cards_id_seq OWNED BY public.components_portal_tab_cards.id;


--
-- Name: components_texts_icon_texts; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_texts_icon_texts (
    id integer NOT NULL,
    name character varying(255),
    "altText" character varying(255)
);


ALTER TABLE public.components_texts_icon_texts OWNER TO user_developer_portal;

--
-- Name: components_texts_icon_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_texts_icon_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_texts_icon_texts_id_seq OWNER TO user_developer_portal;

--
-- Name: components_texts_icon_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_texts_icon_texts_id_seq OWNED BY public.components_texts_icon_texts.id;


--
-- Name: components_texts_link_texts; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_texts_link_texts (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_texts_link_texts OWNER TO user_developer_portal;

--
-- Name: components_texts_link_texts_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_texts_link_texts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_texts_link_text_id integer NOT NULL
);


ALTER TABLE public.components_texts_link_texts_components OWNER TO user_developer_portal;

--
-- Name: components_texts_link_texts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_texts_link_texts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_texts_link_texts_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_texts_link_texts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_texts_link_texts_components_id_seq OWNED BY public.components_texts_link_texts_components.id;


--
-- Name: components_texts_link_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_texts_link_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_texts_link_texts_id_seq OWNER TO user_developer_portal;

--
-- Name: components_texts_link_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_texts_link_texts_id_seq OWNED BY public.components_texts_link_texts.id;


--
-- Name: components_use_cases_badge_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_badge_lists (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.components_use_cases_badge_lists OWNER TO user_developer_portal;

--
-- Name: components_use_cases_badge_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_badge_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_badge_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_badge_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_badge_lists_id_seq OWNED BY public.components_use_cases_badge_lists.id;


--
-- Name: components_use_cases_banners; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_banners (
    id integer NOT NULL,
    "idContentType" character varying(255),
    title character varying(255),
    subtitle text
);


ALTER TABLE public.components_use_cases_banners OWNER TO user_developer_portal;

--
-- Name: components_use_cases_banners_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_use_cases_banner_id integer NOT NULL
);


ALTER TABLE public.components_use_cases_banners_components OWNER TO user_developer_portal;

--
-- Name: components_use_cases_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_banners_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_banners_components_id_seq OWNED BY public.components_use_cases_banners_components.id;


--
-- Name: components_use_cases_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_banners_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_banners_id_seq OWNED BY public.components_use_cases_banners.id;


--
-- Name: components_use_cases_button_lists; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_button_lists (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_use_cases_button_lists OWNER TO user_developer_portal;

--
-- Name: components_use_cases_button_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_button_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_button_lists_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_button_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_button_lists_id_seq OWNED BY public.components_use_cases_button_lists.id;


--
-- Name: components_use_cases_calculate_use_cases; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_calculate_use_cases (
    id integer NOT NULL,
    title character varying(255),
    "smallText" character varying(255)
);


ALTER TABLE public.components_use_cases_calculate_use_cases OWNER TO user_developer_portal;

--
-- Name: components_use_cases_calculate_use_cases_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_calculate_use_cases_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_use_cases_calculate_use_case_id integer NOT NULL
);


ALTER TABLE public.components_use_cases_calculate_use_cases_components OWNER TO user_developer_portal;

--
-- Name: components_use_cases_calculate_use_cases_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_calculate_use_cases_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_calculate_use_cases_components_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_calculate_use_cases_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_calculate_use_cases_components_id_seq OWNED BY public.components_use_cases_calculate_use_cases_components.id;


--
-- Name: components_use_cases_calculate_use_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_calculate_use_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_calculate_use_cases_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_calculate_use_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_calculate_use_cases_id_seq OWNED BY public.components_use_cases_calculate_use_cases.id;


--
-- Name: components_use_cases_labels; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_labels (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.components_use_cases_labels OWNER TO user_developer_portal;

--
-- Name: components_use_cases_labels_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_labels_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_labels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_labels_id_seq OWNED BY public.components_use_cases_labels.id;


--
-- Name: components_use_cases_metadata; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_metadata (
    id integer NOT NULL,
    "metaTitle" character varying(255),
    "metaDescription" text
);


ALTER TABLE public.components_use_cases_metadata OWNER TO user_developer_portal;

--
-- Name: components_use_cases_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_metadata_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_metadata_id_seq OWNED BY public.components_use_cases_metadata.id;


--
-- Name: components_use_cases_paragraphs; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_paragraphs (
    id integer NOT NULL,
    text text
);


ALTER TABLE public.components_use_cases_paragraphs OWNER TO user_developer_portal;

--
-- Name: components_use_cases_paragraphs_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_paragraphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_paragraphs_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_paragraphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_paragraphs_id_seq OWNED BY public.components_use_cases_paragraphs.id;


--
-- Name: components_use_cases_products; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_products (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    url character varying(255),
    verbs character varying(255),
    "iconText" character varying(255),
    num bigint
);


ALTER TABLE public.components_use_cases_products OWNER TO user_developer_portal;

--
-- Name: components_use_cases_products_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_products_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_products_id_seq OWNED BY public.components_use_cases_products.id;


--
-- Name: components_use_cases_use_cases; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.components_use_cases_use_cases (
    id integer NOT NULL
);


ALTER TABLE public.components_use_cases_use_cases OWNER TO user_developer_portal;

--
-- Name: components_use_cases_use_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.components_use_cases_use_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_use_cases_use_cases_id_seq OWNER TO user_developer_portal;

--
-- Name: components_use_cases_use_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.components_use_cases_use_cases_id_seq OWNED BY public.components_use_cases_use_cases.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO user_developer_portal;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO user_developer_portal;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO user_developer_portal;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO user_developer_portal;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: library_apis; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.library_apis (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    description text,
    color_status character varying(255),
    "footerText" character varying(255),
    version character varying(255),
    "openDoc" jsonb,
    markdown text,
    status character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.library_apis OWNER TO user_developer_portal;

--
-- Name: library_apis_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.library_apis_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    library_api_id integer NOT NULL
);


ALTER TABLE public.library_apis_components OWNER TO user_developer_portal;

--
-- Name: library_apis_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.library_apis_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_apis_components_id_seq OWNER TO user_developer_portal;

--
-- Name: library_apis_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.library_apis_components_id_seq OWNED BY public.library_apis_components.id;


--
-- Name: library_apis_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.library_apis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_apis_id_seq OWNER TO user_developer_portal;

--
-- Name: library_apis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.library_apis_id_seq OWNED BY public.library_apis.id;


--
-- Name: library_apis_products__products_library_apis; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.library_apis_products__products_library_apis (
    id integer NOT NULL,
    product_id integer,
    "library-api_id" integer
);


ALTER TABLE public.library_apis_products__products_library_apis OWNER TO user_developer_portal;

--
-- Name: library_apis_products__products_library_apis_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.library_apis_products__products_library_apis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_apis_products__products_library_apis_id_seq OWNER TO user_developer_portal;

--
-- Name: library_apis_products__products_library_apis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.library_apis_products__products_library_apis_id_seq OWNED BY public.library_apis_products__products_library_apis.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    slug character varying(255) NOT NULL,
    "shortName" character varying(255) NOT NULL,
    locale character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.pages OWNER TO user_developer_portal;

--
-- Name: pages__localizations; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.pages__localizations (
    id integer NOT NULL,
    page_id integer,
    related_page_id integer
);


ALTER TABLE public.pages__localizations OWNER TO user_developer_portal;

--
-- Name: pages__localizations_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.pages__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages__localizations_id_seq OWNER TO user_developer_portal;

--
-- Name: pages__localizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.pages__localizations_id_seq OWNED BY public.pages__localizations.id;


--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.pages_components OWNER TO user_developer_portal;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_components_id_seq OWNER TO user_developer_portal;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO user_developer_portal;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.products (
    id integer NOT NULL,
    price integer,
    title character varying(255),
    slug character varying(255),
    "btnLabel" character varying(255),
    benefits jsonb,
    content text,
    description text,
    status boolean,
    "requiredSubscription" boolean,
    "requiredApproval" boolean,
    "limitSubscription" integer,
    "legalConditionals" text,
    "accentColor" character varying(255),
    "formSetting" jsonb,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.products OWNER TO user_developer_portal;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO user_developer_portal;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO user_developer_portal;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO user_developer_portal;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO user_developer_portal;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO user_developer_portal;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO user_developer_portal;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO user_developer_portal;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO user_developer_portal;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO user_developer_portal;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO user_developer_portal;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO user_developer_portal;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO user_developer_portal;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO user_developer_portal;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO user_developer_portal;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO user_developer_portal;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO user_developer_portal;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO user_developer_portal;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO user_developer_portal;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO user_developer_portal;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: user_developer_portal
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO user_developer_portal;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: user_developer_portal
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO user_developer_portal;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_developer_portal
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: blog_items id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items ALTER COLUMN id SET DEFAULT nextval('public.blog_items_id_seq'::regclass);


--
-- Name: blog_items_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items_components ALTER COLUMN id SET DEFAULT nextval('public.blog_items_components_id_seq'::regclass);


--
-- Name: components_apis_filters id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_filters ALTER COLUMN id SET DEFAULT nextval('public.components_apis_filters_id_seq'::regclass);


--
-- Name: components_apis_filters_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_filters_components ALTER COLUMN id SET DEFAULT nextval('public.components_apis_filters_components_id_seq'::regclass);


--
-- Name: components_apis_paginations id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_paginations ALTER COLUMN id SET DEFAULT nextval('public.components_apis_paginations_id_seq'::regclass);


--
-- Name: components_cards_card_products id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_card_products ALTER COLUMN id SET DEFAULT nextval('public.components_cards_card_products_id_seq'::regclass);


--
-- Name: components_cards_card_products_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_card_products_components ALTER COLUMN id SET DEFAULT nextval('public.components_cards_card_products_components_id_seq'::regclass);


--
-- Name: components_cards_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_cards ALTER COLUMN id SET DEFAULT nextval('public.components_cards_cards_id_seq'::regclass);


--
-- Name: components_cards_product_link_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_product_link_cards ALTER COLUMN id SET DEFAULT nextval('public.components_cards_product_link_cards_id_seq'::regclass);


--
-- Name: components_cards_product_link_cards_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_product_link_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_cards_product_link_cards_components_id_seq'::regclass);


--
-- Name: components_cards_use_case_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_use_case_cards ALTER COLUMN id SET DEFAULT nextval('public.components_cards_use_case_cards_id_seq'::regclass);


--
-- Name: components_elements_badgets id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_badgets ALTER COLUMN id SET DEFAULT nextval('public.components_elements_badgets_id_seq'::regclass);


--
-- Name: components_elements_basic_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_basic_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_basic_cards_id_seq'::regclass);


--
-- Name: components_elements_basic_cards_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_basic_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_basic_cards_components_id_seq'::regclass);


--
-- Name: components_elements_big_features id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_big_features ALTER COLUMN id SET DEFAULT nextval('public.components_elements_big_features_id_seq'::regclass);


--
-- Name: components_elements_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_cards_id_seq'::regclass);


--
-- Name: components_elements_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_containers ALTER COLUMN id SET DEFAULT nextval('public.components_elements_containers_id_seq'::regclass);


--
-- Name: components_elements_containers_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_containers_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_containers_components_id_seq'::regclass);


--
-- Name: components_elements_custom_radios id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_custom_radios ALTER COLUMN id SET DEFAULT nextval('public.components_elements_custom_radios_id_seq'::regclass);


--
-- Name: components_elements_entries id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_entries ALTER COLUMN id SET DEFAULT nextval('public.components_elements_entries_id_seq'::regclass);


--
-- Name: components_elements_filter_versions id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_filter_versions ALTER COLUMN id SET DEFAULT nextval('public.components_elements_filter_versions_id_seq'::regclass);


--
-- Name: components_elements_filter_versions_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_filter_versions_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_filter_versions_components_id_seq'::regclass);


--
-- Name: components_elements_form_checkboxes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_checkboxes ALTER COLUMN id SET DEFAULT nextval('public.components_elements_form_checkboxes_id_seq'::regclass);


--
-- Name: components_elements_form_checkboxes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_checkboxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_form_checkboxes_components_id_seq'::regclass);


--
-- Name: components_elements_form_responses id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_responses ALTER COLUMN id SET DEFAULT nextval('public.components_elements_form_responses_id_seq'::regclass);


--
-- Name: components_elements_image_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_image_lists ALTER COLUMN id SET DEFAULT nextval('public.components_elements_image_lists_id_seq'::regclass);


--
-- Name: components_elements_link_texts id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_link_texts ALTER COLUMN id SET DEFAULT nextval('public.components_elements_link_texts_id_seq'::regclass);


--
-- Name: components_elements_link_texts_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_link_texts_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_link_texts_components_id_seq'::regclass);


--
-- Name: components_elements_logos id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logos ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logos_id_seq'::regclass);


--
-- Name: components_elements_logos_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logos_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logos_components_id_seq'::regclass);


--
-- Name: components_elements_logotypes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logotypes ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logotypes_id_seq'::regclass);


--
-- Name: components_elements_logotypes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logotypes_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logotypes_components_id_seq'::regclass);


--
-- Name: components_elements_main_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_main_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_elements_main_heroes_id_seq'::regclass);


--
-- Name: components_elements_navbar_section id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_navbar_section ALTER COLUMN id SET DEFAULT nextval('public.components_elements_navbar_section_id_seq'::regclass);


--
-- Name: components_elements_navbar_section_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_navbar_section_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_navbar_section_components_id_seq'::regclass);


--
-- Name: components_elements_notification_banners id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_notification_banners ALTER COLUMN id SET DEFAULT nextval('public.components_elements_notification_banners_id_seq'::regclass);


--
-- Name: components_elements_notification_banners_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_notification_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_notification_banners_components_id_seq'::regclass);


--
-- Name: components_elements_placeholders id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_placeholders ALTER COLUMN id SET DEFAULT nextval('public.components_elements_placeholders_id_seq'::regclass);


--
-- Name: components_elements_redirect_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_redirect_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_redirect_links_id_seq'::regclass);


--
-- Name: components_elements_redirect_links_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_redirect_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_redirect_links_components_id_seq'::regclass);


--
-- Name: components_elements_search_inputs id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_inputs ALTER COLUMN id SET DEFAULT nextval('public.components_elements_search_inputs_id_seq'::regclass);


--
-- Name: components_elements_search_inputs_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_inputs_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_search_inputs_components_id_seq'::regclass);


--
-- Name: components_elements_search_outputs id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_outputs ALTER COLUMN id SET DEFAULT nextval('public.components_elements_search_outputs_id_seq'::regclass);


--
-- Name: components_elements_selects id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_selects ALTER COLUMN id SET DEFAULT nextval('public.components_elements_selects_id_seq'::regclass);


--
-- Name: components_elements_selects_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_selects_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_selects_components_id_seq'::regclass);


--
-- Name: components_elements_sliders id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_elements_sliders_id_seq'::regclass);


--
-- Name: components_elements_sliders_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_sliders_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_sliders_components_id_seq'::regclass);


--
-- Name: components_elements_social_networks id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_social_networks ALTER COLUMN id SET DEFAULT nextval('public.components_elements_social_networks_id_seq'::regclass);


--
-- Name: components_elements_status_enumerables id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_status_enumerables ALTER COLUMN id SET DEFAULT nextval('public.components_elements_status_enumerables_id_seq'::regclass);


--
-- Name: components_elements_subtitles id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_subtitles ALTER COLUMN id SET DEFAULT nextval('public.components_elements_subtitles_id_seq'::regclass);


--
-- Name: components_elements_titles id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_titles ALTER COLUMN id SET DEFAULT nextval('public.components_elements_titles_id_seq'::regclass);


--
-- Name: components_formulario_button_forms id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_button_forms ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_button_forms_id_seq'::regclass);


--
-- Name: components_formulario_button_forms_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_button_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_button_forms_components_id_seq'::regclass);


--
-- Name: components_formulario_checkboxes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_checkboxes ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_checkboxes_id_seq'::regclass);


--
-- Name: components_formulario_filter_estatuses id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_filter_estatuses ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_filter_estatuses_id_seq'::regclass);


--
-- Name: components_formulario_filter_estatuses_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_filter_estatuses_components ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_filter_estatuses_components_id_seq'::regclass);


--
-- Name: components_formulario_forms id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_forms ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_forms_id_seq'::regclass);


--
-- Name: components_formulario_forms_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_forms_components_id_seq'::regclass);


--
-- Name: components_formulario_inputs id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_inputs ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_inputs_id_seq'::regclass);


--
-- Name: components_formulario_options id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_options ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_options_id_seq'::regclass);


--
-- Name: components_formulario_select_options id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_select_options ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_select_options_id_seq'::regclass);


--
-- Name: components_formulario_select_options_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_select_options_components ALTER COLUMN id SET DEFAULT nextval('public.components_formulario_select_options_components_id_seq'::regclass);


--
-- Name: components_home_banner_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_banner_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_banner_sections_id_seq'::regclass);


--
-- Name: components_home_banner_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_banner_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_banner_sections_components_id_seq'::regclass);


--
-- Name: components_home_benefits_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_benefits_lists ALTER COLUMN id SET DEFAULT nextval('public.components_home_benefits_lists_id_seq'::regclass);


--
-- Name: components_home_discover_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_discover_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_discover_sections_id_seq'::regclass);


--
-- Name: components_home_discover_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_discover_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_discover_sections_components_id_seq'::regclass);


--
-- Name: components_home_key_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_key_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_key_sections_id_seq'::regclass);


--
-- Name: components_home_key_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_key_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_key_sections_components_id_seq'::regclass);


--
-- Name: components_home_status_apis id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_status_apis ALTER COLUMN id SET DEFAULT nextval('public.components_home_status_apis_id_seq'::regclass);


--
-- Name: components_home_steps id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_steps ALTER COLUMN id SET DEFAULT nextval('public.components_home_steps_id_seq'::regclass);


--
-- Name: components_home_widget_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_widget_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_widget_sections_id_seq'::regclass);


--
-- Name: components_home_widget_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_widget_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_widget_sections_components_id_seq'::regclass);


--
-- Name: components_home_work_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_work_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_work_sections_id_seq'::regclass);


--
-- Name: components_home_work_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_work_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_work_sections_components_id_seq'::regclass);


--
-- Name: components_layout_footers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_id_seq'::regclass);


--
-- Name: components_layout_footers_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_components_id_seq'::regclass);


--
-- Name: components_layout_navbars id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_id_seq'::regclass);


--
-- Name: components_layout_navbars_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_components_id_seq'::regclass);


--
-- Name: components_links_basic_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_basic_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_basic_links_id_seq'::regclass);


--
-- Name: components_links_big_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_big_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_big_links_id_seq'::regclass);


--
-- Name: components_links_big_links_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_big_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_big_links_components_id_seq'::regclass);


--
-- Name: components_links_buttons id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_links_buttons_id_seq'::regclass);


--
-- Name: components_links_buttons_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_buttons_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_buttons_components_id_seq'::regclass);


--
-- Name: components_links_drop_big_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_big_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_drop_big_links_id_seq'::regclass);


--
-- Name: components_links_drop_big_links_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_big_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_drop_big_links_components_id_seq'::regclass);


--
-- Name: components_links_drop_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_drop_links_id_seq'::regclass);


--
-- Name: components_links_drop_links_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_drop_links_components_id_seq'::regclass);


--
-- Name: components_links_footer_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_footer_sections ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_id_seq'::regclass);


--
-- Name: components_links_footer_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_footer_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_components_id_seq'::regclass);


--
-- Name: components_links_icon_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_icon_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_icon_links_id_seq'::regclass);


--
-- Name: components_links_icon_links_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_icon_links_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_icon_links_components_id_seq'::regclass);


--
-- Name: components_links_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_links_id_seq'::regclass);


--
-- Name: components_links_share_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_share_lists ALTER COLUMN id SET DEFAULT nextval('public.components_links_share_lists_id_seq'::regclass);


--
-- Name: components_links_simple_buttons id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_simple_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_links_simple_buttons_id_seq'::regclass);


--
-- Name: components_links_sub_links id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_sub_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_sub_links_id_seq'::regclass);


--
-- Name: components_meta_metadata id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_meta_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_meta_metadata_id_seq'::regclass);


--
-- Name: components_new_card_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_card_lists ALTER COLUMN id SET DEFAULT nextval('public.components_new_card_lists_id_seq'::regclass);


--
-- Name: components_new_cards_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_cards_lists ALTER COLUMN id SET DEFAULT nextval('public.components_new_cards_lists_id_seq'::regclass);


--
-- Name: components_new_shares id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_shares ALTER COLUMN id SET DEFAULT nextval('public.components_new_shares_id_seq'::regclass);


--
-- Name: components_new_sharings id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_sharings ALTER COLUMN id SET DEFAULT nextval('public.components_new_sharings_id_seq'::regclass);


--
-- Name: components_new_sharings_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_sharings_components ALTER COLUMN id SET DEFAULT nextval('public.components_new_sharings_components_id_seq'::regclass);


--
-- Name: components_new_tests id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_tests ALTER COLUMN id SET DEFAULT nextval('public.components_new_tests_id_seq'::regclass);


--
-- Name: components_sections_banners id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners ALTER COLUMN id SET DEFAULT nextval('public.components_sections_banners_id_seq'::regclass);


--
-- Name: components_sections_banners_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_banners_components_id_seq'::regclass);


--
-- Name: components_sections_basic_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_basic_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_basic_containers_id_seq'::regclass);


--
-- Name: components_sections_big_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_big_containers_id_seq'::regclass);


--
-- Name: components_sections_big_containers_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_big_containers_components_id_seq'::regclass);


--
-- Name: components_sections_big_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_big_heroes_id_seq'::regclass);


--
-- Name: components_sections_big_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_big_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_breadcumb_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_breadcumb_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_breadcumb_sections_id_seq'::regclass);


--
-- Name: components_sections_breadcumb_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_breadcumb_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_breadcumb_sections_components_id_seq'::regclass);


--
-- Name: components_sections_button_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_button_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_button_heroes_id_seq'::regclass);


--
-- Name: components_sections_button_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_button_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_button_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_calculate_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_calculate_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_calculate_sections_id_seq'::regclass);


--
-- Name: components_sections_calculate_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_calculate_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_calculate_sections_components_id_seq'::regclass);


--
-- Name: components_sections_call_actions id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_call_actions ALTER COLUMN id SET DEFAULT nextval('public.components_sections_call_actions_id_seq'::regclass);


--
-- Name: components_sections_classic_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_classic_containers_id_seq'::regclass);


--
-- Name: components_sections_classic_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_classic_heroes_id_seq'::regclass);


--
-- Name: components_sections_classic_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_classic_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_content_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_content_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_content_sections_id_seq'::regclass);


--
-- Name: components_sections_contents id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_contents ALTER COLUMN id SET DEFAULT nextval('public.components_sections_contents_id_seq'::regclass);


--
-- Name: components_sections_cookies id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_cookies ALTER COLUMN id SET DEFAULT nextval('public.components_sections_cookies_id_seq'::regclass);


--
-- Name: components_sections_cookies_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_cookies_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_cookies_components_id_seq'::regclass);


--
-- Name: components_sections_copyrights id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_copyrights ALTER COLUMN id SET DEFAULT nextval('public.components_sections_copyrights_id_seq'::regclass);


--
-- Name: components_sections_copyrights_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_copyrights_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_copyrights_components_id_seq'::regclass);


--
-- Name: components_sections_entries_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists ALTER COLUMN id SET DEFAULT nextval('public.components_sections_entries_lists_id_seq'::regclass);


--
-- Name: components_sections_entries_lists_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_entries_lists_components_id_seq'::regclass);


--
-- Name: components_sections_feature_basic_groups id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_feature_basic_groups ALTER COLUMN id SET DEFAULT nextval('public.components_sections_feature_basic_groups_id_seq'::regclass);


--
-- Name: components_sections_for_all_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_for_all_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_for_all_sections_id_seq'::regclass);


--
-- Name: components_sections_for_all_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_for_all_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_for_all_sections_components_id_seq'::regclass);


--
-- Name: components_sections_fourth_footer_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_fourth_footer_sections_id_seq'::regclass);


--
-- Name: components_sections_fourth_footer_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_fourth_footer_sections_components_id_seq'::regclass);


--
-- Name: components_sections_full_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_full_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_full_heroes_id_seq'::regclass);


--
-- Name: components_sections_full_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_full_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_full_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_how_works id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works ALTER COLUMN id SET DEFAULT nextval('public.components_sections_how_works_id_seq'::regclass);


--
-- Name: components_sections_how_works_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_how_works_components_id_seq'::regclass);


--
-- Name: components_sections_icon_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_icon_containers_id_seq'::regclass);


--
-- Name: components_sections_icon_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_icon_heroes_id_seq'::regclass);


--
-- Name: components_sections_icon_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_icon_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_individual_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_individual_containers_id_seq'::regclass);


--
-- Name: components_sections_individual_containers_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_individual_containers_components_id_seq'::regclass);


--
-- Name: components_sections_link_heroes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_link_heroes_id_seq'::regclass);


--
-- Name: components_sections_link_heroes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_link_heroes_components_id_seq'::regclass);


--
-- Name: components_sections_logotypes id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_logotypes ALTER COLUMN id SET DEFAULT nextval('public.components_sections_logotypes_id_seq'::regclass);


--
-- Name: components_sections_logotypes_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_logotypes_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_logotypes_components_id_seq'::regclass);


--
-- Name: components_sections_main_containers id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers ALTER COLUMN id SET DEFAULT nextval('public.components_sections_main_containers_id_seq'::regclass);


--
-- Name: components_sections_main_containers_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_main_containers_components_id_seq'::regclass);


--
-- Name: components_sections_main_features id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features ALTER COLUMN id SET DEFAULT nextval('public.components_sections_main_features_id_seq'::regclass);


--
-- Name: components_sections_main_features_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_main_features_components_id_seq'::regclass);


--
-- Name: components_sections_our_products_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_our_products_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_our_products_sections_id_seq'::regclass);


--
-- Name: components_sections_our_products_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_our_products_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_our_products_sections_components_id_seq'::regclass);


--
-- Name: components_sections_questions_list_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_questions_list_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_questions_list_sections_id_seq'::regclass);


--
-- Name: components_sections_questions_list_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_questions_list_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_questions_list_sections_components_id_seq'::regclass);


--
-- Name: components_sections_rich_texts id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_sections_rich_texts_id_seq'::regclass);


--
-- Name: components_sections_searches id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches ALTER COLUMN id SET DEFAULT nextval('public.components_sections_searches_id_seq'::regclass);


--
-- Name: components_sections_searches_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_searches_components_id_seq'::regclass);


--
-- Name: components_sections_section_use_cases id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_use_cases ALTER COLUMN id SET DEFAULT nextval('public.components_sections_section_use_cases_id_seq'::regclass);


--
-- Name: components_sections_section_use_cases_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_use_cases_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_section_use_cases_components_id_seq'::regclass);


--
-- Name: components_sections_section_widget_forms id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_widget_forms ALTER COLUMN id SET DEFAULT nextval('public.components_sections_section_widget_forms_id_seq'::regclass);


--
-- Name: components_sections_section_widget_forms_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_widget_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_section_widget_forms_components_id_seq'::regclass);


--
-- Name: components_sections_share_options id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_share_options ALTER COLUMN id SET DEFAULT nextval('public.components_sections_share_options_id_seq'::regclass);


--
-- Name: components_sections_share_options_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_share_options_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_share_options_components_id_seq'::regclass);


--
-- Name: components_sections_sidebars id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars ALTER COLUMN id SET DEFAULT nextval('public.components_sections_sidebars_id_seq'::regclass);


--
-- Name: components_sections_sidebars_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_sidebars_components_id_seq'::regclass);


--
-- Name: components_sections_social_networks id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_social_networks ALTER COLUMN id SET DEFAULT nextval('public.components_sections_social_networks_id_seq'::regclass);


--
-- Name: components_sections_social_networks_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_social_networks_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_social_networks_components_id_seq'::regclass);


--
-- Name: components_sections_time_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_time_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_time_sections_id_seq'::regclass);


--
-- Name: components_sections_time_sections_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_time_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_time_sections_components_id_seq'::regclass);


--
-- Name: components_sections_title_sections id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_title_sections ALTER COLUMN id SET DEFAULT nextval('public.components_sections_title_sections_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_bottom_actions ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_components_id_seq'::regclass);


--
-- Name: components_slices_feature_columns id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_components_id_seq'::regclass);


--
-- Name: components_slices_testimonials id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_id_seq'::regclass);


--
-- Name: components_slices_testimonials_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_components_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_components_id_seq'::regclass);


--
-- Name: components_portal_carousels id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_carousels ALTER COLUMN id SET DEFAULT nextval('public.components_portal_carousels_id_seq'::regclass);


--
-- Name: components_portal_carousels_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_carousels_components ALTER COLUMN id SET DEFAULT nextval('public.components_portal_carousels_components_id_seq'::regclass);


--
-- Name: components_portal_chips id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_chips ALTER COLUMN id SET DEFAULT nextval('public.components_portal_chips_id_seq'::regclass);


--
-- Name: components_portal_items id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_items ALTER COLUMN id SET DEFAULT nextval('public.components_portal_items_id_seq'::regclass);


--
-- Name: components_portal_list_filters id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_filters ALTER COLUMN id SET DEFAULT nextval('public.components_portal_list_filters_id_seq'::regclass);


--
-- Name: components_portal_list_filters_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_filters_components ALTER COLUMN id SET DEFAULT nextval('public.components_portal_list_filters_components_id_seq'::regclass);


--
-- Name: components_portal_list_recents id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_recents ALTER COLUMN id SET DEFAULT nextval('public.components_portal_list_recents_id_seq'::regclass);


--
-- Name: components_portal_list_recents_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_recents_components ALTER COLUMN id SET DEFAULT nextval('public.components_portal_list_recents_components_id_seq'::regclass);


--
-- Name: components_portal_questions id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_questions ALTER COLUMN id SET DEFAULT nextval('public.components_portal_questions_id_seq'::regclass);


--
-- Name: components_portal_section_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_section_cards ALTER COLUMN id SET DEFAULT nextval('public.components_portal_section_cards_id_seq'::regclass);


--
-- Name: components_portal_tab_cards id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_tab_cards ALTER COLUMN id SET DEFAULT nextval('public.components_portal_tab_cards_id_seq'::regclass);


--
-- Name: components_portal_tab_cards_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_tab_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_portal_tab_cards_components_id_seq'::regclass);


--
-- Name: components_texts_icon_texts id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_icon_texts ALTER COLUMN id SET DEFAULT nextval('public.components_texts_icon_texts_id_seq'::regclass);


--
-- Name: components_texts_link_texts id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_link_texts ALTER COLUMN id SET DEFAULT nextval('public.components_texts_link_texts_id_seq'::regclass);


--
-- Name: components_texts_link_texts_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_link_texts_components ALTER COLUMN id SET DEFAULT nextval('public.components_texts_link_texts_components_id_seq'::regclass);


--
-- Name: components_use_cases_badge_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_badge_lists ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_badge_lists_id_seq'::regclass);


--
-- Name: components_use_cases_banners id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_banners_id_seq'::regclass);


--
-- Name: components_use_cases_banners_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_banners_components_id_seq'::regclass);


--
-- Name: components_use_cases_button_lists id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_button_lists ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_button_lists_id_seq'::regclass);


--
-- Name: components_use_cases_calculate_use_cases id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_calculate_use_cases ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_calculate_use_cases_id_seq'::regclass);


--
-- Name: components_use_cases_calculate_use_cases_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_calculate_use_cases_components ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_calculate_use_cases_components_id_seq'::regclass);


--
-- Name: components_use_cases_labels id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_labels ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_labels_id_seq'::regclass);


--
-- Name: components_use_cases_metadata id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_metadata_id_seq'::regclass);


--
-- Name: components_use_cases_paragraphs id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_paragraphs ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_paragraphs_id_seq'::regclass);


--
-- Name: components_use_cases_products id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_products ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_products_id_seq'::regclass);


--
-- Name: components_use_cases_use_cases id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_use_cases ALTER COLUMN id SET DEFAULT nextval('public.components_use_cases_use_cases_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: library_apis id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis ALTER COLUMN id SET DEFAULT nextval('public.library_apis_id_seq'::regclass);


--
-- Name: library_apis_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis_components ALTER COLUMN id SET DEFAULT nextval('public.library_apis_components_id_seq'::regclass);


--
-- Name: library_apis_products__products_library_apis id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis_products__products_library_apis ALTER COLUMN id SET DEFAULT nextval('public.library_apis_products__products_library_apis_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages__localizations id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages__localizations ALTER COLUMN id SET DEFAULT nextval('public.pages__localizations_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: blog_items; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.blog_items (id, title, slug, "timeRead", "nameUser", "jobUser", date, description, content, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
2	Seguridad de las API	seguridad-apis	Lectura 5 min.	CloudAPPi	Administrador	2023-01-02	La seguridad de las API implica proteger la integridad de las que posee y de las que utiliza. ¿Pero y eso qué quiere decir?	# Foobar\n\nFoobar is a Python library for dealing with word pluralization.\n\n## Installation\n\nUse the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.\n\n```bash\npip install foobar\n```\n\n## Usage\n\n```python\nimport foobar\n\n# returns 'words'\nfoobar.pluralize('word')\n\n# returns 'geese'\nfoobar.pluralize('goose')\n\n# returns 'phenomenon'\nfoobar.singularize('phenomena')\n```\n\n## Contributing\nPull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.\n\nPlease make sure to update tests as appropriate.\n\n## License\n[MIT](https://choosealicense.com/licenses/mit/)	2023-05-25 04:04:42.323+00	1	1	2023-05-25 04:04:28.508+00	2023-05-25 21:24:42.158+00
1	¿Qué son las pruebas de API?	pruebas-api	Lectura 5 min.	CloudAPPi	Administrador	2023-01-02	Las API son excelentes porque representan bloques de construcción que los desarrolladores pueden usar para ensamblar fácilmente todo tipo de interacciones sin tener que reescribir una interfaz cada vez que necesitan máquinas para comunicarse.	En el desarrollo de servicios, una interfaz de programa de aplicación (API) es una forma en que varias aplicaciones se comunican entre sí utilizando un lenguaje común, a menudo definido por un contrato. Ejemplos de estos serían un documento Swagger para servicios RESTful o un WSDL para servicios SOAP. Incluso las bases de datos tienen un lenguaje de interfaz, es decir, SQL.\n\nAl igual que la interfaz de usuario permite que un ser humano interactúe con una aplicación, las API permiten que las máquinas se comuniquen entre sí de manera eficiente.\n\nLas API son excelentes porque representan bloques de construcción que los desarrolladores pueden usar para ensamblar fácilmente todo tipo de interacciones sin tener que reescribir una interfaz cada vez que necesitan máquinas para comunicarse. Además, dado que las API tienen contratos, las aplicaciones que desean comunicarse entre sí se pueden construir de formas completamente diferentes, siempre que se comuniquen de acuerdo con el contrato de API. Esto permite que diferentes desarrolladores de diferentes organizaciones en diferentes partes del mundo creen aplicaciones altamente distribuidas mientras reutilizan las mismas API.\n\nCuando un usuario interactúa con el frontend de una aplicación (es decir, una aplicación móvil), ese frontend realiza llamadas API a los sistemas back-end, lo que simplifica el proceso de desarrollo de dos maneras principales:\n- El desarrollador no tiene que preocuparse por crear una aplicación personalizada para cada dispositivo móvil o navegador.\n- Se pueden actualizar o modificar diferentes sistemas backend sin tener que volver a implementar la aplicación completa cada vez.\n\nComo resultado, los desarrolladores pueden ahorrar tiempo centrándose en el servicio individual para realizar una tarea discreta, en lugar de dedicar tiempo a escribir la lógica en su aplicación.	2023-05-25 03:18:02.575+00	1	1	2023-05-25 02:48:42.239+00	2023-05-25 21:24:51.369+00
3	8 consideraciones a tener en cuenta para implantar una buena estrategia de APIs 360	ocho-consideraciones-para-implantar-estrategia-de-apis	Lectura 20 min.	CloudAPPi	Administrador	2023-01-02	Pasos para implantar un API360 que se debe tener en cuenta, desde la automatización de procesos, estandarización, api governance, ciclo de vida, api monitoring, api testing, api design y api security	# Pan dolens facietque obstipui altoque\n\n## Vulnere in quibus sidera tamen\n\nLorem markdownum, auditi tale prendere herbis manus spatiumque, secuta ab\nCaesarea te dare servandam harenis Amorum caligine primum. Lanigeris pectore\nsilvas; solebas sub meruit amantibus postquam aris aeris spatio.\n\nPostquam dant, callidus gravior: et Canens epulis gremioque natorum quoque\nsubiit; e, sucos dixit. Horriferamque quod memoratis, prolem tempore absumere et\nregem referat recepit, et mutata Achaidas. Et pectora fuit praestate sceleri.\n\n## Esset versantes nullus sit sub toto tenent\n\nSi inter crescentemque seque, fuit colles Liber pro coma pinum sim usquam\nlapides consedit, simul tu summaque. Promptas iacet. Colentes Tamasenum hanc.\nCinguntur sacris et **ignoscere** favete, nuper?\n\n    if (card_scroll_digital + market_format_variable) {\n        progressive *= character + vrml(device, 2, view);\n        vectorHostVector = macintosh;\n        sink += smartphone - -2;\n    } else {\n        batch_c.isoDrag.disk_link(lpiMysql, 2);\n        scroll_mode.matrix_column_key(-3, importRightDisk + botnetRegular, tag);\n    }\n    if (type(nvram(marketing, 2, buffer_delete_dslam)) > kvm(scrolling(\n            piracy_tiff_transfer, scanner, ad_dialog_thread), commercial_gate, 4\n            - permalinkHibernate)) {\n        host += lock;\n        opengl += ip + runtime_adf - padFormula;\n        hardwareBsod += fileBacklinkStick;\n    }\n    analyst_pop_cpa.soft_computer -= 2;\n    cacheSwappable.soft_map_user = 71597;\n    if (font_boot_debugger > 41) {\n        homeOpticalTween(drive, mp);\n    } else {\n        upTypeface.bandwidthPortPage(2, bash, piracy);\n    }\n\n## Nec dare non levis condicione haec experiensque\n\nMinus freta alte saepe; quod fine ora, et vertice pectore, dedit gravi: tuum\nindoctum. In somnus unda Cenchreis Attis Sol quis tali gaudere adhuc refugit!\nPes at cur deos coetu, [fraterque committitur](http://www.mens.net/), fugant\ntumida, illa alis Almo; iam copia tulerunt. Hoc frustra oraque, rabies libet,\nrus partes festum cupidine, pictae, Dianae o rogus **habet**, fragor. Et hic ait\ntantummodo duris hebes ignare bene, revertentes conscendit\n[scis](http://meliorecunctis.net/): colus vela vanis Oenides obstantis nominis.\n\n## Vir licet a rostrum cervice populo habitabilis\n\nCommota placido rastrique reddit denique fera lacubus Cimoli praelate infernas\ncrines: sepulcro funereum exstinctus tela exercere Astraea. Aliis lingua\ningens genus iamdudum, contingere avem gemit: nulli suis; [via stravit\nprecatur](http://iacuit.io/nisi.html) cursum? Inmemor liquentibus magis infantem\npetit ad dicitur ferro; inmitibus Iphin tridentigero. Clementia namque\nprocubuit pectus contractosque nomine diuturnior Pagasaea postquam.\n\n## Dominae ut hosti perdiderint Rhesi motibus relicta\n\nNocuit mundus potentia, et est advocat matres, illic amans deserta quam non.\nMortisque Haemonii traxere postes nymphaeque frustra tepido armis pectore spina.\nCruciatibus altera [radiantia](http://www.sit.org/) stabat; vibrabant fer parte.\n\nSoporis nominis flumine robur, ad Perseus, conspecta captat [sororum\nat](http://www.ver.com/inmodo) funereum! Spernit velat quod, nec clausit oculis,\n**dixit** tibi nec verbis resupino ferox ille Cinyreia vel moras gelidos. Una\ncerte sanguine: [multae](http://ite.net/relatis) modis medium luridus cunctos:\nquid.	2023-05-25 21:32:33.94+00	1	1	2023-05-25 21:23:22.487+00	2023-05-25 21:32:34.003+00
4	Modelos de billing en las APIs	modelos-de-billing-en-las-apis	Lectura 15 min.	CloudAPPi	Administrador	2023-01-02	Si eres un desarrollador de software o una empresa que ofrece servicios a través de una API, probablemente ya sepas que una de las decisiones más importantes que debes tomar es cómo monetizar tu API. La elección del modelo de facturación o billing correcto puede ser la clave para el éxito de tu negocio, ya […]	# Pan dolens facietque obstipui altoque\n\n## Vulnere in quibus sidera tamen\n\nLorem markdownum, auditi tale prendere herbis manus spatiumque, secuta ab\nCaesarea te dare servandam harenis Amorum caligine primum. Lanigeris pectore\nsilvas; solebas sub meruit amantibus postquam aris aeris spatio.\n\nPostquam dant, callidus gravior: et Canens epulis gremioque natorum quoque\nsubiit; e, sucos dixit. Horriferamque quod memoratis, prolem tempore absumere et\nregem referat recepit, et mutata Achaidas. Et pectora fuit praestate sceleri.\n\n## Esset versantes nullus sit sub toto tenent\n\nSi inter crescentemque seque, fuit colles Liber pro coma pinum sim usquam\nlapides consedit, simul tu summaque. Promptas iacet. Colentes Tamasenum hanc.\nCinguntur sacris et **ignoscere** favete, nuper?\n\n    if (card_scroll_digital + market_format_variable) {\n        progressive *= character + vrml(device, 2, view);\n        vectorHostVector = macintosh;\n        sink += smartphone - -2;\n    } else {\n        batch_c.isoDrag.disk_link(lpiMysql, 2);\n        scroll_mode.matrix_column_key(-3, importRightDisk + botnetRegular, tag);\n    }\n    if (type(nvram(marketing, 2, buffer_delete_dslam)) > kvm(scrolling(\n            piracy_tiff_transfer, scanner, ad_dialog_thread), commercial_gate, 4\n            - permalinkHibernate)) {\n        host += lock;\n        opengl += ip + runtime_adf - padFormula;\n        hardwareBsod += fileBacklinkStick;\n    }\n    analyst_pop_cpa.soft_computer -= 2;\n    cacheSwappable.soft_map_user = 71597;\n    if (font_boot_debugger > 41) {\n        homeOpticalTween(drive, mp);\n    } else {\n        upTypeface.bandwidthPortPage(2, bash, piracy);\n    }\n\n## Nec dare non levis condicione haec experiensque\n\nMinus freta alte saepe; quod fine ora, et vertice pectore, dedit gravi: tuum\nindoctum. In somnus unda Cenchreis Attis Sol quis tali gaudere adhuc refugit!\nPes at cur deos coetu, [fraterque committitur](http://www.mens.net/), fugant\ntumida, illa alis Almo; iam copia tulerunt. Hoc frustra oraque, rabies libet,\nrus partes festum cupidine, pictae, Dianae o rogus **habet**, fragor. Et hic ait\ntantummodo duris hebes ignare bene, revertentes conscendit\n[scis](http://meliorecunctis.net/): colus vela vanis Oenides obstantis nominis.\n\n## Vir licet a rostrum cervice populo habitabilis\n\nCommota placido rastrique reddit denique fera lacubus Cimoli praelate infernas\ncrines: sepulcro funereum exstinctus tela exercere Astraea. Aliis lingua\ningens genus iamdudum, contingere avem gemit: nulli suis; [via stravit\nprecatur](http://iacuit.io/nisi.html) cursum? Inmemor liquentibus magis infantem\npetit ad dicitur ferro; inmitibus Iphin tridentigero. Clementia namque\nprocubuit pectus contractosque nomine diuturnior Pagasaea postquam.\n\n## Dominae ut hosti perdiderint Rhesi motibus relicta\n\nNocuit mundus potentia, et est advocat matres, illic amans deserta quam non.\nMortisque Haemonii traxere postes nymphaeque frustra tepido armis pectore spina.\nCruciatibus altera [radiantia](http://www.sit.org/) stabat; vibrabant fer parte.\n\nSoporis nominis flumine robur, ad Perseus, conspecta captat [sororum\nat](http://www.ver.com/inmodo) funereum! Spernit velat quod, nec clausit oculis,\n**dixit** tibi nec verbis resupino ferox ille Cinyreia vel moras gelidos. Una\ncerte sanguine: [multae](http://ite.net/relatis) modis medium luridus cunctos:\nquid.	2023-05-25 21:35:27.747+00	1	1	2023-05-25 21:35:07.787+00	2023-05-25 21:35:27.806+00
\.


--
-- Data for Name: blog_items_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.blog_items_components (id, field, "order", component_type, component_id, blog_item_id) FROM stdin;
4	tags	1	components_elements_titles	4	3
5	tags	2	components_elements_titles	5	3
6	tags	3	components_elements_titles	6	3
2	tags	1	components_elements_titles	2	2
3	tags	2	components_elements_titles	3	2
1	tags	1	components_elements_titles	1	1
7	tags	1	components_elements_titles	7	4
8	tags	2	components_elements_titles	8	4
\.


--
-- Data for Name: components_apis_filters; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_apis_filters (id, "statusName", "projectTypeName", "versionName", "solutionName", "tagsName", "orderByName") FROM stdin;
\.


--
-- Data for Name: components_apis_filters_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_apis_filters_components (id, field, "order", component_type, component_id, components_apis_filter_id) FROM stdin;
\.


--
-- Data for Name: components_apis_paginations; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_apis_paginations (id, "firstName", "secondName") FROM stdin;
\.


--
-- Data for Name: components_cards_card_products; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_card_products (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_cards_card_products_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_card_products_components (id, field, "order", component_type, component_id, components_cards_card_product_id) FROM stdin;
\.


--
-- Data for Name: components_cards_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_cards (id, title, description, icon, "titleFooter", "descriptionFooter", "LinkName", "LinkUrl", version, steps, "descriptionHeader", "timeRead") FROM stdin;
11	Título de la categoría 3	Quisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	Título de la categoría 1	Quisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	Título de la categoría 2	Quisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.Suspendisse potenti. Integer tincidunt. Aenean commodo ligula eget dolor. Nulla consequat massa quis enimQuisque rutrum. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipi cing, dui. Vestibulum volutpat pretium libero. Praesent blandit laoreet nibh. Nam at totor in tellus interdum sai.	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: components_cards_product_link_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_product_link_cards (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_cards_product_link_cards_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_product_link_cards_components (id, field, "order", component_type, component_id, components_cards_product_link_card_id) FROM stdin;
\.


--
-- Data for Name: components_cards_use_case_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_cards_use_case_cards (id, estatus, title, description, "linkUrl", "linkText", badge, "statusText") FROM stdin;
\.


--
-- Data for Name: components_elements_badgets; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_badgets (id, title) FROM stdin;
\.


--
-- Data for Name: components_elements_basic_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_basic_cards (id, title, subtitle, description) FROM stdin;
\.


--
-- Data for Name: components_elements_basic_cards_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_basic_cards_components (id, field, "order", component_type, component_id, components_elements_basic_card_id) FROM stdin;
\.


--
-- Data for Name: components_elements_big_features; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_big_features (id, title, description, "position") FROM stdin;
\.


--
-- Data for Name: components_elements_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_cards (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_elements_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_containers (id, title, description, keyword) FROM stdin;
\.


--
-- Data for Name: components_elements_containers_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_containers_components (id, field, "order", component_type, component_id, components_elements_container_id) FROM stdin;
\.


--
-- Data for Name: components_elements_custom_radios; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_custom_radios (id, title, estatus) FROM stdin;
\.


--
-- Data for Name: components_elements_entries; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_entries (id, title, content) FROM stdin;
\.


--
-- Data for Name: components_elements_filter_versions; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_filter_versions (id, title) FROM stdin;
\.


--
-- Data for Name: components_elements_filter_versions_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_filter_versions_components (id, field, "order", component_type, component_id, components_elements_filter_version_id) FROM stdin;
\.


--
-- Data for Name: components_elements_form_checkboxes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_form_checkboxes (id, text, type, "isRequired", "validationMessage", name) FROM stdin;
\.


--
-- Data for Name: components_elements_form_checkboxes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_form_checkboxes_components (id, field, "order", component_type, component_id, components_elements_form_checkbox_id) FROM stdin;
\.


--
-- Data for Name: components_elements_form_responses; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_form_responses (id, title, message, type, show) FROM stdin;
\.


--
-- Data for Name: components_elements_image_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_image_lists (id) FROM stdin;
\.


--
-- Data for Name: components_elements_link_texts; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_link_texts (id, text) FROM stdin;
\.


--
-- Data for Name: components_elements_link_texts_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_link_texts_components (id, field, "order", component_type, component_id, components_elements_link_text_id) FROM stdin;
\.


--
-- Data for Name: components_elements_logos; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_logos (id) FROM stdin;
\.


--
-- Data for Name: components_elements_logos_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_logos_components (id, field, "order", component_type, component_id, components_elements_logo_id) FROM stdin;
\.


--
-- Data for Name: components_elements_logotypes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_logotypes (id, "altText") FROM stdin;
\.


--
-- Data for Name: components_elements_logotypes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_logotypes_components (id, field, "order", component_type, component_id, components_elements_logotype_id) FROM stdin;
\.


--
-- Data for Name: components_elements_main_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_main_heroes (id, title, keyword, "isKeywordInverted") FROM stdin;
\.


--
-- Data for Name: components_elements_navbar_section; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_navbar_section (id, title, drop) FROM stdin;
\.


--
-- Data for Name: components_elements_navbar_section_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_navbar_section_components (id, field, "order", component_type, component_id, components_elements_navbar_section_id) FROM stdin;
\.


--
-- Data for Name: components_elements_notification_banners; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_notification_banners (id, title, type) FROM stdin;
\.


--
-- Data for Name: components_elements_notification_banners_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_notification_banners_components (id, field, "order", component_type, component_id, components_elements_notification_banner_id) FROM stdin;
\.


--
-- Data for Name: components_elements_placeholders; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_placeholders (id, placeholder, "isRequired", type, name, value, "validationMessage", label) FROM stdin;
\.


--
-- Data for Name: components_elements_redirect_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_redirect_links (id, title) FROM stdin;
\.


--
-- Data for Name: components_elements_redirect_links_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_redirect_links_components (id, field, "order", component_type, component_id, components_elements_redirect_link_id) FROM stdin;
\.


--
-- Data for Name: components_elements_search_inputs; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_search_inputs (id, placeholder) FROM stdin;
\.


--
-- Data for Name: components_elements_search_inputs_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_search_inputs_components (id, field, "order", component_type, component_id, components_elements_search_input_id) FROM stdin;
\.


--
-- Data for Name: components_elements_search_outputs; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_search_outputs (id, message) FROM stdin;
\.


--
-- Data for Name: components_elements_selects; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_selects (id, name) FROM stdin;
\.


--
-- Data for Name: components_elements_selects_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_selects_components (id, field, "order", component_type, component_id, components_elements_select_id) FROM stdin;
\.


--
-- Data for Name: components_elements_sliders; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_sliders (id, title, "actionButtons") FROM stdin;
1	Título del slide 1	[{"type": "primary", "label": "Default", "route": "", "externalUrl": ""}, {"type": "primary-blue", "label": "Relative path", "route": "/apis"}, {"type": "secundary", "label": "External URL", "route": "", "externalUrl": "https://www.google.com"}]
2	Título del slide 2	[{"type": "secundary-white", "label": "Default", "route": "", "externalUrl": ""}, {"type": "tertiary-white", "label": "Relative path", "route": "/apis"}, {"type": "ghost", "label": "External URL", "route": "", "externalUrl": "https://www.google.com"}]
3	Título del slide 3	[{"type": "ghost-variant", "label": "Default", "route": "", "externalUrl": ""}, {"type": "greey-primary", "label": "Relative path", "route": "/apis"}]
\.


--
-- Data for Name: components_elements_sliders_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_sliders_components (id, field, "order", component_type, component_id, components_elements_slider_id) FROM stdin;
\.


--
-- Data for Name: components_elements_social_networks; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_social_networks (id, url, type) FROM stdin;
\.


--
-- Data for Name: components_elements_status_enumerables; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_status_enumerables (id, status) FROM stdin;
\.


--
-- Data for Name: components_elements_subtitles; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_subtitles (id, text, "order", keyword) FROM stdin;
\.


--
-- Data for Name: components_elements_titles; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_elements_titles (id, title, label, class, tab) FROM stdin;
4	APIs	APIs		\N
5	Desarrolladores	Desarrolladores	\N	\N
6	Empresas	Empresas	\N	\N
2	APIs	APIs		\N
3	Desarrolladores	Desarrolladores	\N	\N
1	APIs	APIs		\N
7	APIs	APIs		\N
8	Empresas	Empresas	\N	\N
\.


--
-- Data for Name: components_formulario_button_forms; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_button_forms (id, type, text, name, class, "order") FROM stdin;
\.


--
-- Data for Name: components_formulario_button_forms_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_button_forms_components (id, field, "order", component_type, component_id, components_formulario_button_form_id) FROM stdin;
\.


--
-- Data for Name: components_formulario_checkboxes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_checkboxes (id, type, label, name, value, "isRequired", "errorMessage", "order") FROM stdin;
\.


--
-- Data for Name: components_formulario_filter_estatuses; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_filter_estatuses (id, title) FROM stdin;
\.


--
-- Data for Name: components_formulario_filter_estatuses_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_filter_estatuses_components (id, field, "order", component_type, component_id, components_formulario_filter_estatus_id) FROM stdin;
\.


--
-- Data for Name: components_formulario_forms; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_forms (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_formulario_forms_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_forms_components (id, field, "order", component_type, component_id, components_formulario_form_id) FROM stdin;
\.


--
-- Data for Name: components_formulario_inputs; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_inputs (id, placeholder, name, value, "isRequired", "errorMessage", "order", type) FROM stdin;
\.


--
-- Data for Name: components_formulario_options; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_options (id, value, selected, text) FROM stdin;
\.


--
-- Data for Name: components_formulario_select_options; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_select_options (id, name, "isRequired", "errorMessage", type, "order") FROM stdin;
\.


--
-- Data for Name: components_formulario_select_options_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_formulario_select_options_components (id, field, "order", component_type, component_id, components_formulario_select_option_id) FROM stdin;
\.


--
-- Data for Name: components_home_banner_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_banner_sections (id, title, subtitle, search) FROM stdin;
2	Título de página APIs	\N	\N
3	Título de página Blog	\N	
1	Título de sección terciaria	Subtítulo de la sección terciaria	\N
\.


--
-- Data for Name: components_home_banner_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_banner_sections_components (id, field, "order", component_type, component_id, components_home_banner_section_id) FROM stdin;
1	buttons	1	components_links_simple_buttons	1	1
\.


--
-- Data for Name: components_home_benefits_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_benefits_lists (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_home_discover_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_discover_sections (id, title, subtitle, "smallText", "iconText") FROM stdin;
1	Título del tab 1		\N	\N
2	Título del tab 2	\N	\N	\N
\.


--
-- Data for Name: components_home_discover_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_discover_sections_components (id, field, "order", component_type, component_id, components_home_discover_section_id) FROM stdin;
1	Products	1	components_use_cases_products	1	1
2	Products	2	components_use_cases_products	2	1
3	Products	3	components_use_cases_products	3	1
5	Products	1	components_use_cases_products	5	2
6	Products	2	components_use_cases_products	6	2
7	Products	3	components_use_cases_products	7	2
\.


--
-- Data for Name: components_home_key_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_key_sections (id, title) FROM stdin;
\.


--
-- Data for Name: components_home_key_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_key_sections_components (id, field, "order", component_type, component_id, components_home_key_section_id) FROM stdin;
\.


--
-- Data for Name: components_home_status_apis; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_status_apis (id, text, status) FROM stdin;
\.


--
-- Data for Name: components_home_steps; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_steps (id, title, subtitle, number) FROM stdin;
1	Título del elemento 1	Descripción del elemento, debe de ser lo suficientemente larga para el saldo de línea con el título...	integration
2	Título del elemento 2	Descripción del elemento, debe de ser lo suficientemente larga para el saldo de línea con el título...	elearning
3	Título del elemento 3	Descripción del elemento, debe de ser lo suficientemente larga para el saldo de línea con el título...	catalogo
\.


--
-- Data for Name: components_home_widget_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_widget_sections (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_home_widget_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_widget_sections_components (id, field, "order", component_type, component_id, components_home_widget_section_id) FROM stdin;
\.


--
-- Data for Name: components_home_work_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_work_sections (id, title) FROM stdin;
1	Título de sección principal
\.


--
-- Data for Name: components_home_work_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_home_work_sections_components (id, field, "order", component_type, component_id, components_home_work_section_id) FROM stdin;
1	Steps	1	components_home_steps	1	1
2	Steps	2	components_home_steps	2	1
3	Steps	3	components_home_steps	3	1
\.


--
-- Data for Name: components_layout_footers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_layout_footers (id, "idContentType", copyright) FROM stdin;
\.


--
-- Data for Name: components_layout_footers_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_layout_footers_components (id, field, "order", component_type, component_id, components_layout_footer_id) FROM stdin;
\.


--
-- Data for Name: components_layout_navbars; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_layout_navbars (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_layout_navbars_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_layout_navbars_components (id, field, "order", component_type, component_id, components_layout_navbar_id) FROM stdin;
\.


--
-- Data for Name: components_links_basic_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_basic_links (id, url, name, target) FROM stdin;
\.


--
-- Data for Name: components_links_big_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_big_links (id, "altText", status) FROM stdin;
\.


--
-- Data for Name: components_links_big_links_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_big_links_components (id, field, "order", component_type, component_id, components_links_big_link_id) FROM stdin;
\.


--
-- Data for Name: components_links_buttons; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_buttons (id, type) FROM stdin;
1	primary
2	secondary
\.


--
-- Data for Name: components_links_buttons_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_buttons_components (id, field, "order", component_type, component_id, components_links_button_id) FROM stdin;
\.


--
-- Data for Name: components_links_drop_big_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_drop_big_links (id) FROM stdin;
\.


--
-- Data for Name: components_links_drop_big_links_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_drop_big_links_components (id, field, "order", component_type, component_id, components_links_drop_big_link_id) FROM stdin;
\.


--
-- Data for Name: components_links_drop_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_drop_links (id) FROM stdin;
\.


--
-- Data for Name: components_links_drop_links_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_drop_links_components (id, field, "order", component_type, component_id, components_links_drop_link_id) FROM stdin;
\.


--
-- Data for Name: components_links_footer_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_footer_sections (id, title, subtext, drop) FROM stdin;
\.


--
-- Data for Name: components_links_footer_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_footer_sections_components (id, field, "order", component_type, component_id, components_links_footer_section_id) FROM stdin;
\.


--
-- Data for Name: components_links_icon_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_icon_links (id) FROM stdin;
\.


--
-- Data for Name: components_links_icon_links_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_icon_links_components (id, field, "order", component_type, component_id, components_links_icon_link_id) FROM stdin;
\.


--
-- Data for Name: components_links_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_links (id, name, url, target) FROM stdin;
\.


--
-- Data for Name: components_links_share_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_share_lists (id, url, target) FROM stdin;
\.


--
-- Data for Name: components_links_simple_buttons; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_simple_buttons (id, name, type, "order", link, class) FROM stdin;
1	Botón 1	\N	\N	https://www.google.com/	ghost
\.


--
-- Data for Name: components_links_sub_links; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_links_sub_links (id, name, descripcion) FROM stdin;
\.


--
-- Data for Name: components_meta_metadata; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_meta_metadata (id, "metaTitle", "metaDescription") FROM stdin;
6	API Market - Catálogo de APIs	\N
3	Secret page	Preview-only page
7	API Market - Blog	\N
4	Contact	Get in touch with our team
5	API Market - Inicio	\N
\.


--
-- Data for Name: components_new_card_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_card_lists (id, url) FROM stdin;
\.


--
-- Data for Name: components_new_cards_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_cards_lists (id, url) FROM stdin;
\.


--
-- Data for Name: components_new_shares; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_shares (id, url) FROM stdin;
\.


--
-- Data for Name: components_new_sharings; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_sharings (id, "shareName") FROM stdin;
\.


--
-- Data for Name: components_new_sharings_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_sharings_components (id, field, "order", component_type, component_id, components_new_sharing_id) FROM stdin;
\.


--
-- Data for Name: components_new_tests; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_new_tests (id, test) FROM stdin;
\.


--
-- Data for Name: components_sections_banners; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_banners (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_banners_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_banners_components (id, field, "order", component_type, component_id, components_sections_banner_id) FROM stdin;
\.


--
-- Data for Name: components_sections_basic_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_basic_containers (id, "idContentType", title) FROM stdin;
\.


--
-- Data for Name: components_sections_big_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_big_containers (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_big_containers_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_big_containers_components (id, field, "order", component_type, component_id, components_sections_big_container_id) FROM stdin;
\.


--
-- Data for Name: components_sections_big_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_big_heroes (id, "idContentType", description) FROM stdin;
\.


--
-- Data for Name: components_sections_big_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_big_heroes_components (id, field, "order", component_type, component_id, components_sections_big_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_breadcumb_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_breadcumb_sections (id, "DevelopersName", "shareName") FROM stdin;
\.


--
-- Data for Name: components_sections_breadcumb_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_breadcumb_sections_components (id, field, "order", component_type, component_id, components_sections_breadcumb_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_button_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_button_heroes (id) FROM stdin;
\.


--
-- Data for Name: components_sections_button_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_button_heroes_components (id, field, "order", component_type, component_id, components_sections_button_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_calculate_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_calculate_sections (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_sections_calculate_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_calculate_sections_components (id, field, "order", component_type, component_id, components_sections_calculate_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_call_actions; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_call_actions (id, description) FROM stdin;
\.


--
-- Data for Name: components_sections_classic_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_classic_containers (id, "idContentType", title, description) FROM stdin;
\.


--
-- Data for Name: components_sections_classic_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_classic_heroes (id, "idContentType", description) FROM stdin;
\.


--
-- Data for Name: components_sections_classic_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_classic_heroes_components (id, field, "order", component_type, component_id, components_sections_classic_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_content_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_content_sections (id, title) FROM stdin;
\.


--
-- Data for Name: components_sections_contents; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_contents (id) FROM stdin;
\.


--
-- Data for Name: components_sections_cookies; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_cookies (id) FROM stdin;
\.


--
-- Data for Name: components_sections_cookies_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_cookies_components (id, field, "order", component_type, component_id, components_sections_cooky_id) FROM stdin;
\.


--
-- Data for Name: components_sections_copyrights; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_copyrights (id, "mainText") FROM stdin;
\.


--
-- Data for Name: components_sections_copyrights_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_copyrights_components (id, field, "order", component_type, component_id, components_sections_copyright_id) FROM stdin;
\.


--
-- Data for Name: components_sections_entries_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_entries_lists (id, "idContentType", title, description) FROM stdin;
\.


--
-- Data for Name: components_sections_entries_lists_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_entries_lists_components (id, field, "order", component_type, component_id, components_sections_entries_list_id) FROM stdin;
\.


--
-- Data for Name: components_sections_feature_basic_groups; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_feature_basic_groups (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_for_all_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_for_all_sections (id, title, subtitle, content) FROM stdin;
\.


--
-- Data for Name: components_sections_for_all_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_for_all_sections_components (id, field, "order", component_type, component_id, components_sections_for_all_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_fourth_footer_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_fourth_footer_sections (id, "IdContentType", text) FROM stdin;
\.


--
-- Data for Name: components_sections_fourth_footer_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_fourth_footer_sections_components (id, field, "order", component_type, component_id, components_sections_fourth_footer_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_full_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_full_heroes (id, description) FROM stdin;
\.


--
-- Data for Name: components_sections_full_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_full_heroes_components (id, field, "order", component_type, component_id, components_sections_full_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_how_works; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_how_works (id, "idContentType", subtext) FROM stdin;
\.


--
-- Data for Name: components_sections_how_works_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_how_works_components (id, field, "order", component_type, component_id, components_sections_how_work_id) FROM stdin;
\.


--
-- Data for Name: components_sections_icon_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_icon_containers (id, "idContentType", title) FROM stdin;
\.


--
-- Data for Name: components_sections_icon_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_icon_heroes (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_icon_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_icon_heroes_components (id, field, "order", component_type, component_id, components_sections_icon_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_individual_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_individual_containers (id, "idContentType", title) FROM stdin;
\.


--
-- Data for Name: components_sections_individual_containers_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_individual_containers_components (id, field, "order", component_type, component_id, components_sections_individual_container_id) FROM stdin;
\.


--
-- Data for Name: components_sections_link_heroes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_link_heroes (id, "idContentType", subtitle, "sideText", "imgSideText") FROM stdin;
\.


--
-- Data for Name: components_sections_link_heroes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_link_heroes_components (id, field, "order", component_type, component_id, components_sections_link_hero_id) FROM stdin;
\.


--
-- Data for Name: components_sections_logotypes; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_logotypes (id, "altText") FROM stdin;
\.


--
-- Data for Name: components_sections_logotypes_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_logotypes_components (id, field, "order", component_type, component_id, components_sections_logotype_id) FROM stdin;
\.


--
-- Data for Name: components_sections_main_containers; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_main_containers (id, "idContentType", title) FROM stdin;
\.


--
-- Data for Name: components_sections_main_containers_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_main_containers_components (id, field, "order", component_type, component_id, components_sections_main_container_id) FROM stdin;
\.


--
-- Data for Name: components_sections_main_features; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_main_features (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_main_features_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_main_features_components (id, field, "order", component_type, component_id, components_sections_main_feature_id) FROM stdin;
\.


--
-- Data for Name: components_sections_our_products_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_our_products_sections (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_sections_our_products_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_our_products_sections_components (id, field, "order", component_type, component_id, components_sections_our_products_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_questions_list_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_questions_list_sections (id) FROM stdin;
\.


--
-- Data for Name: components_sections_questions_list_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_questions_list_sections_components (id, field, "order", component_type, component_id, components_sections_questions_list_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_rich_texts; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_rich_texts (id, content) FROM stdin;
1	# Get in touch\n\n> This is an example of a page that relies almost entirely on the RichText section. It's useful for blog articles, or content-heavy pages like legal terms.\n\nWe'd love to hear from you.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
2	## Secret page\n\nYou can only view this page in Preview Mode.
\.


--
-- Data for Name: components_sections_searches; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_searches (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_searches_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_searches_components (id, field, "order", component_type, component_id, components_sections_search_id) FROM stdin;
\.


--
-- Data for Name: components_sections_section_use_cases; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_section_use_cases (id, title, subtitle) FROM stdin;
2	Título de sección APIs	Subtítulo de la sección con listado de algunas APIs, puedes describir el uso de tus principales APIs...
\.


--
-- Data for Name: components_sections_section_use_cases_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_section_use_cases_components (id, field, "order", component_type, component_id, components_sections_section_use_case_id) FROM stdin;
\.


--
-- Data for Name: components_sections_section_widget_forms; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_section_widget_forms (id, description) FROM stdin;
\.


--
-- Data for Name: components_sections_section_widget_forms_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_section_widget_forms_components (id, field, "order", component_type, component_id, components_sections_section_widget_form_id) FROM stdin;
\.


--
-- Data for Name: components_sections_share_options; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_share_options (id, title) FROM stdin;
\.


--
-- Data for Name: components_sections_share_options_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_share_options_components (id, field, "order", component_type, component_id, components_sections_share_option_id) FROM stdin;
\.


--
-- Data for Name: components_sections_sidebars; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_sidebars (id, "idContentType") FROM stdin;
\.


--
-- Data for Name: components_sections_sidebars_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_sidebars_components (id, field, "order", component_type, component_id, components_sections_sidebar_id) FROM stdin;
\.


--
-- Data for Name: components_sections_social_networks; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_social_networks (id) FROM stdin;
\.


--
-- Data for Name: components_sections_social_networks_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_social_networks_components (id, field, "order", component_type, component_id, components_sections_social_network_id) FROM stdin;
\.


--
-- Data for Name: components_sections_time_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_time_sections (id, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_sections_time_sections_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_time_sections_components (id, field, "order", component_type, component_id, components_sections_time_section_id) FROM stdin;
\.


--
-- Data for Name: components_sections_title_sections; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_sections_title_sections (id, title, subtitle) FROM stdin;
1	Título de sección con secundaria	
3	Título de sección Blog	Subtítulo de la sección con entradas del blog, puedes describir lo que encontrarán en el blog...
\.


--
-- Data for Name: components_slices_bottom_actions; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_bottom_actions (id, title, keyword) FROM stdin;
1	Get in touch	\N
\.


--
-- Data for Name: components_slices_bottom_actions_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_bottom_actions_components (id, field, "order", component_type, component_id, components_slices_bottom_action_id) FROM stdin;
1	buttons	1	components_links_buttons	1	1
2	buttons	2	components_links_buttons	2	1
\.


--
-- Data for Name: components_slices_feature_columns; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_columns (id, title, description, keyword) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_columns_groups; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_columns_groups (id, "idContentType", title, description, keyword) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_columns_groups_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_columns_groups_components (id, field, "order", component_type, component_id, components_slices_feature_columns_group_id) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_rows (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_rows_components (id, field, "order", component_type, component_id, components_slices_feature_row_id) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_groups; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_rows_groups (id, "idContentType", title, keyword, description) FROM stdin;
\.


--
-- Data for Name: components_slices_feature_rows_groups_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_feature_rows_groups_components (id, field, "order", component_type, component_id, components_slices_feature_rows_group_id) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_testimonials (id, title, description, keyword, "authorName", "authorTitle") FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_testimonials_components (id, field, "order", component_type, component_id, components_slices_testimonial_id) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_groups; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_testimonials_groups (id, "idContentType", title, keyword, description) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_groups_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_slices_testimonials_groups_components (id, field, "order", component_type, component_id, components_slices_testimonials_group_id) FROM stdin;
\.


--
-- Data for Name: components_portal_carousels; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_carousels (id, slider) FROM stdin;
1	\N
\.


--
-- Data for Name: components_portal_carousels_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_carousels_components (id, field, "order", component_type, component_id, components_portal_carousel_id) FROM stdin;
1	sliderCarousel	1	components_elements_sliders	1	1
2	sliderCarousel	2	components_elements_sliders	2	1
3	sliderCarousel	3	components_elements_sliders	3	1
\.


--
-- Data for Name: components_portal_chips; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_chips (id, color, name) FROM stdin;
\.


--
-- Data for Name: components_portal_items; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_items (id, title, description, icon) FROM stdin;
\.


--
-- Data for Name: components_portal_list_filters; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_list_filters (id, "Title") FROM stdin;
\.


--
-- Data for Name: components_portal_list_filters_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_list_filters_components (id, field, "order", component_type, component_id, components_portal_list_filter_id) FROM stdin;
\.


--
-- Data for Name: components_portal_list_recents; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_list_recents (id, title) FROM stdin;
\.


--
-- Data for Name: components_portal_list_recents_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_list_recents_components (id, field, "order", component_type, component_id, components_portal_list_recent_id) FROM stdin;
\.


--
-- Data for Name: components_portal_questions; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_questions (id, question, description, seccion, description_two) FROM stdin;
\.


--
-- Data for Name: components_portal_section_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_section_cards (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_portal_tab_cards; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_tab_cards (id, name, tab) FROM stdin;
9	Categoría 3	\N
3	Categoría 1	\N
4	Categoría 2	\N
\.


--
-- Data for Name: components_portal_tab_cards_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_portal_tab_cards_components (id, field, "order", component_type, component_id, components_portal_tab_card_id) FROM stdin;
11	cards	1	components_cards_cards	11	9
4	cards	1	components_cards_cards	4	3
5	cards	1	components_cards_cards	5	4
\.


--
-- Data for Name: components_texts_icon_texts; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_texts_icon_texts (id, name, "altText") FROM stdin;
\.


--
-- Data for Name: components_texts_link_texts; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_texts_link_texts (id, text) FROM stdin;
\.


--
-- Data for Name: components_texts_link_texts_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_texts_link_texts_components (id, field, "order", component_type, component_id, components_texts_link_text_id) FROM stdin;
\.


--
-- Data for Name: components_use_cases_badge_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_badge_lists (id, name) FROM stdin;
\.


--
-- Data for Name: components_use_cases_banners; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_banners (id, "idContentType", title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_use_cases_banners_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_banners_components (id, field, "order", component_type, component_id, components_use_cases_banner_id) FROM stdin;
\.


--
-- Data for Name: components_use_cases_button_lists; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_button_lists (id, title, url) FROM stdin;
\.


--
-- Data for Name: components_use_cases_calculate_use_cases; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_calculate_use_cases (id, title, "smallText") FROM stdin;
\.


--
-- Data for Name: components_use_cases_calculate_use_cases_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_calculate_use_cases_components (id, field, "order", component_type, component_id, components_use_cases_calculate_use_case_id) FROM stdin;
\.


--
-- Data for Name: components_use_cases_labels; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_labels (id, name) FROM stdin;
\.


--
-- Data for Name: components_use_cases_metadata; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_metadata (id, "metaTitle", "metaDescription") FROM stdin;
\.


--
-- Data for Name: components_use_cases_paragraphs; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_paragraphs (id, text) FROM stdin;
\.


--
-- Data for Name: components_use_cases_products; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_products (id, title, subtitle, url, verbs, "iconText", num) FROM stdin;
1	Elemento 1	Descripción del elemento...	\N	\N	catalogo	1
2	Elemento 2	Descripción del elemento...	\N	\N	default	2
3	Elemento 3	Descripción del elemento...	\N	\N	integration	3
5	Elemento 1	Descripción del elemento...	\N	\N	\N	1
6	Elemento 2	Descripción del elemento...	\N	\N	\N	2
7	Elemento 3	Descripción del elemento...	\N	\N	\N	3
\.


--
-- Data for Name: components_use_cases_use_cases; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.components_use_cases_use_cases (id) FROM stdin;
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
3	model_def_apis.pagination	{"uid":"apis.pagination","collectionName":"components_apis_paginations","info":{"name":"Pagination","icon":"compress"},"options":{"timestamps":false},"attributes":{"firstName":{"type":"string"},"secondName":{"type":"string"}}}	object	\N	\N
4	model_def_cards.card-product	{"uid":"cards.card-product","collectionName":"components_cards_card_products","info":{"name":"ProductCard","icon":"border-style","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"link":{"type":"component","repeatable":false,"component":"links.basic-link"}}}	object	\N	\N
5	model_def_cards.card	{"uid":"cards.card","collectionName":"components_cards_cards","info":{"name":"card","icon":"sim-card","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"icon":{"type":"string"},"titleFooter":{"type":"string"},"descriptionFooter":{"type":"string"},"image":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"LinkName":{"type":"string"},"LinkUrl":{"type":"string"},"version":{"type":"string"},"steps":{"type":"json"},"descriptionHeader":{"type":"string"},"timeRead":{"type":"string"}}}	object	\N	\N
6	model_def_cards.product-link-card	{"uid":"cards.product-link-card","collectionName":"components_cards_product_link_cards","info":{"name":"ProductLinkCard","icon":"id-card-alt"},"options":{"timestamps":false},"attributes":{"link":{"type":"component","repeatable":false,"component":"links.basic-link"},"title":{"type":"string"},"subtitle":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
7	model_def_cards.use-case-card	{"uid":"cards.use-case-card","collectionName":"components_cards_use_case_cards","info":{"name":"useCaseCard","icon":"arrow-alt-circle-up","description":""},"options":{"timestamps":false},"attributes":{"estatus":{"type":"enumeration","enum":["available","deprecated","comming_soon"]},"title":{"type":"string"},"description":{"type":"text"},"picture":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"linkUrl":{"type":"string"},"linkText":{"type":"string"},"badge":{"type":"text"},"statusText":{"type":"string"}}}	object	\N	\N
8	model_def_custom.carousel	{"uid":"custom.carousel","collectionName":"components_portal_carousels","info":{"name":"carousel","icon":"caret-right"},"options":{"timestamps":false},"attributes":{"slider":{"type":"string"},"sliderCarousel":{"type":"component","repeatable":true,"component":"elements.slider"}}}	object	\N	\N
9	model_def_custom.chips	{"uid":"custom.chips","collectionName":"components_portal_chips","info":{"name":"chips","icon":"child"},"options":{"timestamps":false},"attributes":{"color":{"type":"string"},"name":{"type":"string"}}}	object	\N	\N
10	model_def_custom.items	{"uid":"custom.items","collectionName":"components_portal_items","info":{"name":"items","icon":"th-list","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"image":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"icon":{"type":"string"}}}	object	\N	\N
11	model_def_custom.list-filter	{"uid":"custom.list-filter","collectionName":"components_portal_list_filters","info":{"name":"ListFilter","icon":"list"},"options":{"timestamps":false},"attributes":{"Title":{"type":"string"},"items":{"type":"component","repeatable":true,"component":"elements.titles"}}}	object	\N	\N
12	model_def_custom.list-recent	{"uid":"custom.list-recent","collectionName":"components_portal_list_recents","info":{"name":"ListRecent","icon":"list-ol","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"items":{"type":"component","repeatable":true,"component":"custom.items"}}}	object	\N	\N
13	model_def_custom.questions	{"uid":"custom.questions","collectionName":"components_portal_questions","info":{"name":"questions","icon":"question","description":""},"options":{"timestamps":false},"attributes":{"question":{"type":"string"},"description":{"type":"string"},"img":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"seccion":{"type":"enumeration","enum":["Reverse","Normal","NoImage"]},"description_two":{"type":"richtext"}}}	object	\N	\N
14	model_def_custom.section-card	{"uid":"custom.section-card","collectionName":"components_portal_section_cards","info":{"name":"sectionCard","icon":"vr-cardboard"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"text"}}}	object	\N	\N
15	model_def_custom.tab-card	{"uid":"custom.tab-card","collectionName":"components_portal_tab_cards","info":{"name":"tabCard","icon":"sd-card","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"img":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"cards":{"type":"component","repeatable":true,"component":"cards.card"},"tab":{"type":"enumeration","enum":["zero","one","two","three","four","five"]}}}	object	\N	\N
16	model_def_elements.badget	{"uid":"elements.badget","collectionName":"components_elements_badgets","info":{"name":"Badge","icon":"ad","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"}}}	object	\N	\N
17	model_def_elements.basic-card	{"uid":"elements.basic-card","collectionName":"components_elements_basic_cards","info":{"name":"basicCard","icon":"baseball-ball"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"link":{"type":"component","repeatable":false,"component":"links.basic-link"}}}	object	\N	\N
18	model_def_elements.big-feature	{"uid":"elements.big-feature","collectionName":"components_elements_big_features","info":{"name":"bigFeature","icon":"battery-quarter","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"position":{"type":"string"}}}	object	\N	\N
20	model_def_elements.container	{"uid":"elements.container","collectionName":"components_elements_containers","info":{"name":"Container","icon":"archway","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"keyword":{"type":"string"},"buttonLink":{"type":"component","repeatable":true,"component":"links.button-link"},"badgeInfo":{"type":"component","repeatable":true,"component":"elements.badget"}}}	object	\N	\N
58	model_def_home.status-api	{"uid":"home.status-api","collectionName":"components_home_status_apis","info":{"name":"StatusApi","icon":"burn"},"options":{"timestamps":false},"attributes":{"text":{"type":"string"},"status":{"type":"enumeration","enum":["active","desactive"]}}}	object	\N	\N
21	model_def_elements.custom-radio	{"uid":"elements.custom-radio","collectionName":"components_elements_custom_radios","info":{"name":"customRadio","icon":"angle-left"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"estatus":{"type":"enumeration","enum":["primary","secondary"]}}}	object	\N	\N
22	model_def_elements.entry	{"uid":"elements.entry","collectionName":"components_elements_entries","info":{"name":"Entry","icon":"arrows-alt-v","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"content":{"type":"richtext"}}}	object	\N	\N
23	model_def_elements.feature-column	{"uid":"elements.feature-column","collectionName":"components_slices_feature_columns","info":{"name":"FeatureColumn","icon":"align-center","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"keyword":{"type":"string"}}}	object	\N	\N
24	model_def_elements.feature-row	{"uid":"elements.feature-row","collectionName":"components_slices_feature_rows","info":{"name":"FeatureRow","icon":"arrows-alt-h","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"link":{"type":"component","repeatable":false,"component":"links.link"}}}	object	\N	\N
25	model_def_elements.filter-versions	{"uid":"elements.filter-versions","collectionName":"components_elements_filter_versions","info":{"name":"GroupRadios","icon":"angle-up","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"version":{"type":"component","repeatable":true,"component":"elements.custom-radio"}}}	object	\N	\N
26	model_def_elements.footer-section	{"uid":"elements.footer-section","collectionName":"components_links_footer_sections","info":{"name":"FooterSection","icon":"chevron-circle-down","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtext":{"type":"string"},"links":{"type":"component","repeatable":true,"component":"links.link"},"drop":{"type":"boolean"}}}	object	\N	\N
27	model_def_elements.form-checkbox	{"uid":"elements.form-checkbox","collectionName":"components_elements_form_checkboxes","info":{"name":"formCheckbox","icon":"window-close","description":""},"options":{"timestamps":false},"attributes":{"text":{"type":"string"},"type":{"type":"enumeration","enum":["checkbox","text"]},"isRequired":{"type":"boolean"},"links":{"type":"component","repeatable":true,"component":"links.link"},"validationMessage":{"type":"text"},"name":{"type":"string"}}}	object	\N	\N
28	model_def_elements.form-response	{"uid":"elements.form-response","collectionName":"components_elements_form_responses","info":{"name":"FormResponse","icon":"band-aid","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"message":{"type":"text"},"type":{"type":"enumeration","enum":["success","error"]},"show":{"type":"boolean"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
29	model_def_elements.image-list	{"uid":"elements.image-list","collectionName":"components_elements_image_lists","info":{"name":"imageList","icon":"border-all"},"options":{"timestamps":false},"attributes":{"image":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
30	model_def_elements.link-text	{"uid":"elements.link-text","collectionName":"components_elements_link_texts","info":{"name":"linkText","icon":"border-none"},"options":{"timestamps":false},"attributes":{"link":{"type":"component","repeatable":false,"component":"links.link"},"text":{"type":"string"}}}	object	\N	\N
31	model_def_elements.logo	{"uid":"elements.logo","collectionName":"components_elements_logos","info":{"name":"Logo","icon":"angry"},"options":{"timestamps":false},"attributes":{"titles":{"type":"component","repeatable":true,"component":"links.link"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false}}}	object	\N	\N
32	model_def_elements.logotype	{"uid":"elements.logotype","collectionName":"components_elements_logotypes","info":{"name":"logotype","icon":"american-sign-language-interpreting","description":""},"options":{"timestamps":false},"attributes":{"info":{"type":"component","repeatable":false,"component":"elements.main-hero"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"altText":{"type":"string"}}}	object	\N	\N
33	model_def_elements.main-hero	{"uid":"elements.main-hero","collectionName":"components_elements_main_heroes","info":{"name":"mainHero","icon":"allergies","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"keyword":{"type":"string"},"isKeywordInverted":{"type":"boolean"}}}	object	\N	\N
34	model_def_elements.navbar-columns	{"uid":"elements.navbar-columns","collectionName":"components_elements_navbar_section","info":{"name":"navbarSection","icon":"align-justify","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"drop":{"type":"boolean"},"personalizedLink":{"type":"component","repeatable":false,"component":"links.link"},"links":{"type":"component","repeatable":true,"component":"links.link"}}}	object	\N	\N
35	model_def_elements.notification-banner	{"uid":"elements.notification-banner","collectionName":"components_elements_notification_banners","info":{"name":"NotificationBanner","icon":"exclamation","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"body":{"type":"component","repeatable":true,"component":"texts.link-text"},"type":{"type":"enumeration","enum":["alert","info","warning"],"required":false},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false}}}	object	\N	\N
37	model_def_elements.redirect-links	{"uid":"elements.redirect-links","collectionName":"components_elements_redirect_links","info":{"name":"redirectLinks","icon":"angle-down"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"links":{"type":"component","repeatable":true,"component":"links.basic-link"}}}	object	\N	\N
38	model_def_elements.search-input	{"uid":"elements.search-input","collectionName":"components_elements_search_inputs","info":{"name":"searchInput","icon":"atlas","description":""},"options":{"timestamps":false},"attributes":{"placeholder":{"type":"string"},"submitButton":{"type":"component","repeatable":false,"component":"links.button"}}}	object	\N	\N
39	model_def_elements.search-output	{"uid":"elements.search-output","collectionName":"components_elements_search_outputs","info":{"name":"searchOutput","icon":"align-left","description":""},"options":{"timestamps":false},"attributes":{"message":{"type":"string"}}}	object	\N	\N
40	model_def_elements.select	{"uid":"elements.select","collectionName":"components_elements_selects","info":{"name":"select","icon":"arrow-circle-right"},"options":{"timestamps":false},"attributes":{"tetretert":{"type":"component","repeatable":true,"component":"elements.entry"},"name":{"type":"string"}}}	object	\N	\N
41	model_def_elements.slider	{"uid":"elements.slider","collectionName":"components_elements_sliders","info":{"name":"slider","icon":"book-open"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"imgSrc":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"actionButtons":{"type":"json"},"subtitleList":{"type":"component","repeatable":true,"component":"elements.subtitle"}}}	object	\N	\N
42	model_def_elements.social-network	{"uid":"elements.social-network","collectionName":"components_elements_social_networks","info":{"name":"socialNetwork","icon":"align-right"},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"type":{"type":"enumeration","enum":["Facebook","Instagram","Twitter","LinkedIn","Youtube"]},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
43	model_def_elements.status-enumerable	{"uid":"elements.status-enumerable","collectionName":"components_elements_status_enumerables","info":{"name":"statusEnumerable","icon":"adjust"},"options":{"timestamps":false},"attributes":{"status":{"type":"enumeration","enum":["enable","disable"]}}}	object	\N	\N
44	model_def_elements.subtitle	{"uid":"elements.subtitle","collectionName":"components_elements_subtitles","info":{"name":"subtitle","icon":"book"},"options":{"timestamps":false},"attributes":{"text":{"type":"string"},"order":{"type":"integer"},"keyword":{"type":"string"}}}	object	\N	\N
45	model_def_elements.testimonial	{"uid":"elements.testimonial","collectionName":"components_slices_testimonials","info":{"name":"Testimonial","icon":"user-check","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"description":{"type":"richtext"},"keyword":{"type":"string"},"authorName":{"type":"string"},"authorTitle":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"bigIcon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"buttonLink":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
46	model_def_elements.titles	{"uid":"elements.titles","collectionName":"components_elements_titles","info":{"name":"titles","icon":"beer","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"label":{"type":"string"},"class":{"type":"string"},"tab":{"type":"enumeration","enum":["one","two","three","four","five"]}}}	object	\N	\N
47	model_def_formulario.button-form	{"uid":"formulario.button-form","collectionName":"components_formulario_button_forms","info":{"name":"ButtonForm","icon":"arrow-left","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string"},"text":{"type":"string"},"name":{"type":"string"},"class":{"type":"enumeration","enum":["primary","secondary","tertiary"]},"order":{"type":"integer"},"link":{"type":"component","repeatable":false,"component":"links.link"}}}	object	\N	\N
48	model_def_formulario.checkbox	{"uid":"formulario.checkbox","collectionName":"components_formulario_checkboxes","info":{"name":"Checkbox","icon":"edit","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string"},"label":{"type":"string"},"name":{"type":"string"},"value":{"type":"boolean"},"isRequired":{"type":"boolean"},"errorMessage":{"type":"string"},"order":{"type":"integer"}}}	object	\N	\N
49	model_def_formulario.filter-estatus	{"uid":"formulario.filter-estatus","collectionName":"components_formulario_filter_estatuses","info":{"name":"FilterEstatus","icon":"air-freshener"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"checkboxes":{"type":"component","repeatable":true,"component":"formulario.checkbox"}}}	object	\N	\N
50	model_def_formulario.form	{"uid":"formulario.form","collectionName":"components_formulario_forms","info":{"name":"form","icon":"ambulance","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"text"},"subtitle":{"type":"richtext"},"inputs":{"type":"component","repeatable":true,"component":"formulario.input"},"checkboxes":{"type":"component","repeatable":true,"component":"formulario.checkbox"},"select":{"type":"component","repeatable":true,"component":"formulario.select-option"},"buttons":{"type":"component","repeatable":true,"component":"formulario.button-form"}}}	object	\N	\N
51	model_def_formulario.input	{"uid":"formulario.input","collectionName":"components_formulario_inputs","info":{"name":"Input","icon":"sticky-note","description":""},"options":{"timestamps":false},"attributes":{"placeholder":{"type":"string"},"name":{"type":"string"},"value":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"isRequired":{"type":"boolean"},"errorMessage":{"type":"string"},"order":{"type":"integer"},"type":{"type":"string"}}}	object	\N	\N
52	model_def_formulario.option	{"uid":"formulario.option","collectionName":"components_formulario_options","info":{"name":"Option","icon":"expand-arrows-alt","description":""},"options":{"timestamps":false},"attributes":{"value":{"type":"string"},"selected":{"type":"string"},"text":{"type":"string"}}}	object	\N	\N
55	model_def_home.benefits-list	{"uid":"home.benefits-list","collectionName":"components_home_benefits_lists","info":{"name":"benefitsList","icon":"birthday-cake"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
56	model_def_home.discover-section	{"uid":"home.discover-section","collectionName":"components_home_discover_sections","info":{"name":"DiscoverSection","icon":"at","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"button":{"type":"component","repeatable":false,"component":"links.basic-link"},"statusApi":{"type":"component","repeatable":false,"component":"home.status-api"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"smallText":{"type":"string"},"Products":{"type":"component","repeatable":true,"component":"use-cases.products"},"iconText":{"type":"string"}}}	object	\N	\N
57	model_def_home.key-section	{"uid":"home.key-section","collectionName":"components_home_key_sections","info":{"name":"KeySection","icon":"bell"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"images":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"benefitsList":{"type":"component","repeatable":true,"component":"home.benefits-list"},"button":{"type":"component","repeatable":true,"component":"links.basic-link"}}}	object	\N	\N
59	model_def_home.steps	{"uid":"home.steps","collectionName":"components_home_steps","info":{"name":"Steps","icon":"basketball-ball"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"number":{"type":"string"}}}	object	\N	\N
60	model_def_home.widget-section	{"uid":"home.widget-section","collectionName":"components_home_widget_sections","info":{"name":"WidgetSection","icon":"bus","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"button":{"type":"component","repeatable":false,"component":"links.basic-link"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"subtitle":{"type":"richtext"}}}	object	\N	\N
61	model_def_home.work-section	{"uid":"home.work-section","collectionName":"components_home_work_sections","info":{"name":"WorkSection","icon":"book-dead","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"Steps":{"type":"component","repeatable":true,"component":"home.steps"},"background":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"buttons":{"type":"component","repeatable":true,"component":"links.button"}}}	object	\N	\N
62	model_def_layout.footer	{"uid":"layout.footer","collectionName":"components_layout_footers","info":{"name":"Footer","icon":"caret-square-down"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"redirectLinks":{"type":"component","repeatable":true,"component":"elements.redirect-links"},"logotype":{"type":"component","repeatable":false,"component":"elements.logotype"},"copyright":{"type":"string"},"sharing":{"type":"component","repeatable":true,"component":"elements.social-network"}}}	object	\N	\N
63	model_def_layout.navbar	{"uid":"layout.navbar","collectionName":"components_layout_navbars","info":{"name":"Navbar","icon":"map-signs","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"logotype":{"type":"component","repeatable":false,"component":"elements.logotype"},"navbarColumns":{"type":"component","repeatable":true,"component":"elements.navbar-columns"},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
64	model_def_links.basic-link	{"uid":"links.basic-link","collectionName":"components_links_basic_links","info":{"name":"basicLink","icon":"angle-double-left","description":""},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"name":{"type":"string"},"target":{"type":"enumeration","enum":["_self","_blank"]}}}	object	\N	\N
65	model_def_links.big-link	{"uid":"links.big-link","collectionName":"components_links_big_links","info":{"name":"bigLink","icon":"asterisk","description":""},"options":{"timestamps":false},"attributes":{"link":{"type":"component","repeatable":false,"component":"links.link"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"altText":{"type":"string"},"status":{"type":"enumeration","enum":["enabled","disabled"]}}}	object	\N	\N
66	model_def_links.button-link	{"uid":"links.button-link","collectionName":"components_links_buttons","info":{"name":"Button-link","icon":"fingerprint","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"enumeration","enum":["primary","secondary"]},"link":{"type":"component","repeatable":false,"component":"links.link"}}}	object	\N	\N
67	model_def_links.button	{"uid":"links.button","collectionName":"components_links_simple_buttons","info":{"name":"Button","icon":"fingerprint","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"type":{"type":"enumeration","enum":["primary","secondary"]},"order":{"type":"integer"},"link":{"type":"string"},"class":{"type":"enumeration","enum":["primary","secondary","secundaryWhite","tertiary","tertiaryWhite","ghost","ghostVariant","greeyPrimary","disabled"]}}}	object	\N	\N
68	model_def_links.drop-big-link	{"uid":"links.drop-big-link","collectionName":"components_links_drop_big_links","info":{"name":"dropBigLink","icon":"boxes"},"options":{"timestamps":false},"attributes":{"mainLink":{"type":"component","repeatable":false,"component":"links.link"},"bigLinks":{"type":"component","repeatable":true,"component":"links.big-link"}}}	object	\N	\N
69	model_def_links.drop-link	{"uid":"links.drop-link","collectionName":"components_links_drop_links","info":{"name":"dropLink","icon":"database"},"options":{"timestamps":false},"attributes":{"mainLink":{"type":"component","repeatable":false,"component":"links.link"},"links":{"type":"component","repeatable":true,"component":"links.link"}}}	object	\N	\N
71	model_def_links.link	{"uid":"links.link","collectionName":"components_links_links","info":{"name":"Link","icon":"link","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"string"},"target":{"type":"enumeration","enum":["_self","_blank"],"default":"_self"}}}	object	\N	\N
72	model_def_links.share-list	{"uid":"links.share-list","collectionName":"components_links_share_lists","info":{"name":"ShareList","icon":"bread-slice"},"options":{"timestamps":false},"attributes":{"url":{"type":"text"},"target":{"type":"enumeration","enum":["_self","_blank"]},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
73	model_def_links.sub-link	{"uid":"links.sub-link","collectionName":"components_links_sub_links","info":{"name":"SubLink","icon":"arrow-right"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"descripcion":{"type":"string"}}}	object	\N	\N
74	model_def_meta.metadata	{"uid":"meta.metadata","collectionName":"components_meta_metadata","info":{"name":"Metadata","icon":"robot","description":""},"options":{"timestamps":false},"attributes":{"metaTitle":{"type":"string","required":false},"metaDescription":{"type":"text","required":false}}}	object	\N	\N
75	model_def_new.card-list	{"uid":"new.card-list","collectionName":"components_new_card_lists","info":{"name":"CardList","icon":"barcode"},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
76	model_def_new.cards-list	{"uid":"new.cards-list","collectionName":"components_new_cards_lists","info":{"name":"cardsList","icon":"box-open"},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
77	model_def_new.share	{"uid":"new.share","collectionName":"components_new_shares","info":{"name":"Share","icon":"share","description":""},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
78	model_def_new.sharing	{"uid":"new.sharing","collectionName":"components_new_sharings","info":{"name":"Sharing","icon":"share-square"},"options":{"timestamps":false},"attributes":{"shareList":{"type":"component","repeatable":true,"component":"new.share"},"shareName":{"type":"string"}}}	object	\N	\N
79	model_def_new.test	{"uid":"new.test","collectionName":"components_new_tests","info":{"name":"test","icon":"ban"},"options":{"timestamps":false},"attributes":{"test":{"type":"string"}}}	object	\N	\N
80	model_def_sections.banner	{"uid":"sections.banner","collectionName":"components_sections_banners","info":{"name":"Banner","icon":"apple-alt"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"Titles":{"type":"component","repeatable":true,"component":"elements.main-hero"},"buttons":{"type":"component","repeatable":true,"component":"links.button-link"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
81	model_def_sections.basic-container	{"uid":"sections.basic-container","collectionName":"components_sections_basic_containers","info":{"name":"basicContainer","icon":"atom"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"}}}	object	\N	\N
82	model_def_sections.big-container	{"uid":"sections.big-container","collectionName":"components_sections_big_containers","info":{"name":"bigContainer","icon":"assistive-listening-systems"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"component","repeatable":false,"component":"elements.main-hero"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
83	model_def_sections.big-hero	{"uid":"sections.big-hero","collectionName":"components_sections_big_heroes","info":{"name":"bigHero","icon":"arrow-alt-circle-left"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":true,"component":"elements.main-hero"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
84	model_def_sections.bottom-actions	{"uid":"sections.bottom-actions","collectionName":"components_slices_bottom_actions","info":{"name":"BottomActions","icon":"angle-double-right","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"buttons":{"type":"component","repeatable":true,"component":"links.button-link"},"keyword":{"type":"string"}}}	object	\N	\N
85	model_def_sections.breadcumb-section	{"uid":"sections.breadcumb-section","collectionName":"components_sections_breadcumb_sections","info":{"name":"BreadcumbSection","icon":"code","description":""},"options":{"timestamps":false},"attributes":{"DevelopersName":{"type":"string"},"shareName":{"type":"string"},"shareList":{"type":"component","repeatable":true,"component":"links.share-list"},"ClimatetradeLink":{"type":"component","repeatable":true,"component":"links.link"}}}	object	\N	\N
86	model_def_sections.button-hero	{"uid":"sections.button-hero","collectionName":"components_sections_button_heroes","info":{"name":"buttonHero","icon":"arrow-alt-circle-down","description":""},"options":{"timestamps":false},"attributes":{"header":{"type":"component","repeatable":true,"component":"elements.main-hero"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
88	model_def_sections.call-action	{"uid":"sections.call-action","collectionName":"components_sections_call_actions","info":{"name":"callAction","icon":"battery-empty","description":""},"options":{"timestamps":false},"attributes":{"description":{"type":"string"},"backgroundIcon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
89	model_def_sections.classic-container	{"uid":"sections.classic-container","collectionName":"components_sections_classic_containers","info":{"name":"classicContainer","icon":"arrow-circle-left"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
90	model_def_sections.classic-hero	{"uid":"sections.classic-hero","collectionName":"components_sections_classic_heroes","info":{"name":"classicHero","icon":"address-book"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":true,"component":"elements.main-hero"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
91	model_def_sections.content-section	{"uid":"sections.content-section","collectionName":"components_sections_content_sections","info":{"name":"contentSection","icon":"balance-scale-left"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"}}}	object	\N	\N
92	model_def_sections.content	{"uid":"sections.content","collectionName":"components_sections_contents","info":{"name":"content","icon":"backspace"},"options":{"timestamps":false},"attributes":{}}	object	\N	\N
93	model_def_sections.cookies	{"uid":"sections.cookies","collectionName":"components_sections_cookies","info":{"name":"cookies","icon":"bold"},"options":{"timestamps":false},"attributes":{"actions":{"type":"component","repeatable":true,"component":"links.button"},"info":{"type":"component","repeatable":false,"component":"elements.notification-banner"}}}	object	\N	\N
94	model_def_sections.copyright	{"uid":"sections.copyright","collectionName":"components_sections_copyrights","info":{"name":"copyright","icon":"external-link-alt"},"options":{"timestamps":false},"attributes":{"mainText":{"type":"string"},"link":{"type":"component","repeatable":false,"component":"texts.link-text"}}}	object	\N	\N
95	model_def_sections.entries-list	{"uid":"sections.entries-list","collectionName":"components_sections_entries_lists","info":{"name":"EntriesList","icon":"address-card","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"description":{"type":"string"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"Entries":{"type":"component","repeatable":true,"component":"elements.entry"},"mainHero":{"type":"component","repeatable":false,"component":"elements.main-hero"}}}	object	\N	\N
96	model_def_sections.feature-basic-group	{"uid":"sections.feature-basic-group","collectionName":"components_sections_feature_basic_groups","info":{"name":"featureBasicGroup","icon":"angle-double-up"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"}}}	object	\N	\N
97	model_def_sections.feature-columns-group	{"uid":"sections.feature-columns-group","collectionName":"components_slices_feature_columns_groups","info":{"name":"FeatureColumnsGroup","icon":"star-of-life","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"features":{"type":"component","repeatable":true,"component":"elements.feature-column"},"title":{"type":"string"},"description":{"type":"richtext"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"keyword":{"type":"string"},"mainHero":{"type":"component","repeatable":true,"component":"elements.main-hero"},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
98	model_def_sections.feature-rows-group	{"uid":"sections.feature-rows-group","collectionName":"components_slices_feature_rows_groups","info":{"name":"FeatureRowsGroup","icon":"bars"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"features":{"type":"component","repeatable":true,"component":"elements.feature-row"},"title":{"type":"string"},"keyword":{"type":"string"},"description":{"type":"richtext"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"mainHero":{"type":"component","repeatable":true,"component":"elements.main-hero"},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
99	model_def_sections.for-all-section	{"uid":"sections.for-all-section","collectionName":"components_sections_for_all_sections","info":{"name":"ForAllSection","icon":"check","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"button":{"type":"component","repeatable":false,"component":"links.basic-link"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"cards":{"type":"component","repeatable":true,"component":"elements.card"},"content":{"type":"text"}}}	object	\N	\N
100	model_def_sections.fourth-footer-section	{"uid":"sections.fourth-footer-section","collectionName":"components_sections_fourth_footer_sections","info":{"name":"FourthFooterSection","icon":"bowling-ball"},"options":{"timestamps":false},"attributes":{"IdContentType":{"type":"string","unique":true,"required":true},"text":{"type":"richtext"},"buttonAffirmative":{"type":"component","repeatable":false,"component":"links.basic-link"},"buttonNegative":{"type":"component","repeatable":false,"component":"links.basic-link"}}}	object	\N	\N
101	model_def_sections.full-hero	{"uid":"sections.full-hero","collectionName":"components_sections_full_heroes","info":{"name":"fullHero","icon":"balance-scale"},"options":{"timestamps":false},"attributes":{"header":{"type":"component","repeatable":true,"component":"elements.main-hero"},"description":{"type":"text"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":true,"component":"links.button"}}}	object	\N	\N
103	model_def_sections.icon-container	{"uid":"sections.icon-container","collectionName":"components_sections_icon_containers","info":{"name":"iconContainer","icon":"baby"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
104	model_def_sections.icon-hero	{"uid":"sections.icon-hero","collectionName":"components_sections_icon_heroes","info":{"name":"iconHero","icon":"arrow-down"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":false,"component":"elements.main-hero"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
105	model_def_sections.individual-container	{"uid":"sections.individual-container","collectionName":"components_sections_individual_containers","info":{"name":"individualContainer","icon":"ankh"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
106	model_def_sections.link-hero	{"uid":"sections.link-hero","collectionName":"components_sections_link_heroes","info":{"name":"LinkHero","icon":"angle-right"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":false,"component":"elements.main-hero"},"subtitle":{"type":"string"},"link":{"type":"component","repeatable":false,"component":"links.link"},"sideText":{"type":"string"},"imgSideText":{"type":"string"}}}	object	\N	\N
107	model_def_sections.logotype	{"uid":"sections.logotype","collectionName":"components_sections_logotypes","info":{"name":"logotype","icon":"bong"},"options":{"timestamps":false},"attributes":{"mainText":{"type":"component","repeatable":false,"component":"texts.icon-text"},"altText":{"type":"string"}}}	object	\N	\N
108	model_def_sections.main-container	{"uid":"sections.main-container","collectionName":"components_sections_main_containers","info":{"name":"MainContainer","icon":"archive","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"button":{"type":"component","repeatable":false,"component":"links.button-link"}}}	object	\N	\N
109	model_def_sections.main-features	{"uid":"sections.main-features","collectionName":"components_sections_main_features","info":{"name":"mainFeatures","icon":"binoculars"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":false,"component":"elements.main-hero"},"features":{"type":"component","repeatable":true,"component":"elements.big-feature"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
110	model_def_sections.our-products-section	{"uid":"sections.our-products-section","collectionName":"components_sections_our_products_sections","info":{"name":"OurProductsSection","icon":"clipboard-list","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"CardProduct":{"type":"component","repeatable":true,"component":"cards.card-product"}}}	object	\N	\N
111	model_def_sections.questions-list-section	{"uid":"sections.questions-list-section","collectionName":"components_sections_questions_list_sections","info":{"name":"QuestionsListSection","icon":"ellipsis-v","description":""},"options":{"timestamps":false},"attributes":{"questionsList":{"type":"component","repeatable":true,"component":"elements.entry"}}}	object	\N	\N
112	model_def_sections.rich-text	{"uid":"sections.rich-text","collectionName":"components_sections_rich_texts","info":{"name":"RichText","icon":"text-height"},"options":{"timestamps":false},"attributes":{"content":{"type":"richtext"}}}	object	\N	\N
113	model_def_sections.search	{"uid":"sections.search","collectionName":"components_sections_searches","info":{"name":"Search","icon":"audio-description"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"searchInput":{"type":"component","repeatable":false,"component":"elements.search-input"},"searchOutput":{"type":"component","repeatable":false,"component":"elements.search-output"}}}	object	\N	\N
114	model_def_sections.section-use-case	{"uid":"sections.section-use-case","collectionName":"components_sections_section_use_cases","info":{"name":"sectionUseCase","icon":"biohazard","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"useCaseList":{"type":"component","repeatable":true,"component":"cards.use-case-card"}}}	object	\N	\N
115	model_def_sections.section-widget-form	{"uid":"sections.section-widget-form","collectionName":"components_sections_section_widget_forms","info":{"name":"sectionWidgetForm","icon":"arrow-circle-up"},"options":{"timestamps":false},"attributes":{"description":{"type":"text"},"picture":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"form":{"type":"component","repeatable":false,"component":"formulario.form"}}}	object	\N	\N
116	model_def_sections.share-options	{"uid":"sections.share-options","collectionName":"components_sections_share_options","info":{"name":"shareOptions","icon":"box"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"links":{"type":"component","repeatable":true,"component":"links.icon-link"}}}	object	\N	\N
117	model_def_sections.sidebar	{"uid":"sections.sidebar","collectionName":"components_sections_sidebars","info":{"name":"Sidebar","icon":"angle-double-down","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"Entries":{"type":"component","repeatable":true,"component":"elements.entry"}}}	object	\N	\N
118	model_def_sections.social-networks	{"uid":"sections.social-networks","collectionName":"components_sections_social_networks","info":{"name":"socialNetworks","icon":"arrows-alt"},"options":{"timestamps":false},"attributes":{"sharingContent":{"type":"component","repeatable":true,"component":"elements.social-network"}}}	object	\N	\N
120	model_def_sections.time-section	{"uid":"sections.time-section","collectionName":"components_sections_time_sections","info":{"name":"TimeSection","icon":"history","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"button":{"type":"component","repeatable":false,"component":"links.basic-link"},"images":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
121	model_def_sections.title-section	{"uid":"sections.title-section","collectionName":"components_sections_title_sections","info":{"name":"TitleSection","icon":"grip-lines","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"}}}	object	\N	\N
122	model_def_texts.icon-text	{"uid":"texts.icon-text","collectionName":"components_texts_icon_texts","info":{"name":"iconText","icon":"award"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"altText":{"type":"string"}}}	object	\N	\N
123	model_def_texts.link-text	{"uid":"texts.link-text","collectionName":"components_texts_link_texts","info":{"name":"linkText","icon":"arrow-alt-circle-right"},"options":{"timestamps":false},"attributes":{"text":{"type":"string"},"link":{"type":"component","repeatable":true,"component":"links.link"}}}	object	\N	\N
124	model_def_use-cases.badge-list	{"uid":"use-cases.badge-list","collectionName":"components_use_cases_badge_lists","info":{"name":"badgeList","icon":"bacon"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"}}}	object	\N	\N
125	model_def_use-cases.banner	{"uid":"use-cases.banner","collectionName":"components_use_cases_banners","info":{"name":"banner","icon":"window-minimize"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"string","required":true,"unique":true},"image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"title":{"type":"string"},"subtitle":{"type":"text"},"buttonList":{"type":"component","repeatable":true,"component":"use-cases.button-list"}}}	object	\N	\N
126	model_def_use-cases.button-list	{"uid":"use-cases.button-list","collectionName":"components_use_cases_button_lists","info":{"name":"buttonList","icon":"bullseye"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"url":{"type":"string"}}}	object	\N	\N
127	model_def_use-cases.calculate-use-case	{"uid":"use-cases.calculate-use-case","collectionName":"components_use_cases_calculate_use_cases","info":{"name":"CalculateUseCase","icon":"circle-notch","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"buttons":{"type":"component","repeatable":true,"component":"links.basic-link"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"smallText":{"type":"string"},"Paragraphs":{"type":"component","repeatable":true,"component":"use-cases.paragraphs"},"Products":{"type":"component","repeatable":true,"component":"use-cases.products"}}}	object	\N	\N
128	model_def_use-cases.labels	{"uid":"use-cases.labels","collectionName":"components_use_cases_labels","info":{"name":"labels","icon":"ellipsis-h"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"}}}	object	\N	\N
129	model_def_use-cases.metadata	{"uid":"use-cases.metadata","collectionName":"components_use_cases_metadata","info":{"name":"metadata","icon":"braille"},"options":{"timestamps":false},"attributes":{"metaTitle":{"type":"string"},"metaDescription":{"type":"text"}}}	object	\N	\N
130	model_def_use-cases.paragraphs	{"uid":"use-cases.paragraphs","collectionName":"components_use_cases_paragraphs","info":{"name":"Paragraphs","icon":"server"},"options":{"timestamps":false},"attributes":{"text":{"type":"text"}}}	object	\N	\N
131	model_def_use-cases.products	{"uid":"use-cases.products","collectionName":"components_use_cases_products","info":{"name":"Products","icon":"bolt","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"url":{"type":"string"},"verbs":{"type":"enumeration","enum":["get","post","put","patch","delete"]},"iconText":{"type":"string"},"num":{"type":"biginteger"}}}	object	\N	\N
132	model_def_use-cases.use-cases	{"uid":"use-cases.use-cases","collectionName":"components_use_cases_use_cases","info":{"name":"useCases","icon":"circle","description":""},"options":{"timestamps":false},"attributes":{}}	object	\N	\N
141	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
136	model_def_application::products.products	{"uid":"application::products.products","collectionName":"products","kind":"collectionType","info":{"name":"Products","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"price":{"type":"integer"},"title":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"btnLabel":{"type":"string"},"benefits":{"type":"json"},"content":{"type":"richtext"},"description":{"type":"text"},"status":{"type":"boolean"},"requiredSubscription":{"type":"boolean"},"requiredApproval":{"type":"boolean"},"limitSubscription":{"type":"integer"},"legalConditionals":{"type":"richtext"},"accentColor":{"type":"enumeration","enum":["primary","secondary","tertiary"]},"library_apis":{"via":"products","collection":"library-api","dominant":true,"attribute":"library-api","column":"id","isVirtual":true},"formSetting":{"type":"json"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
137	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
138	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
139	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
140	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
146	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
147	plugin_documentation_config	{"restrictedAccess":false}	object		
148	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
143	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
144	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
145	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
153	plugin_content_manager_configuration_components::cards.product-link-card	{"uid":"cards.product-link-card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"link","size":12}],[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
160	plugin_content_manager_configuration_components::custom.list-recent	{"uid":"custom.list-recent","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Items","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"items","size":12}]],"editRelations":[]},"isComponent":true}	object		
181	plugin_content_manager_configuration_components::elements.navbar-columns	{"uid":"elements.navbar-columns","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"drop":{"edit":{"label":"Drop","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Drop","searchable":true,"sortable":true}},"personalizedLink":{"edit":{"label":"PersonalizedLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PersonalizedLink","searchable":false,"sortable":false}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","drop"],"edit":[[{"name":"title","size":6},{"name":"drop","size":4}],[{"name":"personalizedLink","size":12}],[{"name":"links","size":12}]],"editRelations":[]},"isComponent":true}	object		
191	plugin_content_manager_configuration_components::elements.status-enumerable	{"uid":"elements.status-enumerable","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}}},"layouts":{"list":["id","status"],"edit":[[{"name":"status","size":6}]],"editRelations":[]},"isComponent":true}	object		
218	plugin_content_manager_configuration_components::links.icon-link	{"uid":"links.icon-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","icon"],"edit":[[{"name":"link","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
201	plugin_content_manager_configuration_components::formulario.option	{"uid":"formulario.option","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"value","defaultSortBy":"value","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"selected":{"edit":{"label":"Selected","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Selected","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}}},"layouts":{"list":["id","value","selected","text"],"edit":[[{"name":"value","size":6},{"name":"selected","size":6}],[{"name":"text","size":6}]],"editRelations":[]},"isComponent":true}	object		
214	plugin_content_manager_configuration_components::links.button-link	{"uid":"links.button-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","type"],"edit":[[{"name":"type","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
224	plugin_content_manager_configuration_components::new.cards-list	{"uid":"new.cards-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","icon"],"edit":[[{"name":"url","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
176	plugin_content_manager_configuration_components::elements.link-text	{"uid":"elements.link-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}}},"layouts":{"list":["id","text"],"edit":[[{"name":"link","size":12}],[{"name":"text","size":6}]],"editRelations":[]},"isComponent":true}	object		
186	plugin_content_manager_configuration_components::elements.search-output	{"uid":"elements.search-output","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"message","defaultSortBy":"message","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"message":{"edit":{"label":"Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Message","searchable":true,"sortable":true}}},"layouts":{"list":["id","message"],"edit":[[{"name":"message","size":6}]],"editRelations":[]},"isComponent":true}	object		
197	plugin_content_manager_configuration_components::formulario.button-form	{"uid":"formulario.button-form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"class":{"edit":{"label":"Class","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Class","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","text","name"],"edit":[[{"name":"type","size":6},{"name":"text","size":6}],[{"name":"name","size":6},{"name":"class","size":6}],[{"name":"order","size":4}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
211	plugin_content_manager_configuration_components::layout.navbar	{"uid":"layout.navbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"logotype":{"edit":{"label":"Logotype","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logotype","searchable":false,"sortable":false}},"navbarColumns":{"edit":{"label":"NavbarColumns","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NavbarColumns","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType"],"edit":[[{"name":"idContentType","size":6}],[{"name":"logotype","size":12}],[{"name":"navbarColumns","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
2	model_def_apis.filters	{"uid":"apis.filters","collectionName":"components_apis_filters","info":{"name":"Filters","icon":"bezier-curve"},"options":{"timestamps":false},"attributes":{"statusName":{"type":"string"},"projectTypeName":{"type":"string"},"versionName":{"type":"string"},"solutionName":{"type":"string"},"tagsName":{"type":"string"},"orderByName":{"type":"string"},"pagination":{"type":"component","repeatable":false,"component":"apis.pagination"}}}	object	\N	\N
173	plugin_content_manager_configuration_components::elements.footer-section	{"uid":"elements.footer-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtext":{"edit":{"label":"Subtext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtext","searchable":true,"sortable":true}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}},"drop":{"edit":{"label":"Drop","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Drop","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtext","drop"],"edit":[[{"name":"title","size":6},{"name":"subtext","size":6}],[{"name":"links","size":12}],[{"name":"drop","size":4}]],"editRelations":[]},"isComponent":true}	object		
180	plugin_content_manager_configuration_components::elements.main-hero	{"uid":"elements.main-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"isKeywordInverted":{"edit":{"label":"IsKeywordInverted","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsKeywordInverted","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","keyword","isKeywordInverted"],"edit":[[{"name":"title","size":6},{"name":"keyword","size":6}],[{"name":"isKeywordInverted","size":4}]],"editRelations":[]},"isComponent":true}	object		
192	plugin_content_manager_configuration_components::elements.subtitle	{"uid":"elements.subtitle","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","order","keyword"],"edit":[[{"name":"text","size":6},{"name":"order","size":4}],[{"name":"keyword","size":6}]],"editRelations":[]},"isComponent":true}	object		
202	plugin_content_manager_configuration_components::home.banner-section	{"uid":"home.banner-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"background":{"edit":{"label":"Background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Background","searchable":false,"sortable":false}},"search":{"edit":{"label":"Search","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Search","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","background"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"background","size":6},{"name":"search","size":6}],[{"name":"buttons","size":12}]],"editRelations":[]},"isComponent":true}	object		
213	plugin_content_manager_configuration_components::links.big-link	{"uid":"links.big-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"altText","defaultSortBy":"altText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"altText":{"edit":{"label":"AltText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AltText","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","altText","status"],"edit":[[{"name":"link","size":12}],[{"name":"icon","size":6},{"name":"altText","size":6}],[{"name":"status","size":6}]],"editRelations":[]},"isComponent":true}	object		
172	plugin_content_manager_configuration_components::elements.filter-versions	{"uid":"elements.filter-versions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"version":{"edit":{"label":"Version","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Version","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"version","size":12}]],"editRelations":[]},"isComponent":true}	object		
183	plugin_content_manager_configuration_components::elements.redirect-links	{"uid":"elements.redirect-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"links","size":12}]],"editRelations":[]},"isComponent":true}	object		
193	plugin_content_manager_configuration_components::elements.titles	{"uid":"elements.titles","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"class":{"edit":{"label":"Class","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Class","searchable":true,"sortable":true}},"tab":{"edit":{"label":"Tab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tab","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","label","class"],"edit":[[{"name":"title","size":6},{"name":"label","size":6}],[{"name":"class","size":6},{"name":"tab","size":6}]],"editRelations":[]},"isComponent":true}	object		
204	plugin_content_manager_configuration_components::home.discover-section	{"uid":"home.discover-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"statusApi":{"edit":{"label":"StatusApi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"StatusApi","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"smallText":{"edit":{"label":"SmallText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SmallText","searchable":true,"sortable":true}},"Products":{"edit":{"label":"Products","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Products","searchable":false,"sortable":false}},"iconText":{"edit":{"label":"IconText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IconText","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"button","size":12}],[{"name":"statusApi","size":12}],[{"name":"icon","size":6},{"name":"smallText","size":6}],[{"name":"Products","size":12}],[{"name":"iconText","size":6}]],"editRelations":[]},"isComponent":true}	object		
217	plugin_content_manager_configuration_components::links.drop-link	{"uid":"links.drop-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"mainLink":{"edit":{"label":"MainLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainLink","searchable":false,"sortable":false}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"mainLink","size":12}],[{"name":"links","size":12}]],"editRelations":[]},"isComponent":true}	object		
226	plugin_content_manager_configuration_components::sections.banner	{"uid":"sections.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"Titles":{"edit":{"label":"Titles","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Titles","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"Titles","size":12}],[{"name":"buttons","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
185	plugin_content_manager_configuration_components::elements.placeholder	{"uid":"elements.placeholder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"placeholder","defaultSortBy":"placeholder","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"placeholder":{"edit":{"label":"Placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Placeholder","searchable":true,"sortable":true}},"isRequired":{"edit":{"label":"IsRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRequired","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"validationMessage":{"edit":{"label":"ValidationMessage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ValidationMessage","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}}},"layouts":{"list":["id","placeholder","isRequired","type"],"edit":[[{"name":"placeholder","size":6},{"name":"isRequired","size":4}],[{"name":"type","size":6},{"name":"name","size":6}],[{"name":"value","size":6},{"name":"validationMessage","size":6}],[{"name":"label","size":6}]],"editRelations":[]},"isComponent":true}	object		
194	plugin_content_manager_configuration_components::elements.testimonial	{"uid":"elements.testimonial","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"AuthorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorName","searchable":true,"sortable":true}},"authorTitle":{"edit":{"label":"AuthorTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorTitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"bigIcon":{"edit":{"label":"BigIcon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BigIcon","searchable":false,"sortable":false}},"buttonLink":{"edit":{"label":"ButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonLink","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","keyword","authorName"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"keyword","size":6},{"name":"authorName","size":6}],[{"name":"authorTitle","size":6},{"name":"icon","size":6}],[{"name":"bigIcon","size":6}],[{"name":"buttonLink","size":12}]],"editRelations":[]},"isComponent":true}	object		
203	plugin_content_manager_configuration_components::home.benefits-list	{"uid":"home.benefits-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
179	plugin_content_manager_configuration_components::elements.logotype	{"uid":"elements.logotype","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"altText","defaultSortBy":"altText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"info":{"edit":{"label":"Info","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Info","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"altText":{"edit":{"label":"AltText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AltText","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","altText"],"edit":[[{"name":"info","size":12}],[{"name":"icon","size":6},{"name":"altText","size":6}]],"editRelations":[]},"isComponent":true}	object		
188	plugin_content_manager_configuration_components::elements.select	{"uid":"elements.select","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"tetretert":{"edit":{"label":"Tetretert","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tetretert","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"tetretert","size":12}],[{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
199	plugin_content_manager_configuration_components::formulario.form	{"uid":"formulario.form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":false,"sortable":false}},"inputs":{"edit":{"label":"Inputs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Inputs","searchable":false,"sortable":false}},"checkboxes":{"edit":{"label":"Checkboxes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Checkboxes","searchable":false,"sortable":false}},"select":{"edit":{"label":"Select","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Select","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"subtitle","size":12}],[{"name":"inputs","size":12}],[{"name":"checkboxes","size":12}],[{"name":"select","size":12}],[{"name":"buttons","size":12}]],"editRelations":[]},"isComponent":true}	object		
209	plugin_content_manager_configuration_components::home.work-section	{"uid":"home.work-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Steps":{"edit":{"label":"Steps","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Steps","searchable":false,"sortable":false}},"background":{"edit":{"label":"Background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Background","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","background"],"edit":[[{"name":"title","size":6}],[{"name":"Steps","size":12}],[{"name":"background","size":6}],[{"name":"buttons","size":12}]],"editRelations":[]},"isComponent":true}	object		
219	plugin_content_manager_configuration_components::links.link	{"uid":"links.link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"target":{"edit":{"label":"Target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Target","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","url","target"],"edit":[[{"name":"name","size":6},{"name":"url","size":6}],[{"name":"target","size":6}]],"editRelations":[]},"isComponent":true}	object		
184	plugin_content_manager_configuration_components::elements.search-input	{"uid":"elements.search-input","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"placeholder","defaultSortBy":"placeholder","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"placeholder":{"edit":{"label":"Placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Placeholder","searchable":true,"sortable":true}},"submitButton":{"edit":{"label":"SubmitButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SubmitButton","searchable":false,"sortable":false}}},"layouts":{"list":["id","placeholder"],"edit":[[{"name":"placeholder","size":6}],[{"name":"submitButton","size":12}]],"editRelations":[]},"isComponent":true}	object		
190	plugin_content_manager_configuration_components::elements.social-network	{"uid":"elements.social-network","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","type","icon"],"edit":[[{"name":"url","size":6},{"name":"type","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
195	plugin_content_manager_configuration_components::formulario.checkbox	{"uid":"formulario.checkbox","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"isRequired":{"edit":{"label":"IsRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRequired","searchable":true,"sortable":true}},"errorMessage":{"edit":{"label":"ErrorMessage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ErrorMessage","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","label","name"],"edit":[[{"name":"type","size":6},{"name":"label","size":6}],[{"name":"name","size":6},{"name":"value","size":4}],[{"name":"isRequired","size":4},{"name":"errorMessage","size":6}],[{"name":"order","size":4}]],"editRelations":[]},"isComponent":true}	object		
215	plugin_content_manager_configuration_components::links.button	{"uid":"links.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":true,"sortable":true}},"class":{"edit":{"label":"Class","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Class","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","type","order"],"edit":[[{"name":"name","size":6},{"name":"type","size":6}],[{"name":"order","size":4},{"name":"link","size":6}],[{"name":"class","size":6}]],"editRelations":[]},"isComponent":true}	object		
187	plugin_i18n_default_locale	"es"	string		
19	model_def_elements.card	{"uid":"elements.card","collectionName":"components_elements_cards","info":{"name":"Card","icon":"money-check"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
178	plugin_content_manager_configuration_components::elements.image-list	{"uid":"elements.image-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","image"],"edit":[[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
212	plugin_content_manager_configuration_components::links.basic-link	{"uid":"links.basic-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"target":{"edit":{"label":"Target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Target","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","name","target"],"edit":[[{"name":"url","size":6},{"name":"name","size":6}],[{"name":"target","size":6}]],"editRelations":[]},"isComponent":true}	object		
223	plugin_content_manager_configuration_components::new.card-list	{"uid":"new.card-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","icon"],"edit":[[{"name":"url","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
232	plugin_content_manager_configuration_components::sections.big-hero	{"uid":"sections.big-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","description","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"description","size":6},{"name":"icon","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
200	plugin_content_manager_configuration_components::formulario.input	{"uid":"formulario.input","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"placeholder","defaultSortBy":"placeholder","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"placeholder":{"edit":{"label":"Placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Placeholder","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"isRequired":{"edit":{"label":"IsRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRequired","searchable":true,"sortable":true}},"errorMessage":{"edit":{"label":"ErrorMessage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ErrorMessage","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}}},"layouts":{"list":["id","placeholder","name","value"],"edit":[[{"name":"placeholder","size":6},{"name":"name","size":6}],[{"name":"value","size":6},{"name":"icon","size":6}],[{"name":"isRequired","size":4},{"name":"errorMessage","size":6}],[{"name":"order","size":4},{"name":"type","size":6}]],"editRelations":[]},"isComponent":true}	object		
210	plugin_content_manager_configuration_components::layout.footer	{"uid":"layout.footer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"copyright","defaultSortBy":"copyright","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"redirectLinks":{"edit":{"label":"RedirectLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RedirectLinks","searchable":false,"sortable":false}},"logotype":{"edit":{"label":"Logotype","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logotype","searchable":false,"sortable":false}},"copyright":{"edit":{"label":"Copyright","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Copyright","searchable":true,"sortable":true}},"sharing":{"edit":{"label":"Sharing","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Sharing","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","copyright"],"edit":[[{"name":"idContentType","size":6}],[{"name":"redirectLinks","size":12}],[{"name":"logotype","size":12}],[{"name":"copyright","size":6}],[{"name":"sharing","size":12}]],"editRelations":[]},"isComponent":true}	object		
220	plugin_content_manager_configuration_components::links.sub-link	{"uid":"links.sub-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"descripcion":{"edit":{"label":"Descripcion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Descripcion","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","icon","descripcion"],"edit":[[{"name":"name","size":6},{"name":"icon","size":6}],[{"name":"descripcion","size":6}]],"editRelations":[]},"isComponent":true}	object		
234	plugin_content_manager_configuration_components::sections.basic-container	{"uid":"sections.basic-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","idContentType","title"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
241	plugin_content_manager_configuration_components::sections.cookies	{"uid":"sections.cookies","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"actions":{"edit":{"label":"Actions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Actions","searchable":false,"sortable":false}},"info":{"edit":{"label":"Info","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Info","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"actions","size":12}],[{"name":"info","size":12}]],"editRelations":[]},"isComponent":true}	object		
287	plugin_content_manager_configuration_content_types::application::library-api.library-api	{"uid":"application::library-api.library-api","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"color_status":{"edit":{"label":"Color_status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Color_status","searchable":true,"sortable":true}},"footerText":{"edit":{"label":"FooterText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FooterText","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"version":{"edit":{"label":"Version","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Version","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}},"benefits":{"edit":{"label":"Benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Benefits","searchable":false,"sortable":false}},"tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tags","searchable":false,"sortable":false}},"openDoc":{"edit":{"label":"OpenDoc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"OpenDoc","searchable":false,"sortable":false}},"markdown":{"edit":{"label":"Markdown","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Markdown","searchable":false,"sortable":false}},"products":{"edit":{"label":"Products","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Products","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","description"],"editRelations":["products"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"description","size":6},{"name":"color_status","size":6}],[{"name":"footerText","size":6},{"name":"image","size":6}],[{"name":"version","size":6}],[{"name":"buttons","size":12}],[{"name":"benefits","size":12}],[{"name":"tags","size":12}],[{"name":"openDoc","size":12}],[{"name":"markdown","size":12}],[{"name":"status","size":6}]]}}	object		
36	model_def_elements.placeholder	{"uid":"elements.placeholder","collectionName":"components_elements_placeholders","info":{"name":"formInput","icon":"arrow-circle-down","description":""},"options":{"timestamps":false},"attributes":{"placeholder":{"type":"string"},"isRequired":{"type":"boolean"},"type":{"type":"enumeration","enum":["text","textarea","select","number","password","email","checkbox"]},"name":{"type":"string"},"value":{"type":"text"},"validationMessage":{"type":"text"},"label":{"type":"string"}}}	object	\N	\N
102	model_def_sections.how-works	{"uid":"sections.how-works","collectionName":"components_sections_how_works","info":{"name":"howWorks","icon":"bone"},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"header":{"type":"component","repeatable":false,"component":"elements.main-hero"},"background":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"subtext":{"type":"string"},"features":{"type":"component","repeatable":true,"component":"elements.big-feature"},"button":{"type":"component","repeatable":true,"component":"links.button-link"}}}	object	\N	\N
240	plugin_content_manager_configuration_components::sections.content	{"uid":"sections.content","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[],"editRelations":[]},"isComponent":true}	object		
251	plugin_content_manager_configuration_components::sections.icon-container	{"uid":"sections.icon-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","icon"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
268	plugin_content_manager_configuration_components::sections.time-section	{"uid":"sections.time-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","images"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"button","size":12}],[{"name":"images","size":6}]],"editRelations":[]},"isComponent":true}	object		
283	plugin_content_manager_configuration_content_types::application::blog-item.blog-item	{"uid":"application::blog-item.blog-item","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"timeRead":{"edit":{"label":"TimeRead","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TimeRead","searchable":true,"sortable":true}},"tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tags","searchable":false,"sortable":false}},"questions":{"edit":{"label":"Questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Questions","searchable":false,"sortable":false}},"nameUser":{"edit":{"label":"NameUser","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NameUser","searchable":true,"sortable":true}},"photoUser":{"edit":{"label":"PhotoUser","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PhotoUser","searchable":false,"sortable":false}},"jobUser":{"edit":{"label":"JobUser","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JobUser","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","image"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"image","size":6},{"name":"timeRead","size":6}],[{"name":"tags","size":12}],[{"name":"questions","size":12}],[{"name":"nameUser","size":6},{"name":"photoUser","size":6}],[{"name":"jobUser","size":6},{"name":"date","size":4}],[{"name":"description","size":6}],[{"name":"content","size":12}]]}}	object		
53	model_def_formulario.select-option	{"uid":"formulario.select-option","collectionName":"components_formulario_select_options","info":{"name":"SelectOption","icon":"anchor","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"Option":{"type":"component","repeatable":true,"component":"formulario.option"},"isRequired":{"type":"boolean"},"errorMessage":{"type":"string"},"type":{"type":"string"},"order":{"type":"integer"}}}	object	\N	\N
150	plugin_content_manager_configuration_components::apis.pagination	{"uid":"apis.pagination","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstName","defaultSortBy":"firstName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"firstName":{"edit":{"label":"FirstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FirstName","searchable":true,"sortable":true}},"secondName":{"edit":{"label":"SecondName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SecondName","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstName","secondName"],"edit":[[{"name":"firstName","size":6},{"name":"secondName","size":6}]],"editRelations":[]},"isComponent":true}	object		
235	plugin_content_manager_configuration_components::sections.calculate-section	{"uid":"sections.calculate-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","image"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"image","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
245	plugin_content_manager_configuration_components::sections.feature-basic-group	{"uid":"sections.feature-basic-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}}},"layouts":{"list":["id","idContentType"],"edit":[[{"name":"idContentType","size":6}]],"editRelations":[]},"isComponent":true}	object		
255	plugin_content_manager_configuration_components::sections.logotype	{"uid":"sections.logotype","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"altText","defaultSortBy":"altText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"mainText":{"edit":{"label":"MainText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainText","searchable":false,"sortable":false}},"altText":{"edit":{"label":"AltText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AltText","searchable":true,"sortable":true}}},"layouts":{"list":["id","altText"],"edit":[[{"name":"mainText","size":12}],[{"name":"altText","size":6}]],"editRelations":[]},"isComponent":true}	object		
244	plugin_content_manager_configuration_components::sections.feature-columns-group	{"uid":"sections.feature-columns-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"mainHero":{"edit":{"label":"MainHero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainHero","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"features","size":12}],[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"icon","size":6},{"name":"keyword","size":6}],[{"name":"mainHero","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
265	plugin_content_manager_configuration_components::sections.sidebar	{"uid":"sections.sidebar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"Entries":{"edit":{"label":"Entries","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Entries","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType"],"edit":[[{"name":"idContentType","size":6}],[{"name":"Entries","size":12}]],"editRelations":[]},"isComponent":true}	object		
275	plugin_content_manager_configuration_components::use-cases.button-list	{"uid":"use-cases.button-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
286	plugin_content_manager_configuration_content_types::application::products.products	{"uid":"application::products.products","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"btnLabel":{"edit":{"label":"BtnLabel","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BtnLabel","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"Benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Benefits","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"requiredSubscription":{"edit":{"label":"RequiredSubscription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RequiredSubscription","searchable":true,"sortable":true}},"requiredApproval":{"edit":{"label":"RequiredApproval","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RequiredApproval","searchable":true,"sortable":true}},"limitSubscription":{"edit":{"label":"LimitSubscription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LimitSubscription","searchable":true,"sortable":true}},"legalConditionals":{"edit":{"label":"LegalConditionals","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LegalConditionals","searchable":false,"sortable":false}},"accentColor":{"edit":{"label":"AccentColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AccentColor","searchable":true,"sortable":true}},"library_apis":{"edit":{"label":"Library_apis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Library_apis","searchable":false,"sortable":false}},"formSetting":{"edit":{"label":"FormSetting","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FormSetting","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","price","title","slug"],"editRelations":["library_apis"],"edit":[[{"name":"price","size":4},{"name":"title","size":6}],[{"name":"slug","size":6},{"name":"btnLabel","size":6}],[{"name":"benefits","size":12}],[{"name":"content","size":12}],[{"name":"description","size":6},{"name":"status","size":4}],[{"name":"requiredSubscription","size":4},{"name":"requiredApproval","size":4},{"name":"limitSubscription","size":4}],[{"name":"legalConditionals","size":12}],[{"name":"accentColor","size":6}],[{"name":"formSetting","size":12}]]}}	object		
54	model_def_home.banner-section	{"uid":"home.banner-section","collectionName":"components_home_banner_sections","info":{"name":"BannerSection","icon":"arrow-up","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"background":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"search":{"type":"string"},"buttons":{"type":"component","repeatable":true,"component":"links.button"}}}	object	\N	\N
151	plugin_content_manager_configuration_components::cards.card	{"uid":"cards.card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}},"titleFooter":{"edit":{"label":"TitleFooter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TitleFooter","searchable":true,"sortable":true}},"descriptionFooter":{"edit":{"label":"DescriptionFooter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DescriptionFooter","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"LinkName":{"edit":{"label":"LinkName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LinkName","searchable":true,"sortable":true}},"LinkUrl":{"edit":{"label":"LinkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LinkUrl","searchable":true,"sortable":true}},"version":{"edit":{"label":"Version","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Version","searchable":true,"sortable":true}},"steps":{"edit":{"label":"Steps","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Steps","searchable":false,"sortable":false}},"descriptionHeader":{"edit":{"label":"DescriptionHeader","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DescriptionHeader","searchable":true,"sortable":true}},"timeRead":{"edit":{"label":"TimeRead","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TimeRead","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6},{"name":"titleFooter","size":6}],[{"name":"descriptionFooter","size":6},{"name":"image","size":6}],[{"name":"LinkName","size":6},{"name":"LinkUrl","size":6}],[{"name":"version","size":6}],[{"name":"steps","size":12}],[{"name":"descriptionHeader","size":6},{"name":"timeRead","size":6}]],"editRelations":[]},"isComponent":true}	object		
158	plugin_content_manager_configuration_components::custom.chips	{"uid":"custom.chips","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"color","defaultSortBy":"color","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"color":{"edit":{"label":"Color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Color","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","color","name"],"edit":[[{"name":"color","size":6},{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
248	plugin_content_manager_configuration_components::sections.fourth-footer-section	{"uid":"sections.fourth-footer-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"IdContentType","defaultSortBy":"IdContentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"IdContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}},"buttonAffirmative":{"edit":{"label":"ButtonAffirmative","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonAffirmative","searchable":false,"sortable":false}},"buttonNegative":{"edit":{"label":"ButtonNegative","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonNegative","searchable":false,"sortable":false}}},"layouts":{"list":["id","IdContentType"],"edit":[[{"name":"IdContentType","size":6}],[{"name":"text","size":12}],[{"name":"buttonAffirmative","size":12}],[{"name":"buttonNegative","size":12}]],"editRelations":[]},"isComponent":true}	object		
260	plugin_content_manager_configuration_components::sections.rich-text	{"uid":"sections.rich-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"content","size":12}]],"editRelations":[]},"isComponent":true}	object		
271	plugin_content_manager_configuration_components::texts.link-text	{"uid":"texts.link-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","text"],"edit":[[{"name":"text","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
290	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
70	model_def_links.icon-link	{"uid":"links.icon-link","collectionName":"components_links_icon_links","info":{"name":"iconLink","icon":"battery-three-quarters"},"options":{"timestamps":false},"attributes":{"link":{"type":"component","repeatable":false,"component":"links.link"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
155	plugin_content_manager_configuration_components::custom.carousel	{"uid":"custom.carousel","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"slider","defaultSortBy":"slider","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"slider":{"edit":{"label":"Slider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider","searchable":true,"sortable":true}},"sliderCarousel":{"edit":{"label":"SliderCarousel","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SliderCarousel","searchable":false,"sortable":false}}},"layouts":{"list":["id","slider"],"edit":[[{"name":"slider","size":6}],[{"name":"sliderCarousel","size":12}]],"editRelations":[]},"isComponent":true}	object		
253	plugin_content_manager_configuration_components::sections.individual-container	{"uid":"sections.individual-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","icon"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"icon","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
261	plugin_content_manager_configuration_components::sections.search	{"uid":"sections.search","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"searchInput":{"edit":{"label":"SearchInput","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SearchInput","searchable":false,"sortable":false}},"searchOutput":{"edit":{"label":"SearchOutput","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SearchOutput","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType"],"edit":[[{"name":"idContentType","size":6}],[{"name":"searchInput","size":12}],[{"name":"searchOutput","size":12}]],"editRelations":[]},"isComponent":true}	object		
279	plugin_content_manager_configuration_components::use-cases.paragraphs	{"uid":"use-cases.paragraphs","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}}},"layouts":{"list":["id","text"],"edit":[[{"name":"text","size":6}]],"editRelations":[]},"isComponent":true}	object		
273	plugin_content_manager_configuration_components::use-cases.use-cases	{"uid":"use-cases.use-cases","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[],"editRelations":[]},"isComponent":true}	object		
269	plugin_content_manager_configuration_components::sections.title-section	{"uid":"sections.title-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}]],"editRelations":[]},"isComponent":true}	object		
277	plugin_content_manager_configuration_components::use-cases.labels	{"uid":"use-cases.labels","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
285	plugin_content_manager_configuration_content_types::application::page.page	{"uid":"application::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shortName","defaultSortBy":"shortName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"shortName":{"edit":{"label":"ShortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShortName","searchable":true,"sortable":true}},"metadata":{"edit":{"label":"Metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Metadata","searchable":false,"sortable":false}},"contentSections":{"edit":{"label":"ContentSections","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentSections","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","shortName","created_at"],"editRelations":[],"edit":[[{"name":"slug","size":6},{"name":"shortName","size":6}],[{"name":"metadata","size":12}],[{"name":"contentSections","size":12}]]}}	object		
87	model_def_sections.calculate-section	{"uid":"sections.calculate-section","collectionName":"components_sections_calculate_sections","info":{"name":"CalculateSection","icon":"strikethrough","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"button":{"type":"component","repeatable":false,"component":"links.basic-link"}}}	object	\N	\N
264	plugin_content_manager_configuration_components::sections.share-options	{"uid":"sections.share-options","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"links","size":12}]],"editRelations":[]},"isComponent":true}	object		
274	plugin_content_manager_configuration_components::use-cases.banner	{"uid":"use-cases.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"idContentType","defaultSortBy":"idContentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"buttonList":{"edit":{"label":"ButtonList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonList","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","image","title"],"edit":[[{"name":"idContentType","size":6},{"name":"image","size":6}],[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"buttonList","size":12}]],"editRelations":[]},"isComponent":true}	object		
282	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
294	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
257	plugin_content_manager_configuration_components::sections.main-features	{"uid":"sections.main-features","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"features","size":12}],[{"name":"icon","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
272	plugin_content_manager_configuration_components::use-cases.badge-list	{"uid":"use-cases.badge-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
291	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
119	model_def_sections.testimonials-group	{"uid":"sections.testimonials-group","collectionName":"components_slices_testimonials_groups","info":{"name":"TestimonialsGroup","icon":"user-friends","description":""},"options":{"timestamps":false},"attributes":{"idContentType":{"type":"uid"},"title":{"type":"string"},"keyword":{"type":"string"},"description":{"type":"text"},"link":{"type":"component","repeatable":false,"component":"links.link"},"testimonials":{"type":"component","repeatable":true,"component":"elements.testimonial"},"mainHero":{"type":"component","repeatable":true,"component":"elements.main-hero"},"icon":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false}}}	object	\N	\N
247	plugin_content_manager_configuration_components::sections.feature-rows-group	{"uid":"sections.feature-rows-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"mainHero":{"edit":{"label":"MainHero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainHero","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","keyword"],"edit":[[{"name":"idContentType","size":6}],[{"name":"features","size":12}],[{"name":"title","size":6},{"name":"keyword","size":6}],[{"name":"description","size":12}],[{"name":"icon","size":6}],[{"name":"mainHero","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
266	plugin_content_manager_configuration_components::sections.social-networks	{"uid":"sections.social-networks","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"sharingContent":{"edit":{"label":"SharingContent","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SharingContent","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"sharingContent","size":12}]],"editRelations":[]},"isComponent":true}	object		
289	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
133	model_def_application::blog-item.blog-item	{"uid":"application::blog-item.blog-item","collectionName":"blog_items","kind":"collectionType","info":{"name":"BlogItem","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"slug":{"type":"uid"},"image":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"timeRead":{"type":"string"},"tags":{"type":"component","repeatable":true,"component":"elements.titles"},"questions":{"type":"component","repeatable":true,"component":"custom.questions"},"nameUser":{"type":"string"},"photoUser":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"jobUser":{"type":"string"},"date":{"type":"date"},"description":{"type":"text"},"content":{"type":"richtext"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
159	plugin_content_manager_configuration_components::custom.list-filter	{"uid":"custom.list-filter","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Items","searchable":false,"sortable":false}}},"layouts":{"list":["id","Title"],"edit":[[{"name":"Title","size":6}],[{"name":"items","size":12}]],"editRelations":[]},"isComponent":true}	object		
258	plugin_content_manager_configuration_components::sections.our-products-section	{"uid":"sections.our-products-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"CardProduct":{"edit":{"label":"CardProduct","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CardProduct","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"CardProduct","size":12}]],"editRelations":[]},"isComponent":true}	object		
278	plugin_content_manager_configuration_components::use-cases.metadata	{"uid":"use-cases.metadata","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"MetaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"MetaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaDescription","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}]],"editRelations":[]},"isComponent":true}	object		
284	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
252	plugin_content_manager_configuration_components::sections.icon-hero	{"uid":"sections.icon-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
262	plugin_content_manager_configuration_components::sections.section-use-case	{"uid":"sections.section-use-case","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"useCaseList":{"edit":{"label":"UseCaseList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UseCaseList","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"useCaseList","size":12}]],"editRelations":[]},"isComponent":true}	object		
280	plugin_content_manager_configuration_components::use-cases.products	{"uid":"use-cases.products","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"verbs":{"edit":{"label":"Verbs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Verbs","searchable":true,"sortable":true}},"iconText":{"edit":{"label":"IconText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IconText","searchable":true,"sortable":true}},"num":{"edit":{"label":"Num","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Num","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"icon","size":6},{"name":"url","size":6}],[{"name":"verbs","size":6},{"name":"iconText","size":6}],[{"name":"num","size":4}]],"editRelations":[]},"isComponent":true}	object		
281	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
288	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
134	model_def_application::library-api.library-api	{"uid":"application::library-api.library-api","collectionName":"library_apis","kind":"collectionType","info":{"name":"LibraryApi","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"slug":{"type":"uid"},"description":{"type":"text"},"color_status":{"type":"string"},"footerText":{"type":"string"},"image":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"version":{"type":"string"},"buttons":{"type":"component","repeatable":true,"component":"links.button"},"benefits":{"type":"component","repeatable":true,"component":"home.work-section"},"tags":{"type":"component","repeatable":true,"component":"elements.titles"},"openDoc":{"type":"json"},"markdown":{"type":"richtext"},"products":{"via":"library_apis","collection":"products","attribute":"product","column":"id","isVirtual":true},"status":{"type":"enumeration","enum":["publicado","noPublicado"]},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
169	plugin_content_manager_configuration_components::elements.custom-radio	{"uid":"elements.custom-radio","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"estatus":{"edit":{"label":"Estatus","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Estatus","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","estatus"],"edit":[[{"name":"title","size":6},{"name":"estatus","size":6}]],"editRelations":[]},"isComponent":true}	object		
259	plugin_content_manager_configuration_components::sections.questions-list-section	{"uid":"sections.questions-list-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"questionsList":{"edit":{"label":"QuestionsList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"QuestionsList","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"questionsList","size":12}]],"editRelations":[]},"isComponent":true}	object		
270	plugin_content_manager_configuration_components::texts.icon-text	{"uid":"texts.icon-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"altText":{"edit":{"label":"AltText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AltText","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","icon","altText"],"edit":[[{"name":"name","size":6},{"name":"icon","size":6}],[{"name":"altText","size":6}]],"editRelations":[]},"isComponent":true}	object		
292	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
142	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
135	model_def_application::page.page	{"uid":"application::page.page","collectionName":"pages","kind":"collectionType","info":{"name":"Page","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"slug":{"type":"uid","required":true,"targetField":"shortName"},"shortName":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","required":true,"pluginOptions":{"i18n":{"localized":true}}},"contentSections":{"type":"dynamiczone","components":["sections.button-hero","elements.entry","sections.time-section","sections.calculate-section","sections.our-products-section","sections.for-all-section","sections.title-section","sections.questions-list-section","sections.section-use-case","use-cases.calculate-use-case","sections.section-widget-form","home.discover-section","home.widget-section","home.key-section","home.banner-section","home.work-section","apis.filters","custom.carousel","custom.list-filter","custom.tab-card","custom.list-recent"],"pluginOptions":{"i18n":{"localized":true}}},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"page","populate":["_id","id","locale","published_at"],"attribute":"related_page","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
149	plugin_content_manager_configuration_components::apis.filters	{"uid":"apis.filters","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"statusName","defaultSortBy":"statusName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"statusName":{"edit":{"label":"StatusName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"StatusName","searchable":true,"sortable":true}},"projectTypeName":{"edit":{"label":"ProjectTypeName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProjectTypeName","searchable":true,"sortable":true}},"versionName":{"edit":{"label":"VersionName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VersionName","searchable":true,"sortable":true}},"solutionName":{"edit":{"label":"SolutionName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SolutionName","searchable":true,"sortable":true}},"tagsName":{"edit":{"label":"TagsName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TagsName","searchable":true,"sortable":true}},"orderByName":{"edit":{"label":"OrderByName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"OrderByName","searchable":true,"sortable":true}},"pagination":{"edit":{"label":"Pagination","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Pagination","searchable":false,"sortable":false}}},"layouts":{"list":["id","statusName","projectTypeName","versionName"],"edit":[[{"name":"statusName","size":6},{"name":"projectTypeName","size":6}],[{"name":"versionName","size":6},{"name":"solutionName","size":6}],[{"name":"tagsName","size":6},{"name":"orderByName","size":6}],[{"name":"pagination","size":12}]],"editRelations":[]},"isComponent":true}	object		
156	plugin_content_manager_configuration_components::custom.items	{"uid":"custom.items","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","image"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
157	plugin_content_manager_configuration_components::custom.section-card	{"uid":"custom.section-card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}]],"editRelations":[]},"isComponent":true}	object		
163	plugin_content_manager_configuration_components::elements.badget	{"uid":"elements.badget","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
295	type_setup_initHasRun	true	boolean	development	
293	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
152	plugin_content_manager_configuration_components::cards.card-product	{"uid":"cards.card-product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"icon","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
154	plugin_content_manager_configuration_components::cards.use-case-card	{"uid":"cards.use-case-card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"estatus":{"edit":{"label":"Estatus","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Estatus","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"linkUrl":{"edit":{"label":"LinkUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LinkUrl","searchable":true,"sortable":true}},"linkText":{"edit":{"label":"LinkText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LinkText","searchable":true,"sortable":true}},"badge":{"edit":{"label":"Badge","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Badge","searchable":true,"sortable":true}},"statusText":{"edit":{"label":"StatusText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"StatusText","searchable":true,"sortable":true}}},"layouts":{"list":["id","estatus","title","description"],"edit":[[{"name":"estatus","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"picture","size":6}],[{"name":"linkUrl","size":6},{"name":"linkText","size":6}],[{"name":"badge","size":6},{"name":"statusText","size":6}]],"editRelations":[]},"isComponent":true}	object		
161	plugin_content_manager_configuration_components::custom.questions	{"uid":"custom.questions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"question","defaultSortBy":"question","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"question":{"edit":{"label":"Question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Question","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"img":{"edit":{"label":"Img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Img","searchable":false,"sortable":false}},"seccion":{"edit":{"label":"Seccion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Seccion","searchable":true,"sortable":true}},"description_two":{"edit":{"label":"Description_two","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description_two","searchable":false,"sortable":false}}},"layouts":{"list":["id","question","description","img"],"edit":[[{"name":"question","size":6},{"name":"description","size":6}],[{"name":"img","size":6},{"name":"seccion","size":6}],[{"name":"description_two","size":12}]],"editRelations":[]},"isComponent":true}	object		
164	plugin_content_manager_configuration_components::custom.tab-card	{"uid":"custom.tab-card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"img":{"edit":{"label":"Img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Img","searchable":false,"sortable":false}},"cards":{"edit":{"label":"Cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cards","searchable":false,"sortable":false}},"tab":{"edit":{"label":"Tab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tab","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","img","tab"],"edit":[[{"name":"name","size":6},{"name":"img","size":6}],[{"name":"cards","size":12}],[{"name":"tab","size":6}]],"editRelations":[]},"isComponent":true}	object		
167	plugin_content_manager_configuration_components::elements.card	{"uid":"elements.card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
296	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
182	plugin_content_manager_configuration_components::elements.notification-banner	{"uid":"elements.notification-banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","type","icon"],"edit":[[{"name":"title","size":6}],[{"name":"body","size":12}],[{"name":"type","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
198	plugin_content_manager_configuration_components::formulario.filter-estatus	{"uid":"formulario.filter-estatus","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"checkboxes":{"edit":{"label":"Checkboxes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Checkboxes","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"checkboxes","size":12}]],"editRelations":[]},"isComponent":true}	object		
206	plugin_content_manager_configuration_components::home.status-api	{"uid":"home.status-api","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","status"],"edit":[[{"name":"text","size":6},{"name":"status","size":6}]],"editRelations":[]},"isComponent":true}	object		
216	plugin_content_manager_configuration_components::links.drop-big-link	{"uid":"links.drop-big-link","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"mainLink":{"edit":{"label":"MainLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainLink","searchable":false,"sortable":false}},"bigLinks":{"edit":{"label":"BigLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BigLinks","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"mainLink","size":12}],[{"name":"bigLinks","size":12}]],"editRelations":[]},"isComponent":true}	object		
227	plugin_content_manager_configuration_components::new.sharing	{"uid":"new.sharing","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shareName","defaultSortBy":"shareName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"shareList":{"edit":{"label":"ShareList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareList","searchable":false,"sortable":false}},"shareName":{"edit":{"label":"ShareName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareName","searchable":true,"sortable":true}}},"layouts":{"list":["id","shareName"],"edit":[[{"name":"shareList","size":12}],[{"name":"shareName","size":6}]],"editRelations":[]},"isComponent":true}	object		
162	plugin_content_manager_configuration_components::elements.basic-card	{"uid":"elements.basic-card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","description"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":6},{"name":"icon","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
233	plugin_content_manager_configuration_components::sections.bottom-actions	{"uid":"sections.bottom-actions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","keyword"],"edit":[[{"name":"title","size":6}],[{"name":"buttons","size":12}],[{"name":"keyword","size":6}]],"editRelations":[]},"isComponent":true}	object		
250	plugin_content_manager_configuration_components::sections.how-works	{"uid":"sections.how-works","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"subtext","defaultSortBy":"subtext","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"background":{"edit":{"label":"Background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Background","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"subtext":{"edit":{"label":"Subtext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtext","searchable":true,"sortable":true}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","background","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"background","size":6},{"name":"icon","size":6}],[{"name":"subtext","size":6}],[{"name":"features","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
165	plugin_content_manager_configuration_components::elements.big-feature	{"uid":"elements.big-feature","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"position":{"edit":{"label":"Position","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Position","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","position"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"position","size":6}]],"editRelations":[]},"isComponent":true}	object		
177	plugin_content_manager_configuration_components::elements.logo	{"uid":"elements.logo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"titles":{"edit":{"label":"Titles","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Titles","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","icon"],"edit":[[{"name":"titles","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
189	plugin_content_manager_configuration_components::elements.slider	{"uid":"elements.slider","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"imgSrc":{"edit":{"label":"ImgSrc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImgSrc","searchable":false,"sortable":false}},"actionButtons":{"edit":{"label":"ActionButtons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ActionButtons","searchable":false,"sortable":false}},"subtitleList":{"edit":{"label":"SubtitleList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SubtitleList","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","imgSrc"],"edit":[[{"name":"title","size":6},{"name":"imgSrc","size":6}],[{"name":"actionButtons","size":12}],[{"name":"subtitleList","size":12}]],"editRelations":[]},"isComponent":true}	object		
237	plugin_content_manager_configuration_components::sections.call-action	{"uid":"sections.call-action","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"description","defaultSortBy":"description","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"backgroundIcon":{"edit":{"label":"BackgroundIcon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BackgroundIcon","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","description","backgroundIcon","icon"],"edit":[[{"name":"description","size":6},{"name":"backgroundIcon","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
256	plugin_content_manager_configuration_components::sections.main-container	{"uid":"sections.main-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
276	plugin_content_manager_configuration_components::use-cases.calculate-use-case	{"uid":"use-cases.calculate-use-case","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"smallText":{"edit":{"label":"SmallText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SmallText","searchable":true,"sortable":true}},"Paragraphs":{"edit":{"label":"Paragraphs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Paragraphs","searchable":false,"sortable":false}},"Products":{"edit":{"label":"Products","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Products","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","icon","smallText"],"edit":[[{"name":"title","size":6}],[{"name":"buttons","size":12}],[{"name":"icon","size":6},{"name":"smallText","size":6}],[{"name":"Paragraphs","size":12}],[{"name":"Products","size":12}]],"editRelations":[]},"isComponent":true}	object		
239	plugin_content_manager_configuration_components::sections.content-section	{"uid":"sections.content-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
166	plugin_content_manager_configuration_components::elements.feature-column	{"uid":"elements.feature-column","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6},{"name":"keyword","size":6}]],"editRelations":[]},"isComponent":true}	object		
267	plugin_content_manager_configuration_components::sections.testimonials-group	{"uid":"sections.testimonials-group","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"testimonials":{"edit":{"label":"Testimonials","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Testimonials","searchable":false,"sortable":false}},"mainHero":{"edit":{"label":"MainHero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainHero","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","keyword"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"keyword","size":6},{"name":"description","size":6}],[{"name":"link","size":12}],[{"name":"testimonials","size":12}],[{"name":"mainHero","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
171	plugin_content_manager_configuration_components::elements.entry	{"uid":"elements.entry","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"content","size":12}]],"editRelations":[]},"isComponent":true}	object		
221	plugin_content_manager_configuration_components::links.share-list	{"uid":"links.share-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"target":{"edit":{"label":"Target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Target","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","target","icon"],"edit":[[{"name":"url","size":6},{"name":"target","size":6}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
231	plugin_content_manager_configuration_components::sections.big-container	{"uid":"sections.big-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"title","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
243	plugin_content_manager_configuration_components::sections.entries-list	{"uid":"sections.entries-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"Entries":{"edit":{"label":"Entries","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Entries","searchable":false,"sortable":false}},"mainHero":{"edit":{"label":"MainHero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainHero","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","description"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"icon","size":6}],[{"name":"Entries","size":12}],[{"name":"mainHero","size":12}]],"editRelations":[]},"isComponent":true}	object		
170	plugin_content_manager_configuration_components::elements.feature-row	{"uid":"elements.feature-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
196	plugin_content_manager_configuration_components::formulario.select-option	{"uid":"formulario.select-option","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Option":{"edit":{"label":"Option","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Option","searchable":false,"sortable":false}},"isRequired":{"edit":{"label":"IsRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRequired","searchable":true,"sortable":true}},"errorMessage":{"edit":{"label":"ErrorMessage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ErrorMessage","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","isRequired","errorMessage"],"edit":[[{"name":"name","size":6}],[{"name":"Option","size":12}],[{"name":"isRequired","size":4},{"name":"errorMessage","size":6}],[{"name":"type","size":6},{"name":"order","size":4}]],"editRelations":[]},"isComponent":true}	object		
222	plugin_content_manager_configuration_components::meta.metadata	{"uid":"meta.metadata","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"MetaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"MetaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaDescription","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}]],"editRelations":[]},"isComponent":true}	object		
174	plugin_content_manager_configuration_components::elements.form-checkbox	{"uid":"elements.form-checkbox","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"isRequired":{"edit":{"label":"IsRequired","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRequired","searchable":true,"sortable":true}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}},"validationMessage":{"edit":{"label":"ValidationMessage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ValidationMessage","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","type","isRequired"],"edit":[[{"name":"text","size":6},{"name":"type","size":6}],[{"name":"isRequired","size":4}],[{"name":"links","size":12}],[{"name":"validationMessage","size":6},{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
205	plugin_content_manager_configuration_components::home.key-section	{"uid":"home.key-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}},"benefitsList":{"edit":{"label":"BenefitsList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BenefitsList","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","images"],"edit":[[{"name":"title","size":6},{"name":"images","size":6}],[{"name":"benefitsList","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
230	plugin_content_manager_configuration_components::sections.breadcumb-section	{"uid":"sections.breadcumb-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"DevelopersName","defaultSortBy":"DevelopersName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"DevelopersName":{"edit":{"label":"DevelopersName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DevelopersName","searchable":true,"sortable":true}},"shareName":{"edit":{"label":"ShareName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareName","searchable":true,"sortable":true}},"shareList":{"edit":{"label":"ShareList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareList","searchable":false,"sortable":false}},"ClimatetradeLink":{"edit":{"label":"ClimatetradeLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ClimatetradeLink","searchable":false,"sortable":false}}},"layouts":{"list":["id","DevelopersName","shareName"],"edit":[[{"name":"DevelopersName","size":6},{"name":"shareName","size":6}],[{"name":"shareList","size":12}],[{"name":"ClimatetradeLink","size":12}]],"editRelations":[]},"isComponent":true}	object		
242	plugin_content_manager_configuration_components::sections.copyright	{"uid":"sections.copyright","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"mainText","defaultSortBy":"mainText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"mainText":{"edit":{"label":"MainText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainText","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","mainText"],"edit":[[{"name":"mainText","size":6}],[{"name":"link","size":12}]],"editRelations":[]},"isComponent":true}	object		
175	plugin_content_manager_configuration_components::elements.form-response	{"uid":"elements.form-response","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"message":{"edit":{"label":"Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Message","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"show":{"edit":{"label":"Show","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Show","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","message","type"],"edit":[[{"name":"title","size":6},{"name":"message","size":6}],[{"name":"type","size":6},{"name":"show","size":4}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
228	plugin_content_manager_configuration_components::new.test	{"uid":"new.test","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"test","defaultSortBy":"test","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"test":{"edit":{"label":"Test","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Test","searchable":true,"sortable":true}}},"layouts":{"list":["id","test"],"edit":[[{"name":"test","size":6}]],"editRelations":[]},"isComponent":true}	object		
229	plugin_content_manager_configuration_components::sections.button-hero	{"uid":"sections.button-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","icon"],"edit":[[{"name":"header","size":12}],[{"name":"icon","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
207	plugin_content_manager_configuration_components::home.steps	{"uid":"home.steps","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"number":{"edit":{"label":"Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Number","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","number"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"number","size":6}]],"editRelations":[]},"isComponent":true}	object		
238	plugin_content_manager_configuration_components::sections.classic-hero	{"uid":"sections.classic-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","description","icon"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"description","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
225	plugin_content_manager_configuration_components::new.share	{"uid":"new.share","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","icon"],"edit":[[{"name":"url","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
236	plugin_content_manager_configuration_components::sections.classic-container	{"uid":"sections.classic-container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","idContentType","title","description"],"edit":[[{"name":"idContentType","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object		
246	plugin_content_manager_configuration_components::sections.for-all-section	{"uid":"sections.for-all-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"cards":{"edit":{"label":"Cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cards","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","icon"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"button","size":12}],[{"name":"icon","size":6}],[{"name":"cards","size":12}],[{"name":"content","size":6}]],"editRelations":[]},"isComponent":true}	object		
254	plugin_content_manager_configuration_components::sections.link-hero	{"uid":"sections.link-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"subtitle","defaultSortBy":"subtitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"idContentType":{"edit":{"label":"IdContentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IdContentType","searchable":true,"sortable":true}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"sideText":{"edit":{"label":"SideText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SideText","searchable":true,"sortable":true}},"imgSideText":{"edit":{"label":"ImgSideText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImgSideText","searchable":true,"sortable":true}}},"layouts":{"list":["id","idContentType","subtitle","sideText"],"edit":[[{"name":"idContentType","size":6}],[{"name":"header","size":12}],[{"name":"subtitle","size":6}],[{"name":"link","size":12}],[{"name":"sideText","size":6},{"name":"imgSideText","size":6}]],"editRelations":[]},"isComponent":true}	object		
263	plugin_content_manager_configuration_components::sections.section-widget-form	{"uid":"sections.section-widget-form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"form":{"edit":{"label":"Form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Form","searchable":false,"sortable":false}}},"layouts":{"list":["id","description","picture"],"edit":[[{"name":"description","size":6},{"name":"picture","size":6}],[{"name":"form","size":12}]],"editRelations":[]},"isComponent":true}	object		
168	plugin_content_manager_configuration_components::elements.container	{"uid":"elements.container","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"keyword":{"edit":{"label":"Keyword","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keyword","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"ButtonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ButtonLink","searchable":false,"sortable":false}},"badgeInfo":{"edit":{"label":"BadgeInfo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BadgeInfo","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6},{"name":"keyword","size":6}],[{"name":"buttonLink","size":12}],[{"name":"badgeInfo","size":12}]],"editRelations":[]},"isComponent":true}	object		
208	plugin_content_manager_configuration_components::home.widget-section	{"uid":"home.widget-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","icon","image"],"edit":[[{"name":"title","size":6}],[{"name":"button","size":12}],[{"name":"icon","size":6},{"name":"image","size":6}],[{"name":"subtitle","size":12}]],"editRelations":[]},"isComponent":true}	object		
249	plugin_content_manager_configuration_components::sections.full-hero	{"uid":"sections.full-hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","description","icon"],"edit":[[{"name":"header","size":12}],[{"name":"description","size":6},{"name":"icon","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2023-05-24 23:35:44.81+00	2023-05-24 23:35:44.81+00
2	Spanish (es)	es	1	1	2023-05-24 23:37:35.821+00	2023-05-24 23:37:35.827+00
\.


--
-- Data for Name: library_apis; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.library_apis (id, title, slug, description, color_status, "footerText", version, "openDoc", markdown, status, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: library_apis_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.library_apis_components (id, field, "order", component_type, component_id, library_api_id) FROM stdin;
\.


--
-- Data for Name: library_apis_products__products_library_apis; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.library_apis_products__products_library_apis (id, product_id, "library-api_id") FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.pages (id, slug, "shortName", locale, created_by, updated_by, created_at, updated_at) FROM stdin;
5	home	home	es	1	1	2023-05-24 23:38:24.787+00	2023-05-25 20:28:18.55+00
3	secret	Secret	en	\N	\N	2023-05-24 23:35:48.949+00	2023-05-24 23:35:48.949+00
4	contact	Contact	en	\N	\N	2023-05-24 23:35:48.951+00	2023-05-24 23:35:48.951+00
6	apis	apis	es	1	1	2023-05-25 02:30:45.915+00	2023-05-25 03:19:47.598+00
7	blog	blog	es	1	1	2023-05-25 03:19:36.966+00	2023-05-25 14:21:26.269+00
\.


--
-- Data for Name: pages__localizations; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.pages__localizations (id, page_id, related_page_id) FROM stdin;
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.pages_components (id, field, "order", component_type, component_id, page_id) FROM stdin;
24	metadata	1	components_meta_metadata	7	7
25	contentSections	1	components_home_banner_sections	3	7
4	metadata	1	components_meta_metadata	4	4
3	metadata	1	components_meta_metadata	3	3
5	contentSections	1	components_sections_rich_texts	2	3
6	contentSections	1	components_sections_rich_texts	1	4
7	contentSections	2	components_slices_bottom_actions	1	4
32	contentSections	4	components_portal_tab_cards	9	7
26	contentSections	2	components_portal_tab_cards	3	7
31	contentSections	3	components_portal_tab_cards	4	7
13	contentSections	5	components_home_discover_sections	2	5
22	metadata	1	components_meta_metadata	6	6
23	contentSections	1	components_home_banner_sections	2	6
8	metadata	1	components_meta_metadata	5	5
11	contentSections	3	components_sections_title_sections	1	5
21	contentSections	8	components_sections_title_sections	3	5
20	contentSections	7	components_home_banner_sections	1	5
10	contentSections	2	components_home_work_sections	1	5
19	contentSections	6	components_sections_section_use_cases	2	5
9	contentSections	1	components_portal_carousels	1	5
12	contentSections	4	components_home_discover_sections	1	5
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.products (id, price, title, slug, "btnLabel", benefits, content, description, status, "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "formSetting", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Admin	Apimarket	\N	admin@apimarket.io	$2a$10$5/JzbLo8HCvqGUhtsN/JP.qoCTahtYuirfymZFduhpPfcbrnCrutO	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
3	plugins::content-manager.explorer.create	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	2	2023-05-24 23:35:49.191+00	2023-05-24 23:35:49.224+00
2	plugins::content-manager.explorer.create	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	2	2023-05-24 23:35:49.191+00	2023-05-24 23:35:49.224+00
1	plugins::content-manager.explorer.read	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	2	2023-05-24 23:35:49.191+00	2023-05-24 23:35:49.223+00
5	plugins::content-manager.explorer.update	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	2	2023-05-24 23:35:49.192+00	2023-05-24 23:35:49.231+00
4	plugins::content-manager.explorer.read	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	2	2023-05-24 23:35:49.192+00	2023-05-24 23:35:49.23+00
6	plugins::content-manager.explorer.create	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	[]	2	2023-05-24 23:35:49.192+00	2023-05-24 23:35:49.231+00
8	plugins::content-manager.explorer.read	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	[]	2	2023-05-24 23:35:49.193+00	2023-05-24 23:35:49.231+00
7	plugins::content-manager.explorer.create	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	2	2023-05-24 23:35:49.192+00	2023-05-24 23:35:49.231+00
11	plugins::content-manager.explorer.update	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	[]	2	2023-05-24 23:35:49.281+00	2023-05-24 23:35:49.308+00
12	plugins::content-manager.explorer.update	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	2	2023-05-24 23:35:49.284+00	2023-05-24 23:35:49.313+00
13	plugins::content-manager.explorer.delete	application::blog-item.blog-item	{}	[]	2	2023-05-24 23:35:49.284+00	2023-05-24 23:35:49.313+00
14	plugins::content-manager.explorer.delete	application::library-api.library-api	{}	[]	2	2023-05-24 23:35:49.284+00	2023-05-24 23:35:49.313+00
16	plugins::content-manager.explorer.delete	application::products.products	{}	[]	2	2023-05-24 23:35:49.289+00	2023-05-24 23:35:49.319+00
17	plugins::content-manager.explorer.publish	application::blog-item.blog-item	{}	[]	2	2023-05-24 23:35:49.289+00	2023-05-24 23:35:49.319+00
18	plugins::content-manager.explorer.publish	application::library-api.library-api	{}	[]	2	2023-05-24 23:35:49.289+00	2023-05-24 23:35:49.319+00
22	plugins::upload.assets.update	\N	{}	[]	2	2023-05-24 23:35:49.366+00	2023-05-24 23:35:49.382+00
21	plugins::upload.assets.create	\N	{}	[]	2	2023-05-24 23:35:49.366+00	2023-05-24 23:35:49.382+00
23	plugins::upload.assets.copy-link	\N	{}	[]	2	2023-05-24 23:35:49.37+00	2023-05-24 23:35:49.386+00
24	plugins::upload.assets.download	\N	{}	[]	2	2023-05-24 23:35:49.37+00	2023-05-24 23:35:49.387+00
9	plugins::content-manager.explorer.read	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	2	2023-05-24 23:35:49.199+00	2023-05-24 23:35:49.237+00
19	plugins::content-manager.explorer.publish	application::products.products	{}	[]	2	2023-05-24 23:35:49.293+00	2023-05-24 23:35:49.328+00
29	plugins::content-manager.explorer.read	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.42+00	2023-05-24 23:35:49.45+00
73	plugins::documentation.settings.regenerate	\N	{}	[]	1	2023-05-24 23:35:49.886+00	2023-05-24 23:35:49.921+00
85	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2023-05-24 23:35:49.98+00	2023-05-24 23:35:50.016+00
94	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2023-05-24 23:35:50.071+00	2023-05-24 23:35:50.103+00
103	admin::webhooks.delete	\N	{}	[]	1	2023-05-24 23:35:50.156+00	2023-05-24 23:35:50.191+00
111	admin::roles.delete	\N	{}	[]	1	2023-05-24 23:35:50.254+00	2023-05-24 23:35:50.275+00
113	plugins::content-manager.explorer.read	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"], "locales": ["en", "es"]}	[]	1	2023-05-24 23:37:36.11+00	2023-05-24 23:37:36.122+00
10	plugins::content-manager.explorer.update	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	2	2023-05-24 23:35:49.232+00	2023-05-24 23:35:49.269+00
20	plugins::upload.read	\N	{}	[]	2	2023-05-24 23:35:49.322+00	2023-05-24 23:35:49.354+00
33	plugins::content-manager.explorer.read	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.421+00	2023-05-24 23:35:49.458+00
44	plugins::upload.assets.download	\N	{}	[]	3	2023-05-24 23:35:49.515+00	2023-05-24 23:35:49.559+00
75	plugins::upload.assets.create	\N	{}	[]	1	2023-05-24 23:35:49.895+00	2023-05-24 23:35:49.928+00
81	plugins::i18n.locale.read	\N	{}	[]	1	2023-05-24 23:35:49.973+00	2023-05-24 23:35:50.005+00
93	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2023-05-24 23:35:50.066+00	2023-05-24 23:35:50.098+00
101	admin::webhooks.read	\N	{}	[]	1	2023-05-24 23:35:50.156+00	2023-05-24 23:35:50.19+00
114	plugins::content-manager.explorer.create	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"], "locales": ["en", "es"]}	[]	1	2023-05-24 23:37:36.112+00	2023-05-24 23:37:36.125+00
30	plugins::content-manager.explorer.read	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.42+00	2023-05-24 23:35:49.45+00
42	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2023-05-24 23:35:49.51+00	2023-05-24 23:35:49.551+00
52	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2023-05-24 23:35:49.693+00	2023-05-24 23:35:49.725+00
77	plugins::upload.assets.download	\N	{}	[]	1	2023-05-24 23:35:49.967+00	2023-05-24 23:35:49.997+00
86	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2023-05-24 23:35:50.057+00	2023-05-24 23:35:50.087+00
96	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2023-05-24 23:35:50.147+00	2023-05-24 23:35:50.177+00
107	admin::users.update	\N	{}	[]	1	2023-05-24 23:35:50.248+00	2023-05-24 23:35:50.268+00
115	plugins::content-manager.explorer.update	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"], "locales": ["en", "es"]}	[]	1	2023-05-24 23:37:36.113+00	2023-05-24 23:37:36.125+00
32	plugins::content-manager.explorer.create	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.42+00	2023-05-24 23:35:49.451+00
40	plugins::content-manager.explorer.delete	application::products.products	{}	["admin::is-creator"]	3	2023-05-24 23:35:49.504+00	2023-05-24 23:35:49.55+00
46	plugins::content-manager.explorer.create	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	1	2023-05-24 23:35:49.687+00	2023-05-24 23:35:49.719+00
57	plugins::content-manager.explorer.update	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	1	2023-05-24 23:35:49.779+00	2023-05-24 23:35:49.814+00
79	plugins::upload.settings.read	\N	{}	[]	1	2023-05-24 23:35:49.97+00	2023-05-24 23:35:50.004+00
89	plugins::users-permissions.providers.read	\N	{}	[]	1	2023-05-24 23:35:50.062+00	2023-05-24 23:35:50.094+00
98	admin::marketplace.plugins.install	\N	{}	[]	1	2023-05-24 23:35:50.151+00	2023-05-24 23:35:50.182+00
108	admin::roles.create	\N	{}	[]	1	2023-05-24 23:35:50.251+00	2023-05-24 23:35:50.271+00
119	plugins::content-manager.explorer.delete	application::page.page	{"locales": ["en", "es"]}	[]	1	2023-05-28 03:44:13.661+00	2023-05-28 03:44:13.693+00
34	plugins::content-manager.explorer.update	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.421+00	2023-05-24 23:35:49.458+00
43	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2023-05-24 23:35:49.514+00	2023-05-24 23:35:49.558+00
49	plugins::content-manager.explorer.create	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	1	2023-05-24 23:35:49.692+00	2023-05-24 23:35:49.725+00
56	plugins::content-manager.explorer.update	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	1	2023-05-24 23:35:49.779+00	2023-05-24 23:35:49.814+00
76	plugins::upload.assets.update	\N	{}	[]	1	2023-05-24 23:35:49.966+00	2023-05-24 23:35:49.997+00
87	plugins::users-permissions.roles.create	\N	{}	[]	1	2023-05-24 23:35:50.057+00	2023-05-24 23:35:50.087+00
97	admin::marketplace.read	\N	{}	[]	1	2023-05-24 23:35:50.148+00	2023-05-24 23:35:50.177+00
106	admin::users.delete	\N	{}	[]	1	2023-05-24 23:35:50.247+00	2023-05-24 23:35:50.268+00
117	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2023-05-28 03:44:13.662+00	2023-05-28 03:44:13.693+00
25	plugins::content-manager.explorer.update	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.413+00	2023-05-24 23:35:49.444+00
37	plugins::content-manager.explorer.delete	application::blog-item.blog-item	{}	["admin::is-creator"]	3	2023-05-24 23:35:49.504+00	2023-05-24 23:35:49.539+00
45	plugins::upload.assets.copy-link	\N	{}	[]	3	2023-05-24 23:35:49.607+00	2023-05-24 23:35:49.613+00
50	plugins::content-manager.explorer.create	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	1	2023-05-24 23:35:49.692+00	2023-05-24 23:35:49.726+00
74	plugins::upload.read	\N	{}	[]	1	2023-05-24 23:35:49.889+00	2023-05-24 23:35:49.921+00
84	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2023-05-24 23:35:49.979+00	2023-05-24 23:35:50.012+00
90	plugins::users-permissions.roles.delete	\N	{}	[]	1	2023-05-24 23:35:50.061+00	2023-05-24 23:35:50.093+00
100	admin::webhooks.create	\N	{}	[]	1	2023-05-24 23:35:50.152+00	2023-05-24 23:35:50.182+00
110	admin::roles.read	\N	{}	[]	1	2023-05-24 23:35:50.252+00	2023-05-24 23:35:50.274+00
118	plugins::content-manager.explorer.delete	application::library-api.library-api	{}	[]	1	2023-05-28 03:44:13.661+00	2023-05-28 03:44:13.694+00
28	plugins::content-manager.explorer.create	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.419+00	2023-05-24 23:35:49.45+00
36	plugins::content-manager.explorer.update	application::page.page	{"fields": ["slug", "shortName", "metadata.metaTitle", "metadata.metaDescription", "contentSections"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.503+00	2023-05-24 23:35:49.54+00
48	plugins::content-manager.explorer.read	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	1	2023-05-24 23:35:49.688+00	2023-05-24 23:35:49.719+00
59	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2023-05-24 23:35:49.786+00	2023-05-24 23:35:49.821+00
70	plugins::content-type-builder.read	\N	{}	[]	1	2023-05-24 23:35:49.881+00	2023-05-24 23:35:49.911+00
78	plugins::upload.assets.copy-link	\N	{}	[]	1	2023-05-24 23:35:49.97+00	2023-05-24 23:35:50.004+00
88	plugins::users-permissions.roles.read	\N	{}	[]	1	2023-05-24 23:35:50.06+00	2023-05-24 23:35:50.093+00
102	admin::webhooks.update	\N	{}	[]	1	2023-05-24 23:35:50.156+00	2023-05-24 23:35:50.191+00
116	plugins::content-manager.explorer.publish	application::blog-item.blog-item	{}	[]	1	2023-05-28 03:44:13.66+00	2023-05-28 03:44:13.694+00
26	plugins::content-manager.explorer.create	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.419+00	2023-05-24 23:35:49.449+00
39	plugins::content-manager.explorer.delete	application::library-api.library-api	{}	["admin::is-creator"]	3	2023-05-24 23:35:49.504+00	2023-05-24 23:35:49.543+00
54	plugins::content-manager.explorer.read	application::library-api.library-api	{"fields": ["title", "slug", "description", "color_status", "footerText", "image", "version", "buttons.name", "buttons.type", "buttons.order", "buttons.link", "buttons.class", "benefits.title", "benefits.Steps.title", "benefits.Steps.subtitle", "benefits.Steps.number", "benefits.background", "benefits.buttons.name", "benefits.buttons.type", "benefits.buttons.order", "benefits.buttons.link", "benefits.buttons.class", "tags.title", "tags.label", "tags.class", "tags.tab", "openDoc", "markdown", "products", "status"]}	[]	1	2023-05-24 23:35:49.693+00	2023-05-24 23:35:49.734+00
69	plugins::email.settings.read	\N	{}	[]	1	2023-05-24 23:35:49.88+00	2023-05-24 23:35:49.91+00
80	plugins::i18n.locale.create	\N	{}	[]	1	2023-05-24 23:35:49.972+00	2023-05-24 23:35:50.005+00
91	plugins::users-permissions.roles.update	\N	{}	[]	1	2023-05-24 23:35:50.061+00	2023-05-24 23:35:50.093+00
99	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2023-05-24 23:35:50.152+00	2023-05-24 23:35:50.182+00
109	admin::roles.update	\N	{}	[]	1	2023-05-24 23:35:50.252+00	2023-05-24 23:35:50.271+00
120	plugins::content-manager.explorer.delete	application::products.products	{}	[]	1	2023-05-28 03:44:13.668+00	2023-05-28 03:44:13.7+00
31	plugins::content-manager.explorer.read	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.42+00	2023-05-24 23:35:49.451+00
41	plugins::upload.assets.create	\N	{}	[]	3	2023-05-24 23:35:49.51+00	2023-05-24 23:35:49.551+00
47	plugins::content-manager.explorer.read	application::blog-item.blog-item	{"fields": ["title", "slug", "image", "timeRead", "tags.title", "tags.label", "tags.class", "tags.tab", "questions.question", "questions.description", "questions.img", "questions.seccion", "questions.description_two", "nameUser", "photoUser", "jobUser", "date", "description", "content"]}	[]	1	2023-05-24 23:35:49.687+00	2023-05-24 23:35:49.718+00
71	plugins::documentation.settings.update	\N	{}	[]	1	2023-05-24 23:35:49.886+00	2023-05-24 23:35:49.918+00
83	plugins::i18n.locale.delete	\N	{}	[]	1	2023-05-24 23:35:49.979+00	2023-05-24 23:35:50.012+00
92	plugins::users-permissions.providers.update	\N	{}	[]	1	2023-05-24 23:35:50.065+00	2023-05-24 23:35:50.097+00
104	admin::users.create	\N	{}	[]	1	2023-05-24 23:35:50.157+00	2023-05-24 23:35:50.191+00
121	plugins::content-manager.explorer.delete	application::blog-item.blog-item	{}	[]	1	2023-05-28 03:44:13.668+00	2023-05-28 03:44:13.7+00
122	plugins::content-manager.explorer.publish	application::library-api.library-api	{}	[]	1	2023-05-28 03:44:13.668+00	2023-05-28 03:44:13.701+00
123	plugins::content-manager.explorer.publish	application::products.products	{}	[]	1	2023-05-28 03:44:13.669+00	2023-05-28 03:44:13.707+00
27	plugins::content-manager.explorer.create	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.419+00	2023-05-24 23:35:49.449+00
35	plugins::content-manager.explorer.update	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	["admin::is-creator"]	3	2023-05-24 23:35:49.503+00	2023-05-24 23:35:49.54+00
51	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2023-05-24 23:35:49.693+00	2023-05-24 23:35:49.725+00
60	plugins::content-manager.explorer.update	application::products.products	{"fields": ["price", "title", "slug", "btnLabel", "benefits", "content", "description", "status", "requiredSubscription", "requiredApproval", "limitSubscription", "legalConditionals", "accentColor", "library_apis", "formSetting"]}	[]	1	2023-05-24 23:35:49.785+00	2023-05-24 23:35:49.821+00
72	plugins::documentation.read	\N	{}	[]	1	2023-05-24 23:35:49.886+00	2023-05-24 23:35:49.917+00
82	plugins::i18n.locale.update	\N	{}	[]	1	2023-05-24 23:35:49.978+00	2023-05-24 23:35:50.012+00
95	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2023-05-24 23:35:50.07+00	2023-05-24 23:35:50.103+00
105	admin::users.read	\N	{}	[]	1	2023-05-24 23:35:50.162+00	2023-05-24 23:35:50.202+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-05-24 23:35:48.996+00	2023-05-24 23:35:48.996+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-05-24 23:35:49.097+00	2023-05-24 23:35:49.097+00
3	Author	strapi-author	Authors can manage the content they have created.	2023-05-24 23:35:49.145+00	2023-05-24 23:35:49.145+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
3	application	blog-item	count	f		1	\N	\N
1	application	blog-item	create	f		2	\N	\N
12	application	blog-item	update	f		2	\N	\N
13	application	library-api	count	f		2	\N	\N
24	application	library-api	update	f		2	\N	\N
27	application	page	count	f		2	\N	\N
35	application	page	findone	f		1	\N	\N
45	application	products	find	f		1	\N	\N
47	application	products	findone	f		1	\N	\N
55	content-manager	collection-types	create	f		2	\N	\N
57	content-manager	collection-types	find	f		1	\N	\N
64	content-manager	collection-types	unpublish	f		1	\N	\N
67	content-manager	collection-types	update	f		1	\N	\N
76	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
77	content-manager	content-types	findcontenttypes	f		1	\N	\N
84	content-manager	relations	find	f		1	\N	\N
87	content-manager	single-types	delete	f		1	\N	\N
94	content-manager	single-types	unpublish	f		2	\N	\N
97	content-manager	uid	generateuid	f		1	\N	\N
103	content-type-builder	componentcategories	editcategory	f		2	\N	\N
106	content-type-builder	components	createcomponent	f		2	\N	\N
115	content-type-builder	connections	getconnections	f		2	\N	\N
114	content-type-builder	components	updatecomponent	f		2	\N	\N
125	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
126	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
136	documentation	documentation	loginview	f		2	\N	\N
135	documentation	documentation	loginview	f		1	\N	\N
145	email	email	test	f		1	\N	\N
146	email	email	test	f		2	\N	\N
154	i18n	locales	deletelocale	f		2	\N	\N
156	i18n	locales	listlocales	f		2	\N	\N
164	upload	upload	find	f		2	\N	\N
165	upload	upload	findone	f		2	\N	\N
172	upload	upload	updatesettings	f		2	\N	\N
176	users-permissions	auth	callback	t		2	\N	\N
183	users-permissions	auth	register	f		1	\N	\N
185	users-permissions	auth	resetpassword	t		2	\N	\N
193	users-permissions	user	destroy	f		2	\N	\N
195	users-permissions	user	destroyall	f		1	\N	\N
204	users-permissions	user	update	f		2	\N	\N
205	users-permissions	userspermissions	createrole	f		1	\N	\N
213	users-permissions	userspermissions	getpermissions	f		1	\N	\N
214	users-permissions	userspermissions	getpermissions	f		2	\N	\N
223	users-permissions	userspermissions	getroutes	f		2	\N	\N
224	users-permissions	userspermissions	getroutes	f		1	\N	\N
233	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
236	users-permissions	userspermissions	updaterole	f		1	\N	\N
37	application	page	findone	t		2	\N	\N
5	application	blog-item	delete	f		2	\N	\N
17	application	library-api	delete	f		1	\N	\N
22	application	library-api	update	f		1	\N	\N
33	application	page	find	f		1	\N	\N
41	application	products	create	f		2	\N	\N
52	content-manager	collection-types	bulkdelete	f		2	\N	\N
61	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
74	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
85	content-manager	single-types	createorupdate	f		1	\N	\N
95	content-manager	uid	checkuidavailability	f		1	\N	\N
105	content-type-builder	components	createcomponent	f		1	\N	\N
116	content-type-builder	connections	getconnections	f		1	\N	\N
123	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
133	documentation	documentation	login	f		1	\N	\N
144	email	email	send	f		2	\N	\N
155	i18n	locales	listlocales	f		1	\N	\N
166	upload	upload	findone	f		1	\N	\N
175	users-permissions	auth	callback	f		1	\N	\N
186	users-permissions	auth	resetpassword	f		1	\N	\N
196	users-permissions	user	destroyall	f		2	\N	\N
206	users-permissions	userspermissions	createrole	f		2	\N	\N
216	users-permissions	userspermissions	getpolicies	f		2	\N	\N
226	users-permissions	userspermissions	index	f		2	\N	\N
235	users-permissions	userspermissions	updateproviders	f		2	\N	\N
4	application	blog-item	create	f		1	\N	\N
15	application	library-api	create	f		1	\N	\N
25	application	page	count	f		1	\N	\N
44	application	products	delete	f		2	\N	\N
54	content-manager	collection-types	delete	f		1	\N	\N
65	content-manager	collection-types	publish	f		2	\N	\N
73	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
83	content-manager	relations	find	f		2	\N	\N
93	content-manager	single-types	unpublish	f		1	\N	\N
104	content-type-builder	componentcategories	editcategory	f		1	\N	\N
113	content-type-builder	components	updatecomponent	f		1	\N	\N
124	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
134	documentation	documentation	login	f		2	\N	\N
143	email	email	send	f		1	\N	\N
153	i18n	locales	deletelocale	f		1	\N	\N
163	upload	upload	find	f		1	\N	\N
174	upload	upload	upload	f		2	\N	\N
184	users-permissions	auth	register	t		2	\N	\N
194	users-permissions	user	destroy	f		1	\N	\N
203	users-permissions	user	update	f		1	\N	\N
215	users-permissions	userspermissions	getpolicies	f		1	\N	\N
225	users-permissions	userspermissions	index	f		1	\N	\N
234	users-permissions	userspermissions	updaterole	f		2	\N	\N
34	application	page	find	t		2	\N	\N
6	application	blog-item	delete	f		1	\N	\N
14	application	library-api	count	f		1	\N	\N
31	application	page	delete	f		1	\N	\N
42	application	products	create	f		1	\N	\N
53	content-manager	collection-types	create	f		1	\N	\N
63	content-manager	collection-types	publish	f		1	\N	\N
71	content-manager	components	findcomponents	f		1	\N	\N
81	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
91	content-manager	single-types	publish	f		1	\N	\N
101	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
111	content-type-builder	components	getcomponents	f		2	\N	\N
121	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
131	documentation	documentation	index	f		1	\N	\N
141	email	email	getsettings	f		1	\N	\N
151	i18n	locales	createlocale	f		1	\N	\N
161	upload	upload	destroy	f		1	\N	\N
171	upload	upload	updatesettings	f		1	\N	\N
181	users-permissions	auth	forgotpassword	f		1	\N	\N
192	users-permissions	user	create	f		2	\N	\N
202	users-permissions	user	me	t		2	\N	\N
212	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
221	users-permissions	userspermissions	getroles	f		1	\N	\N
231	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
23	application	library-api	findone	t		2	\N	\N
16	application	library-api	create	f		2	\N	\N
26	application	page	create	f		1	\N	\N
36	application	page	update	f		1	\N	\N
56	content-manager	collection-types	delete	f		2	\N	\N
66	content-manager	collection-types	unpublish	f		2	\N	\N
75	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
86	content-manager	single-types	createorupdate	f		2	\N	\N
96	content-manager	uid	checkuidavailability	f		2	\N	\N
107	content-type-builder	components	deletecomponent	f		1	\N	\N
117	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
127	documentation	documentation	deletedoc	f		1	\N	\N
137	documentation	documentation	regeneratedoc	f		1	\N	\N
147	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
157	i18n	locales	updatelocale	f		1	\N	\N
167	upload	upload	getsettings	f		1	\N	\N
177	users-permissions	auth	connect	t		1	\N	\N
187	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
197	users-permissions	user	find	f		1	\N	\N
207	users-permissions	userspermissions	deleterole	f		1	\N	\N
217	users-permissions	userspermissions	getproviders	f		1	\N	\N
227	users-permissions	userspermissions	searchusers	f		1	\N	\N
7	application	blog-item	find	t		2	\N	\N
46	application	products	find	t		2	\N	\N
8	application	blog-item	find	f		1	\N	\N
19	application	library-api	delete	f		2	\N	\N
28	application	page	create	f		2	\N	\N
38	application	page	update	f		2	\N	\N
58	content-manager	collection-types	find	f		2	\N	\N
68	content-manager	components	findcomponentconfiguration	f		1	\N	\N
78	content-manager	content-types	findcontenttypes	f		2	\N	\N
88	content-manager	single-types	delete	f		2	\N	\N
98	content-manager	uid	generateuid	f		2	\N	\N
108	content-type-builder	components	deletecomponent	f		2	\N	\N
118	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
129	documentation	documentation	getinfos	f		1	\N	\N
139	documentation	documentation	updatesettings	f		1	\N	\N
149	i18n	iso-locales	listisolocales	f		2	\N	\N
159	upload	upload	count	f		2	\N	\N
170	upload	upload	search	f		2	\N	\N
180	users-permissions	auth	emailconfirmation	t		2	\N	\N
190	users-permissions	user	count	f		2	\N	\N
200	users-permissions	user	findone	f		2	\N	\N
210	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
220	users-permissions	userspermissions	getrole	f		2	\N	\N
230	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
48	application	products	findone	t		2	\N	\N
9	application	blog-item	findone	f		1	\N	\N
18	application	library-api	find	f		1	\N	\N
29	application	page	createlocalization	f		1	\N	\N
39	application	products	count	f		1	\N	\N
50	application	products	update	f		2	\N	\N
60	content-manager	collection-types	findone	f		2	\N	\N
70	content-manager	components	findcomponentconfiguration	f		2	\N	\N
80	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
90	content-manager	single-types	find	f		2	\N	\N
100	content-type-builder	builder	getreservednames	f		2	\N	\N
110	content-type-builder	components	getcomponent	f		2	\N	\N
120	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
130	documentation	documentation	getinfos	f		2	\N	\N
140	documentation	documentation	updatesettings	f		2	\N	\N
150	i18n	iso-locales	listisolocales	f		1	\N	\N
160	upload	upload	count	f		1	\N	\N
169	upload	upload	search	f		1	\N	\N
179	users-permissions	auth	emailconfirmation	f		1	\N	\N
189	users-permissions	user	count	f		1	\N	\N
199	users-permissions	user	findone	f		1	\N	\N
209	users-permissions	userspermissions	deleterole	f		2	\N	\N
219	users-permissions	userspermissions	getrole	f		1	\N	\N
229	users-permissions	userspermissions	searchusers	f		2	\N	\N
30	application	page	createlocalization	f		2	\N	\N
40	application	products	count	f		2	\N	\N
49	application	products	update	f		1	\N	\N
59	content-manager	collection-types	findone	f		1	\N	\N
69	content-manager	collection-types	update	f		2	\N	\N
79	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
89	content-manager	single-types	find	f		1	\N	\N
99	content-type-builder	builder	getreservednames	f		1	\N	\N
109	content-type-builder	components	getcomponent	f		1	\N	\N
119	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
128	documentation	documentation	deletedoc	f		2	\N	\N
138	documentation	documentation	regeneratedoc	f		2	\N	\N
148	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
158	i18n	locales	updatelocale	f		2	\N	\N
168	upload	upload	getsettings	f		2	\N	\N
178	users-permissions	auth	connect	t		2	\N	\N
188	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
198	users-permissions	user	find	f		2	\N	\N
208	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
218	users-permissions	userspermissions	getproviders	f		2	\N	\N
228	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
20	application	library-api	find	t		2	\N	\N
10	application	blog-item	findone	t		2	\N	\N
2	application	blog-item	count	f		2	\N	\N
11	application	blog-item	update	f		1	\N	\N
21	application	library-api	findone	f		1	\N	\N
32	application	page	delete	f		2	\N	\N
43	application	products	delete	f		1	\N	\N
51	content-manager	collection-types	bulkdelete	f		1	\N	\N
62	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
72	content-manager	components	findcomponents	f		2	\N	\N
82	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
92	content-manager	single-types	publish	f		2	\N	\N
102	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
112	content-type-builder	components	getcomponents	f		1	\N	\N
122	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
132	documentation	documentation	index	f		2	\N	\N
142	email	email	getsettings	f		2	\N	\N
152	i18n	locales	createlocale	f		2	\N	\N
162	upload	upload	destroy	f		2	\N	\N
173	upload	upload	upload	f		1	\N	\N
182	users-permissions	auth	forgotpassword	t		2	\N	\N
191	users-permissions	user	create	f		1	\N	\N
201	users-permissions	user	me	t		1	\N	\N
211	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
222	users-permissions	userspermissions	getroles	f		2	\N	\N
232	users-permissions	userspermissions	updateproviders	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: user_developer_portal
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: blog_items_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.blog_items_components_id_seq', 8, true);


--
-- Name: blog_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.blog_items_id_seq', 4, true);


--
-- Name: components_apis_filters_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_apis_filters_components_id_seq', 1, false);


--
-- Name: components_apis_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_apis_filters_id_seq', 1, false);


--
-- Name: components_apis_paginations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_apis_paginations_id_seq', 1, false);


--
-- Name: components_cards_card_products_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_card_products_components_id_seq', 1, false);


--
-- Name: components_cards_card_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_card_products_id_seq', 1, false);


--
-- Name: components_cards_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_cards_id_seq', 11, true);


--
-- Name: components_cards_product_link_cards_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_product_link_cards_components_id_seq', 1, false);


--
-- Name: components_cards_product_link_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_product_link_cards_id_seq', 1, false);


--
-- Name: components_cards_use_case_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_cards_use_case_cards_id_seq', 5, true);


--
-- Name: components_elements_badgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_badgets_id_seq', 1, false);


--
-- Name: components_elements_basic_cards_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_basic_cards_components_id_seq', 1, false);


--
-- Name: components_elements_basic_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_basic_cards_id_seq', 1, false);


--
-- Name: components_elements_big_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_big_features_id_seq', 1, false);


--
-- Name: components_elements_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_cards_id_seq', 1, false);


--
-- Name: components_elements_containers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_containers_components_id_seq', 1, false);


--
-- Name: components_elements_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_containers_id_seq', 1, false);


--
-- Name: components_elements_custom_radios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_custom_radios_id_seq', 1, false);


--
-- Name: components_elements_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_entries_id_seq', 1, false);


--
-- Name: components_elements_filter_versions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_filter_versions_components_id_seq', 1, false);


--
-- Name: components_elements_filter_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_filter_versions_id_seq', 1, false);


--
-- Name: components_elements_form_checkboxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_form_checkboxes_components_id_seq', 1, false);


--
-- Name: components_elements_form_checkboxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_form_checkboxes_id_seq', 1, false);


--
-- Name: components_elements_form_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_form_responses_id_seq', 1, false);


--
-- Name: components_elements_image_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_image_lists_id_seq', 1, false);


--
-- Name: components_elements_link_texts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_link_texts_components_id_seq', 1, false);


--
-- Name: components_elements_link_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_link_texts_id_seq', 1, false);


--
-- Name: components_elements_logos_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_logos_components_id_seq', 1, false);


--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_logos_id_seq', 1, false);


--
-- Name: components_elements_logotypes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_logotypes_components_id_seq', 1, false);


--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_logotypes_id_seq', 1, false);


--
-- Name: components_elements_main_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_main_heroes_id_seq', 2, true);


--
-- Name: components_elements_navbar_section_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_navbar_section_components_id_seq', 1, false);


--
-- Name: components_elements_navbar_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_navbar_section_id_seq', 1, false);


--
-- Name: components_elements_notification_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_notification_banners_components_id_seq', 1, false);


--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_notification_banners_id_seq', 1, false);


--
-- Name: components_elements_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_placeholders_id_seq', 1, false);


--
-- Name: components_elements_redirect_links_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_redirect_links_components_id_seq', 1, false);


--
-- Name: components_elements_redirect_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_redirect_links_id_seq', 1, false);


--
-- Name: components_elements_search_inputs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_search_inputs_components_id_seq', 1, false);


--
-- Name: components_elements_search_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_search_inputs_id_seq', 1, false);


--
-- Name: components_elements_search_outputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_search_outputs_id_seq', 1, false);


--
-- Name: components_elements_selects_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_selects_components_id_seq', 1, false);


--
-- Name: components_elements_selects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_selects_id_seq', 1, false);


--
-- Name: components_elements_sliders_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_sliders_components_id_seq', 1, true);


--
-- Name: components_elements_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_sliders_id_seq', 3, true);


--
-- Name: components_elements_social_networks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_social_networks_id_seq', 1, false);


--
-- Name: components_elements_status_enumerables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_status_enumerables_id_seq', 1, false);


--
-- Name: components_elements_subtitles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_subtitles_id_seq', 1, true);


--
-- Name: components_elements_titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_elements_titles_id_seq', 8, true);


--
-- Name: components_formulario_button_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_button_forms_components_id_seq', 1, false);


--
-- Name: components_formulario_button_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_button_forms_id_seq', 1, false);


--
-- Name: components_formulario_checkboxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_checkboxes_id_seq', 1, false);


--
-- Name: components_formulario_filter_estatuses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_filter_estatuses_components_id_seq', 1, false);


--
-- Name: components_formulario_filter_estatuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_filter_estatuses_id_seq', 1, false);


--
-- Name: components_formulario_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_forms_components_id_seq', 1, false);


--
-- Name: components_formulario_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_forms_id_seq', 1, false);


--
-- Name: components_formulario_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_inputs_id_seq', 1, false);


--
-- Name: components_formulario_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_options_id_seq', 1, false);


--
-- Name: components_formulario_select_options_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_select_options_components_id_seq', 1, false);


--
-- Name: components_formulario_select_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_formulario_select_options_id_seq', 1, false);


--
-- Name: components_home_banner_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_banner_sections_components_id_seq', 1, true);


--
-- Name: components_home_banner_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_banner_sections_id_seq', 3, true);


--
-- Name: components_home_benefits_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_benefits_lists_id_seq', 1, false);


--
-- Name: components_home_discover_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_discover_sections_components_id_seq', 7, true);


--
-- Name: components_home_discover_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_discover_sections_id_seq', 2, true);


--
-- Name: components_home_key_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_key_sections_components_id_seq', 1, false);


--
-- Name: components_home_key_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_key_sections_id_seq', 1, false);


--
-- Name: components_home_status_apis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_status_apis_id_seq', 1, false);


--
-- Name: components_home_steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_steps_id_seq', 3, true);


--
-- Name: components_home_widget_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_widget_sections_components_id_seq', 1, false);


--
-- Name: components_home_widget_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_widget_sections_id_seq', 1, false);


--
-- Name: components_home_work_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_work_sections_components_id_seq', 3, true);


--
-- Name: components_home_work_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_home_work_sections_id_seq', 1, true);


--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_layout_footers_components_id_seq', 1, false);


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_layout_footers_id_seq', 1, false);


--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_layout_navbars_components_id_seq', 1, false);


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_layout_navbars_id_seq', 1, false);


--
-- Name: components_links_basic_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_basic_links_id_seq', 1, false);


--
-- Name: components_links_big_links_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_big_links_components_id_seq', 1, false);


--
-- Name: components_links_big_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_big_links_id_seq', 1, false);


--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_buttons_components_id_seq', 1, false);


--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_buttons_id_seq', 2, true);


--
-- Name: components_links_drop_big_links_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_drop_big_links_components_id_seq', 1, false);


--
-- Name: components_links_drop_big_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_drop_big_links_id_seq', 1, false);


--
-- Name: components_links_drop_links_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_drop_links_components_id_seq', 1, false);


--
-- Name: components_links_drop_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_drop_links_id_seq', 1, false);


--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_footer_sections_components_id_seq', 1, false);


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_footer_sections_id_seq', 1, false);


--
-- Name: components_links_icon_links_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_icon_links_components_id_seq', 1, false);


--
-- Name: components_links_icon_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_icon_links_id_seq', 1, false);


--
-- Name: components_links_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_links_id_seq', 1, false);


--
-- Name: components_links_share_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_share_lists_id_seq', 1, false);


--
-- Name: components_links_simple_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_simple_buttons_id_seq', 1, true);


--
-- Name: components_links_sub_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_links_sub_links_id_seq', 1, false);


--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_meta_metadata_id_seq', 7, true);


--
-- Name: components_new_card_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_card_lists_id_seq', 1, false);


--
-- Name: components_new_cards_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_cards_lists_id_seq', 1, false);


--
-- Name: components_new_shares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_shares_id_seq', 1, false);


--
-- Name: components_new_sharings_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_sharings_components_id_seq', 1, false);


--
-- Name: components_new_sharings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_sharings_id_seq', 1, false);


--
-- Name: components_new_tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_new_tests_id_seq', 1, false);


--
-- Name: components_sections_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_banners_components_id_seq', 1, false);


--
-- Name: components_sections_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_banners_id_seq', 1, false);


--
-- Name: components_sections_basic_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_basic_containers_id_seq', 1, false);


--
-- Name: components_sections_big_containers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_big_containers_components_id_seq', 1, false);


--
-- Name: components_sections_big_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_big_containers_id_seq', 1, false);


--
-- Name: components_sections_big_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_big_heroes_components_id_seq', 1, false);


--
-- Name: components_sections_big_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_big_heroes_id_seq', 1, false);


--
-- Name: components_sections_breadcumb_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_breadcumb_sections_components_id_seq', 1, false);


--
-- Name: components_sections_breadcumb_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_breadcumb_sections_id_seq', 1, false);


--
-- Name: components_sections_button_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_button_heroes_components_id_seq', 2, true);


--
-- Name: components_sections_button_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_button_heroes_id_seq', 1, true);


--
-- Name: components_sections_calculate_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_calculate_sections_components_id_seq', 1, false);


--
-- Name: components_sections_calculate_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_calculate_sections_id_seq', 1, false);


--
-- Name: components_sections_call_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_call_actions_id_seq', 1, false);


--
-- Name: components_sections_classic_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_classic_containers_id_seq', 1, false);


--
-- Name: components_sections_classic_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_classic_heroes_components_id_seq', 1, false);


--
-- Name: components_sections_classic_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_classic_heroes_id_seq', 1, false);


--
-- Name: components_sections_content_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_content_sections_id_seq', 1, false);


--
-- Name: components_sections_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_contents_id_seq', 1, false);


--
-- Name: components_sections_cookies_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_cookies_components_id_seq', 1, false);


--
-- Name: components_sections_cookies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_cookies_id_seq', 1, false);


--
-- Name: components_sections_copyrights_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_copyrights_components_id_seq', 1, false);


--
-- Name: components_sections_copyrights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_copyrights_id_seq', 1, false);


--
-- Name: components_sections_entries_lists_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_entries_lists_components_id_seq', 1, false);


--
-- Name: components_sections_entries_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_entries_lists_id_seq', 1, false);


--
-- Name: components_sections_feature_basic_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_feature_basic_groups_id_seq', 1, false);


--
-- Name: components_sections_for_all_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_for_all_sections_components_id_seq', 1, false);


--
-- Name: components_sections_for_all_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_for_all_sections_id_seq', 1, false);


--
-- Name: components_sections_fourth_footer_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_fourth_footer_sections_components_id_seq', 1, false);


--
-- Name: components_sections_fourth_footer_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_fourth_footer_sections_id_seq', 1, false);


--
-- Name: components_sections_full_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_full_heroes_components_id_seq', 1, false);


--
-- Name: components_sections_full_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_full_heroes_id_seq', 1, false);


--
-- Name: components_sections_how_works_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_how_works_components_id_seq', 1, false);


--
-- Name: components_sections_how_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_how_works_id_seq', 1, false);


--
-- Name: components_sections_icon_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_icon_containers_id_seq', 1, false);


--
-- Name: components_sections_icon_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_icon_heroes_components_id_seq', 1, false);


--
-- Name: components_sections_icon_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_icon_heroes_id_seq', 1, false);


--
-- Name: components_sections_individual_containers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_individual_containers_components_id_seq', 1, false);


--
-- Name: components_sections_individual_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_individual_containers_id_seq', 1, false);


--
-- Name: components_sections_link_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_link_heroes_components_id_seq', 1, false);


--
-- Name: components_sections_link_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_link_heroes_id_seq', 1, false);


--
-- Name: components_sections_logotypes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_logotypes_components_id_seq', 1, false);


--
-- Name: components_sections_logotypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_logotypes_id_seq', 1, false);


--
-- Name: components_sections_main_containers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_main_containers_components_id_seq', 1, false);


--
-- Name: components_sections_main_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_main_containers_id_seq', 1, false);


--
-- Name: components_sections_main_features_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_main_features_components_id_seq', 1, false);


--
-- Name: components_sections_main_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_main_features_id_seq', 1, false);


--
-- Name: components_sections_our_products_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_our_products_sections_components_id_seq', 1, false);


--
-- Name: components_sections_our_products_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_our_products_sections_id_seq', 1, false);


--
-- Name: components_sections_questions_list_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_questions_list_sections_components_id_seq', 1, false);


--
-- Name: components_sections_questions_list_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_questions_list_sections_id_seq', 1, false);


--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_rich_texts_id_seq', 2, true);


--
-- Name: components_sections_searches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_searches_components_id_seq', 1, false);


--
-- Name: components_sections_searches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_searches_id_seq', 1, false);


--
-- Name: components_sections_section_use_cases_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_section_use_cases_components_id_seq', 5, true);


--
-- Name: components_sections_section_use_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_section_use_cases_id_seq', 2, true);


--
-- Name: components_sections_section_widget_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_section_widget_forms_components_id_seq', 1, false);


--
-- Name: components_sections_section_widget_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_section_widget_forms_id_seq', 1, false);


--
-- Name: components_sections_share_options_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_share_options_components_id_seq', 1, false);


--
-- Name: components_sections_share_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_share_options_id_seq', 1, false);


--
-- Name: components_sections_sidebars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_sidebars_components_id_seq', 1, false);


--
-- Name: components_sections_sidebars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_sidebars_id_seq', 1, false);


--
-- Name: components_sections_social_networks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_social_networks_components_id_seq', 1, false);


--
-- Name: components_sections_social_networks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_social_networks_id_seq', 1, false);


--
-- Name: components_sections_time_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_time_sections_components_id_seq', 1, false);


--
-- Name: components_sections_time_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_time_sections_id_seq', 1, false);


--
-- Name: components_sections_title_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_sections_title_sections_id_seq', 3, true);


--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_components_id_seq', 2, true);


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_id_seq', 1, true);


--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_components_id_seq', 1, false);


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_id_seq', 1, false);


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_components_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_components_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_id_seq', 1, false);


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_id_seq', 1, false);


--
-- Name: components_slices_testimonials_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_testimonials_components_id_seq', 1, false);


--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_components_id_seq', 1, false);


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_id_seq', 1, false);


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_slices_testimonials_id_seq', 1, false);


--
-- Name: components_portal_carousels_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_carousels_components_id_seq', 3, true);


--
-- Name: components_portal_carousels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_carousels_id_seq', 1, true);


--
-- Name: components_portal_chips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_chips_id_seq', 1, false);


--
-- Name: components_portal_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_items_id_seq', 1, false);


--
-- Name: components_portal_list_filters_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_list_filters_components_id_seq', 1, false);


--
-- Name: components_portal_list_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_list_filters_id_seq', 1, false);


--
-- Name: components_portal_list_recents_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_list_recents_components_id_seq', 1, false);


--
-- Name: components_portal_list_recents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_list_recents_id_seq', 1, false);


--
-- Name: components_portal_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_questions_id_seq', 1, false);


--
-- Name: components_portal_section_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_section_cards_id_seq', 1, false);


--
-- Name: components_portal_tab_cards_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_tab_cards_components_id_seq', 11, true);


--
-- Name: components_portal_tab_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_portal_tab_cards_id_seq', 9, true);


--
-- Name: components_texts_icon_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_texts_icon_texts_id_seq', 1, false);


--
-- Name: components_texts_link_texts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_texts_link_texts_components_id_seq', 1, false);


--
-- Name: components_texts_link_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_texts_link_texts_id_seq', 1, false);


--
-- Name: components_use_cases_badge_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_badge_lists_id_seq', 1, false);


--
-- Name: components_use_cases_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_banners_components_id_seq', 1, false);


--
-- Name: components_use_cases_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_banners_id_seq', 1, false);


--
-- Name: components_use_cases_button_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_button_lists_id_seq', 1, false);


--
-- Name: components_use_cases_calculate_use_cases_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_calculate_use_cases_components_id_seq', 1, false);


--
-- Name: components_use_cases_calculate_use_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_calculate_use_cases_id_seq', 1, false);


--
-- Name: components_use_cases_labels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_labels_id_seq', 1, false);


--
-- Name: components_use_cases_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_metadata_id_seq', 1, false);


--
-- Name: components_use_cases_paragraphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_paragraphs_id_seq', 1, false);


--
-- Name: components_use_cases_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_products_id_seq', 7, true);


--
-- Name: components_use_cases_use_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.components_use_cases_use_cases_id_seq', 1, false);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.core_store_id_seq', 296, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 2, true);


--
-- Name: library_apis_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.library_apis_components_id_seq', 1, false);


--
-- Name: library_apis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.library_apis_id_seq', 1, false);


--
-- Name: library_apis_products__products_library_apis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.library_apis_products__products_library_apis_id_seq', 1, false);


--
-- Name: pages__localizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.pages__localizations_id_seq', 1, false);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 32, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.pages_id_seq', 7, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 123, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 236, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_developer_portal
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: blog_items_components blog_items_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items_components
    ADD CONSTRAINT blog_items_components_pkey PRIMARY KEY (id);


--
-- Name: blog_items blog_items_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items
    ADD CONSTRAINT blog_items_pkey PRIMARY KEY (id);


--
-- Name: blog_items blog_items_slug_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items
    ADD CONSTRAINT blog_items_slug_unique UNIQUE (slug);


--
-- Name: components_apis_filters_components components_apis_filters_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_filters_components
    ADD CONSTRAINT components_apis_filters_components_pkey PRIMARY KEY (id);


--
-- Name: components_apis_filters components_apis_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_filters
    ADD CONSTRAINT components_apis_filters_pkey PRIMARY KEY (id);


--
-- Name: components_apis_paginations components_apis_paginations_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_paginations
    ADD CONSTRAINT components_apis_paginations_pkey PRIMARY KEY (id);


--
-- Name: components_cards_card_products_components components_cards_card_products_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_card_products_components
    ADD CONSTRAINT components_cards_card_products_components_pkey PRIMARY KEY (id);


--
-- Name: components_cards_card_products components_cards_card_products_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_card_products
    ADD CONSTRAINT components_cards_card_products_pkey PRIMARY KEY (id);


--
-- Name: components_cards_cards components_cards_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_cards
    ADD CONSTRAINT components_cards_cards_pkey PRIMARY KEY (id);


--
-- Name: components_cards_product_link_cards_components components_cards_product_link_cards_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_product_link_cards_components
    ADD CONSTRAINT components_cards_product_link_cards_components_pkey PRIMARY KEY (id);


--
-- Name: components_cards_product_link_cards components_cards_product_link_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_product_link_cards
    ADD CONSTRAINT components_cards_product_link_cards_pkey PRIMARY KEY (id);


--
-- Name: components_cards_use_case_cards components_cards_use_case_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_use_case_cards
    ADD CONSTRAINT components_cards_use_case_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_badgets components_elements_badgets_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_badgets
    ADD CONSTRAINT components_elements_badgets_pkey PRIMARY KEY (id);


--
-- Name: components_elements_basic_cards_components components_elements_basic_cards_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_basic_cards_components
    ADD CONSTRAINT components_elements_basic_cards_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_basic_cards components_elements_basic_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_basic_cards
    ADD CONSTRAINT components_elements_basic_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_big_features components_elements_big_features_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_big_features
    ADD CONSTRAINT components_elements_big_features_pkey PRIMARY KEY (id);


--
-- Name: components_elements_cards components_elements_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_cards
    ADD CONSTRAINT components_elements_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_containers_components components_elements_containers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_containers_components
    ADD CONSTRAINT components_elements_containers_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_containers components_elements_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_containers
    ADD CONSTRAINT components_elements_containers_pkey PRIMARY KEY (id);


--
-- Name: components_elements_custom_radios components_elements_custom_radios_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_custom_radios
    ADD CONSTRAINT components_elements_custom_radios_pkey PRIMARY KEY (id);


--
-- Name: components_elements_entries components_elements_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_entries
    ADD CONSTRAINT components_elements_entries_pkey PRIMARY KEY (id);


--
-- Name: components_elements_filter_versions_components components_elements_filter_versions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_filter_versions_components
    ADD CONSTRAINT components_elements_filter_versions_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_filter_versions components_elements_filter_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_filter_versions
    ADD CONSTRAINT components_elements_filter_versions_pkey PRIMARY KEY (id);


--
-- Name: components_elements_form_checkboxes_components components_elements_form_checkboxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_checkboxes_components
    ADD CONSTRAINT components_elements_form_checkboxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_form_checkboxes components_elements_form_checkboxes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_checkboxes
    ADD CONSTRAINT components_elements_form_checkboxes_pkey PRIMARY KEY (id);


--
-- Name: components_elements_form_responses components_elements_form_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_responses
    ADD CONSTRAINT components_elements_form_responses_pkey PRIMARY KEY (id);


--
-- Name: components_elements_image_lists components_elements_image_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_image_lists
    ADD CONSTRAINT components_elements_image_lists_pkey PRIMARY KEY (id);


--
-- Name: components_elements_link_texts_components components_elements_link_texts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_link_texts_components
    ADD CONSTRAINT components_elements_link_texts_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_link_texts components_elements_link_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_link_texts
    ADD CONSTRAINT components_elements_link_texts_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logos_components components_elements_logos_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logos_components
    ADD CONSTRAINT components_elements_logos_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logos components_elements_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logos
    ADD CONSTRAINT components_elements_logos_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logotypes_components components_elements_logotypes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logotypes_components
    ADD CONSTRAINT components_elements_logotypes_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logotypes components_elements_logotypes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logotypes
    ADD CONSTRAINT components_elements_logotypes_pkey PRIMARY KEY (id);


--
-- Name: components_elements_main_heroes components_elements_main_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_main_heroes
    ADD CONSTRAINT components_elements_main_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_elements_navbar_section_components components_elements_navbar_section_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_navbar_section_components
    ADD CONSTRAINT components_elements_navbar_section_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_navbar_section components_elements_navbar_section_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_navbar_section
    ADD CONSTRAINT components_elements_navbar_section_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners_components components_elements_notification_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_notification_banners_components
    ADD CONSTRAINT components_elements_notification_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners components_elements_notification_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_notification_banners
    ADD CONSTRAINT components_elements_notification_banners_pkey PRIMARY KEY (id);


--
-- Name: components_elements_placeholders components_elements_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_placeholders
    ADD CONSTRAINT components_elements_placeholders_pkey PRIMARY KEY (id);


--
-- Name: components_elements_redirect_links_components components_elements_redirect_links_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_redirect_links_components
    ADD CONSTRAINT components_elements_redirect_links_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_redirect_links components_elements_redirect_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_redirect_links
    ADD CONSTRAINT components_elements_redirect_links_pkey PRIMARY KEY (id);


--
-- Name: components_elements_search_inputs_components components_elements_search_inputs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_inputs_components
    ADD CONSTRAINT components_elements_search_inputs_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_search_inputs components_elements_search_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_inputs
    ADD CONSTRAINT components_elements_search_inputs_pkey PRIMARY KEY (id);


--
-- Name: components_elements_search_outputs components_elements_search_outputs_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_outputs
    ADD CONSTRAINT components_elements_search_outputs_pkey PRIMARY KEY (id);


--
-- Name: components_elements_selects_components components_elements_selects_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_selects_components
    ADD CONSTRAINT components_elements_selects_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_selects components_elements_selects_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_selects
    ADD CONSTRAINT components_elements_selects_pkey PRIMARY KEY (id);


--
-- Name: components_elements_sliders_components components_elements_sliders_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_sliders_components
    ADD CONSTRAINT components_elements_sliders_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_sliders components_elements_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_sliders
    ADD CONSTRAINT components_elements_sliders_pkey PRIMARY KEY (id);


--
-- Name: components_elements_social_networks components_elements_social_networks_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_social_networks
    ADD CONSTRAINT components_elements_social_networks_pkey PRIMARY KEY (id);


--
-- Name: components_elements_status_enumerables components_elements_status_enumerables_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_status_enumerables
    ADD CONSTRAINT components_elements_status_enumerables_pkey PRIMARY KEY (id);


--
-- Name: components_elements_subtitles components_elements_subtitles_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_subtitles
    ADD CONSTRAINT components_elements_subtitles_pkey PRIMARY KEY (id);


--
-- Name: components_elements_titles components_elements_titles_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_titles
    ADD CONSTRAINT components_elements_titles_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_button_forms_components components_formulario_button_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_button_forms_components
    ADD CONSTRAINT components_formulario_button_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_button_forms components_formulario_button_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_button_forms
    ADD CONSTRAINT components_formulario_button_forms_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_checkboxes components_formulario_checkboxes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_checkboxes
    ADD CONSTRAINT components_formulario_checkboxes_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_filter_estatuses_components components_formulario_filter_estatuses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_filter_estatuses_components
    ADD CONSTRAINT components_formulario_filter_estatuses_components_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_filter_estatuses components_formulario_filter_estatuses_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_filter_estatuses
    ADD CONSTRAINT components_formulario_filter_estatuses_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_forms_components components_formulario_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_forms_components
    ADD CONSTRAINT components_formulario_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_forms components_formulario_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_forms
    ADD CONSTRAINT components_formulario_forms_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_inputs components_formulario_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_inputs
    ADD CONSTRAINT components_formulario_inputs_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_options components_formulario_options_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_options
    ADD CONSTRAINT components_formulario_options_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_select_options_components components_formulario_select_options_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_select_options_components
    ADD CONSTRAINT components_formulario_select_options_components_pkey PRIMARY KEY (id);


--
-- Name: components_formulario_select_options components_formulario_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_select_options
    ADD CONSTRAINT components_formulario_select_options_pkey PRIMARY KEY (id);


--
-- Name: components_home_banner_sections_components components_home_banner_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_banner_sections_components
    ADD CONSTRAINT components_home_banner_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_banner_sections components_home_banner_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_banner_sections
    ADD CONSTRAINT components_home_banner_sections_pkey PRIMARY KEY (id);


--
-- Name: components_home_benefits_lists components_home_benefits_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_benefits_lists
    ADD CONSTRAINT components_home_benefits_lists_pkey PRIMARY KEY (id);


--
-- Name: components_home_discover_sections_components components_home_discover_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_discover_sections_components
    ADD CONSTRAINT components_home_discover_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_discover_sections components_home_discover_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_discover_sections
    ADD CONSTRAINT components_home_discover_sections_pkey PRIMARY KEY (id);


--
-- Name: components_home_key_sections_components components_home_key_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_key_sections_components
    ADD CONSTRAINT components_home_key_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_key_sections components_home_key_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_key_sections
    ADD CONSTRAINT components_home_key_sections_pkey PRIMARY KEY (id);


--
-- Name: components_home_status_apis components_home_status_apis_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_status_apis
    ADD CONSTRAINT components_home_status_apis_pkey PRIMARY KEY (id);


--
-- Name: components_home_steps components_home_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_steps
    ADD CONSTRAINT components_home_steps_pkey PRIMARY KEY (id);


--
-- Name: components_home_widget_sections_components components_home_widget_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_widget_sections_components
    ADD CONSTRAINT components_home_widget_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_widget_sections components_home_widget_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_widget_sections
    ADD CONSTRAINT components_home_widget_sections_pkey PRIMARY KEY (id);


--
-- Name: components_home_work_sections_components components_home_work_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_work_sections_components
    ADD CONSTRAINT components_home_work_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_work_sections components_home_work_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_work_sections
    ADD CONSTRAINT components_home_work_sections_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers_components components_layout_footers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footers_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers components_layout_footers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers
    ADD CONSTRAINT components_layout_footers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_layout_footers components_layout_footers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers
    ADD CONSTRAINT components_layout_footers_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars_components components_layout_navbars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT components_layout_navbars_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars components_layout_navbars_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars
    ADD CONSTRAINT components_layout_navbars_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_layout_navbars components_layout_navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars
    ADD CONSTRAINT components_layout_navbars_pkey PRIMARY KEY (id);


--
-- Name: components_links_basic_links components_links_basic_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_basic_links
    ADD CONSTRAINT components_links_basic_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_big_links_components components_links_big_links_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_big_links_components
    ADD CONSTRAINT components_links_big_links_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_big_links components_links_big_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_big_links
    ADD CONSTRAINT components_links_big_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_buttons_components components_links_buttons_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_buttons_components
    ADD CONSTRAINT components_links_buttons_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_buttons components_links_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_buttons
    ADD CONSTRAINT components_links_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_links_drop_big_links_components components_links_drop_big_links_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_big_links_components
    ADD CONSTRAINT components_links_drop_big_links_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_drop_big_links components_links_drop_big_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_big_links
    ADD CONSTRAINT components_links_drop_big_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_drop_links_components components_links_drop_links_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_links_components
    ADD CONSTRAINT components_links_drop_links_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_drop_links components_links_drop_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_links
    ADD CONSTRAINT components_links_drop_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections_components components_links_footer_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections components_links_footer_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_footer_sections
    ADD CONSTRAINT components_links_footer_sections_pkey PRIMARY KEY (id);


--
-- Name: components_links_icon_links_components components_links_icon_links_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_icon_links_components
    ADD CONSTRAINT components_links_icon_links_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_icon_links components_links_icon_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_icon_links
    ADD CONSTRAINT components_links_icon_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_links components_links_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_links
    ADD CONSTRAINT components_links_links_pkey PRIMARY KEY (id);


--
-- Name: components_links_share_lists components_links_share_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_share_lists
    ADD CONSTRAINT components_links_share_lists_pkey PRIMARY KEY (id);


--
-- Name: components_links_simple_buttons components_links_simple_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_simple_buttons
    ADD CONSTRAINT components_links_simple_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_links_sub_links components_links_sub_links_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_sub_links
    ADD CONSTRAINT components_links_sub_links_pkey PRIMARY KEY (id);


--
-- Name: components_meta_metadata components_meta_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_meta_metadata
    ADD CONSTRAINT components_meta_metadata_pkey PRIMARY KEY (id);


--
-- Name: components_new_card_lists components_new_card_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_card_lists
    ADD CONSTRAINT components_new_card_lists_pkey PRIMARY KEY (id);


--
-- Name: components_new_cards_lists components_new_cards_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_cards_lists
    ADD CONSTRAINT components_new_cards_lists_pkey PRIMARY KEY (id);


--
-- Name: components_new_shares components_new_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_shares
    ADD CONSTRAINT components_new_shares_pkey PRIMARY KEY (id);


--
-- Name: components_new_sharings_components components_new_sharings_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_sharings_components
    ADD CONSTRAINT components_new_sharings_components_pkey PRIMARY KEY (id);


--
-- Name: components_new_sharings components_new_sharings_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_sharings
    ADD CONSTRAINT components_new_sharings_pkey PRIMARY KEY (id);


--
-- Name: components_new_tests components_new_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_tests
    ADD CONSTRAINT components_new_tests_pkey PRIMARY KEY (id);


--
-- Name: components_sections_banners_components components_sections_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners_components
    ADD CONSTRAINT components_sections_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_banners components_sections_banners_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners
    ADD CONSTRAINT components_sections_banners_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_banners components_sections_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners
    ADD CONSTRAINT components_sections_banners_pkey PRIMARY KEY (id);


--
-- Name: components_sections_basic_containers components_sections_basic_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_basic_containers
    ADD CONSTRAINT components_sections_basic_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_basic_containers components_sections_basic_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_basic_containers
    ADD CONSTRAINT components_sections_basic_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_big_containers_components components_sections_big_containers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers_components
    ADD CONSTRAINT components_sections_big_containers_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_big_containers components_sections_big_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers
    ADD CONSTRAINT components_sections_big_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_big_containers components_sections_big_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers
    ADD CONSTRAINT components_sections_big_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_big_heroes_components components_sections_big_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes_components
    ADD CONSTRAINT components_sections_big_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_big_heroes components_sections_big_heroes_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes
    ADD CONSTRAINT components_sections_big_heroes_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_big_heroes components_sections_big_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes
    ADD CONSTRAINT components_sections_big_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_breadcumb_sections_components components_sections_breadcumb_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_breadcumb_sections_components
    ADD CONSTRAINT components_sections_breadcumb_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_breadcumb_sections components_sections_breadcumb_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_breadcumb_sections
    ADD CONSTRAINT components_sections_breadcumb_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_button_heroes_components components_sections_button_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_button_heroes_components
    ADD CONSTRAINT components_sections_button_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_button_heroes components_sections_button_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_button_heroes
    ADD CONSTRAINT components_sections_button_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_calculate_sections_components components_sections_calculate_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_calculate_sections_components
    ADD CONSTRAINT components_sections_calculate_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_calculate_sections components_sections_calculate_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_calculate_sections
    ADD CONSTRAINT components_sections_calculate_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_call_actions components_sections_call_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_call_actions
    ADD CONSTRAINT components_sections_call_actions_pkey PRIMARY KEY (id);


--
-- Name: components_sections_classic_containers components_sections_classic_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_containers
    ADD CONSTRAINT components_sections_classic_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_classic_containers components_sections_classic_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_containers
    ADD CONSTRAINT components_sections_classic_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_classic_heroes_components components_sections_classic_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes_components
    ADD CONSTRAINT components_sections_classic_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_classic_heroes components_sections_classic_heroes_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes
    ADD CONSTRAINT components_sections_classic_heroes_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_classic_heroes components_sections_classic_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes
    ADD CONSTRAINT components_sections_classic_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_content_sections components_sections_content_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_content_sections
    ADD CONSTRAINT components_sections_content_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_contents components_sections_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_contents
    ADD CONSTRAINT components_sections_contents_pkey PRIMARY KEY (id);


--
-- Name: components_sections_cookies_components components_sections_cookies_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_cookies_components
    ADD CONSTRAINT components_sections_cookies_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_cookies components_sections_cookies_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_cookies
    ADD CONSTRAINT components_sections_cookies_pkey PRIMARY KEY (id);


--
-- Name: components_sections_copyrights_components components_sections_copyrights_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_copyrights_components
    ADD CONSTRAINT components_sections_copyrights_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_copyrights components_sections_copyrights_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_copyrights
    ADD CONSTRAINT components_sections_copyrights_pkey PRIMARY KEY (id);


--
-- Name: components_sections_entries_lists_components components_sections_entries_lists_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists_components
    ADD CONSTRAINT components_sections_entries_lists_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_entries_lists components_sections_entries_lists_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists
    ADD CONSTRAINT components_sections_entries_lists_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_entries_lists components_sections_entries_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists
    ADD CONSTRAINT components_sections_entries_lists_pkey PRIMARY KEY (id);


--
-- Name: components_sections_feature_basic_groups components_sections_feature_basic_groups_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_feature_basic_groups
    ADD CONSTRAINT components_sections_feature_basic_groups_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_feature_basic_groups components_sections_feature_basic_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_feature_basic_groups
    ADD CONSTRAINT components_sections_feature_basic_groups_pkey PRIMARY KEY (id);


--
-- Name: components_sections_for_all_sections_components components_sections_for_all_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_for_all_sections_components
    ADD CONSTRAINT components_sections_for_all_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_for_all_sections components_sections_for_all_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_for_all_sections
    ADD CONSTRAINT components_sections_for_all_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_fourth_footer_sections components_sections_fourth_footer_sections_IdContentType_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections
    ADD CONSTRAINT "components_sections_fourth_footer_sections_IdContentType_unique" UNIQUE ("IdContentType");


--
-- Name: components_sections_fourth_footer_sections_components components_sections_fourth_footer_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections_components
    ADD CONSTRAINT components_sections_fourth_footer_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_fourth_footer_sections components_sections_fourth_footer_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections
    ADD CONSTRAINT components_sections_fourth_footer_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_full_heroes_components components_sections_full_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_full_heroes_components
    ADD CONSTRAINT components_sections_full_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_full_heroes components_sections_full_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_full_heroes
    ADD CONSTRAINT components_sections_full_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_how_works_components components_sections_how_works_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works_components
    ADD CONSTRAINT components_sections_how_works_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_how_works components_sections_how_works_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works
    ADD CONSTRAINT components_sections_how_works_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_how_works components_sections_how_works_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works
    ADD CONSTRAINT components_sections_how_works_pkey PRIMARY KEY (id);


--
-- Name: components_sections_icon_containers components_sections_icon_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_containers
    ADD CONSTRAINT components_sections_icon_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_icon_containers components_sections_icon_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_containers
    ADD CONSTRAINT components_sections_icon_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_icon_heroes_components components_sections_icon_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes_components
    ADD CONSTRAINT components_sections_icon_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_icon_heroes components_sections_icon_heroes_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes
    ADD CONSTRAINT components_sections_icon_heroes_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_icon_heroes components_sections_icon_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes
    ADD CONSTRAINT components_sections_icon_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_individual_containers_components components_sections_individual_containers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers_components
    ADD CONSTRAINT components_sections_individual_containers_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_individual_containers components_sections_individual_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers
    ADD CONSTRAINT components_sections_individual_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_individual_containers components_sections_individual_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers
    ADD CONSTRAINT components_sections_individual_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_link_heroes_components components_sections_link_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes_components
    ADD CONSTRAINT components_sections_link_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_link_heroes components_sections_link_heroes_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes
    ADD CONSTRAINT components_sections_link_heroes_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_link_heroes components_sections_link_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes
    ADD CONSTRAINT components_sections_link_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_logotypes_components components_sections_logotypes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_logotypes_components
    ADD CONSTRAINT components_sections_logotypes_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_logotypes components_sections_logotypes_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_logotypes
    ADD CONSTRAINT components_sections_logotypes_pkey PRIMARY KEY (id);


--
-- Name: components_sections_main_containers_components components_sections_main_containers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers_components
    ADD CONSTRAINT components_sections_main_containers_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_main_containers components_sections_main_containers_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers
    ADD CONSTRAINT components_sections_main_containers_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_main_containers components_sections_main_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers
    ADD CONSTRAINT components_sections_main_containers_pkey PRIMARY KEY (id);


--
-- Name: components_sections_main_features_components components_sections_main_features_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features_components
    ADD CONSTRAINT components_sections_main_features_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_main_features components_sections_main_features_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features
    ADD CONSTRAINT components_sections_main_features_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_main_features components_sections_main_features_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features
    ADD CONSTRAINT components_sections_main_features_pkey PRIMARY KEY (id);


--
-- Name: components_sections_our_products_sections_components components_sections_our_products_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_our_products_sections_components
    ADD CONSTRAINT components_sections_our_products_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_our_products_sections components_sections_our_products_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_our_products_sections
    ADD CONSTRAINT components_sections_our_products_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_questions_list_sections_components components_sections_questions_list_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_questions_list_sections_components
    ADD CONSTRAINT components_sections_questions_list_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_questions_list_sections components_sections_questions_list_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_questions_list_sections
    ADD CONSTRAINT components_sections_questions_list_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_rich_texts components_sections_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_rich_texts
    ADD CONSTRAINT components_sections_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_sections_searches_components components_sections_searches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches_components
    ADD CONSTRAINT components_sections_searches_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_searches components_sections_searches_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches
    ADD CONSTRAINT components_sections_searches_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_searches components_sections_searches_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches
    ADD CONSTRAINT components_sections_searches_pkey PRIMARY KEY (id);


--
-- Name: components_sections_section_use_cases_components components_sections_section_use_cases_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_use_cases_components
    ADD CONSTRAINT components_sections_section_use_cases_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_section_use_cases components_sections_section_use_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_use_cases
    ADD CONSTRAINT components_sections_section_use_cases_pkey PRIMARY KEY (id);


--
-- Name: components_sections_section_widget_forms_components components_sections_section_widget_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_widget_forms_components
    ADD CONSTRAINT components_sections_section_widget_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_section_widget_forms components_sections_section_widget_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_widget_forms
    ADD CONSTRAINT components_sections_section_widget_forms_pkey PRIMARY KEY (id);


--
-- Name: components_sections_share_options_components components_sections_share_options_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_share_options_components
    ADD CONSTRAINT components_sections_share_options_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_share_options components_sections_share_options_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_share_options
    ADD CONSTRAINT components_sections_share_options_pkey PRIMARY KEY (id);


--
-- Name: components_sections_sidebars_components components_sections_sidebars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars_components
    ADD CONSTRAINT components_sections_sidebars_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_sidebars components_sections_sidebars_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars
    ADD CONSTRAINT components_sections_sidebars_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_sections_sidebars components_sections_sidebars_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars
    ADD CONSTRAINT components_sections_sidebars_pkey PRIMARY KEY (id);


--
-- Name: components_sections_social_networks_components components_sections_social_networks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_social_networks_components
    ADD CONSTRAINT components_sections_social_networks_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_social_networks components_sections_social_networks_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_social_networks
    ADD CONSTRAINT components_sections_social_networks_pkey PRIMARY KEY (id);


--
-- Name: components_sections_time_sections_components components_sections_time_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_time_sections_components
    ADD CONSTRAINT components_sections_time_sections_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_time_sections components_sections_time_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_time_sections
    ADD CONSTRAINT components_sections_time_sections_pkey PRIMARY KEY (id);


--
-- Name: components_sections_title_sections components_sections_title_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_title_sections
    ADD CONSTRAINT components_sections_title_sections_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions_components components_slices_bottom_actions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT components_slices_bottom_actions_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions components_slices_bottom_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_bottom_actions
    ADD CONSTRAINT components_slices_bottom_actions_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups_components components_slices_feature_columns_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT components_slices_feature_columns_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups components_slices_feature_columns_groups_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups
    ADD CONSTRAINT components_slices_feature_columns_groups_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_slices_feature_columns_groups components_slices_feature_columns_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups
    ADD CONSTRAINT components_slices_feature_columns_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns components_slices_feature_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns
    ADD CONSTRAINT components_slices_feature_columns_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_components components_slices_feature_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups_components components_slices_feature_rows_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT components_slices_feature_rows_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups components_slices_feature_rows_groups_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups
    ADD CONSTRAINT components_slices_feature_rows_groups_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_slices_feature_rows_groups components_slices_feature_rows_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups
    ADD CONSTRAINT components_slices_feature_rows_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows components_slices_feature_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows
    ADD CONSTRAINT components_slices_feature_rows_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_components components_slices_testimonials_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_components
    ADD CONSTRAINT components_slices_testimonials_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups_components components_slices_testimonials_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT components_slices_testimonials_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups components_slices_testimonials_groups_idcontenttype_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups
    ADD CONSTRAINT components_slices_testimonials_groups_idcontenttype_unique UNIQUE ("idContentType");


--
-- Name: components_slices_testimonials_groups components_slices_testimonials_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups
    ADD CONSTRAINT components_slices_testimonials_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials components_slices_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials
    ADD CONSTRAINT components_slices_testimonials_pkey PRIMARY KEY (id);


--
-- Name: components_portal_carousels_components components_portal_carousels_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_carousels_components
    ADD CONSTRAINT components_portal_carousels_components_pkey PRIMARY KEY (id);


--
-- Name: components_portal_carousels components_portal_carousels_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_carousels
    ADD CONSTRAINT components_portal_carousels_pkey PRIMARY KEY (id);


--
-- Name: components_portal_chips components_portal_chips_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_chips
    ADD CONSTRAINT components_portal_chips_pkey PRIMARY KEY (id);


--
-- Name: components_portal_items components_portal_items_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_items
    ADD CONSTRAINT components_portal_items_pkey PRIMARY KEY (id);


--
-- Name: components_portal_list_filters_components components_portal_list_filters_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_filters_components
    ADD CONSTRAINT components_portal_list_filters_components_pkey PRIMARY KEY (id);


--
-- Name: components_portal_list_filters components_portal_list_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_filters
    ADD CONSTRAINT components_portal_list_filters_pkey PRIMARY KEY (id);


--
-- Name: components_portal_list_recents_components components_portal_list_recents_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_recents_components
    ADD CONSTRAINT components_portal_list_recents_components_pkey PRIMARY KEY (id);


--
-- Name: components_portal_list_recents components_portal_list_recents_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_recents
    ADD CONSTRAINT components_portal_list_recents_pkey PRIMARY KEY (id);


--
-- Name: components_portal_questions components_portal_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_questions
    ADD CONSTRAINT components_portal_questions_pkey PRIMARY KEY (id);


--
-- Name: components_portal_section_cards components_portal_section_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_section_cards
    ADD CONSTRAINT components_portal_section_cards_pkey PRIMARY KEY (id);


--
-- Name: components_portal_tab_cards_components components_portal_tab_cards_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_tab_cards_components
    ADD CONSTRAINT components_portal_tab_cards_components_pkey PRIMARY KEY (id);


--
-- Name: components_portal_tab_cards components_portal_tab_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_tab_cards
    ADD CONSTRAINT components_portal_tab_cards_pkey PRIMARY KEY (id);


--
-- Name: components_texts_icon_texts components_texts_icon_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_icon_texts
    ADD CONSTRAINT components_texts_icon_texts_pkey PRIMARY KEY (id);


--
-- Name: components_texts_link_texts_components components_texts_link_texts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_link_texts_components
    ADD CONSTRAINT components_texts_link_texts_components_pkey PRIMARY KEY (id);


--
-- Name: components_texts_link_texts components_texts_link_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_link_texts
    ADD CONSTRAINT components_texts_link_texts_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_badge_lists components_use_cases_badge_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_badge_lists
    ADD CONSTRAINT components_use_cases_badge_lists_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_banners_components components_use_cases_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners_components
    ADD CONSTRAINT components_use_cases_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_banners components_use_cases_banners_idContentType_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners
    ADD CONSTRAINT "components_use_cases_banners_idContentType_unique" UNIQUE ("idContentType");


--
-- Name: components_use_cases_banners components_use_cases_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners
    ADD CONSTRAINT components_use_cases_banners_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_button_lists components_use_cases_button_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_button_lists
    ADD CONSTRAINT components_use_cases_button_lists_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_calculate_use_cases_components components_use_cases_calculate_use_cases_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_calculate_use_cases_components
    ADD CONSTRAINT components_use_cases_calculate_use_cases_components_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_calculate_use_cases components_use_cases_calculate_use_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_calculate_use_cases
    ADD CONSTRAINT components_use_cases_calculate_use_cases_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_labels components_use_cases_labels_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_labels
    ADD CONSTRAINT components_use_cases_labels_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_metadata components_use_cases_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_metadata
    ADD CONSTRAINT components_use_cases_metadata_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_paragraphs components_use_cases_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_paragraphs
    ADD CONSTRAINT components_use_cases_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_products components_use_cases_products_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_products
    ADD CONSTRAINT components_use_cases_products_pkey PRIMARY KEY (id);


--
-- Name: components_use_cases_use_cases components_use_cases_use_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_use_cases
    ADD CONSTRAINT components_use_cases_use_cases_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: library_apis_components library_apis_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis_components
    ADD CONSTRAINT library_apis_components_pkey PRIMARY KEY (id);


--
-- Name: library_apis library_apis_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis
    ADD CONSTRAINT library_apis_pkey PRIMARY KEY (id);


--
-- Name: library_apis_products__products_library_apis library_apis_products__products_library_apis_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis_products__products_library_apis
    ADD CONSTRAINT library_apis_products__products_library_apis_pkey PRIMARY KEY (id);


--
-- Name: library_apis library_apis_slug_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis
    ADD CONSTRAINT library_apis_slug_unique UNIQUE (slug);


--
-- Name: pages__localizations pages__localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages__localizations
    ADD CONSTRAINT pages__localizations_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages pages_slug_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products products_slug_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_slug_unique UNIQUE (slug);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: blog_items_components blog_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.blog_items_components
    ADD CONSTRAINT blog_item_id_fk FOREIGN KEY (blog_item_id) REFERENCES public.blog_items(id) ON DELETE CASCADE;


--
-- Name: components_apis_filters_components components_apis_filter_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_apis_filters_components
    ADD CONSTRAINT components_apis_filter_id_fk FOREIGN KEY (components_apis_filter_id) REFERENCES public.components_apis_filters(id) ON DELETE CASCADE;


--
-- Name: components_cards_card_products_components components_cards_card_product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_card_products_components
    ADD CONSTRAINT components_cards_card_product_id_fk FOREIGN KEY (components_cards_card_product_id) REFERENCES public.components_cards_card_products(id) ON DELETE CASCADE;


--
-- Name: components_cards_product_link_cards_components components_cards_product_link_card_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_cards_product_link_cards_components
    ADD CONSTRAINT components_cards_product_link_card_id_fk FOREIGN KEY (components_cards_product_link_card_id) REFERENCES public.components_cards_product_link_cards(id) ON DELETE CASCADE;


--
-- Name: components_elements_basic_cards_components components_elements_basic_card_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_basic_cards_components
    ADD CONSTRAINT components_elements_basic_card_id_fk FOREIGN KEY (components_elements_basic_card_id) REFERENCES public.components_elements_basic_cards(id) ON DELETE CASCADE;


--
-- Name: components_elements_containers_components components_elements_container_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_containers_components
    ADD CONSTRAINT components_elements_container_id_fk FOREIGN KEY (components_elements_container_id) REFERENCES public.components_elements_containers(id) ON DELETE CASCADE;


--
-- Name: components_elements_filter_versions_components components_elements_filter_version_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_filter_versions_components
    ADD CONSTRAINT components_elements_filter_version_id_fk FOREIGN KEY (components_elements_filter_version_id) REFERENCES public.components_elements_filter_versions(id) ON DELETE CASCADE;


--
-- Name: components_elements_form_checkboxes_components components_elements_form_checkbox_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_form_checkboxes_components
    ADD CONSTRAINT components_elements_form_checkbox_id_fk FOREIGN KEY (components_elements_form_checkbox_id) REFERENCES public.components_elements_form_checkboxes(id) ON DELETE CASCADE;


--
-- Name: components_elements_link_texts_components components_elements_link_text_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_link_texts_components
    ADD CONSTRAINT components_elements_link_text_id_fk FOREIGN KEY (components_elements_link_text_id) REFERENCES public.components_elements_link_texts(id) ON DELETE CASCADE;


--
-- Name: components_elements_logos_components components_elements_logo_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logos_components
    ADD CONSTRAINT components_elements_logo_id_fk FOREIGN KEY (components_elements_logo_id) REFERENCES public.components_elements_logos(id) ON DELETE CASCADE;


--
-- Name: components_elements_logotypes_components components_elements_logotype_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_logotypes_components
    ADD CONSTRAINT components_elements_logotype_id_fk FOREIGN KEY (components_elements_logotype_id) REFERENCES public.components_elements_logotypes(id) ON DELETE CASCADE;


--
-- Name: components_elements_navbar_section_components components_elements_navbar_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_navbar_section_components
    ADD CONSTRAINT components_elements_navbar_section_id_fk FOREIGN KEY (components_elements_navbar_section_id) REFERENCES public.components_elements_navbar_section(id) ON DELETE CASCADE;


--
-- Name: components_elements_notification_banners_components components_elements_notification_banner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_notification_banners_components
    ADD CONSTRAINT components_elements_notification_banner_id_fk FOREIGN KEY (components_elements_notification_banner_id) REFERENCES public.components_elements_notification_banners(id) ON DELETE CASCADE;


--
-- Name: components_elements_redirect_links_components components_elements_redirect_link_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_redirect_links_components
    ADD CONSTRAINT components_elements_redirect_link_id_fk FOREIGN KEY (components_elements_redirect_link_id) REFERENCES public.components_elements_redirect_links(id) ON DELETE CASCADE;


--
-- Name: components_elements_search_inputs_components components_elements_search_input_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_search_inputs_components
    ADD CONSTRAINT components_elements_search_input_id_fk FOREIGN KEY (components_elements_search_input_id) REFERENCES public.components_elements_search_inputs(id) ON DELETE CASCADE;


--
-- Name: components_elements_selects_components components_elements_select_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_selects_components
    ADD CONSTRAINT components_elements_select_id_fk FOREIGN KEY (components_elements_select_id) REFERENCES public.components_elements_selects(id) ON DELETE CASCADE;


--
-- Name: components_elements_sliders_components components_elements_slider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_elements_sliders_components
    ADD CONSTRAINT components_elements_slider_id_fk FOREIGN KEY (components_elements_slider_id) REFERENCES public.components_elements_sliders(id) ON DELETE CASCADE;


--
-- Name: components_formulario_button_forms_components components_formulario_button_form_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_button_forms_components
    ADD CONSTRAINT components_formulario_button_form_id_fk FOREIGN KEY (components_formulario_button_form_id) REFERENCES public.components_formulario_button_forms(id) ON DELETE CASCADE;


--
-- Name: components_formulario_filter_estatuses_components components_formulario_filter_estatus_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_filter_estatuses_components
    ADD CONSTRAINT components_formulario_filter_estatus_id_fk FOREIGN KEY (components_formulario_filter_estatus_id) REFERENCES public.components_formulario_filter_estatuses(id) ON DELETE CASCADE;


--
-- Name: components_formulario_forms_components components_formulario_form_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_forms_components
    ADD CONSTRAINT components_formulario_form_id_fk FOREIGN KEY (components_formulario_form_id) REFERENCES public.components_formulario_forms(id) ON DELETE CASCADE;


--
-- Name: components_formulario_select_options_components components_formulario_select_option_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_formulario_select_options_components
    ADD CONSTRAINT components_formulario_select_option_id_fk FOREIGN KEY (components_formulario_select_option_id) REFERENCES public.components_formulario_select_options(id) ON DELETE CASCADE;


--
-- Name: components_home_banner_sections_components components_home_banner_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_banner_sections_components
    ADD CONSTRAINT components_home_banner_section_id_fk FOREIGN KEY (components_home_banner_section_id) REFERENCES public.components_home_banner_sections(id) ON DELETE CASCADE;


--
-- Name: components_home_discover_sections_components components_home_discover_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_discover_sections_components
    ADD CONSTRAINT components_home_discover_section_id_fk FOREIGN KEY (components_home_discover_section_id) REFERENCES public.components_home_discover_sections(id) ON DELETE CASCADE;


--
-- Name: components_home_key_sections_components components_home_key_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_key_sections_components
    ADD CONSTRAINT components_home_key_section_id_fk FOREIGN KEY (components_home_key_section_id) REFERENCES public.components_home_key_sections(id) ON DELETE CASCADE;


--
-- Name: components_home_widget_sections_components components_home_widget_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_widget_sections_components
    ADD CONSTRAINT components_home_widget_section_id_fk FOREIGN KEY (components_home_widget_section_id) REFERENCES public.components_home_widget_sections(id) ON DELETE CASCADE;


--
-- Name: components_home_work_sections_components components_home_work_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_home_work_sections_components
    ADD CONSTRAINT components_home_work_section_id_fk FOREIGN KEY (components_home_work_section_id) REFERENCES public.components_home_work_sections(id) ON DELETE CASCADE;


--
-- Name: components_layout_footers_components components_layout_footer_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footer_id_fk FOREIGN KEY (components_layout_footer_id) REFERENCES public.components_layout_footers(id) ON DELETE CASCADE;


--
-- Name: components_layout_navbars_components components_layout_navbar_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT components_layout_navbar_id_fk FOREIGN KEY (components_layout_navbar_id) REFERENCES public.components_layout_navbars(id) ON DELETE CASCADE;


--
-- Name: components_links_big_links_components components_links_big_link_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_big_links_components
    ADD CONSTRAINT components_links_big_link_id_fk FOREIGN KEY (components_links_big_link_id) REFERENCES public.components_links_big_links(id) ON DELETE CASCADE;


--
-- Name: components_links_buttons_components components_links_button_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_buttons_components
    ADD CONSTRAINT components_links_button_id_fk FOREIGN KEY (components_links_button_id) REFERENCES public.components_links_buttons(id) ON DELETE CASCADE;


--
-- Name: components_links_drop_big_links_components components_links_drop_big_link_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_big_links_components
    ADD CONSTRAINT components_links_drop_big_link_id_fk FOREIGN KEY (components_links_drop_big_link_id) REFERENCES public.components_links_drop_big_links(id) ON DELETE CASCADE;


--
-- Name: components_links_drop_links_components components_links_drop_link_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_drop_links_components
    ADD CONSTRAINT components_links_drop_link_id_fk FOREIGN KEY (components_links_drop_link_id) REFERENCES public.components_links_drop_links(id) ON DELETE CASCADE;


--
-- Name: components_links_footer_sections_components components_links_footer_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_section_id_fk FOREIGN KEY (components_links_footer_section_id) REFERENCES public.components_links_footer_sections(id) ON DELETE CASCADE;


--
-- Name: components_links_icon_links_components components_links_icon_link_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_links_icon_links_components
    ADD CONSTRAINT components_links_icon_link_id_fk FOREIGN KEY (components_links_icon_link_id) REFERENCES public.components_links_icon_links(id) ON DELETE CASCADE;


--
-- Name: components_new_sharings_components components_new_sharing_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_new_sharings_components
    ADD CONSTRAINT components_new_sharing_id_fk FOREIGN KEY (components_new_sharing_id) REFERENCES public.components_new_sharings(id) ON DELETE CASCADE;


--
-- Name: components_sections_banners_components components_sections_banner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_banners_components
    ADD CONSTRAINT components_sections_banner_id_fk FOREIGN KEY (components_sections_banner_id) REFERENCES public.components_sections_banners(id) ON DELETE CASCADE;


--
-- Name: components_sections_big_containers_components components_sections_big_container_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_containers_components
    ADD CONSTRAINT components_sections_big_container_id_fk FOREIGN KEY (components_sections_big_container_id) REFERENCES public.components_sections_big_containers(id) ON DELETE CASCADE;


--
-- Name: components_sections_big_heroes_components components_sections_big_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_big_heroes_components
    ADD CONSTRAINT components_sections_big_hero_id_fk FOREIGN KEY (components_sections_big_hero_id) REFERENCES public.components_sections_big_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_breadcumb_sections_components components_sections_breadcumb_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_breadcumb_sections_components
    ADD CONSTRAINT components_sections_breadcumb_section_id_fk FOREIGN KEY (components_sections_breadcumb_section_id) REFERENCES public.components_sections_breadcumb_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_button_heroes_components components_sections_button_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_button_heroes_components
    ADD CONSTRAINT components_sections_button_hero_id_fk FOREIGN KEY (components_sections_button_hero_id) REFERENCES public.components_sections_button_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_calculate_sections_components components_sections_calculate_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_calculate_sections_components
    ADD CONSTRAINT components_sections_calculate_section_id_fk FOREIGN KEY (components_sections_calculate_section_id) REFERENCES public.components_sections_calculate_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_classic_heroes_components components_sections_classic_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_classic_heroes_components
    ADD CONSTRAINT components_sections_classic_hero_id_fk FOREIGN KEY (components_sections_classic_hero_id) REFERENCES public.components_sections_classic_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_cookies_components components_sections_cooky_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_cookies_components
    ADD CONSTRAINT components_sections_cooky_id_fk FOREIGN KEY (components_sections_cooky_id) REFERENCES public.components_sections_cookies(id) ON DELETE CASCADE;


--
-- Name: components_sections_copyrights_components components_sections_copyright_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_copyrights_components
    ADD CONSTRAINT components_sections_copyright_id_fk FOREIGN KEY (components_sections_copyright_id) REFERENCES public.components_sections_copyrights(id) ON DELETE CASCADE;


--
-- Name: components_sections_entries_lists_components components_sections_entries_list_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_entries_lists_components
    ADD CONSTRAINT components_sections_entries_list_id_fk FOREIGN KEY (components_sections_entries_list_id) REFERENCES public.components_sections_entries_lists(id) ON DELETE CASCADE;


--
-- Name: components_sections_for_all_sections_components components_sections_for_all_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_for_all_sections_components
    ADD CONSTRAINT components_sections_for_all_section_id_fk FOREIGN KEY (components_sections_for_all_section_id) REFERENCES public.components_sections_for_all_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_fourth_footer_sections_components components_sections_fourth_footer_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_fourth_footer_sections_components
    ADD CONSTRAINT components_sections_fourth_footer_section_id_fk FOREIGN KEY (components_sections_fourth_footer_section_id) REFERENCES public.components_sections_fourth_footer_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_full_heroes_components components_sections_full_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_full_heroes_components
    ADD CONSTRAINT components_sections_full_hero_id_fk FOREIGN KEY (components_sections_full_hero_id) REFERENCES public.components_sections_full_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_how_works_components components_sections_how_work_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_how_works_components
    ADD CONSTRAINT components_sections_how_work_id_fk FOREIGN KEY (components_sections_how_work_id) REFERENCES public.components_sections_how_works(id) ON DELETE CASCADE;


--
-- Name: components_sections_icon_heroes_components components_sections_icon_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_icon_heroes_components
    ADD CONSTRAINT components_sections_icon_hero_id_fk FOREIGN KEY (components_sections_icon_hero_id) REFERENCES public.components_sections_icon_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_individual_containers_components components_sections_individual_container_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_individual_containers_components
    ADD CONSTRAINT components_sections_individual_container_id_fk FOREIGN KEY (components_sections_individual_container_id) REFERENCES public.components_sections_individual_containers(id) ON DELETE CASCADE;


--
-- Name: components_sections_link_heroes_components components_sections_link_hero_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_link_heroes_components
    ADD CONSTRAINT components_sections_link_hero_id_fk FOREIGN KEY (components_sections_link_hero_id) REFERENCES public.components_sections_link_heroes(id) ON DELETE CASCADE;


--
-- Name: components_sections_logotypes_components components_sections_logotype_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_logotypes_components
    ADD CONSTRAINT components_sections_logotype_id_fk FOREIGN KEY (components_sections_logotype_id) REFERENCES public.components_sections_logotypes(id) ON DELETE CASCADE;


--
-- Name: components_sections_main_containers_components components_sections_main_container_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_containers_components
    ADD CONSTRAINT components_sections_main_container_id_fk FOREIGN KEY (components_sections_main_container_id) REFERENCES public.components_sections_main_containers(id) ON DELETE CASCADE;


--
-- Name: components_sections_main_features_components components_sections_main_feature_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_main_features_components
    ADD CONSTRAINT components_sections_main_feature_id_fk FOREIGN KEY (components_sections_main_feature_id) REFERENCES public.components_sections_main_features(id) ON DELETE CASCADE;


--
-- Name: components_sections_our_products_sections_components components_sections_our_products_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_our_products_sections_components
    ADD CONSTRAINT components_sections_our_products_section_id_fk FOREIGN KEY (components_sections_our_products_section_id) REFERENCES public.components_sections_our_products_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_questions_list_sections_components components_sections_questions_list_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_questions_list_sections_components
    ADD CONSTRAINT components_sections_questions_list_section_id_fk FOREIGN KEY (components_sections_questions_list_section_id) REFERENCES public.components_sections_questions_list_sections(id) ON DELETE CASCADE;


--
-- Name: components_sections_searches_components components_sections_search_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_searches_components
    ADD CONSTRAINT components_sections_search_id_fk FOREIGN KEY (components_sections_search_id) REFERENCES public.components_sections_searches(id) ON DELETE CASCADE;


--
-- Name: components_sections_section_use_cases_components components_sections_section_use_case_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_use_cases_components
    ADD CONSTRAINT components_sections_section_use_case_id_fk FOREIGN KEY (components_sections_section_use_case_id) REFERENCES public.components_sections_section_use_cases(id) ON DELETE CASCADE;


--
-- Name: components_sections_section_widget_forms_components components_sections_section_widget_form_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_section_widget_forms_components
    ADD CONSTRAINT components_sections_section_widget_form_id_fk FOREIGN KEY (components_sections_section_widget_form_id) REFERENCES public.components_sections_section_widget_forms(id) ON DELETE CASCADE;


--
-- Name: components_sections_share_options_components components_sections_share_option_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_share_options_components
    ADD CONSTRAINT components_sections_share_option_id_fk FOREIGN KEY (components_sections_share_option_id) REFERENCES public.components_sections_share_options(id) ON DELETE CASCADE;


--
-- Name: components_sections_sidebars_components components_sections_sidebar_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_sidebars_components
    ADD CONSTRAINT components_sections_sidebar_id_fk FOREIGN KEY (components_sections_sidebar_id) REFERENCES public.components_sections_sidebars(id) ON DELETE CASCADE;


--
-- Name: components_sections_social_networks_components components_sections_social_network_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_social_networks_components
    ADD CONSTRAINT components_sections_social_network_id_fk FOREIGN KEY (components_sections_social_network_id) REFERENCES public.components_sections_social_networks(id) ON DELETE CASCADE;


--
-- Name: components_sections_time_sections_components components_sections_time_section_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_sections_time_sections_components
    ADD CONSTRAINT components_sections_time_section_id_fk FOREIGN KEY (components_sections_time_section_id) REFERENCES public.components_sections_time_sections(id) ON DELETE CASCADE;


--
-- Name: components_slices_bottom_actions_components components_slices_bottom_action_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT components_slices_bottom_action_id_fk FOREIGN KEY (components_slices_bottom_action_id) REFERENCES public.components_slices_bottom_actions(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_columns_groups_components components_slices_feature_columns_group_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT components_slices_feature_columns_group_id_fk FOREIGN KEY (components_slices_feature_columns_group_id) REFERENCES public.components_slices_feature_columns_groups(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_rows_components components_slices_feature_row_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_row_id_fk FOREIGN KEY (components_slices_feature_row_id) REFERENCES public.components_slices_feature_rows(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_rows_groups_components components_slices_feature_rows_group_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT components_slices_feature_rows_group_id_fk FOREIGN KEY (components_slices_feature_rows_group_id) REFERENCES public.components_slices_feature_rows_groups(id) ON DELETE CASCADE;


--
-- Name: components_slices_testimonials_components components_slices_testimonial_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_components
    ADD CONSTRAINT components_slices_testimonial_id_fk FOREIGN KEY (components_slices_testimonial_id) REFERENCES public.components_slices_testimonials(id) ON DELETE CASCADE;


--
-- Name: components_slices_testimonials_groups_components components_slices_testimonials_group_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT components_slices_testimonials_group_id_fk FOREIGN KEY (components_slices_testimonials_group_id) REFERENCES public.components_slices_testimonials_groups(id) ON DELETE CASCADE;


--
-- Name: components_portal_carousels_components components_portal_carousel_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_carousels_components
    ADD CONSTRAINT components_portal_carousel_id_fk FOREIGN KEY (components_portal_carousel_id) REFERENCES public.components_portal_carousels(id) ON DELETE CASCADE;


--
-- Name: components_portal_list_filters_components components_portal_list_filter_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_filters_components
    ADD CONSTRAINT components_portal_list_filter_id_fk FOREIGN KEY (components_portal_list_filter_id) REFERENCES public.components_portal_list_filters(id) ON DELETE CASCADE;


--
-- Name: components_portal_list_recents_components components_portal_list_recent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_list_recents_components
    ADD CONSTRAINT components_portal_list_recent_id_fk FOREIGN KEY (components_portal_list_recent_id) REFERENCES public.components_portal_list_recents(id) ON DELETE CASCADE;


--
-- Name: components_portal_tab_cards_components components_portal_tab_card_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_portal_tab_cards_components
    ADD CONSTRAINT components_portal_tab_card_id_fk FOREIGN KEY (components_portal_tab_card_id) REFERENCES public.components_portal_tab_cards(id) ON DELETE CASCADE;


--
-- Name: components_texts_link_texts_components components_texts_link_text_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_texts_link_texts_components
    ADD CONSTRAINT components_texts_link_text_id_fk FOREIGN KEY (components_texts_link_text_id) REFERENCES public.components_texts_link_texts(id) ON DELETE CASCADE;


--
-- Name: components_use_cases_banners_components components_use_cases_banner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_banners_components
    ADD CONSTRAINT components_use_cases_banner_id_fk FOREIGN KEY (components_use_cases_banner_id) REFERENCES public.components_use_cases_banners(id) ON DELETE CASCADE;


--
-- Name: components_use_cases_calculate_use_cases_components components_use_cases_calculate_use_case_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.components_use_cases_calculate_use_cases_components
    ADD CONSTRAINT components_use_cases_calculate_use_case_id_fk FOREIGN KEY (components_use_cases_calculate_use_case_id) REFERENCES public.components_use_cases_calculate_use_cases(id) ON DELETE CASCADE;


--
-- Name: library_apis_components library_api_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.library_apis_components
    ADD CONSTRAINT library_api_id_fk FOREIGN KEY (library_api_id) REFERENCES public.library_apis(id) ON DELETE CASCADE;


--
-- Name: pages_components page_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user_developer_portal
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT page_id_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

