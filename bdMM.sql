--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)

-- Started on 2021-06-28 18:17:02 CEST

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
-- TOC entry 1 (class 3079 OID 13079)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 236 (class 1259 OID 125540)
-- Name: acq_analogico; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico (
    tag_ptr_id integer NOT NULL,
    "ValorMinimo" double precision NOT NULL,
    "ValorMaximo" double precision NOT NULL,
    "Unidad" character varying(5) NOT NULL,
    "HH_Habilitar" boolean NOT NULL,
    "H_Habilitar" boolean NOT NULL,
    "LL_Habilitar" boolean NOT NULL,
    "L_Habilitar" boolean NOT NULL,
    "HisteresisHabilitar" boolean NOT NULL,
    "ROC_Habiltar" boolean NOT NULL,
    "ValorInicial" double precision NOT NULL,
    "HH" double precision NOT NULL,
    "H" double precision NOT NULL,
    "LL" double precision NOT NULL,
    "L" double precision NOT NULL,
    "Histeresis" double precision NOT NULL,
    "ROC" double precision NOT NULL
);


ALTER TABLE public.acq_analogico OWNER TO morenomx;

--
-- TOC entry 213 (class 1259 OID 125421)
-- Name: acq_analogico_hs; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs (
    id integer NOT NULL,
    data jsonb
);


ALTER TABLE public.acq_analogico_hs OWNER TO morenomx;

--
-- TOC entry 215 (class 1259 OID 125432)
-- Name: acq_analogico_hs0; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs0 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs0 OWNER TO morenomx;

--
-- TOC entry 214 (class 1259 OID 125430)
-- Name: acq_analogico_hs0_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs0_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs0_id_seq OWNER TO morenomx;

--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 214
-- Name: acq_analogico_hs0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs0_id_seq OWNED BY public.acq_analogico_hs0.id;


--
-- TOC entry 217 (class 1259 OID 125443)
-- Name: acq_analogico_hs1; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs1 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs1 OWNER TO morenomx;

--
-- TOC entry 216 (class 1259 OID 125441)
-- Name: acq_analogico_hs1_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs1_id_seq OWNER TO morenomx;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 216
-- Name: acq_analogico_hs1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs1_id_seq OWNED BY public.acq_analogico_hs1.id;


--
-- TOC entry 219 (class 1259 OID 125454)
-- Name: acq_analogico_hs2; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs2 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs2 OWNER TO morenomx;

--
-- TOC entry 218 (class 1259 OID 125452)
-- Name: acq_analogico_hs2_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs2_id_seq OWNER TO morenomx;

--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 218
-- Name: acq_analogico_hs2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs2_id_seq OWNED BY public.acq_analogico_hs2.id;


--
-- TOC entry 221 (class 1259 OID 125465)
-- Name: acq_analogico_hs3; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs3 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs3 OWNER TO morenomx;

--
-- TOC entry 220 (class 1259 OID 125463)
-- Name: acq_analogico_hs3_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs3_id_seq OWNER TO morenomx;

--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 220
-- Name: acq_analogico_hs3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs3_id_seq OWNED BY public.acq_analogico_hs3.id;


--
-- TOC entry 223 (class 1259 OID 125476)
-- Name: acq_analogico_hs4; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs4 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs4 OWNER TO morenomx;

--
-- TOC entry 222 (class 1259 OID 125474)
-- Name: acq_analogico_hs4_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs4_id_seq OWNER TO morenomx;

--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 222
-- Name: acq_analogico_hs4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs4_id_seq OWNED BY public.acq_analogico_hs4.id;


--
-- TOC entry 225 (class 1259 OID 125487)
-- Name: acq_analogico_hs5; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_analogico_hs5 (
    id integer NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.acq_analogico_hs5 OWNER TO morenomx;

--
-- TOC entry 224 (class 1259 OID 125485)
-- Name: acq_analogico_hs5_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs5_id_seq OWNER TO morenomx;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 224
-- Name: acq_analogico_hs5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs5_id_seq OWNED BY public.acq_analogico_hs5.id;


--
-- TOC entry 212 (class 1259 OID 125419)
-- Name: acq_analogico_hs_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_analogico_hs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_analogico_hs_id_seq OWNER TO morenomx;

--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 212
-- Name: acq_analogico_hs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_analogico_hs_id_seq OWNED BY public.acq_analogico_hs.id;


--
-- TOC entry 227 (class 1259 OID 125498)
-- Name: acq_aor; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_aor (
    id integer NOT NULL,
    "Nombre" character varying(30),
    "Descriptor" character varying(120) NOT NULL,
    "id_patioTanque_id" integer NOT NULL
);


ALTER TABLE public.acq_aor OWNER TO morenomx;

--
-- TOC entry 226 (class 1259 OID 125496)
-- Name: acq_aor_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_aor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_aor_id_seq OWNER TO morenomx;

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 226
-- Name: acq_aor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_aor_id_seq OWNED BY public.acq_aor.id;


--
-- TOC entry 237 (class 1259 OID 125545)
-- Name: acq_digital; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_digital (
    tag_ptr_id integer NOT NULL,
    "EstadoInicial" boolean NOT NULL,
    "SOA_Habilitar" boolean NOT NULL,
    "S1A_Habilitar" boolean NOT NULL,
    "S0A" boolean NOT NULL,
    "S1A" boolean NOT NULL
);


ALTER TABLE public.acq_digital OWNER TO morenomx;

--
-- TOC entry 246 (class 1259 OID 125591)
-- Name: acq_factor; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_factor (
    id integer NOT NULL,
    ctsh double precision NOT NULL,
    fra double precision NOT NULL,
    ctpl double precision NOT NULL,
    id_tk_id integer NOT NULL
);


ALTER TABLE public.acq_factor OWNER TO morenomx;

--
-- TOC entry 245 (class 1259 OID 125589)
-- Name: acq_factor_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_factor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_factor_id_seq OWNER TO morenomx;

--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 245
-- Name: acq_factor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_factor_id_seq OWNED BY public.acq_factor.id;


--
-- TOC entry 229 (class 1259 OID 125508)
-- Name: acq_mbesclavo; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_mbesclavo (
    id integer NOT NULL,
    "Puerto" character varying(3) NOT NULL,
    "Velocidad" integer NOT NULL,
    "Paridad" character varying(5) NOT NULL,
    "Reintentos" integer NOT NULL,
    "IdEsclavo" integer NOT NULL
);


ALTER TABLE public.acq_mbesclavo OWNER TO morenomx;

--
-- TOC entry 228 (class 1259 OID 125506)
-- Name: acq_mbesclavo_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_mbesclavo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_mbesclavo_id_seq OWNER TO morenomx;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 228
-- Name: acq_mbesclavo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_mbesclavo_id_seq OWNED BY public.acq_mbesclavo.id;


--
-- TOC entry 231 (class 1259 OID 125516)
-- Name: acq_mbmaestro; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_mbmaestro (
    id integer NOT NULL,
    "Puerto" character varying(3) NOT NULL,
    "Velocidad" integer NOT NULL,
    "Paridad" character varying(5) NOT NULL,
    "Reintentos" integer NOT NULL,
    "Tipo" character varying(3) NOT NULL,
    "IdDevice" integer NOT NULL
);


ALTER TABLE public.acq_mbmaestro OWNER TO morenomx;

--
-- TOC entry 230 (class 1259 OID 125514)
-- Name: acq_mbmaestro_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_mbmaestro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_mbmaestro_id_seq OWNER TO morenomx;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 230
-- Name: acq_mbmaestro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_mbmaestro_id_seq OWNED BY public.acq_mbmaestro.id;


--
-- TOC entry 233 (class 1259 OID 125524)
-- Name: acq_patiotanque; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_patiotanque (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Descriptor" character varying(120) NOT NULL
);


ALTER TABLE public.acq_patiotanque OWNER TO morenomx;

--
-- TOC entry 232 (class 1259 OID 125522)
-- Name: acq_patiotanque_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_patiotanque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_patiotanque_id_seq OWNER TO morenomx;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 232
-- Name: acq_patiotanque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_patiotanque_id_seq OWNED BY public.acq_patiotanque.id;


--
-- TOC entry 235 (class 1259 OID 125534)
-- Name: acq_tag; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_tag (
    id integer NOT NULL,
    "Nombre" character varying(42) NOT NULL,
    "Descriptor" character varying(120) NOT NULL,
    "Habilitar" boolean NOT NULL,
    "TipoVariable" character varying(1) NOT NULL,
    direccion character varying(5) NOT NULL,
    direccion_campo character varying(5) NOT NULL,
    etiqueta1 character varying(4) NOT NULL,
    etiqueta2 character varying(32),
    etiqueta3 character varying(32),
    etiqueta4 character varying(32),
    etiqueta5 character varying(32),
    etiqueta6 character varying(32),
    "id_Tk_id" integer NOT NULL
);


ALTER TABLE public.acq_tag OWNER TO morenomx;

--
-- TOC entry 234 (class 1259 OID 125532)
-- Name: acq_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_tag_id_seq OWNER TO morenomx;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 234
-- Name: acq_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_tag_id_seq OWNED BY public.acq_tag.id;


--
-- TOC entry 244 (class 1259 OID 125578)
-- Name: acq_tct; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_tct (
    id integer NOT NULL,
    "Lt0" double precision,
    "Lt1" double precision,
    "Tov0" double precision,
    "Tov1" double precision,
    "Tov" double precision,
    id_tk_id integer NOT NULL
);


ALTER TABLE public.acq_tct OWNER TO morenomx;

--
-- TOC entry 243 (class 1259 OID 125576)
-- Name: acq_tct_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_tct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_tct_id_seq OWNER TO morenomx;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 243
-- Name: acq_tct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_tct_id_seq OWNED BY public.acq_tct.id;


--
-- TOC entry 242 (class 1259 OID 125565)
-- Name: acq_tk; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_tk (
    id integer NOT NULL,
    "Nombre" character varying(30),
    "Descriptor" character varying(120) NOT NULL,
    tct_archivo character varying(100) NOT NULL,
    "Descriptor_tct" character varying(120),
    fecha_subida_tct timestamp with time zone,
    tctvalido boolean NOT NULL,
    current_data jsonb,
    tipo_de_tk character varying(2) NOT NULL,
    id_aor_id integer,
    "id_patioTanque_id" integer NOT NULL
);


ALTER TABLE public.acq_tk OWNER TO morenomx;

--
-- TOC entry 241 (class 1259 OID 125563)
-- Name: acq_tk_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_tk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_tk_id_seq OWNER TO morenomx;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 241
-- Name: acq_tk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_tk_id_seq OWNED BY public.acq_tk.id;


--
-- TOC entry 238 (class 1259 OID 125550)
-- Name: acq_userprofile; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_userprofile (
    user_id integer NOT NULL
);


ALTER TABLE public.acq_userprofile OWNER TO morenomx;

--
-- TOC entry 251 (class 1259 OID 125702)
-- Name: acq_userprofile_aor; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_userprofile_aor (
    id integer NOT NULL,
    userprofile_id integer NOT NULL,
    aor_id integer NOT NULL
);


ALTER TABLE public.acq_userprofile_aor OWNER TO morenomx;

--
-- TOC entry 250 (class 1259 OID 125700)
-- Name: acq_userprofile_aor_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_userprofile_aor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_userprofile_aor_id_seq OWNER TO morenomx;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 250
-- Name: acq_userprofile_aor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_userprofile_aor_id_seq OWNED BY public.acq_userprofile_aor.id;


--
-- TOC entry 240 (class 1259 OID 125557)
-- Name: acq_userprofile_patios; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.acq_userprofile_patios (
    id integer NOT NULL,
    userprofile_id integer NOT NULL,
    patiotanque_id integer NOT NULL
);


ALTER TABLE public.acq_userprofile_patios OWNER TO morenomx;

--
-- TOC entry 239 (class 1259 OID 125555)
-- Name: acq_userprofile_patios_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.acq_userprofile_patios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acq_userprofile_patios_id_seq OWNER TO morenomx;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 239
-- Name: acq_userprofile_patios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.acq_userprofile_patios_id_seq OWNED BY public.acq_userprofile_patios.id;


--
-- TOC entry 203 (class 1259 OID 125316)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO morenomx;

--
-- TOC entry 202 (class 1259 OID 125314)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO morenomx;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 125326)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO morenomx;

--
-- TOC entry 204 (class 1259 OID 125324)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO morenomx;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 125308)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO morenomx;

--
-- TOC entry 200 (class 1259 OID 125306)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO morenomx;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 125334)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO morenomx;

--
-- TOC entry 209 (class 1259 OID 125344)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO morenomx;

--
-- TOC entry 208 (class 1259 OID 125342)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO morenomx;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 125332)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO morenomx;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 125352)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO morenomx;

--
-- TOC entry 210 (class 1259 OID 125350)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO morenomx;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 248 (class 1259 OID 125662)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO morenomx;

--
-- TOC entry 247 (class 1259 OID 125660)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO morenomx;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 247
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 125298)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO morenomx;

--
-- TOC entry 198 (class 1259 OID 125296)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO morenomx;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 125287)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO morenomx;

--
-- TOC entry 196 (class 1259 OID 125285)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: morenomx
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO morenomx;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morenomx
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 249 (class 1259 OID 125684)
-- Name: django_session; Type: TABLE; Schema: public; Owner: morenomx
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO morenomx;

--
-- TOC entry 3012 (class 2604 OID 125424)
-- Name: acq_analogico_hs id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs_id_seq'::regclass);


--
-- TOC entry 3013 (class 2604 OID 125435)
-- Name: acq_analogico_hs0 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs0 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs0_id_seq'::regclass);


--
-- TOC entry 3014 (class 2604 OID 125446)
-- Name: acq_analogico_hs1 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs1 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs1_id_seq'::regclass);


--
-- TOC entry 3015 (class 2604 OID 125457)
-- Name: acq_analogico_hs2 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs2 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs2_id_seq'::regclass);


--
-- TOC entry 3016 (class 2604 OID 125468)
-- Name: acq_analogico_hs3 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs3 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs3_id_seq'::regclass);


--
-- TOC entry 3017 (class 2604 OID 125479)
-- Name: acq_analogico_hs4 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs4 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs4_id_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 125490)
-- Name: acq_analogico_hs5 id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs5 ALTER COLUMN id SET DEFAULT nextval('public.acq_analogico_hs5_id_seq'::regclass);


--
-- TOC entry 3019 (class 2604 OID 125501)
-- Name: acq_aor id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_aor ALTER COLUMN id SET DEFAULT nextval('public.acq_aor_id_seq'::regclass);


--
-- TOC entry 3027 (class 2604 OID 125594)
-- Name: acq_factor id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_factor ALTER COLUMN id SET DEFAULT nextval('public.acq_factor_id_seq'::regclass);


--
-- TOC entry 3020 (class 2604 OID 125511)
-- Name: acq_mbesclavo id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_mbesclavo ALTER COLUMN id SET DEFAULT nextval('public.acq_mbesclavo_id_seq'::regclass);


--
-- TOC entry 3021 (class 2604 OID 125519)
-- Name: acq_mbmaestro id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_mbmaestro ALTER COLUMN id SET DEFAULT nextval('public.acq_mbmaestro_id_seq'::regclass);


--
-- TOC entry 3022 (class 2604 OID 125527)
-- Name: acq_patiotanque id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_patiotanque ALTER COLUMN id SET DEFAULT nextval('public.acq_patiotanque_id_seq'::regclass);


--
-- TOC entry 3023 (class 2604 OID 125537)
-- Name: acq_tag id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tag ALTER COLUMN id SET DEFAULT nextval('public.acq_tag_id_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 125581)
-- Name: acq_tct id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tct ALTER COLUMN id SET DEFAULT nextval('public.acq_tct_id_seq'::regclass);


--
-- TOC entry 3025 (class 2604 OID 125568)
-- Name: acq_tk id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tk ALTER COLUMN id SET DEFAULT nextval('public.acq_tk_id_seq'::regclass);


--
-- TOC entry 3030 (class 2604 OID 125705)
-- Name: acq_userprofile_aor id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_aor ALTER COLUMN id SET DEFAULT nextval('public.acq_userprofile_aor_id_seq'::regclass);


--
-- TOC entry 3024 (class 2604 OID 125560)
-- Name: acq_userprofile_patios id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_patios ALTER COLUMN id SET DEFAULT nextval('public.acq_userprofile_patios_id_seq'::regclass);


--
-- TOC entry 3007 (class 2604 OID 125319)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3008 (class 2604 OID 125329)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3006 (class 2604 OID 125311)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3009 (class 2604 OID 125337)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3010 (class 2604 OID 125347)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3011 (class 2604 OID 125355)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3028 (class 2604 OID 125665)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3005 (class 2604 OID 125301)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3004 (class 2604 OID 125290)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3324 (class 0 OID 125540)
-- Dependencies: 236
-- Data for Name: acq_analogico; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico (tag_ptr_id, "ValorMinimo", "ValorMaximo", "Unidad", "HH_Habilitar", "H_Habilitar", "LL_Habilitar", "L_Habilitar", "HisteresisHabilitar", "ROC_Habiltar", "ValorInicial", "HH", "H", "LL", "L", "Histeresis", "ROC") FROM stdin;
88	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
72	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
89	1	100	%	t	t	t	t	t	t	1	1	1	1	1	1	1
70	1	1000	psi	t	t	t	t	t	t	1	1	1	1	1	1	1
71	1	300	F	t	t	t	t	t	t	1	1	1	1	1	1	1
74	1	650000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
75	1	6500000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
76	1	650000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
85	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
86	1	1000	psi	t	t	t	t	t	t	1	1	1	1	1	1	1
87	1	300	F	t	t	t	t	t	t	1	1	1	1	1	1	1
90	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
91	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
92	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
73	1	100	%	t	t	t	t	t	t	1	1	1	1	1	1	1
69	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
109	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
110	1	1000	psi	t	t	t	t	t	t	1	1	1	1	1	1	1
111	1	300	F	t	t	t	t	t	t	1	1	1	1	1	1	1
112	1	20	m	t	t	t	t	t	t	1	1	1	1	1	1	1
113	1	100	%	t	t	t	t	t	t	1	1	1	1	1	1	1
114	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
115	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
116	1	1000000	BLS	t	t	t	t	t	t	1	1	1	1	1	1	1
\.


--
-- TOC entry 3301 (class 0 OID 125421)
-- Dependencies: 213
-- Data for Name: acq_analogico_hs; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs (id, data) FROM stdin;
\.


--
-- TOC entry 3303 (class 0 OID 125432)
-- Dependencies: 215
-- Data for Name: acq_analogico_hs0; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs0 (id, data) FROM stdin;
\.


--
-- TOC entry 3305 (class 0 OID 125443)
-- Dependencies: 217
-- Data for Name: acq_analogico_hs1; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs1 (id, data) FROM stdin;
\.


--
-- TOC entry 3307 (class 0 OID 125454)
-- Dependencies: 219
-- Data for Name: acq_analogico_hs2; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs2 (id, data) FROM stdin;
\.


--
-- TOC entry 3309 (class 0 OID 125465)
-- Dependencies: 221
-- Data for Name: acq_analogico_hs3; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs3 (id, data) FROM stdin;
\.


--
-- TOC entry 3311 (class 0 OID 125476)
-- Dependencies: 223
-- Data for Name: acq_analogico_hs4; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs4 (id, data) FROM stdin;
\.


--
-- TOC entry 3313 (class 0 OID 125487)
-- Dependencies: 225
-- Data for Name: acq_analogico_hs5; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_analogico_hs5 (id, data) FROM stdin;
\.


--
-- TOC entry 3315 (class 0 OID 125498)
-- Dependencies: 227
-- Data for Name: acq_aor; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_aor (id, "Nombre", "Descriptor", "id_patioTanque_id") FROM stdin;
11	AREA 1 DINAMICAS	DINAMICAS	4
\.


--
-- TOC entry 3325 (class 0 OID 125545)
-- Dependencies: 237
-- Data for Name: acq_digital; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_digital (tag_ptr_id, "EstadoInicial", "SOA_Habilitar", "S1A_Habilitar", "S0A", "S1A") FROM stdin;
\.


--
-- TOC entry 3334 (class 0 OID 125591)
-- Dependencies: 246
-- Data for Name: acq_factor; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_factor (id, ctsh, fra, ctpl, id_tk_id) FROM stdin;
\.


--
-- TOC entry 3317 (class 0 OID 125508)
-- Dependencies: 229
-- Data for Name: acq_mbesclavo; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_mbesclavo (id, "Puerto", "Velocidad", "Paridad", "Reintentos", "IdEsclavo") FROM stdin;
\.


--
-- TOC entry 3319 (class 0 OID 125516)
-- Dependencies: 231
-- Data for Name: acq_mbmaestro; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_mbmaestro (id, "Puerto", "Velocidad", "Paridad", "Reintentos", "Tipo", "IdDevice") FROM stdin;
\.


--
-- TOC entry 3321 (class 0 OID 125524)
-- Dependencies: 233
-- Data for Name: acq_patiotanque; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_patiotanque (id, "Nombre", "Descriptor") FROM stdin;
4	PATIO DE PRUEBAS DINAMICAS	DINAMICAS
\.


--
-- TOC entry 3323 (class 0 OID 125534)
-- Dependencies: 235
-- Data for Name: acq_tag; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_tag (id, "Nombre", "Descriptor", "Habilitar", "TipoVariable", direccion, direccion_campo, etiqueta1, etiqueta2, etiqueta3, etiqueta4, etiqueta5, etiqueta6, "id_Tk_id") FROM stdin;
69	tk_dinamics_01_lt	NIVEL DEL TANQUEtk_dinamics_01	t	B	1	101	lt	\N	\N	\N	\N	\N	20
70	tk_dinamics_01_pt	PRESION DEL TANQUEtk_dinamics_01	t	B	3	103	pt	\N	\N	\N	\N	\N	20
71	tk_dinamics_01_tt	TEMPERATURA DEL TANQUEtk_dinamics_01	t	B	5	105	tt	\N	\N	\N	\N	\N	20
74	tk_dinamics_01_TOV	VOLUMEN TOTAL OBSERVADO DEL TANQUE tk_dinamics_01	t	C	11	111	TOV	\N	\N	\N	\N	\N	20
75	tk_dinamics_01_GSV	VOLUMEN BRUTO ESTANDAR DEL TANQUE tk_dinamics_01	t	C	13	113	GSV	\N	\N	\N	\N	\N	20
76	tk_dinamics_01_NSV	VOLUMEN NETO ESTANDAR DEL TANQUE tk_dinamics_01	t	C	15	115	NSV	\N	\N	\N	\N	\N	20
73	tk_dinamics_01_ays	PORCENTAJE DE AGUA Y SEDIMENTO tk_dinamics_01	t	B	9	109	ays	\N	\N	\N	\N	\N	20
72	tk_dinamics_01_lta	NIVEL DE AGUA LIBRE tk_dinamics_01	t	B	7	107	lta	\N	\N	\N	\N	\N	20
85	tk_dinamics_02_lt	NIVEL DEL TANQUEtk_dinamics_02	t	B	11	117	lt	\N	\N	\N	\N	\N	22
86	tk_dinamics_02_pt	PRESION DEL TANQUEtk_dinamics_02	t	B	13	119	pt	\N	\N	\N	\N	\N	22
87	tk_dinamics_02_tt	TEMPERATURA DEL TANQUEtk_dinamics_02	t	B	15	121	tt	\N	\N	\N	\N	\N	22
88	tk_dinamics_02_lta	NIVEL DE AGUA LIBRE tk_dinamics_02	t	B	17	123	lta	\N	\N	\N	\N	\N	22
90	tk_dinamics_02_TOV	VOLUMEN TOTAL OBSERVADO DEL TANQUE tk_dinamics_02	t	C	21	127	TOV	\N	\N	\N	\N	\N	22
91	tk_dinamics_02_GSV	VOLUMEN BRUTO ESTANDAR DEL TANQUE tk_dinamics_02	t	C	23	129	GSV	\N	\N	\N	\N	\N	22
92	tk_dinamics_02_NSV	VOLUMEN NETO ESTANDAR DEL TANQUE tk_dinamics_02	t	C	25	131	NSV	\N	\N	\N	\N	\N	22
89	tk_dinamics_02_ays	PORCENTAJE DE AGUA Y SEDIMENTO tk_dinamics_02	t	C	19	125	ays	\N	\N	\N	\N	\N	22
109	tk_dinamics_03_lt	NIVEL DEL TANQUEtk_dinamics_03	t	B	21	133	lt	\N	\N	\N	\N	\N	24
110	tk_dinamics_03_pt	PRESION DEL TANQUEtk_dinamics_03	t	B	23	135	pt	\N	\N	\N	\N	\N	24
111	tk_dinamics_03_tt	TEMPERATURA DEL TANQUEtk_dinamics_03	t	B	25	137	tt	\N	\N	\N	\N	\N	24
112	tk_dinamics_03_lta	NIVEL DE AGUA LIBRE tk_dinamics_03	t	B	27	139	lta	\N	\N	\N	\N	\N	24
114	tk_dinamics_03_TOV	VOLUMEN TOTAL OBSERVADO DEL TANQUE tk_dinamics_03	t	C	31	143	TOV	\N	\N	\N	\N	\N	24
115	tk_dinamics_03_GSV	VOLUMEN BRUTO ESTANDAR DEL TANQUE tk_dinamics_03	t	C	33	145	GSV	\N	\N	\N	\N	\N	24
116	tk_dinamics_03_NSV	VOLUMEN NETO ESTANDAR DEL TANQUE tk_dinamics_03	t	C	35	147	NSV	\N	\N	\N	\N	\N	24
113	tk_dinamics_03_ays	PORCENTAJE DE AGUA Y SEDIMENTO tk_dinamics_03	t	C	29	141	ays	\N	\N	\N	\N	\N	24
\.


--
-- TOC entry 3332 (class 0 OID 125578)
-- Dependencies: 244
-- Data for Name: acq_tct; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_tct (id, "Lt0", "Lt1", "Tov0", "Tov1", "Tov", id_tk_id) FROM stdin;
116467	1.08600000000000008	0	31805	0	0	24
116468	1.08699999999999997	0	31837	0	0	24
132793	17.411999999999999	0	546579	0	0	24
132794	17.4130000000000003	0	546611	0	0	24
132795	17.4140000000000015	0	546643	0	0	24
132796	17.4149999999999991	0	546675	0	0	24
132797	17.4160000000000004	0	546707	0	0	24
132798	17.4170000000000016	0	546739	0	0	24
132799	17.4179999999999993	0	546771	0	0	24
132800	17.4190000000000005	0	546803	0	0	24
132801	17.4200000000000017	0	546833	0	0	24
132802	17.4209999999999994	0	546865	0	0	24
132803	17.4220000000000006	0	546897	0	0	24
132804	17.4229999999999983	0	546929	0	0	24
132805	17.4239999999999995	0	546961	0	0	24
132806	17.4250000000000007	0	546993	0	0	24
132807	17.4259999999999984	0	547025	0	0	24
132808	17.4269999999999996	0	547057	0	0	24
132809	17.4280000000000008	0	547089	0	0	24
132810	17.4289999999999985	0	547121	0	0	24
132811	17.4299999999999997	0	547151	0	0	24
132812	17.4310000000000009	0	547183	0	0	24
132813	17.4319999999999986	0	547215	0	0	24
132814	17.4329999999999998	0	547247	0	0	24
132815	17.4340000000000011	0	547279	0	0	24
132816	17.4349999999999987	0	547311	0	0	24
132817	17.4359999999999999	0	547343	0	0	24
132818	17.4370000000000012	0	547375	0	0	24
132819	17.4379999999999988	0	547407	0	0	24
132820	17.4390000000000001	0	547439	0	0	24
132821	17.4400000000000013	0	547469	0	0	24
132822	17.4409999999999989	0	547501	0	0	24
132823	17.4420000000000002	0	547533	0	0	24
132824	17.4430000000000014	0	547565	0	0	24
132825	17.4439999999999991	0	547597	0	0	24
132826	17.4450000000000003	0	547629	0	0	24
132827	17.4460000000000015	0	547661	0	0	24
132828	17.4469999999999992	0	547693	0	0	24
132829	17.4480000000000004	0	547725	0	0	24
132830	17.4490000000000016	0	547757	0	0	24
132831	17.4499999999999993	0	547787	0	0	24
132832	17.4510000000000005	0	547819	0	0	24
132833	17.4520000000000017	0	547851	0	0	24
132834	17.4529999999999994	0	547883	0	0	24
132835	17.4540000000000006	0	547915	0	0	24
132836	17.4549999999999983	0	547947	0	0	24
132837	17.4559999999999995	0	547979	0	0	24
132838	17.4570000000000007	0	548011	0	0	24
132839	17.4579999999999984	0	548043	0	0	24
132840	17.4589999999999996	0	548075	0	0	24
132841	17.4600000000000009	0	548105	0	0	24
132842	17.4609999999999985	0	548137	0	0	24
132843	17.4619999999999997	0	548169	0	0	24
132844	17.463000000000001	0	548201	0	0	24
132845	17.4639999999999986	0	548233	0	0	24
132846	17.4649999999999999	0	548265	0	0	24
132847	17.4660000000000011	0	548297	0	0	24
132848	17.4669999999999987	0	548329	0	0	24
132849	17.468	0	548361	0	0	24
132850	17.4690000000000012	0	548393	0	0	24
132851	17.4699999999999989	0	548423	0	0	24
132852	17.4710000000000001	0	548455	0	0	24
132853	17.4720000000000013	0	548487	0	0	24
132854	17.472999999999999	0	548519	0	0	24
132855	17.4740000000000002	0	548551	0	0	24
132856	17.4750000000000014	0	548583	0	0	24
132857	17.4759999999999991	0	548615	0	0	24
132858	17.4770000000000003	0	548647	0	0	24
132859	17.4780000000000015	0	548679	0	0	24
132860	17.4789999999999992	0	548711	0	0	24
132861	17.4800000000000004	0	548741	0	0	24
132862	17.4810000000000016	0	548773	0	0	24
132863	17.4819999999999993	0	548805	0	0	24
132864	17.4830000000000005	0	548837	0	0	24
132865	17.4840000000000018	0	548869	0	0	24
132866	17.4849999999999994	0	548901	0	0	24
132867	17.4860000000000007	0	548933	0	0	24
132868	17.4869999999999983	0	548965	0	0	24
132869	17.4879999999999995	0	548997	0	0	24
132870	17.4890000000000008	0	549029	0	0	24
132871	17.4899999999999984	0	549059	0	0	24
132872	17.4909999999999997	0	549091	0	0	24
132873	17.4920000000000009	0	549123	0	0	24
132874	17.4929999999999986	0	549155	0	0	24
132875	17.4939999999999998	0	549187	0	0	24
132876	17.495000000000001	0	549219	0	0	24
132877	17.4959999999999987	0	549251	0	0	24
132878	17.4969999999999999	0	549283	0	0	24
132879	17.4980000000000011	0	549315	0	0	24
132880	17.4989999999999988	0	549347	0	0	24
132881	17.5	0	549377	0	0	24
132882	17.5010000000000012	0	549409	0	0	24
132883	17.5019999999999989	0	549441	0	0	24
132884	17.5030000000000001	0	549473	0	0	24
132885	17.5040000000000013	0	549505	0	0	24
132886	17.504999999999999	0	549537	0	0	24
132887	17.5060000000000002	0	549569	0	0	24
132888	17.5070000000000014	0	549601	0	0	24
132889	17.5079999999999991	0	549633	0	0	24
132890	17.5090000000000003	0	549665	0	0	24
132891	17.5100000000000016	0	549695	0	0	24
132892	17.5109999999999992	0	549727	0	0	24
132893	17.5120000000000005	0	549759	0	0	24
132894	17.5130000000000017	0	549791	0	0	24
132895	17.5139999999999993	0	549823	0	0	24
132896	17.5150000000000006	0	549855	0	0	24
132897	17.5159999999999982	0	549887	0	0	24
116469	1.08800000000000008	0	31869	0	0	24
116470	1.08899999999999997	0	31901	0	0	24
116471	1.09000000000000008	0	31931	0	0	24
116472	1.09099999999999997	0	31963	0	0	24
132898	17.5169999999999995	0	549919	0	0	24
132899	17.5180000000000007	0	549951	0	0	24
132900	17.5189999999999984	0	549983	0	0	24
132901	17.5199999999999996	0	550013	0	0	24
132902	17.5210000000000008	0	550045	0	0	24
132903	17.5219999999999985	0	550077	0	0	24
132904	17.5229999999999997	0	550109	0	0	24
132905	17.5240000000000009	0	550141	0	0	24
132906	17.5249999999999986	0	550173	0	0	24
132907	17.5259999999999998	0	550205	0	0	24
132908	17.527000000000001	0	550237	0	0	24
132909	17.5279999999999987	0	550269	0	0	24
132910	17.5289999999999999	0	550301	0	0	24
132911	17.5300000000000011	0	550331	0	0	24
132912	17.5309999999999988	0	550363	0	0	24
132913	17.532	0	550395	0	0	24
132914	17.5330000000000013	0	550427	0	0	24
132915	17.5339999999999989	0	550459	0	0	24
132916	17.5350000000000001	0	550491	0	0	24
132917	17.5360000000000014	0	550523	0	0	24
132918	17.536999999999999	0	550555	0	0	24
132919	17.5380000000000003	0	550587	0	0	24
132920	17.5390000000000015	0	550619	0	0	24
132921	17.5399999999999991	0	550649	0	0	24
132922	17.5410000000000004	0	550681	0	0	24
132923	17.5420000000000016	0	550713	0	0	24
132924	17.5429999999999993	0	550745	0	0	24
132925	17.5440000000000005	0	550777	0	0	24
132926	17.5450000000000017	0	550809	0	0	24
132927	17.5459999999999994	0	550841	0	0	24
132928	17.5470000000000006	0	550873	0	0	24
132929	17.5479999999999983	0	550905	0	0	24
132930	17.5489999999999995	0	550937	0	0	24
132931	17.5500000000000007	0	550967	0	0	24
132932	17.5509999999999984	0	550999	0	0	24
132933	17.5519999999999996	0	551031	0	0	24
132934	17.5530000000000008	0	551063	0	0	24
132935	17.5539999999999985	0	551095	0	0	24
132936	17.5549999999999997	0	551127	0	0	24
132937	17.5560000000000009	0	551159	0	0	24
132938	17.5569999999999986	0	551191	0	0	24
132939	17.5579999999999998	0	551223	0	0	24
132940	17.5590000000000011	0	551255	0	0	24
132941	17.5599999999999987	0	551285	0	0	24
132942	17.5609999999999999	0	551317	0	0	24
132943	17.5620000000000012	0	551349	0	0	24
132944	17.5629999999999988	0	551381	0	0	24
132945	17.5640000000000001	0	551413	0	0	24
132946	17.5650000000000013	0	551445	0	0	24
132947	17.5659999999999989	0	551477	0	0	24
132948	17.5670000000000002	0	551509	0	0	24
132949	17.5680000000000014	0	551541	0	0	24
132950	17.5689999999999991	0	551573	0	0	24
132951	17.5700000000000003	0	551603	0	0	24
132952	17.5710000000000015	0	551635	0	0	24
132953	17.5719999999999992	0	551667	0	0	24
132954	17.5730000000000004	0	551699	0	0	24
132955	17.5740000000000016	0	551731	0	0	24
132956	17.5749999999999993	0	551763	0	0	24
132957	17.5760000000000005	0	551795	0	0	24
132958	17.5770000000000017	0	551827	0	0	24
132959	17.5779999999999994	0	551859	0	0	24
132960	17.5790000000000006	0	551891	0	0	24
132961	17.5799999999999983	0	551921	0	0	24
132962	17.5809999999999995	0	551953	0	0	24
132963	17.5820000000000007	0	551985	0	0	24
132964	17.5829999999999984	0	552017	0	0	24
132965	17.5839999999999996	0	552049	0	0	24
132966	17.5850000000000009	0	552081	0	0	24
132967	17.5859999999999985	0	552113	0	0	24
132968	17.5869999999999997	0	552145	0	0	24
132969	17.588000000000001	0	552177	0	0	24
132970	17.5889999999999986	0	552209	0	0	24
132971	17.5899999999999999	0	552239	0	0	24
132972	17.5910000000000011	0	552271	0	0	24
132973	17.5919999999999987	0	552303	0	0	24
132974	17.593	0	552335	0	0	24
132975	17.5940000000000012	0	552367	0	0	24
132976	17.5949999999999989	0	552399	0	0	24
132977	17.5960000000000001	0	552431	0	0	24
132978	17.5970000000000013	0	552463	0	0	24
132979	17.597999999999999	0	552495	0	0	24
132980	17.5990000000000002	0	552527	0	0	24
132981	17.6000000000000014	0	552557	0	0	24
132982	17.6009999999999991	0	552589	0	0	24
132983	17.6020000000000003	0	552621	0	0	24
132984	17.6030000000000015	0	552653	0	0	24
132985	17.6039999999999992	0	552685	0	0	24
132986	17.6050000000000004	0	552717	0	0	24
132987	17.6060000000000016	0	552749	0	0	24
132988	17.6069999999999993	0	552781	0	0	24
132989	17.6080000000000005	0	552813	0	0	24
132990	17.6090000000000018	0	552845	0	0	24
132991	17.6099999999999994	0	552875	0	0	24
132992	17.6110000000000007	0	552907	0	0	24
132993	17.6119999999999983	0	552939	0	0	24
132994	17.6129999999999995	0	552971	0	0	24
132995	17.6140000000000008	0	553003	0	0	24
132996	17.6149999999999984	0	553035	0	0	24
132997	17.6159999999999997	0	553067	0	0	24
132998	17.6170000000000009	0	553099	0	0	24
132999	17.6179999999999986	0	553131	0	0	24
133000	17.6189999999999998	0	553163	0	0	24
116473	1.09200000000000008	0	31995	0	0	24
116474	1.09299999999999997	0	32027	0	0	24
116475	1.09400000000000008	0	32059	0	0	24
116476	1.09499999999999997	0	32091	0	0	24
116477	1.09600000000000009	0	32123	0	0	24
116478	1.09699999999999998	0	32155	0	0	24
116479	1.09800000000000009	0	32187	0	0	24
116480	1.09899999999999998	0	32219	0	0	24
116481	1.10000000000000009	0	32249	0	0	24
116482	1.10099999999999998	0	32280	0	0	24
116483	1.10200000000000009	0	32312	0	0	24
116484	1.10299999999999998	0	32344	0	0	24
116485	1.10400000000000009	0	32376	0	0	24
116486	1.10499999999999998	0	32408	0	0	24
116487	1.10600000000000009	0	32440	0	0	24
116488	1.10699999999999998	0	32472	0	0	24
116489	1.1080000000000001	0	32504	0	0	24
116490	1.10899999999999999	0	32536	0	0	24
116491	1.1100000000000001	0	32566	0	0	24
116492	1.11099999999999999	0	32598	0	0	24
116493	1.1120000000000001	0	32630	0	0	24
116494	1.11299999999999999	0	32662	0	0	24
116495	1.1140000000000001	0	32694	0	0	24
116496	1.11499999999999999	0	32726	0	0	24
116497	1.1160000000000001	0	32758	0	0	24
116498	1.11699999999999999	0	32790	0	0	24
116499	1.1180000000000001	0	32822	0	0	24
116500	1.11899999999999999	0	32854	0	0	24
116501	1.12000000000000011	0	32884	0	0	24
116502	1.121	0	32916	0	0	24
116503	1.12200000000000011	0	32948	0	0	24
116504	1.123	0	32980	0	0	24
116505	1.12400000000000011	0	33012	0	0	24
116506	1.125	0	33044	0	0	24
116507	1.12599999999999989	0	33076	0	0	24
116508	1.127	0	33108	0	0	24
116509	1.12799999999999989	0	33140	0	0	24
116510	1.129	0	33172	0	0	24
116511	1.12999999999999989	0	33202	0	0	24
116512	1.13100000000000001	0	33234	0	0	24
116513	1.1319999999999999	0	33266	0	0	24
116514	1.13300000000000001	0	33298	0	0	24
116515	1.1339999999999999	0	33330	0	0	24
116516	1.13500000000000001	0	33362	0	0	24
116517	1.1359999999999999	0	33394	0	0	24
116518	1.13700000000000001	0	33426	0	0	24
116519	1.1379999999999999	0	33458	0	0	24
116520	1.13900000000000001	0	33490	0	0	24
116521	1.1399999999999999	0	33520	0	0	24
116522	1.14100000000000001	0	33552	0	0	24
116523	1.1419999999999999	0	33584	0	0	24
116524	1.14300000000000002	0	33616	0	0	24
116525	1.14399999999999991	0	33648	0	0	24
116526	1.14500000000000002	0	33680	0	0	24
116527	1.14599999999999991	0	33712	0	0	24
116528	1.14700000000000002	0	33744	0	0	24
116529	1.14799999999999991	0	33776	0	0	24
116530	1.14900000000000002	0	33808	0	0	24
116531	1.14999999999999991	0	33838	0	0	24
116532	1.15100000000000002	0	33869	0	0	24
116533	1.15199999999999991	0	33901	0	0	24
116534	1.15300000000000002	0	33933	0	0	24
116535	1.15399999999999991	0	33965	0	0	24
116536	1.15500000000000003	0	33997	0	0	24
116537	1.15599999999999992	0	34029	0	0	24
116538	1.15700000000000003	0	34061	0	0	24
116539	1.15799999999999992	0	34093	0	0	24
116540	1.15900000000000003	0	34125	0	0	24
116541	1.15999999999999992	0	34155	0	0	24
116542	1.16100000000000003	0	34187	0	0	24
116543	1.16199999999999992	0	34219	0	0	24
116544	1.16300000000000003	0	34251	0	0	24
116545	1.16399999999999992	0	34283	0	0	24
116546	1.16500000000000004	0	34315	0	0	24
116547	1.16599999999999993	0	34347	0	0	24
116548	1.16700000000000004	0	34379	0	0	24
116549	1.16799999999999993	0	34411	0	0	24
116550	1.16900000000000004	0	34443	0	0	24
116551	1.16999999999999993	0	34473	0	0	24
116552	1.17100000000000004	0	34505	0	0	24
116553	1.17199999999999993	0	34537	0	0	24
116554	1.17300000000000004	0	34569	0	0	24
116555	1.17399999999999993	0	34601	0	0	24
116556	1.17500000000000004	0	34633	0	0	24
116557	1.17599999999999993	0	34665	0	0	24
116558	1.17700000000000005	0	34697	0	0	24
116559	1.17799999999999994	0	34729	0	0	24
116560	1.17900000000000005	0	34761	0	0	24
116561	1.17999999999999994	0	34791	0	0	24
116562	1.18100000000000005	0	34823	0	0	24
116563	1.18199999999999994	0	34855	0	0	24
116564	1.18300000000000005	0	34887	0	0	24
116565	1.18399999999999994	0	34919	0	0	24
116566	1.18500000000000005	0	34951	0	0	24
116567	1.18599999999999994	0	34983	0	0	24
116568	1.18700000000000006	0	35015	0	0	24
116569	1.18799999999999994	0	35047	0	0	24
116570	1.18900000000000006	0	35079	0	0	24
116571	1.18999999999999995	0	35109	0	0	24
116572	1.19100000000000006	0	35141	0	0	24
116573	1.19199999999999995	0	35173	0	0	24
116574	1.19300000000000006	0	35205	0	0	24
116575	1.19399999999999995	0	35237	0	0	24
116576	1.19500000000000006	0	35269	0	0	24
116577	1.19599999999999995	0	35301	0	0	24
116578	1.19700000000000006	0	35333	0	0	24
116579	1.19799999999999995	0	35365	0	0	24
116580	1.19900000000000007	0	35397	0	0	24
116581	1.19999999999999996	0	35427	0	0	24
116582	1.20100000000000007	0	35458	0	0	24
116583	1.20199999999999996	0	35490	0	0	24
116584	1.20300000000000007	0	35522	0	0	24
116585	1.20399999999999996	0	35554	0	0	24
116586	1.20500000000000007	0	35586	0	0	24
116587	1.20599999999999996	0	35618	0	0	24
116588	1.20700000000000007	0	35650	0	0	24
116589	1.20799999999999996	0	35682	0	0	24
116590	1.20900000000000007	0	35714	0	0	24
116591	1.20999999999999996	0	35744	0	0	24
116592	1.21100000000000008	0	35776	0	0	24
116593	1.21199999999999997	0	35808	0	0	24
116594	1.21300000000000008	0	35840	0	0	24
116595	1.21399999999999997	0	35872	0	0	24
116596	1.21500000000000008	0	35904	0	0	24
116597	1.21599999999999997	0	35936	0	0	24
116598	1.21700000000000008	0	35968	0	0	24
116599	1.21799999999999997	0	36000	0	0	24
116600	1.21900000000000008	0	36032	0	0	24
116601	1.21999999999999997	0	36062	0	0	24
116602	1.22100000000000009	0	36094	0	0	24
116603	1.22199999999999998	0	36126	0	0	24
116604	1.22300000000000009	0	36158	0	0	24
116605	1.22399999999999998	0	36190	0	0	24
116606	1.22500000000000009	0	36222	0	0	24
116607	1.22599999999999998	0	36254	0	0	24
116608	1.22700000000000009	0	36286	0	0	24
116609	1.22799999999999998	0	36318	0	0	24
116610	1.22900000000000009	0	36350	0	0	24
116611	1.22999999999999998	0	36380	0	0	24
116612	1.23100000000000009	0	36412	0	0	24
116613	1.23199999999999998	0	36444	0	0	24
116614	1.2330000000000001	0	36476	0	0	24
116615	1.23399999999999999	0	36508	0	0	24
116616	1.2350000000000001	0	36540	0	0	24
116617	1.23599999999999999	0	36572	0	0	24
116618	1.2370000000000001	0	36604	0	0	24
116619	1.23799999999999999	0	36636	0	0	24
116620	1.2390000000000001	0	36668	0	0	24
116621	1.23999999999999999	0	36698	0	0	24
116622	1.2410000000000001	0	36730	0	0	24
116623	1.24199999999999999	0	36762	0	0	24
116624	1.2430000000000001	0	36794	0	0	24
116625	1.24399999999999999	0	36826	0	0	24
116626	1.24500000000000011	0	36858	0	0	24
116627	1.246	0	36890	0	0	24
116628	1.24700000000000011	0	36922	0	0	24
116629	1.248	0	36954	0	0	24
116630	1.24900000000000011	0	36986	0	0	24
116631	1.25	0	37016	0	0	24
116632	1.25099999999999989	0	37047	0	0	24
116633	1.252	0	37079	0	0	24
116634	1.25299999999999989	0	37111	0	0	24
116635	1.254	0	37143	0	0	24
116636	1.25499999999999989	0	37175	0	0	24
116637	1.25600000000000001	0	37207	0	0	24
116638	1.2569999999999999	0	37239	0	0	24
116639	1.25800000000000001	0	37271	0	0	24
116640	1.2589999999999999	0	37303	0	0	24
116641	1.26000000000000001	0	37333	0	0	24
116642	1.2609999999999999	0	37365	0	0	24
116643	1.26200000000000001	0	37397	0	0	24
116644	1.2629999999999999	0	37429	0	0	24
116645	1.26400000000000001	0	37461	0	0	24
116646	1.2649999999999999	0	37493	0	0	24
116647	1.26600000000000001	0	37525	0	0	24
116648	1.2669999999999999	0	37557	0	0	24
116649	1.26800000000000002	0	37589	0	0	24
116650	1.26899999999999991	0	37621	0	0	24
116651	1.27000000000000002	0	37651	0	0	24
116652	1.27099999999999991	0	37683	0	0	24
116653	1.27200000000000002	0	37715	0	0	24
116654	1.27299999999999991	0	37747	0	0	24
116655	1.27400000000000002	0	37779	0	0	24
116656	1.27499999999999991	0	37811	0	0	24
116657	1.27600000000000002	0	37843	0	0	24
116658	1.27699999999999991	0	37875	0	0	24
116659	1.27800000000000002	0	37907	0	0	24
116660	1.27899999999999991	0	37939	0	0	24
116661	1.28000000000000003	0	37969	0	0	24
116662	1.28099999999999992	0	38001	0	0	24
116663	1.28200000000000003	0	38033	0	0	24
116664	1.28299999999999992	0	38065	0	0	24
116665	1.28400000000000003	0	38097	0	0	24
116666	1.28499999999999992	0	38129	0	0	24
116667	1.28600000000000003	0	38161	0	0	24
116668	1.28699999999999992	0	38193	0	0	24
116669	1.28800000000000003	0	38225	0	0	24
116670	1.28899999999999992	0	38257	0	0	24
116671	1.29000000000000004	0	38287	0	0	24
116672	1.29099999999999993	0	38319	0	0	24
116673	1.29200000000000004	0	38351	0	0	24
116674	1.29299999999999993	0	38383	0	0	24
116675	1.29400000000000004	0	38415	0	0	24
116676	1.29499999999999993	0	38447	0	0	24
116677	1.29600000000000004	0	38479	0	0	24
116678	1.29699999999999993	0	38511	0	0	24
116679	1.29800000000000004	0	38543	0	0	24
116680	1.29899999999999993	0	38575	0	0	24
116681	1.30000000000000004	0	38605	0	0	24
116682	1.30099999999999993	0	38636	0	0	24
116683	1.30200000000000005	0	38668	0	0	24
116684	1.30299999999999994	0	38700	0	0	24
116685	1.30400000000000005	0	38732	0	0	24
116686	1.30499999999999994	0	38764	0	0	24
116687	1.30600000000000005	0	38796	0	0	24
116688	1.30699999999999994	0	38828	0	0	24
116689	1.30800000000000005	0	38860	0	0	24
116690	1.30899999999999994	0	38892	0	0	24
116691	1.31000000000000005	0	38922	0	0	24
116692	1.31099999999999994	0	38954	0	0	24
116693	1.31200000000000006	0	38986	0	0	24
116694	1.31299999999999994	0	39018	0	0	24
116695	1.31400000000000006	0	39050	0	0	24
116696	1.31499999999999995	0	39082	0	0	24
116697	1.31600000000000006	0	39114	0	0	24
116698	1.31699999999999995	0	39146	0	0	24
116699	1.31800000000000006	0	39178	0	0	24
116700	1.31899999999999995	0	39210	0	0	24
116701	1.32000000000000006	0	39240	0	0	24
116702	1.32099999999999995	0	39272	0	0	24
116703	1.32200000000000006	0	39304	0	0	24
116704	1.32299999999999995	0	39336	0	0	24
116705	1.32400000000000007	0	39368	0	0	24
116706	1.32499999999999996	0	39400	0	0	24
116707	1.32600000000000007	0	39432	0	0	24
116708	1.32699999999999996	0	39464	0	0	24
116709	1.32800000000000007	0	39496	0	0	24
116710	1.32899999999999996	0	39528	0	0	24
116711	1.33000000000000007	0	39558	0	0	24
116712	1.33099999999999996	0	39590	0	0	24
116713	1.33200000000000007	0	39622	0	0	24
116714	1.33299999999999996	0	39654	0	0	24
116715	1.33400000000000007	0	39686	0	0	24
116716	1.33499999999999996	0	39718	0	0	24
116717	1.33600000000000008	0	39750	0	0	24
116718	1.33699999999999997	0	39782	0	0	24
116719	1.33800000000000008	0	39814	0	0	24
116720	1.33899999999999997	0	39846	0	0	24
116721	1.34000000000000008	0	39876	0	0	24
116722	1.34099999999999997	0	39908	0	0	24
116723	1.34200000000000008	0	39940	0	0	24
116724	1.34299999999999997	0	39972	0	0	24
116725	1.34400000000000008	0	40004	0	0	24
116726	1.34499999999999997	0	40036	0	0	24
116727	1.34600000000000009	0	40068	0	0	24
116728	1.34699999999999998	0	40100	0	0	24
116729	1.34800000000000009	0	40132	0	0	24
116730	1.34899999999999998	0	40164	0	0	24
116731	1.35000000000000009	0	40194	0	0	24
116732	1.35099999999999998	0	40225	0	0	24
116733	1.35200000000000009	0	40257	0	0	24
116734	1.35299999999999998	0	40289	0	0	24
116735	1.35400000000000009	0	40321	0	0	24
116736	1.35499999999999998	0	40353	0	0	24
116737	1.35600000000000009	0	40385	0	0	24
116738	1.35699999999999998	0	40417	0	0	24
116739	1.3580000000000001	0	40449	0	0	24
116740	1.35899999999999999	0	40481	0	0	24
116741	1.3600000000000001	0	40511	0	0	24
116742	1.36099999999999999	0	40543	0	0	24
116743	1.3620000000000001	0	40575	0	0	24
116744	1.36299999999999999	0	40607	0	0	24
116745	1.3640000000000001	0	40639	0	0	24
116746	1.36499999999999999	0	40671	0	0	24
116747	1.3660000000000001	0	40703	0	0	24
116748	1.36699999999999999	0	40735	0	0	24
116749	1.3680000000000001	0	40767	0	0	24
116750	1.36899999999999999	0	40799	0	0	24
116751	1.37000000000000011	0	40829	0	0	24
116752	1.371	0	40861	0	0	24
116753	1.37200000000000011	0	40893	0	0	24
116754	1.373	0	40925	0	0	24
116755	1.37400000000000011	0	40957	0	0	24
116756	1.375	0	40989	0	0	24
116757	1.37599999999999989	0	41021	0	0	24
116758	1.377	0	41053	0	0	24
116759	1.37799999999999989	0	41085	0	0	24
116760	1.379	0	41117	0	0	24
116761	1.37999999999999989	0	41147	0	0	24
116762	1.38100000000000001	0	41179	0	0	24
116763	1.3819999999999999	0	41211	0	0	24
116764	1.38300000000000001	0	41243	0	0	24
116765	1.3839999999999999	0	41275	0	0	24
116766	1.38500000000000001	0	41307	0	0	24
116767	1.3859999999999999	0	41339	0	0	24
116768	1.38700000000000001	0	41371	0	0	24
116769	1.3879999999999999	0	41403	0	0	24
116770	1.38900000000000001	0	41435	0	0	24
116771	1.3899999999999999	0	41465	0	0	24
116772	1.39100000000000001	0	41497	0	0	24
116773	1.3919999999999999	0	41529	0	0	24
116774	1.39300000000000002	0	41561	0	0	24
116775	1.39399999999999991	0	41593	0	0	24
116776	1.39500000000000002	0	41625	0	0	24
116777	1.39599999999999991	0	41657	0	0	24
116778	1.39700000000000002	0	41689	0	0	24
116779	1.39799999999999991	0	41721	0	0	24
116780	1.39900000000000002	0	41753	0	0	24
116781	1.39999999999999991	0	41783	0	0	24
116782	1.40100000000000002	0	41814	0	0	24
116783	1.40199999999999991	0	41846	0	0	24
116784	1.40300000000000002	0	41878	0	0	24
116785	1.40399999999999991	0	41910	0	0	24
116786	1.40500000000000003	0	41942	0	0	24
116787	1.40599999999999992	0	41974	0	0	24
116788	1.40700000000000003	0	42006	0	0	24
116789	1.40799999999999992	0	42038	0	0	24
116790	1.40900000000000003	0	42070	0	0	24
116791	1.40999999999999992	0	42100	0	0	24
116792	1.41100000000000003	0	42132	0	0	24
116793	1.41199999999999992	0	42164	0	0	24
116794	1.41300000000000003	0	42196	0	0	24
116795	1.41399999999999992	0	42228	0	0	24
116796	1.41500000000000004	0	42260	0	0	24
116797	1.41599999999999993	0	42292	0	0	24
116798	1.41700000000000004	0	42324	0	0	24
116799	1.41799999999999993	0	42356	0	0	24
116800	1.41900000000000004	0	42388	0	0	24
116801	1.41999999999999993	0	42418	0	0	24
116802	1.42100000000000004	0	42450	0	0	24
116803	1.42199999999999993	0	42482	0	0	24
116804	1.42300000000000004	0	42514	0	0	24
116805	1.42399999999999993	0	42546	0	0	24
116806	1.42500000000000004	0	42578	0	0	24
116807	1.42599999999999993	0	42610	0	0	24
116808	1.42700000000000005	0	42642	0	0	24
116809	1.42799999999999994	0	42674	0	0	24
116810	1.42900000000000005	0	42706	0	0	24
116811	1.42999999999999994	0	42736	0	0	24
116812	1.43100000000000005	0	42768	0	0	24
116813	1.43199999999999994	0	42800	0	0	24
116814	1.43300000000000005	0	42832	0	0	24
116815	1.43399999999999994	0	42864	0	0	24
116816	1.43500000000000005	0	42896	0	0	24
116817	1.43599999999999994	0	42928	0	0	24
116818	1.43700000000000006	0	42960	0	0	24
116819	1.43799999999999994	0	42992	0	0	24
116820	1.43900000000000006	0	43024	0	0	24
116821	1.43999999999999995	0	43054	0	0	24
116822	1.44100000000000006	0	43086	0	0	24
116823	1.44199999999999995	0	43118	0	0	24
116824	1.44300000000000006	0	43150	0	0	24
116825	1.44399999999999995	0	43182	0	0	24
116826	1.44500000000000006	0	43214	0	0	24
116827	1.44599999999999995	0	43246	0	0	24
116828	1.44700000000000006	0	43278	0	0	24
116829	1.44799999999999995	0	43310	0	0	24
116830	1.44900000000000007	0	43342	0	0	24
116831	1.44999999999999996	0	43372	0	0	24
116832	1.45100000000000007	0	43403	0	0	24
116833	1.45199999999999996	0	43435	0	0	24
116834	1.45300000000000007	0	43467	0	0	24
116835	1.45399999999999996	0	43499	0	0	24
116836	1.45500000000000007	0	43531	0	0	24
116837	1.45599999999999996	0	43563	0	0	24
116838	1.45700000000000007	0	43595	0	0	24
116839	1.45799999999999996	0	43627	0	0	24
116840	1.45900000000000007	0	43659	0	0	24
116841	1.45999999999999996	0	43689	0	0	24
116842	1.46100000000000008	0	43721	0	0	24
116843	1.46199999999999997	0	43753	0	0	24
116844	1.46300000000000008	0	43785	0	0	24
116845	1.46399999999999997	0	43817	0	0	24
116846	1.46500000000000008	0	43849	0	0	24
116847	1.46599999999999997	0	43881	0	0	24
116848	1.46700000000000008	0	43913	0	0	24
116849	1.46799999999999997	0	43945	0	0	24
116850	1.46900000000000008	0	43977	0	0	24
116851	1.46999999999999997	0	44007	0	0	24
116852	1.47100000000000009	0	44039	0	0	24
116853	1.47199999999999998	0	44071	0	0	24
116854	1.47300000000000009	0	44103	0	0	24
116855	1.47399999999999998	0	44135	0	0	24
116856	1.47500000000000009	0	44167	0	0	24
116857	1.47599999999999998	0	44199	0	0	24
116858	1.47700000000000009	0	44231	0	0	24
116859	1.47799999999999998	0	44263	0	0	24
116860	1.47900000000000009	0	44295	0	0	24
116861	1.47999999999999998	0	44325	0	0	24
116862	1.48100000000000009	0	44357	0	0	24
116863	1.48199999999999998	0	44389	0	0	24
116864	1.4830000000000001	0	44421	0	0	24
116865	1.48399999999999999	0	44453	0	0	24
116866	1.4850000000000001	0	44485	0	0	24
116867	1.48599999999999999	0	44517	0	0	24
116868	1.4870000000000001	0	44549	0	0	24
116869	1.48799999999999999	0	44581	0	0	24
116870	1.4890000000000001	0	44613	0	0	24
116871	1.48999999999999999	0	44643	0	0	24
116872	1.4910000000000001	0	44675	0	0	24
116873	1.49199999999999999	0	44707	0	0	24
116874	1.4930000000000001	0	44739	0	0	24
116875	1.49399999999999999	0	44771	0	0	24
116876	1.49500000000000011	0	44803	0	0	24
116877	1.496	0	44835	0	0	24
116878	1.49700000000000011	0	44867	0	0	24
116879	1.498	0	44899	0	0	24
116880	1.49900000000000011	0	44931	0	0	24
116881	1.5	0	44961	0	0	24
116882	1.50099999999999989	0	44992	0	0	24
116883	1.502	0	45024	0	0	24
116884	1.50299999999999989	0	45056	0	0	24
116885	1.504	0	45088	0	0	24
116886	1.50499999999999989	0	45120	0	0	24
116887	1.50600000000000001	0	45152	0	0	24
116888	1.5069999999999999	0	45184	0	0	24
116889	1.50800000000000001	0	45216	0	0	24
116890	1.5089999999999999	0	45248	0	0	24
116891	1.51000000000000001	0	45278	0	0	24
116892	1.5109999999999999	0	45310	0	0	24
116893	1.51200000000000001	0	45342	0	0	24
116894	1.5129999999999999	0	45374	0	0	24
116895	1.51400000000000001	0	45406	0	0	24
116896	1.5149999999999999	0	45438	0	0	24
116897	1.51600000000000001	0	45470	0	0	24
116898	1.5169999999999999	0	45502	0	0	24
116899	1.51800000000000002	0	45534	0	0	24
116900	1.51899999999999991	0	45566	0	0	24
116901	1.52000000000000002	0	45596	0	0	24
116902	1.52099999999999991	0	45628	0	0	24
116903	1.52200000000000002	0	45660	0	0	24
116904	1.52299999999999991	0	45692	0	0	24
116905	1.52400000000000002	0	45724	0	0	24
116906	1.52499999999999991	0	45756	0	0	24
116907	1.52600000000000002	0	45788	0	0	24
116908	1.52699999999999991	0	45820	0	0	24
116909	1.52800000000000002	0	45852	0	0	24
116910	1.52899999999999991	0	45884	0	0	24
116911	1.53000000000000003	0	45914	0	0	24
116912	1.53099999999999992	0	45946	0	0	24
116913	1.53200000000000003	0	45978	0	0	24
116914	1.53299999999999992	0	46010	0	0	24
116915	1.53400000000000003	0	46042	0	0	24
116916	1.53499999999999992	0	46074	0	0	24
116917	1.53600000000000003	0	46106	0	0	24
116918	1.53699999999999992	0	46138	0	0	24
116919	1.53800000000000003	0	46170	0	0	24
116920	1.53899999999999992	0	46202	0	0	24
116921	1.54000000000000004	0	46232	0	0	24
116922	1.54099999999999993	0	46264	0	0	24
116923	1.54200000000000004	0	46296	0	0	24
116924	1.54299999999999993	0	46328	0	0	24
116925	1.54400000000000004	0	46360	0	0	24
116926	1.54499999999999993	0	46392	0	0	24
116927	1.54600000000000004	0	46424	0	0	24
116928	1.54699999999999993	0	46456	0	0	24
116929	1.54800000000000004	0	46488	0	0	24
116930	1.54899999999999993	0	46520	0	0	24
116931	1.55000000000000004	0	46550	0	0	24
116932	1.55099999999999993	0	46581	0	0	24
116933	1.55200000000000005	0	46613	0	0	24
116934	1.55299999999999994	0	46645	0	0	24
116935	1.55400000000000005	0	46677	0	0	24
116936	1.55499999999999994	0	46709	0	0	24
116937	1.55600000000000005	0	46741	0	0	24
116938	1.55699999999999994	0	46773	0	0	24
116939	1.55800000000000005	0	46805	0	0	24
116940	1.55899999999999994	0	46837	0	0	24
116941	1.56000000000000005	0	46867	0	0	24
116942	1.56099999999999994	0	46899	0	0	24
116943	1.56200000000000006	0	46931	0	0	24
116944	1.56299999999999994	0	46963	0	0	24
116945	1.56400000000000006	0	46995	0	0	24
116946	1.56499999999999995	0	47027	0	0	24
116947	1.56600000000000006	0	47059	0	0	24
116948	1.56699999999999995	0	47091	0	0	24
116949	1.56800000000000006	0	47123	0	0	24
116950	1.56899999999999995	0	47155	0	0	24
116951	1.57000000000000006	0	47185	0	0	24
116952	1.57099999999999995	0	47217	0	0	24
116953	1.57200000000000006	0	47249	0	0	24
116954	1.57299999999999995	0	47281	0	0	24
116955	1.57400000000000007	0	47313	0	0	24
116956	1.57499999999999996	0	47345	0	0	24
116957	1.57600000000000007	0	47377	0	0	24
116958	1.57699999999999996	0	47409	0	0	24
116959	1.57800000000000007	0	47441	0	0	24
116960	1.57899999999999996	0	47473	0	0	24
116961	1.58000000000000007	0	47503	0	0	24
116962	1.58099999999999996	0	47535	0	0	24
116963	1.58200000000000007	0	47567	0	0	24
116964	1.58299999999999996	0	47599	0	0	24
116965	1.58400000000000007	0	47631	0	0	24
116966	1.58499999999999996	0	47663	0	0	24
116967	1.58600000000000008	0	47695	0	0	24
116968	1.58699999999999997	0	47727	0	0	24
116969	1.58800000000000008	0	47759	0	0	24
116970	1.58899999999999997	0	47791	0	0	24
116971	1.59000000000000008	0	47821	0	0	24
116972	1.59099999999999997	0	47853	0	0	24
116973	1.59200000000000008	0	47885	0	0	24
116974	1.59299999999999997	0	47917	0	0	24
116975	1.59400000000000008	0	47949	0	0	24
116976	1.59499999999999997	0	47981	0	0	24
116977	1.59600000000000009	0	48013	0	0	24
116978	1.59699999999999998	0	48045	0	0	24
116979	1.59800000000000009	0	48077	0	0	24
116980	1.59899999999999998	0	48109	0	0	24
116981	1.60000000000000009	0	48139	0	0	24
116982	1.60099999999999998	0	48170	0	0	24
116983	1.60200000000000009	0	48202	0	0	24
116984	1.60299999999999998	0	48234	0	0	24
116985	1.60400000000000009	0	48266	0	0	24
116986	1.60499999999999998	0	48298	0	0	24
116987	1.60600000000000009	0	48330	0	0	24
116988	1.60699999999999998	0	48362	0	0	24
116989	1.6080000000000001	0	48394	0	0	24
116990	1.60899999999999999	0	48426	0	0	24
116991	1.6100000000000001	0	48456	0	0	24
116992	1.61099999999999999	0	48488	0	0	24
116993	1.6120000000000001	0	48520	0	0	24
116994	1.61299999999999999	0	48552	0	0	24
116995	1.6140000000000001	0	48584	0	0	24
116996	1.61499999999999999	0	48616	0	0	24
116997	1.6160000000000001	0	48648	0	0	24
116998	1.61699999999999999	0	48680	0	0	24
116999	1.6180000000000001	0	48712	0	0	24
117000	1.61899999999999999	0	48744	0	0	24
117001	1.62000000000000011	0	48774	0	0	24
117002	1.621	0	48806	0	0	24
117003	1.62200000000000011	0	48838	0	0	24
117004	1.623	0	48870	0	0	24
117005	1.62400000000000011	0	48902	0	0	24
117006	1.625	0	48934	0	0	24
117007	1.62599999999999989	0	48966	0	0	24
117008	1.627	0	48998	0	0	24
117009	1.62799999999999989	0	49030	0	0	24
117010	1.629	0	49062	0	0	24
117011	1.62999999999999989	0	49092	0	0	24
117012	1.63100000000000001	0	49124	0	0	24
117013	1.6319999999999999	0	49156	0	0	24
117014	1.63300000000000001	0	49188	0	0	24
117015	1.6339999999999999	0	49220	0	0	24
117016	1.63500000000000001	0	49252	0	0	24
117017	1.6359999999999999	0	49284	0	0	24
117018	1.63700000000000001	0	49316	0	0	24
117019	1.6379999999999999	0	49348	0	0	24
117020	1.63900000000000001	0	49380	0	0	24
117021	1.6399999999999999	0	49410	0	0	24
117022	1.64100000000000001	0	49442	0	0	24
117023	1.6419999999999999	0	49474	0	0	24
117024	1.64300000000000002	0	49506	0	0	24
117025	1.64399999999999991	0	49538	0	0	24
117026	1.64500000000000002	0	49570	0	0	24
117027	1.64599999999999991	0	49602	0	0	24
117028	1.64700000000000002	0	49634	0	0	24
117029	1.64799999999999991	0	49666	0	0	24
117030	1.64900000000000002	0	49698	0	0	24
117031	1.64999999999999991	0	49728	0	0	24
117032	1.65100000000000002	0	49759	0	0	24
117033	1.65199999999999991	0	49791	0	0	24
117034	1.65300000000000002	0	49823	0	0	24
117035	1.65399999999999991	0	49855	0	0	24
117036	1.65500000000000003	0	49887	0	0	24
117037	1.65599999999999992	0	49919	0	0	24
117038	1.65700000000000003	0	49951	0	0	24
117039	1.65799999999999992	0	49983	0	0	24
117040	1.65900000000000003	0	50015	0	0	24
117041	1.65999999999999992	0	50045	0	0	24
117042	1.66100000000000003	0	50077	0	0	24
117043	1.66199999999999992	0	50109	0	0	24
117044	1.66300000000000003	0	50141	0	0	24
117045	1.66399999999999992	0	50173	0	0	24
117046	1.66500000000000004	0	50205	0	0	24
117047	1.66599999999999993	0	50237	0	0	24
117048	1.66700000000000004	0	50269	0	0	24
117049	1.66799999999999993	0	50301	0	0	24
117050	1.66900000000000004	0	50333	0	0	24
117051	1.66999999999999993	0	50363	0	0	24
117052	1.67100000000000004	0	50395	0	0	24
117053	1.67199999999999993	0	50427	0	0	24
117054	1.67300000000000004	0	50459	0	0	24
117055	1.67399999999999993	0	50491	0	0	24
117056	1.67500000000000004	0	50523	0	0	24
117057	1.67599999999999993	0	50555	0	0	24
117058	1.67700000000000005	0	50587	0	0	24
117059	1.67799999999999994	0	50619	0	0	24
117060	1.67900000000000005	0	50651	0	0	24
117061	1.67999999999999994	0	50681	0	0	24
117062	1.68100000000000005	0	50713	0	0	24
117063	1.68199999999999994	0	50745	0	0	24
117064	1.68300000000000005	0	50777	0	0	24
117065	1.68399999999999994	0	50809	0	0	24
117066	1.68500000000000005	0	50841	0	0	24
117067	1.68599999999999994	0	50873	0	0	24
117068	1.68700000000000006	0	50905	0	0	24
117069	1.68799999999999994	0	50937	0	0	24
117070	1.68900000000000006	0	50969	0	0	24
117071	1.68999999999999995	0	50999	0	0	24
117072	1.69100000000000006	0	51031	0	0	24
117073	1.69199999999999995	0	51063	0	0	24
117074	1.69300000000000006	0	51095	0	0	24
117075	1.69399999999999995	0	51127	0	0	24
117076	1.69500000000000006	0	51159	0	0	24
117077	1.69599999999999995	0	51191	0	0	24
117078	1.69700000000000006	0	51223	0	0	24
117079	1.69799999999999995	0	51255	0	0	24
117080	1.69900000000000007	0	51287	0	0	24
117081	1.69999999999999996	0	51317	0	0	24
117082	1.70100000000000007	0	51348	0	0	24
117083	1.70199999999999996	0	51380	0	0	24
117084	1.70300000000000007	0	51412	0	0	24
117085	1.70399999999999996	0	51444	0	0	24
117086	1.70500000000000007	0	51476	0	0	24
117087	1.70599999999999996	0	51508	0	0	24
117088	1.70700000000000007	0	51540	0	0	24
117089	1.70799999999999996	0	51572	0	0	24
117090	1.70900000000000007	0	51604	0	0	24
117091	1.70999999999999996	0	51634	0	0	24
117092	1.71100000000000008	0	51666	0	0	24
117093	1.71199999999999997	0	51698	0	0	24
117094	1.71300000000000008	0	51730	0	0	24
117095	1.71399999999999997	0	51762	0	0	24
117096	1.71500000000000008	0	51794	0	0	24
117097	1.71599999999999997	0	51826	0	0	24
117098	1.71700000000000008	0	51858	0	0	24
117099	1.71799999999999997	0	51890	0	0	24
117100	1.71900000000000008	0	51922	0	0	24
117101	1.71999999999999997	0	51952	0	0	24
117102	1.72100000000000009	0	51984	0	0	24
117103	1.72199999999999998	0	52016	0	0	24
117104	1.72300000000000009	0	52048	0	0	24
117105	1.72399999999999998	0	52080	0	0	24
117106	1.72500000000000009	0	52112	0	0	24
117107	1.72599999999999998	0	52144	0	0	24
117108	1.72700000000000009	0	52176	0	0	24
117109	1.72799999999999998	0	52208	0	0	24
117110	1.72900000000000009	0	52240	0	0	24
117111	1.72999999999999998	0	52270	0	0	24
117112	1.73100000000000009	0	52302	0	0	24
117113	1.73199999999999998	0	52334	0	0	24
117114	1.7330000000000001	0	52366	0	0	24
117115	1.73399999999999999	0	52398	0	0	24
117116	1.7350000000000001	0	52430	0	0	24
117117	1.73599999999999999	0	52462	0	0	24
117118	1.7370000000000001	0	52494	0	0	24
117119	1.73799999999999999	0	52526	0	0	24
117120	1.7390000000000001	0	52558	0	0	24
117121	1.73999999999999999	0	52588	0	0	24
117122	1.7410000000000001	0	52620	0	0	24
117123	1.74199999999999999	0	52652	0	0	24
117124	1.7430000000000001	0	52684	0	0	24
117125	1.74399999999999999	0	52716	0	0	24
117126	1.74500000000000011	0	52748	0	0	24
117127	1.746	0	52780	0	0	24
117128	1.74700000000000011	0	52812	0	0	24
117129	1.748	0	52844	0	0	24
117130	1.74900000000000011	0	52876	0	0	24
117131	1.75	0	52906	0	0	24
117132	1.75099999999999989	0	52937	0	0	24
117133	1.752	0	52969	0	0	24
117134	1.75299999999999989	0	53001	0	0	24
117135	1.754	0	53033	0	0	24
117136	1.75499999999999989	0	53065	0	0	24
117137	1.75600000000000001	0	53097	0	0	24
117138	1.7569999999999999	0	53129	0	0	24
117139	1.75800000000000001	0	53161	0	0	24
117140	1.7589999999999999	0	53193	0	0	24
117141	1.76000000000000001	0	53223	0	0	24
117142	1.7609999999999999	0	53255	0	0	24
117143	1.76200000000000001	0	53287	0	0	24
117144	1.7629999999999999	0	53319	0	0	24
117145	1.76400000000000001	0	53351	0	0	24
117146	1.7649999999999999	0	53383	0	0	24
117147	1.76600000000000001	0	53415	0	0	24
117148	1.7669999999999999	0	53447	0	0	24
117149	1.76800000000000002	0	53479	0	0	24
117150	1.76899999999999991	0	53511	0	0	24
117151	1.77000000000000002	0	53541	0	0	24
117152	1.77099999999999991	0	53573	0	0	24
117153	1.77200000000000002	0	53605	0	0	24
117154	1.77299999999999991	0	53637	0	0	24
117155	1.77400000000000002	0	53669	0	0	24
117156	1.77499999999999991	0	53701	0	0	24
117157	1.77600000000000002	0	53733	0	0	24
117158	1.77699999999999991	0	53765	0	0	24
117159	1.77800000000000002	0	53797	0	0	24
117160	1.77899999999999991	0	53829	0	0	24
117161	1.78000000000000003	0	53859	0	0	24
117162	1.78099999999999992	0	53891	0	0	24
117163	1.78200000000000003	0	53923	0	0	24
117164	1.78299999999999992	0	53955	0	0	24
117165	1.78400000000000003	0	53987	0	0	24
117166	1.78499999999999992	0	54019	0	0	24
117167	1.78600000000000003	0	54051	0	0	24
117168	1.78699999999999992	0	54083	0	0	24
117169	1.78800000000000003	0	54115	0	0	24
117170	1.78899999999999992	0	54147	0	0	24
117171	1.79000000000000004	0	54177	0	0	24
117172	1.79099999999999993	0	54209	0	0	24
117173	1.79200000000000004	0	54241	0	0	24
117174	1.79299999999999993	0	54273	0	0	24
117175	1.79400000000000004	0	54305	0	0	24
117176	1.79499999999999993	0	54337	0	0	24
117177	1.79600000000000004	0	54369	0	0	24
117178	1.79699999999999993	0	54401	0	0	24
117179	1.79800000000000004	0	54433	0	0	24
117180	1.79899999999999993	0	54465	0	0	24
117181	1.80000000000000004	0	54495	0	0	24
117182	1.80099999999999993	0	54526	0	0	24
117183	1.80200000000000005	0	54558	0	0	24
117184	1.80299999999999994	0	54590	0	0	24
117185	1.80400000000000005	0	54622	0	0	24
117186	1.80499999999999994	0	54654	0	0	24
117187	1.80600000000000005	0	54686	0	0	24
117188	1.80699999999999994	0	54718	0	0	24
117189	1.80800000000000005	0	54750	0	0	24
117190	1.80899999999999994	0	54782	0	0	24
117191	1.81000000000000005	0	54812	0	0	24
117192	1.81099999999999994	0	54844	0	0	24
117193	1.81200000000000006	0	54876	0	0	24
117194	1.81299999999999994	0	54908	0	0	24
117195	1.81400000000000006	0	54940	0	0	24
117196	1.81499999999999995	0	54972	0	0	24
117197	1.81600000000000006	0	55004	0	0	24
117198	1.81699999999999995	0	55036	0	0	24
117199	1.81800000000000006	0	55068	0	0	24
117200	1.81899999999999995	0	55100	0	0	24
117201	1.82000000000000006	0	55130	0	0	24
117202	1.82099999999999995	0	55162	0	0	24
117203	1.82200000000000006	0	55194	0	0	24
117204	1.82299999999999995	0	55226	0	0	24
117205	1.82400000000000007	0	55258	0	0	24
117206	1.82499999999999996	0	55290	0	0	24
117207	1.82600000000000007	0	55322	0	0	24
117208	1.82699999999999996	0	55354	0	0	24
117209	1.82800000000000007	0	55386	0	0	24
117210	1.82899999999999996	0	55418	0	0	24
117211	1.83000000000000007	0	55448	0	0	24
117212	1.83099999999999996	0	55480	0	0	24
117213	1.83200000000000007	0	55512	0	0	24
117214	1.83299999999999996	0	55544	0	0	24
117215	1.83400000000000007	0	55576	0	0	24
117216	1.83499999999999996	0	55608	0	0	24
117217	1.83600000000000008	0	55640	0	0	24
117218	1.83699999999999997	0	55672	0	0	24
117219	1.83800000000000008	0	55704	0	0	24
117220	1.83899999999999997	0	55736	0	0	24
117221	1.84000000000000008	0	55766	0	0	24
117222	1.84099999999999997	0	55798	0	0	24
117223	1.84200000000000008	0	55830	0	0	24
117224	1.84299999999999997	0	55862	0	0	24
117225	1.84400000000000008	0	55894	0	0	24
117226	1.84499999999999997	0	55926	0	0	24
117227	1.84600000000000009	0	55958	0	0	24
117228	1.84699999999999998	0	55990	0	0	24
117229	1.84800000000000009	0	56022	0	0	24
117230	1.84899999999999998	0	56054	0	0	24
117231	1.85000000000000009	0	56084	0	0	24
117232	1.85099999999999998	0	56115	0	0	24
117233	1.85200000000000009	0	56147	0	0	24
117234	1.85299999999999998	0	56179	0	0	24
117235	1.85400000000000009	0	56211	0	0	24
117236	1.85499999999999998	0	56243	0	0	24
117237	1.85600000000000009	0	56275	0	0	24
117238	1.85699999999999998	0	56307	0	0	24
117239	1.8580000000000001	0	56339	0	0	24
117240	1.85899999999999999	0	56371	0	0	24
117241	1.8600000000000001	0	56401	0	0	24
117242	1.86099999999999999	0	56433	0	0	24
117243	1.8620000000000001	0	56465	0	0	24
117244	1.86299999999999999	0	56497	0	0	24
117245	1.8640000000000001	0	56529	0	0	24
117246	1.86499999999999999	0	56561	0	0	24
117247	1.8660000000000001	0	56593	0	0	24
117248	1.86699999999999999	0	56625	0	0	24
117249	1.8680000000000001	0	56657	0	0	24
117250	1.86899999999999999	0	56689	0	0	24
117251	1.87000000000000011	0	56719	0	0	24
117252	1.871	0	56751	0	0	24
117253	1.87200000000000011	0	56783	0	0	24
117254	1.873	0	56815	0	0	24
117255	1.87400000000000011	0	56847	0	0	24
117256	1.875	0	56879	0	0	24
117257	1.87599999999999989	0	56911	0	0	24
117258	1.877	0	56943	0	0	24
117259	1.87799999999999989	0	56975	0	0	24
117260	1.879	0	57007	0	0	24
117261	1.87999999999999989	0	57037	0	0	24
117262	1.88100000000000001	0	57069	0	0	24
117263	1.8819999999999999	0	57101	0	0	24
117264	1.88300000000000001	0	57133	0	0	24
117265	1.8839999999999999	0	57165	0	0	24
117266	1.88500000000000001	0	57197	0	0	24
117267	1.8859999999999999	0	57229	0	0	24
117268	1.88700000000000001	0	57261	0	0	24
117269	1.8879999999999999	0	57293	0	0	24
117270	1.88900000000000001	0	57325	0	0	24
117271	1.8899999999999999	0	57355	0	0	24
117272	1.89100000000000001	0	57387	0	0	24
117273	1.8919999999999999	0	57419	0	0	24
117274	1.89300000000000002	0	57451	0	0	24
117275	1.89399999999999991	0	57483	0	0	24
117276	1.89500000000000002	0	57515	0	0	24
117277	1.89599999999999991	0	57547	0	0	24
117278	1.89700000000000002	0	57579	0	0	24
117279	1.89799999999999991	0	57611	0	0	24
117280	1.89900000000000002	0	57643	0	0	24
117281	1.89999999999999991	0	57673	0	0	24
117282	1.90100000000000002	0	57005	0	0	24
117283	1.90199999999999991	0	57037	0	0	24
117284	1.90300000000000002	0	57069	0	0	24
117285	1.90399999999999991	0	57101	0	0	24
117286	1.90500000000000003	0	57133	0	0	24
117287	1.90599999999999992	0	57165	0	0	24
117288	1.90700000000000003	0	57197	0	0	24
117289	1.90799999999999992	0	57229	0	0	24
117290	1.90900000000000003	0	57261	0	0	24
117291	1.90999999999999992	0	57291	0	0	24
117292	1.91100000000000003	0	57323	0	0	24
117293	1.91199999999999992	0	57355	0	0	24
117294	1.91300000000000003	0	57387	0	0	24
117295	1.91399999999999992	0	57419	0	0	24
117296	1.91500000000000004	0	57451	0	0	24
117297	1.91599999999999993	0	57483	0	0	24
117298	1.91700000000000004	0	57515	0	0	24
117299	1.91799999999999993	0	57547	0	0	24
117300	1.91900000000000004	0	57579	0	0	24
117301	1.91999999999999993	0	57609	0	0	24
117302	1.92100000000000004	0	57641	0	0	24
117303	1.92199999999999993	0	57673	0	0	24
117304	1.92300000000000004	0	57705	0	0	24
117305	1.92399999999999993	0	57737	0	0	24
117306	1.92500000000000004	0	57769	0	0	24
117307	1.92599999999999993	0	57801	0	0	24
117308	1.92700000000000005	0	57833	0	0	24
117309	1.92799999999999994	0	57865	0	0	24
117310	1.92900000000000005	0	57897	0	0	24
117311	1.92999999999999994	0	57927	0	0	24
117312	1.93100000000000005	0	57959	0	0	24
117313	1.93199999999999994	0	57991	0	0	24
117314	1.93300000000000005	0	58023	0	0	24
117315	1.93399999999999994	0	58055	0	0	24
117316	1.93500000000000005	0	58087	0	0	24
117317	1.93599999999999994	0	58119	0	0	24
117318	1.93700000000000006	0	58151	0	0	24
117319	1.93799999999999994	0	58183	0	0	24
117320	1.93900000000000006	0	58215	0	0	24
117321	1.93999999999999995	0	58245	0	0	24
117322	1.94100000000000006	0	58277	0	0	24
117323	1.94199999999999995	0	58309	0	0	24
117324	1.94300000000000006	0	58341	0	0	24
117325	1.94399999999999995	0	58373	0	0	24
117326	1.94500000000000006	0	58405	0	0	24
117327	1.94599999999999995	0	58437	0	0	24
117328	1.94700000000000006	0	58469	0	0	24
117329	1.94799999999999995	0	58501	0	0	24
117330	1.94900000000000007	0	58533	0	0	24
117331	1.94999999999999996	0	58563	0	0	24
117332	1.95100000000000007	0	57895	0	0	24
117333	1.95199999999999996	0	57927	0	0	24
117334	1.95300000000000007	0	57959	0	0	24
117335	1.95399999999999996	0	57991	0	0	24
117336	1.95500000000000007	0	58023	0	0	24
117337	1.95599999999999996	0	58055	0	0	24
117338	1.95700000000000007	0	58087	0	0	24
117339	1.95799999999999996	0	58119	0	0	24
117340	1.95900000000000007	0	58151	0	0	24
117341	1.95999999999999996	0	58181	0	0	24
117342	1.96100000000000008	0	58213	0	0	24
117343	1.96199999999999997	0	58245	0	0	24
117344	1.96300000000000008	0	58277	0	0	24
117345	1.96399999999999997	0	58309	0	0	24
117346	1.96500000000000008	0	58341	0	0	24
117347	1.96599999999999997	0	58373	0	0	24
117348	1.96700000000000008	0	58405	0	0	24
117349	1.96799999999999997	0	58437	0	0	24
117350	1.96900000000000008	0	58469	0	0	24
117351	1.96999999999999997	0	58499	0	0	24
117352	1.97100000000000009	0	58531	0	0	24
117353	1.97199999999999998	0	58563	0	0	24
117354	1.97300000000000009	0	58595	0	0	24
117355	1.97399999999999998	0	58627	0	0	24
117356	1.97500000000000009	0	58659	0	0	24
117357	1.97599999999999998	0	58691	0	0	24
117358	1.97700000000000009	0	58723	0	0	24
117359	1.97799999999999998	0	58755	0	0	24
117360	1.97900000000000009	0	58787	0	0	24
117361	1.97999999999999998	0	58817	0	0	24
117362	1.98100000000000009	0	58849	0	0	24
117363	1.98199999999999998	0	58881	0	0	24
117364	1.9830000000000001	0	58913	0	0	24
117365	1.98399999999999999	0	58945	0	0	24
117366	1.9850000000000001	0	58977	0	0	24
117367	1.98599999999999999	0	59009	0	0	24
117368	1.9870000000000001	0	59041	0	0	24
117369	1.98799999999999999	0	59073	0	0	24
117370	1.9890000000000001	0	59105	0	0	24
117371	1.98999999999999999	0	59135	0	0	24
117372	1.9910000000000001	0	59167	0	0	24
117373	1.99199999999999999	0	59199	0	0	24
117374	1.9930000000000001	0	59231	0	0	24
117375	1.99399999999999999	0	59263	0	0	24
117376	1.99500000000000011	0	59295	0	0	24
117377	1.996	0	59327	0	0	24
117378	1.99700000000000011	0	59359	0	0	24
117379	1.998	0	59391	0	0	24
117380	1.99900000000000011	0	59423	0	0	24
117381	2	0	59453	0	0	24
117382	2.00099999999999989	0	58785	0	0	24
117383	2.00199999999999978	0	58817	0	0	24
117384	2.00300000000000011	0	58849	0	0	24
117385	2.004	0	58881	0	0	24
117386	2.00499999999999989	0	58913	0	0	24
117387	2.00599999999999978	0	58945	0	0	24
117388	2.00700000000000012	0	58977	0	0	24
117389	2.00800000000000001	0	59009	0	0	24
117390	2.0089999999999999	0	59041	0	0	24
117391	2.00999999999999979	0	59071	0	0	24
117392	2.01100000000000012	0	59103	0	0	24
117393	2.01200000000000001	0	59135	0	0	24
117394	2.0129999999999999	0	59167	0	0	24
117395	2.01399999999999979	0	59199	0	0	24
117396	2.01500000000000012	0	59231	0	0	24
117397	2.01600000000000001	0	59263	0	0	24
117398	2.0169999999999999	0	59295	0	0	24
117399	2.01799999999999979	0	59327	0	0	24
117400	2.01900000000000013	0	59359	0	0	24
117401	2.02000000000000002	0	59389	0	0	24
117402	2.02099999999999991	0	59421	0	0	24
117403	2.0219999999999998	0	59453	0	0	24
117404	2.02300000000000013	0	59485	0	0	24
117405	2.02400000000000002	0	59517	0	0	24
117406	2.02499999999999991	0	59549	0	0	24
117407	2.0259999999999998	0	59581	0	0	24
117408	2.02700000000000014	0	59613	0	0	24
117409	2.02800000000000002	0	59645	0	0	24
117410	2.02899999999999991	0	59677	0	0	24
117411	2.0299999999999998	0	59707	0	0	24
117412	2.03100000000000014	0	59739	0	0	24
117413	2.03200000000000003	0	59771	0	0	24
117414	2.03299999999999992	0	59803	0	0	24
117415	2.03399999999999981	0	59835	0	0	24
117416	2.03500000000000014	0	59867	0	0	24
117417	2.03600000000000003	0	59899	0	0	24
117418	2.03699999999999992	0	59931	0	0	24
117419	2.03799999999999981	0	59963	0	0	24
117420	2.03900000000000015	0	59995	0	0	24
117421	2.04000000000000004	0	60025	0	0	24
117422	2.04099999999999993	0	60057	0	0	24
117423	2.04199999999999982	0	60089	0	0	24
117424	2.04300000000000015	0	60121	0	0	24
117425	2.04400000000000004	0	60153	0	0	24
117426	2.04499999999999993	0	60185	0	0	24
117427	2.04599999999999982	0	60217	0	0	24
117428	2.04700000000000015	0	60249	0	0	24
117429	2.04800000000000004	0	60281	0	0	24
117430	2.04899999999999993	0	60313	0	0	24
117431	2.04999999999999982	0	60343	0	0	24
117432	2.05100000000000016	0	59675	0	0	24
117433	2.05200000000000005	0	59707	0	0	24
117434	2.05299999999999994	0	59739	0	0	24
117435	2.05399999999999983	0	59771	0	0	24
117436	2.05500000000000016	0	59803	0	0	24
117437	2.05600000000000005	0	59835	0	0	24
117438	2.05699999999999994	0	59867	0	0	24
117439	2.05799999999999983	0	59899	0	0	24
117440	2.05900000000000016	0	59931	0	0	24
117441	2.06000000000000005	0	59961	0	0	24
117442	2.06099999999999994	0	59993	0	0	24
117443	2.06199999999999983	0	60025	0	0	24
117444	2.06300000000000017	0	60057	0	0	24
117445	2.06400000000000006	0	60089	0	0	24
117446	2.06499999999999995	0	60121	0	0	24
117447	2.06599999999999984	0	60153	0	0	24
117448	2.06700000000000017	0	60185	0	0	24
117449	2.06800000000000006	0	60217	0	0	24
117450	2.06899999999999995	0	60249	0	0	24
117451	2.06999999999999984	0	60279	0	0	24
117452	2.07100000000000017	0	60311	0	0	24
117453	2.07200000000000006	0	60343	0	0	24
117454	2.07299999999999995	0	60375	0	0	24
117455	2.07399999999999984	0	60407	0	0	24
117456	2.07500000000000018	0	60439	0	0	24
117457	2.07600000000000007	0	60471	0	0	24
117458	2.07699999999999996	0	60503	0	0	24
117459	2.07799999999999985	0	60535	0	0	24
117460	2.07900000000000018	0	60567	0	0	24
117461	2.08000000000000007	0	60597	0	0	24
117462	2.08099999999999996	0	60629	0	0	24
117463	2.08199999999999985	0	60661	0	0	24
117464	2.08300000000000018	0	60693	0	0	24
117465	2.08400000000000007	0	60725	0	0	24
117466	2.08499999999999996	0	60757	0	0	24
117467	2.08599999999999985	0	60789	0	0	24
117468	2.08700000000000019	0	60821	0	0	24
117469	2.08800000000000008	0	60853	0	0	24
117470	2.08899999999999997	0	60885	0	0	24
117471	2.08999999999999986	0	60915	0	0	24
117472	2.09100000000000019	0	60947	0	0	24
117473	2.09200000000000008	0	60979	0	0	24
117474	2.09299999999999997	0	61011	0	0	24
117475	2.09399999999999986	0	61043	0	0	24
117476	2.0950000000000002	0	61075	0	0	24
117477	2.09600000000000009	0	61107	0	0	24
117478	2.09699999999999998	0	61139	0	0	24
117479	2.09799999999999986	0	61171	0	0	24
117480	2.0990000000000002	0	61203	0	0	24
117481	2.10000000000000009	0	61233	0	0	24
117482	2.10099999999999998	0	60565	0	0	24
117483	2.10199999999999987	0	60597	0	0	24
117484	2.1030000000000002	0	60629	0	0	24
117485	2.10400000000000009	0	60661	0	0	24
117486	2.10499999999999998	0	60693	0	0	24
117487	2.10599999999999987	0	60725	0	0	24
117488	2.10700000000000021	0	60757	0	0	24
117489	2.1080000000000001	0	60789	0	0	24
117490	2.10899999999999999	0	60821	0	0	24
117491	2.10999999999999988	0	60851	0	0	24
117492	2.11100000000000021	0	60883	0	0	24
117493	2.1120000000000001	0	60915	0	0	24
117494	2.11299999999999999	0	60947	0	0	24
117495	2.11399999999999988	0	60979	0	0	24
117496	2.11500000000000021	0	61011	0	0	24
117497	2.1160000000000001	0	61043	0	0	24
117498	2.11699999999999999	0	61075	0	0	24
117499	2.11799999999999988	0	61107	0	0	24
117500	2.11900000000000022	0	61139	0	0	24
117501	2.12000000000000011	0	61169	0	0	24
117502	2.121	0	61201	0	0	24
117503	2.12199999999999989	0	61233	0	0	24
117504	2.12300000000000022	0	61265	0	0	24
117505	2.12400000000000011	0	61297	0	0	24
117506	2.125	0	61329	0	0	24
117507	2.12599999999999989	0	61361	0	0	24
117508	2.12699999999999978	0	61393	0	0	24
117509	2.12800000000000011	0	61425	0	0	24
117510	2.129	0	61457	0	0	24
117511	2.12999999999999989	0	61487	0	0	24
117512	2.13099999999999978	0	61519	0	0	24
117513	2.13200000000000012	0	61551	0	0	24
117514	2.13300000000000001	0	61583	0	0	24
117515	2.1339999999999999	0	61615	0	0	24
117516	2.13499999999999979	0	61647	0	0	24
117517	2.13600000000000012	0	61679	0	0	24
117518	2.13700000000000001	0	61711	0	0	24
117519	2.1379999999999999	0	61743	0	0	24
117520	2.13899999999999979	0	61775	0	0	24
117521	2.14000000000000012	0	61805	0	0	24
117522	2.14100000000000001	0	61837	0	0	24
117523	2.1419999999999999	0	61869	0	0	24
117524	2.14299999999999979	0	61901	0	0	24
117525	2.14400000000000013	0	61933	0	0	24
117526	2.14500000000000002	0	61965	0	0	24
117527	2.14599999999999991	0	61997	0	0	24
117528	2.1469999999999998	0	62029	0	0	24
117529	2.14800000000000013	0	62061	0	0	24
117530	2.14900000000000002	0	62093	0	0	24
117531	2.14999999999999991	0	62123	0	0	24
117532	2.1509999999999998	0	61455	0	0	24
117533	2.15200000000000014	0	61487	0	0	24
117534	2.15300000000000002	0	61519	0	0	24
117535	2.15399999999999991	0	61551	0	0	24
117536	2.1549999999999998	0	61583	0	0	24
117537	2.15600000000000014	0	61615	0	0	24
117538	2.15700000000000003	0	61647	0	0	24
117539	2.15799999999999992	0	61679	0	0	24
117540	2.15899999999999981	0	61711	0	0	24
117541	2.16000000000000014	0	61741	0	0	24
117542	2.16100000000000003	0	61773	0	0	24
117543	2.16199999999999992	0	61805	0	0	24
117544	2.16299999999999981	0	61837	0	0	24
117545	2.16400000000000015	0	61869	0	0	24
117546	2.16500000000000004	0	61901	0	0	24
117547	2.16599999999999993	0	61933	0	0	24
117548	2.16699999999999982	0	61965	0	0	24
117549	2.16800000000000015	0	61997	0	0	24
117550	2.16900000000000004	0	62029	0	0	24
117551	2.16999999999999993	0	62059	0	0	24
117552	2.17099999999999982	0	62091	0	0	24
117553	2.17200000000000015	0	62123	0	0	24
117554	2.17300000000000004	0	62155	0	0	24
117555	2.17399999999999993	0	62187	0	0	24
117556	2.17499999999999982	0	62219	0	0	24
117557	2.17600000000000016	0	62251	0	0	24
117558	2.17700000000000005	0	62283	0	0	24
117559	2.17799999999999994	0	62315	0	0	24
117560	2.17899999999999983	0	62347	0	0	24
117561	2.18000000000000016	0	62377	0	0	24
117562	2.18100000000000005	0	62409	0	0	24
117563	2.18199999999999994	0	62441	0	0	24
117564	2.18299999999999983	0	62473	0	0	24
117565	2.18400000000000016	0	62505	0	0	24
117566	2.18500000000000005	0	62537	0	0	24
117567	2.18599999999999994	0	62569	0	0	24
117568	2.18699999999999983	0	62601	0	0	24
117569	2.18800000000000017	0	62633	0	0	24
117570	2.18900000000000006	0	62665	0	0	24
117571	2.18999999999999995	0	62695	0	0	24
117572	2.19099999999999984	0	62727	0	0	24
117573	2.19200000000000017	0	62759	0	0	24
117574	2.19300000000000006	0	62791	0	0	24
117575	2.19399999999999995	0	62823	0	0	24
117576	2.19499999999999984	0	62855	0	0	24
117577	2.19600000000000017	0	62887	0	0	24
117578	2.19700000000000006	0	62919	0	0	24
117579	2.19799999999999995	0	62951	0	0	24
117580	2.19899999999999984	0	62983	0	0	24
117581	2.20000000000000018	0	63013	0	0	24
117582	2.20100000000000007	0	63044	0	0	24
117583	2.20199999999999996	0	63076	0	0	24
117584	2.20299999999999985	0	63108	0	0	24
117585	2.20400000000000018	0	63140	0	0	24
117586	2.20500000000000007	0	63172	0	0	24
117587	2.20599999999999996	0	63204	0	0	24
117588	2.20699999999999985	0	63236	0	0	24
117589	2.20800000000000018	0	63268	0	0	24
117590	2.20900000000000007	0	63300	0	0	24
117591	2.20999999999999996	0	63330	0	0	24
117592	2.21099999999999985	0	63362	0	0	24
117593	2.21200000000000019	0	63394	0	0	24
117594	2.21300000000000008	0	63426	0	0	24
117595	2.21399999999999997	0	63458	0	0	24
117596	2.21499999999999986	0	63490	0	0	24
117597	2.21600000000000019	0	63522	0	0	24
117598	2.21700000000000008	0	63554	0	0	24
117599	2.21799999999999997	0	63586	0	0	24
117600	2.21899999999999986	0	63618	0	0	24
117601	2.2200000000000002	0	63648	0	0	24
117602	2.22100000000000009	0	63680	0	0	24
117603	2.22199999999999998	0	63712	0	0	24
117604	2.22299999999999986	0	63744	0	0	24
117605	2.2240000000000002	0	63776	0	0	24
117606	2.22500000000000009	0	63808	0	0	24
117607	2.22599999999999998	0	63840	0	0	24
117608	2.22699999999999987	0	63872	0	0	24
117609	2.2280000000000002	0	63904	0	0	24
117610	2.22900000000000009	0	63936	0	0	24
117611	2.22999999999999998	0	63966	0	0	24
117612	2.23099999999999987	0	63998	0	0	24
117613	2.23200000000000021	0	64030	0	0	24
117614	2.2330000000000001	0	64062	0	0	24
117615	2.23399999999999999	0	64094	0	0	24
117616	2.23499999999999988	0	64126	0	0	24
117617	2.23600000000000021	0	64158	0	0	24
117618	2.2370000000000001	0	64190	0	0	24
117619	2.23799999999999999	0	64222	0	0	24
117620	2.23899999999999988	0	64254	0	0	24
117621	2.24000000000000021	0	64284	0	0	24
117622	2.2410000000000001	0	64316	0	0	24
117623	2.24199999999999999	0	64348	0	0	24
117624	2.24299999999999988	0	64380	0	0	24
117625	2.24400000000000022	0	64412	0	0	24
117626	2.24500000000000011	0	64444	0	0	24
117627	2.246	0	64476	0	0	24
117628	2.24699999999999989	0	64508	0	0	24
117629	2.24800000000000022	0	64540	0	0	24
117630	2.24900000000000011	0	64572	0	0	24
117631	2.25	0	64602	0	0	24
117632	2.25099999999999989	0	64633	0	0	24
117633	2.25199999999999978	0	64665	0	0	24
117634	2.25300000000000011	0	64697	0	0	24
117635	2.254	0	64729	0	0	24
117636	2.25499999999999989	0	64761	0	0	24
117637	2.25599999999999978	0	64793	0	0	24
117638	2.25700000000000012	0	64825	0	0	24
117639	2.25800000000000001	0	64857	0	0	24
117640	2.2589999999999999	0	64889	0	0	24
117641	2.25999999999999979	0	64919	0	0	24
117642	2.26100000000000012	0	64951	0	0	24
117643	2.26200000000000001	0	64983	0	0	24
117644	2.2629999999999999	0	65015	0	0	24
117645	2.26399999999999979	0	65047	0	0	24
117646	2.26500000000000012	0	65079	0	0	24
117647	2.26600000000000001	0	65111	0	0	24
117648	2.2669999999999999	0	65143	0	0	24
117649	2.26799999999999979	0	65175	0	0	24
117650	2.26900000000000013	0	65207	0	0	24
117651	2.27000000000000002	0	65237	0	0	24
117652	2.27099999999999991	0	65269	0	0	24
117653	2.2719999999999998	0	65301	0	0	24
117654	2.27300000000000013	0	65333	0	0	24
117655	2.27400000000000002	0	65365	0	0	24
117656	2.27499999999999991	0	65397	0	0	24
117657	2.2759999999999998	0	65429	0	0	24
117658	2.27700000000000014	0	65461	0	0	24
117659	2.27800000000000002	0	65493	0	0	24
117660	2.27899999999999991	0	65525	0	0	24
117661	2.2799999999999998	0	65555	0	0	24
117662	2.28100000000000014	0	65587	0	0	24
117663	2.28200000000000003	0	65619	0	0	24
117664	2.28299999999999992	0	65651	0	0	24
117665	2.28399999999999981	0	65683	0	0	24
117666	2.28500000000000014	0	65715	0	0	24
117667	2.28600000000000003	0	65747	0	0	24
117668	2.28699999999999992	0	65779	0	0	24
117669	2.28799999999999981	0	65811	0	0	24
117670	2.28900000000000015	0	65843	0	0	24
117671	2.29000000000000004	0	65873	0	0	24
117672	2.29099999999999993	0	65905	0	0	24
117673	2.29199999999999982	0	65937	0	0	24
117674	2.29300000000000015	0	65969	0	0	24
117675	2.29400000000000004	0	66001	0	0	24
117676	2.29499999999999993	0	66033	0	0	24
117677	2.29599999999999982	0	66065	0	0	24
117678	2.29700000000000015	0	66097	0	0	24
117679	2.29800000000000004	0	66129	0	0	24
117680	2.29899999999999993	0	66161	0	0	24
117681	2.29999999999999982	0	66191	0	0	24
117682	2.30100000000000016	0	66222	0	0	24
117683	2.30200000000000005	0	66254	0	0	24
117684	2.30299999999999994	0	66286	0	0	24
117685	2.30399999999999983	0	66318	0	0	24
117686	2.30500000000000016	0	66350	0	0	24
117687	2.30600000000000005	0	66382	0	0	24
117688	2.30699999999999994	0	66414	0	0	24
117689	2.30799999999999983	0	66446	0	0	24
117690	2.30900000000000016	0	66478	0	0	24
117691	2.31000000000000005	0	66508	0	0	24
117692	2.31099999999999994	0	66540	0	0	24
117693	2.31199999999999983	0	66572	0	0	24
117694	2.31300000000000017	0	66604	0	0	24
117695	2.31400000000000006	0	66636	0	0	24
117696	2.31499999999999995	0	66668	0	0	24
117697	2.31599999999999984	0	66700	0	0	24
117698	2.31700000000000017	0	66732	0	0	24
117699	2.31800000000000006	0	66764	0	0	24
117700	2.31899999999999995	0	66796	0	0	24
117701	2.31999999999999984	0	66826	0	0	24
117702	2.32100000000000017	0	66858	0	0	24
117703	2.32200000000000006	0	66890	0	0	24
117704	2.32299999999999995	0	66922	0	0	24
117705	2.32399999999999984	0	66954	0	0	24
117706	2.32500000000000018	0	66986	0	0	24
117707	2.32600000000000007	0	67018	0	0	24
117708	2.32699999999999996	0	67050	0	0	24
117709	2.32799999999999985	0	67082	0	0	24
117710	2.32900000000000018	0	67114	0	0	24
117711	2.33000000000000007	0	67144	0	0	24
117712	2.33099999999999996	0	67176	0	0	24
117713	2.33199999999999985	0	67208	0	0	24
117714	2.33300000000000018	0	67240	0	0	24
117715	2.33400000000000007	0	67272	0	0	24
117716	2.33499999999999996	0	67304	0	0	24
117717	2.33599999999999985	0	67336	0	0	24
117718	2.33700000000000019	0	67368	0	0	24
117719	2.33800000000000008	0	67400	0	0	24
117720	2.33899999999999997	0	67432	0	0	24
117721	2.33999999999999986	0	67462	0	0	24
117722	2.34100000000000019	0	67494	0	0	24
117723	2.34200000000000008	0	67526	0	0	24
117724	2.34299999999999997	0	67558	0	0	24
117725	2.34399999999999986	0	67590	0	0	24
117726	2.3450000000000002	0	67622	0	0	24
117727	2.34600000000000009	0	67654	0	0	24
117728	2.34699999999999998	0	67686	0	0	24
117729	2.34799999999999986	0	67718	0	0	24
117730	2.3490000000000002	0	67750	0	0	24
117731	2.35000000000000009	0	67780	0	0	24
117732	2.35099999999999998	0	67811	0	0	24
117733	2.35199999999999987	0	67843	0	0	24
117734	2.3530000000000002	0	67875	0	0	24
117735	2.35400000000000009	0	67907	0	0	24
117736	2.35499999999999998	0	67939	0	0	24
117737	2.35599999999999987	0	67971	0	0	24
117738	2.35700000000000021	0	68003	0	0	24
117739	2.3580000000000001	0	68035	0	0	24
117740	2.35899999999999999	0	68067	0	0	24
117741	2.35999999999999988	0	68097	0	0	24
117742	2.36100000000000021	0	68129	0	0	24
117743	2.3620000000000001	0	68161	0	0	24
117744	2.36299999999999999	0	68193	0	0	24
117745	2.36399999999999988	0	68225	0	0	24
117746	2.36500000000000021	0	68257	0	0	24
117747	2.3660000000000001	0	68289	0	0	24
117748	2.36699999999999999	0	68321	0	0	24
117749	2.36799999999999988	0	68353	0	0	24
117750	2.36900000000000022	0	68385	0	0	24
117751	2.37000000000000011	0	68415	0	0	24
117752	2.371	0	68447	0	0	24
117753	2.37199999999999989	0	68479	0	0	24
117754	2.37300000000000022	0	68511	0	0	24
117755	2.37400000000000011	0	68543	0	0	24
117756	2.375	0	68575	0	0	24
117757	2.37599999999999989	0	68607	0	0	24
117758	2.37699999999999978	0	68639	0	0	24
117759	2.37800000000000011	0	68671	0	0	24
117760	2.379	0	68703	0	0	24
117761	2.37999999999999989	0	68733	0	0	24
117762	2.38099999999999978	0	68765	0	0	24
117763	2.38200000000000012	0	68797	0	0	24
117764	2.38300000000000001	0	68829	0	0	24
117765	2.3839999999999999	0	68861	0	0	24
117766	2.38499999999999979	0	68893	0	0	24
117767	2.38600000000000012	0	68925	0	0	24
117768	2.38700000000000001	0	68957	0	0	24
117769	2.3879999999999999	0	68989	0	0	24
117770	2.38899999999999979	0	69021	0	0	24
117771	2.39000000000000012	0	69051	0	0	24
117772	2.39100000000000001	0	69083	0	0	24
117773	2.3919999999999999	0	69115	0	0	24
117774	2.39299999999999979	0	69147	0	0	24
117775	2.39400000000000013	0	69179	0	0	24
117776	2.39500000000000002	0	69211	0	0	24
117777	2.39599999999999991	0	69243	0	0	24
117778	2.3969999999999998	0	69275	0	0	24
117779	2.39800000000000013	0	69307	0	0	24
117780	2.39900000000000002	0	69339	0	0	24
117781	2.39999999999999991	0	69369	0	0	24
117782	2.4009999999999998	0	69400	0	0	24
117783	2.40200000000000014	0	69432	0	0	24
117784	2.40300000000000002	0	69464	0	0	24
117785	2.40399999999999991	0	69496	0	0	24
117786	2.4049999999999998	0	69528	0	0	24
117787	2.40600000000000014	0	69560	0	0	24
117788	2.40700000000000003	0	69592	0	0	24
117789	2.40799999999999992	0	69624	0	0	24
117790	2.40899999999999981	0	69656	0	0	24
117791	2.41000000000000014	0	69686	0	0	24
117792	2.41100000000000003	0	69718	0	0	24
117793	2.41199999999999992	0	69750	0	0	24
117794	2.41299999999999981	0	69782	0	0	24
117795	2.41400000000000015	0	69814	0	0	24
117796	2.41500000000000004	0	69846	0	0	24
117797	2.41599999999999993	0	69878	0	0	24
117798	2.41699999999999982	0	69910	0	0	24
117799	2.41800000000000015	0	69942	0	0	24
117800	2.41900000000000004	0	69974	0	0	24
117801	2.41999999999999993	0	70004	0	0	24
117802	2.42099999999999982	0	70036	0	0	24
117803	2.42200000000000015	0	70068	0	0	24
117804	2.42300000000000004	0	70100	0	0	24
117805	2.42399999999999993	0	70132	0	0	24
117806	2.42499999999999982	0	70164	0	0	24
117807	2.42600000000000016	0	70196	0	0	24
117808	2.42700000000000005	0	70228	0	0	24
117809	2.42799999999999994	0	70260	0	0	24
117810	2.42899999999999983	0	70292	0	0	24
117811	2.43000000000000016	0	70322	0	0	24
117812	2.43100000000000005	0	70354	0	0	24
117813	2.43199999999999994	0	70386	0	0	24
117814	2.43299999999999983	0	70418	0	0	24
117815	2.43400000000000016	0	70450	0	0	24
117816	2.43500000000000005	0	70482	0	0	24
117817	2.43599999999999994	0	70514	0	0	24
117818	2.43699999999999983	0	70546	0	0	24
117819	2.43800000000000017	0	70578	0	0	24
117820	2.43900000000000006	0	70610	0	0	24
117821	2.43999999999999995	0	70640	0	0	24
117822	2.44099999999999984	0	70672	0	0	24
117823	2.44200000000000017	0	70704	0	0	24
117824	2.44300000000000006	0	70736	0	0	24
117825	2.44399999999999995	0	70768	0	0	24
117826	2.44499999999999984	0	70800	0	0	24
117827	2.44600000000000017	0	70832	0	0	24
117828	2.44700000000000006	0	70864	0	0	24
117829	2.44799999999999995	0	70896	0	0	24
117830	2.44899999999999984	0	70928	0	0	24
117831	2.45000000000000018	0	70958	0	0	24
117832	2.45100000000000007	0	70989	0	0	24
117833	2.45199999999999996	0	71021	0	0	24
117834	2.45299999999999985	0	71053	0	0	24
117835	2.45400000000000018	0	71085	0	0	24
117836	2.45500000000000007	0	71117	0	0	24
117837	2.45599999999999996	0	71149	0	0	24
117838	2.45699999999999985	0	71181	0	0	24
117839	2.45800000000000018	0	71213	0	0	24
117840	2.45900000000000007	0	71245	0	0	24
117841	2.45999999999999996	0	71275	0	0	24
117842	2.46099999999999985	0	71307	0	0	24
117843	2.46200000000000019	0	71339	0	0	24
117844	2.46300000000000008	0	71371	0	0	24
117845	2.46399999999999997	0	71403	0	0	24
117846	2.46499999999999986	0	71435	0	0	24
117847	2.46600000000000019	0	71467	0	0	24
117848	2.46700000000000008	0	71499	0	0	24
117849	2.46799999999999997	0	71531	0	0	24
117850	2.46899999999999986	0	71563	0	0	24
117851	2.4700000000000002	0	71593	0	0	24
117852	2.47100000000000009	0	71625	0	0	24
117853	2.47199999999999998	0	71657	0	0	24
117854	2.47299999999999986	0	71689	0	0	24
117855	2.4740000000000002	0	71721	0	0	24
117856	2.47500000000000009	0	71753	0	0	24
117857	2.47599999999999998	0	71785	0	0	24
117858	2.47699999999999987	0	71817	0	0	24
117859	2.4780000000000002	0	71849	0	0	24
117860	2.47900000000000009	0	71881	0	0	24
117861	2.47999999999999998	0	71911	0	0	24
117862	2.48099999999999987	0	71943	0	0	24
117863	2.48200000000000021	0	71975	0	0	24
117864	2.4830000000000001	0	72007	0	0	24
117865	2.48399999999999999	0	72039	0	0	24
117866	2.48499999999999988	0	72071	0	0	24
117867	2.48600000000000021	0	72103	0	0	24
117868	2.4870000000000001	0	72135	0	0	24
117869	2.48799999999999999	0	72167	0	0	24
117870	2.48899999999999988	0	72199	0	0	24
117871	2.49000000000000021	0	72229	0	0	24
117872	2.4910000000000001	0	72261	0	0	24
117873	2.49199999999999999	0	72293	0	0	24
117874	2.49299999999999988	0	72325	0	0	24
117875	2.49400000000000022	0	72357	0	0	24
117876	2.49500000000000011	0	72389	0	0	24
117877	2.496	0	72421	0	0	24
117878	2.49699999999999989	0	72453	0	0	24
117879	2.49800000000000022	0	72485	0	0	24
117880	2.49900000000000011	0	72517	0	0	24
117881	2.5	0	72547	0	0	24
117882	2.50099999999999989	0	72578	0	0	24
117883	2.50199999999999978	0	72610	0	0	24
117884	2.50300000000000011	0	72642	0	0	24
117885	2.504	0	72674	0	0	24
117886	2.50499999999999989	0	72706	0	0	24
117887	2.50599999999999978	0	72738	0	0	24
117888	2.50700000000000012	0	72770	0	0	24
117889	2.50800000000000001	0	72802	0	0	24
117890	2.5089999999999999	0	72834	0	0	24
117891	2.50999999999999979	0	72864	0	0	24
117892	2.51100000000000012	0	72896	0	0	24
117893	2.51200000000000001	0	72928	0	0	24
117894	2.5129999999999999	0	72960	0	0	24
117895	2.51399999999999979	0	72992	0	0	24
117896	2.51500000000000012	0	73024	0	0	24
117897	2.51600000000000001	0	73056	0	0	24
117898	2.5169999999999999	0	73088	0	0	24
117899	2.51799999999999979	0	73120	0	0	24
117900	2.51900000000000013	0	73152	0	0	24
117901	2.52000000000000002	0	73182	0	0	24
117902	2.52099999999999991	0	73214	0	0	24
117903	2.5219999999999998	0	73246	0	0	24
117904	2.52300000000000013	0	73278	0	0	24
117905	2.52400000000000002	0	73310	0	0	24
117906	2.52499999999999991	0	73342	0	0	24
117907	2.5259999999999998	0	73374	0	0	24
117908	2.52700000000000014	0	73406	0	0	24
117909	2.52800000000000002	0	73438	0	0	24
117910	2.52899999999999991	0	73470	0	0	24
117911	2.5299999999999998	0	73500	0	0	24
117912	2.53100000000000014	0	73532	0	0	24
117913	2.53200000000000003	0	73564	0	0	24
117914	2.53299999999999992	0	73596	0	0	24
117915	2.53399999999999981	0	73628	0	0	24
117916	2.53500000000000014	0	73660	0	0	24
117917	2.53600000000000003	0	73692	0	0	24
117918	2.53699999999999992	0	73724	0	0	24
117919	2.53799999999999981	0	73756	0	0	24
117920	2.53900000000000015	0	73788	0	0	24
117921	2.54000000000000004	0	73818	0	0	24
117922	2.54099999999999993	0	73850	0	0	24
117923	2.54199999999999982	0	73882	0	0	24
117924	2.54300000000000015	0	73914	0	0	24
117925	2.54400000000000004	0	73946	0	0	24
117926	2.54499999999999993	0	73978	0	0	24
117927	2.54599999999999982	0	74010	0	0	24
117928	2.54700000000000015	0	74042	0	0	24
117929	2.54800000000000004	0	74074	0	0	24
117930	2.54899999999999993	0	74106	0	0	24
117931	2.54999999999999982	0	74136	0	0	24
117932	2.55100000000000016	0	74167	0	0	24
117933	2.55200000000000005	0	74199	0	0	24
117934	2.55299999999999994	0	74231	0	0	24
117935	2.55399999999999983	0	74263	0	0	24
117936	2.55500000000000016	0	74295	0	0	24
117937	2.55600000000000005	0	74327	0	0	24
117938	2.55699999999999994	0	74359	0	0	24
117939	2.55799999999999983	0	74391	0	0	24
117940	2.55900000000000016	0	74423	0	0	24
117941	2.56000000000000005	0	74453	0	0	24
117942	2.56099999999999994	0	74485	0	0	24
117943	2.56199999999999983	0	74517	0	0	24
117944	2.56300000000000017	0	74549	0	0	24
117945	2.56400000000000006	0	74581	0	0	24
117946	2.56499999999999995	0	74613	0	0	24
117947	2.56599999999999984	0	74645	0	0	24
117948	2.56700000000000017	0	74677	0	0	24
117949	2.56800000000000006	0	74709	0	0	24
117950	2.56899999999999995	0	74741	0	0	24
117951	2.56999999999999984	0	74771	0	0	24
117952	2.57100000000000017	0	74803	0	0	24
117953	2.57200000000000006	0	74835	0	0	24
117954	2.57299999999999995	0	74867	0	0	24
117955	2.57399999999999984	0	74899	0	0	24
117956	2.57500000000000018	0	74931	0	0	24
117957	2.57600000000000007	0	74963	0	0	24
117958	2.57699999999999996	0	74995	0	0	24
117959	2.57799999999999985	0	75027	0	0	24
117960	2.57900000000000018	0	75059	0	0	24
117961	2.58000000000000007	0	75089	0	0	24
117962	2.58099999999999996	0	75121	0	0	24
117963	2.58199999999999985	0	75153	0	0	24
117964	2.58300000000000018	0	75185	0	0	24
117965	2.58400000000000007	0	75217	0	0	24
117966	2.58499999999999996	0	75249	0	0	24
117967	2.58599999999999985	0	75281	0	0	24
117968	2.58700000000000019	0	75313	0	0	24
117969	2.58800000000000008	0	75345	0	0	24
117970	2.58899999999999997	0	75377	0	0	24
117971	2.58999999999999986	0	75407	0	0	24
117972	2.59100000000000019	0	75439	0	0	24
117973	2.59200000000000008	0	75471	0	0	24
117974	2.59299999999999997	0	75503	0	0	24
117975	2.59399999999999986	0	75535	0	0	24
117976	2.5950000000000002	0	75567	0	0	24
117977	2.59600000000000009	0	75599	0	0	24
117978	2.59699999999999998	0	75631	0	0	24
117979	2.59799999999999986	0	75663	0	0	24
117980	2.5990000000000002	0	75695	0	0	24
117981	2.60000000000000009	0	75725	0	0	24
117982	2.60099999999999998	0	75756	0	0	24
117983	2.60199999999999987	0	75788	0	0	24
117984	2.6030000000000002	0	75820	0	0	24
117985	2.60400000000000009	0	75852	0	0	24
117986	2.60499999999999998	0	75884	0	0	24
117987	2.60599999999999987	0	75916	0	0	24
117988	2.60700000000000021	0	75948	0	0	24
117989	2.6080000000000001	0	75980	0	0	24
117990	2.60899999999999999	0	76012	0	0	24
117991	2.60999999999999988	0	76042	0	0	24
117992	2.61100000000000021	0	76074	0	0	24
117993	2.6120000000000001	0	76106	0	0	24
117994	2.61299999999999999	0	76138	0	0	24
117995	2.61399999999999988	0	76170	0	0	24
117996	2.61500000000000021	0	76202	0	0	24
117997	2.6160000000000001	0	76234	0	0	24
117998	2.61699999999999999	0	76266	0	0	24
117999	2.61799999999999988	0	76298	0	0	24
118000	2.61900000000000022	0	76330	0	0	24
118001	2.62000000000000011	0	76360	0	0	24
118002	2.621	0	76392	0	0	24
118003	2.62199999999999989	0	76424	0	0	24
118004	2.62300000000000022	0	76456	0	0	24
118005	2.62400000000000011	0	76488	0	0	24
118006	2.625	0	76520	0	0	24
118007	2.62599999999999989	0	76552	0	0	24
118008	2.62699999999999978	0	76584	0	0	24
118009	2.62800000000000011	0	76616	0	0	24
118010	2.629	0	76648	0	0	24
118011	2.62999999999999989	0	76678	0	0	24
118012	2.63099999999999978	0	76710	0	0	24
118013	2.63200000000000012	0	76742	0	0	24
118014	2.63300000000000001	0	76774	0	0	24
118015	2.6339999999999999	0	76806	0	0	24
118016	2.63499999999999979	0	76838	0	0	24
118017	2.63600000000000012	0	76870	0	0	24
118018	2.63700000000000001	0	76902	0	0	24
118019	2.6379999999999999	0	76934	0	0	24
118020	2.63899999999999979	0	76966	0	0	24
118021	2.64000000000000012	0	76996	0	0	24
118022	2.64100000000000001	0	77028	0	0	24
118023	2.6419999999999999	0	77060	0	0	24
118024	2.64299999999999979	0	77092	0	0	24
118025	2.64400000000000013	0	77124	0	0	24
118026	2.64500000000000002	0	77156	0	0	24
118027	2.64599999999999991	0	77188	0	0	24
118028	2.6469999999999998	0	77220	0	0	24
118029	2.64800000000000013	0	77252	0	0	24
118030	2.64900000000000002	0	77284	0	0	24
118031	2.64999999999999991	0	77314	0	0	24
118032	2.6509999999999998	0	77345	0	0	24
118033	2.65200000000000014	0	77377	0	0	24
118034	2.65300000000000002	0	77409	0	0	24
118035	2.65399999999999991	0	77441	0	0	24
118036	2.6549999999999998	0	77473	0	0	24
118037	2.65600000000000014	0	77505	0	0	24
118038	2.65700000000000003	0	77537	0	0	24
118039	2.65799999999999992	0	77569	0	0	24
118040	2.65899999999999981	0	77601	0	0	24
118041	2.66000000000000014	0	77631	0	0	24
118042	2.66100000000000003	0	77663	0	0	24
118043	2.66199999999999992	0	77695	0	0	24
118044	2.66299999999999981	0	77727	0	0	24
118045	2.66400000000000015	0	77759	0	0	24
118046	2.66500000000000004	0	77791	0	0	24
118047	2.66599999999999993	0	77823	0	0	24
118048	2.66699999999999982	0	77855	0	0	24
118049	2.66800000000000015	0	77887	0	0	24
118050	2.66900000000000004	0	77919	0	0	24
118051	2.66999999999999993	0	77949	0	0	24
118052	2.67099999999999982	0	77981	0	0	24
118053	2.67200000000000015	0	78013	0	0	24
118054	2.67300000000000004	0	78045	0	0	24
118055	2.67399999999999993	0	78077	0	0	24
118056	2.67499999999999982	0	78109	0	0	24
118057	2.67600000000000016	0	78141	0	0	24
118058	2.67700000000000005	0	78173	0	0	24
118059	2.67799999999999994	0	78205	0	0	24
118060	2.67899999999999983	0	78237	0	0	24
118061	2.68000000000000016	0	78267	0	0	24
118062	2.68100000000000005	0	78299	0	0	24
118063	2.68199999999999994	0	78331	0	0	24
118064	2.68299999999999983	0	78363	0	0	24
118065	2.68400000000000016	0	78395	0	0	24
118066	2.68500000000000005	0	78427	0	0	24
118067	2.68599999999999994	0	78459	0	0	24
118068	2.68699999999999983	0	78491	0	0	24
118069	2.68800000000000017	0	78523	0	0	24
118070	2.68900000000000006	0	78555	0	0	24
118071	2.68999999999999995	0	78585	0	0	24
118072	2.69099999999999984	0	78617	0	0	24
118073	2.69200000000000017	0	78649	0	0	24
118074	2.69300000000000006	0	78681	0	0	24
118075	2.69399999999999995	0	78713	0	0	24
118076	2.69499999999999984	0	78745	0	0	24
118077	2.69600000000000017	0	78777	0	0	24
118078	2.69700000000000006	0	78809	0	0	24
118079	2.69799999999999995	0	78841	0	0	24
118080	2.69899999999999984	0	78873	0	0	24
118081	2.70000000000000018	0	78903	0	0	24
118082	2.70100000000000007	0	78934	0	0	24
118083	2.70199999999999996	0	78966	0	0	24
118084	2.70299999999999985	0	78998	0	0	24
118085	2.70400000000000018	0	79030	0	0	24
118086	2.70500000000000007	0	79062	0	0	24
118087	2.70599999999999996	0	79094	0	0	24
118088	2.70699999999999985	0	79126	0	0	24
118089	2.70800000000000018	0	79158	0	0	24
118090	2.70900000000000007	0	79190	0	0	24
118091	2.70999999999999996	0	79220	0	0	24
118092	2.71099999999999985	0	79252	0	0	24
118093	2.71200000000000019	0	79284	0	0	24
118094	2.71300000000000008	0	79316	0	0	24
118095	2.71399999999999997	0	79348	0	0	24
118096	2.71499999999999986	0	79380	0	0	24
118097	2.71600000000000019	0	79412	0	0	24
118098	2.71700000000000008	0	79444	0	0	24
118099	2.71799999999999997	0	79476	0	0	24
118100	2.71899999999999986	0	79508	0	0	24
118101	2.7200000000000002	0	79538	0	0	24
118102	2.72100000000000009	0	79570	0	0	24
118103	2.72199999999999998	0	79602	0	0	24
118104	2.72299999999999986	0	79634	0	0	24
118105	2.7240000000000002	0	79666	0	0	24
118106	2.72500000000000009	0	79698	0	0	24
118107	2.72599999999999998	0	79730	0	0	24
118108	2.72699999999999987	0	79762	0	0	24
118109	2.7280000000000002	0	79794	0	0	24
118110	2.72900000000000009	0	79826	0	0	24
118111	2.72999999999999998	0	79856	0	0	24
118112	2.73099999999999987	0	79888	0	0	24
118113	2.73200000000000021	0	79920	0	0	24
118114	2.7330000000000001	0	79952	0	0	24
118115	2.73399999999999999	0	79984	0	0	24
118116	2.73499999999999988	0	80016	0	0	24
118117	2.73600000000000021	0	80048	0	0	24
118118	2.7370000000000001	0	80080	0	0	24
118119	2.73799999999999999	0	80112	0	0	24
118120	2.73899999999999988	0	80144	0	0	24
118121	2.74000000000000021	0	80174	0	0	24
118122	2.7410000000000001	0	80206	0	0	24
118123	2.74199999999999999	0	80238	0	0	24
118124	2.74299999999999988	0	80270	0	0	24
118125	2.74400000000000022	0	80302	0	0	24
118126	2.74500000000000011	0	80334	0	0	24
118127	2.746	0	80366	0	0	24
118128	2.74699999999999989	0	80398	0	0	24
118129	2.74800000000000022	0	80430	0	0	24
118130	2.74900000000000011	0	80462	0	0	24
118131	2.75	0	80492	0	0	24
118132	2.75099999999999989	0	80523	0	0	24
118133	2.75199999999999978	0	80555	0	0	24
118134	2.75300000000000011	0	80587	0	0	24
118135	2.754	0	80619	0	0	24
118136	2.75499999999999989	0	80651	0	0	24
118137	2.75599999999999978	0	80683	0	0	24
118138	2.75700000000000012	0	80715	0	0	24
118139	2.75800000000000001	0	80747	0	0	24
118140	2.7589999999999999	0	80779	0	0	24
118141	2.75999999999999979	0	80809	0	0	24
118142	2.76100000000000012	0	80841	0	0	24
118143	2.76200000000000001	0	80873	0	0	24
118144	2.7629999999999999	0	80905	0	0	24
118145	2.76399999999999979	0	80937	0	0	24
118146	2.76500000000000012	0	80969	0	0	24
118147	2.76600000000000001	0	81001	0	0	24
118148	2.7669999999999999	0	81033	0	0	24
118149	2.76799999999999979	0	81065	0	0	24
118150	2.76900000000000013	0	81097	0	0	24
118151	2.77000000000000002	0	81127	0	0	24
118152	2.77099999999999991	0	81159	0	0	24
118153	2.7719999999999998	0	81191	0	0	24
118154	2.77300000000000013	0	81223	0	0	24
118155	2.77400000000000002	0	81255	0	0	24
118156	2.77499999999999991	0	81287	0	0	24
118157	2.7759999999999998	0	81319	0	0	24
118158	2.77700000000000014	0	81351	0	0	24
118159	2.77800000000000002	0	81383	0	0	24
118160	2.77899999999999991	0	81415	0	0	24
118161	2.7799999999999998	0	81445	0	0	24
118162	2.78100000000000014	0	81477	0	0	24
118163	2.78200000000000003	0	81509	0	0	24
118164	2.78299999999999992	0	81541	0	0	24
118165	2.78399999999999981	0	81573	0	0	24
118166	2.78500000000000014	0	81605	0	0	24
118167	2.78600000000000003	0	81637	0	0	24
118168	2.78699999999999992	0	81669	0	0	24
118169	2.78799999999999981	0	81701	0	0	24
118170	2.78900000000000015	0	81733	0	0	24
118171	2.79000000000000004	0	81763	0	0	24
118172	2.79099999999999993	0	81795	0	0	24
118173	2.79199999999999982	0	81827	0	0	24
118174	2.79300000000000015	0	81859	0	0	24
118175	2.79400000000000004	0	81891	0	0	24
118176	2.79499999999999993	0	81923	0	0	24
118177	2.79599999999999982	0	81955	0	0	24
118178	2.79700000000000015	0	81987	0	0	24
118179	2.79800000000000004	0	82019	0	0	24
118180	2.79899999999999993	0	82051	0	0	24
118181	2.79999999999999982	0	82081	0	0	24
118182	2.80100000000000016	0	82112	0	0	24
118183	2.80200000000000005	0	82144	0	0	24
118184	2.80299999999999994	0	82176	0	0	24
118185	2.80399999999999983	0	82208	0	0	24
118186	2.80500000000000016	0	82240	0	0	24
118187	2.80600000000000005	0	82272	0	0	24
118188	2.80699999999999994	0	82304	0	0	24
118189	2.80799999999999983	0	82336	0	0	24
118190	2.80900000000000016	0	82368	0	0	24
118191	2.81000000000000005	0	82398	0	0	24
118192	2.81099999999999994	0	82430	0	0	24
118193	2.81199999999999983	0	82462	0	0	24
118194	2.81300000000000017	0	82494	0	0	24
118195	2.81400000000000006	0	82526	0	0	24
118196	2.81499999999999995	0	82558	0	0	24
118197	2.81599999999999984	0	82590	0	0	24
118198	2.81700000000000017	0	82622	0	0	24
118199	2.81800000000000006	0	82654	0	0	24
118200	2.81899999999999995	0	82686	0	0	24
118201	2.81999999999999984	0	82716	0	0	24
118202	2.82100000000000017	0	82748	0	0	24
118203	2.82200000000000006	0	82780	0	0	24
118204	2.82299999999999995	0	82812	0	0	24
118205	2.82399999999999984	0	82844	0	0	24
118206	2.82500000000000018	0	82876	0	0	24
118207	2.82600000000000007	0	82908	0	0	24
118208	2.82699999999999996	0	82940	0	0	24
118209	2.82799999999999985	0	82972	0	0	24
118210	2.82900000000000018	0	83004	0	0	24
118211	2.83000000000000007	0	83034	0	0	24
118212	2.83099999999999996	0	83066	0	0	24
118213	2.83199999999999985	0	83098	0	0	24
118214	2.83300000000000018	0	83130	0	0	24
118215	2.83400000000000007	0	83162	0	0	24
118216	2.83499999999999996	0	83194	0	0	24
118217	2.83599999999999985	0	83226	0	0	24
118218	2.83700000000000019	0	83258	0	0	24
118219	2.83800000000000008	0	83290	0	0	24
118220	2.83899999999999997	0	83322	0	0	24
118221	2.83999999999999986	0	83352	0	0	24
118222	2.84100000000000019	0	83384	0	0	24
118223	2.84200000000000008	0	83416	0	0	24
118224	2.84299999999999997	0	83448	0	0	24
118225	2.84399999999999986	0	83480	0	0	24
118226	2.8450000000000002	0	83512	0	0	24
118227	2.84600000000000009	0	83544	0	0	24
118228	2.84699999999999998	0	83576	0	0	24
118229	2.84799999999999986	0	83608	0	0	24
118230	2.8490000000000002	0	83640	0	0	24
118231	2.85000000000000009	0	83670	0	0	24
118232	2.85099999999999998	0	83701	0	0	24
118233	2.85199999999999987	0	83733	0	0	24
118234	2.8530000000000002	0	83765	0	0	24
118235	2.85400000000000009	0	83797	0	0	24
118236	2.85499999999999998	0	83829	0	0	24
118237	2.85599999999999987	0	83861	0	0	24
118238	2.85700000000000021	0	83893	0	0	24
118239	2.8580000000000001	0	83925	0	0	24
118240	2.85899999999999999	0	83957	0	0	24
118241	2.85999999999999988	0	83987	0	0	24
118242	2.86100000000000021	0	84019	0	0	24
118243	2.8620000000000001	0	84051	0	0	24
118244	2.86299999999999999	0	84083	0	0	24
118245	2.86399999999999988	0	84115	0	0	24
118246	2.86500000000000021	0	84147	0	0	24
118247	2.8660000000000001	0	84179	0	0	24
118248	2.86699999999999999	0	84211	0	0	24
118249	2.86799999999999988	0	84243	0	0	24
118250	2.86900000000000022	0	84275	0	0	24
118251	2.87000000000000011	0	84305	0	0	24
118252	2.871	0	84337	0	0	24
118253	2.87199999999999989	0	84369	0	0	24
118254	2.87300000000000022	0	84401	0	0	24
118255	2.87400000000000011	0	84433	0	0	24
118256	2.875	0	84465	0	0	24
118257	2.87599999999999989	0	84497	0	0	24
118258	2.87699999999999978	0	84529	0	0	24
118259	2.87800000000000011	0	84561	0	0	24
118260	2.879	0	84593	0	0	24
118261	2.87999999999999989	0	84623	0	0	24
118262	2.88099999999999978	0	84655	0	0	24
118263	2.88200000000000012	0	84687	0	0	24
118264	2.88300000000000001	0	84719	0	0	24
118265	2.8839999999999999	0	84751	0	0	24
118266	2.88499999999999979	0	84783	0	0	24
118267	2.88600000000000012	0	84815	0	0	24
118268	2.88700000000000001	0	84847	0	0	24
118269	2.8879999999999999	0	84879	0	0	24
118270	2.88899999999999979	0	84911	0	0	24
118271	2.89000000000000012	0	84941	0	0	24
118272	2.89100000000000001	0	84973	0	0	24
118273	2.8919999999999999	0	85005	0	0	24
118274	2.89299999999999979	0	85037	0	0	24
118275	2.89400000000000013	0	85069	0	0	24
118276	2.89500000000000002	0	85101	0	0	24
118277	2.89599999999999991	0	85133	0	0	24
118278	2.8969999999999998	0	85165	0	0	24
118279	2.89800000000000013	0	85197	0	0	24
118280	2.89900000000000002	0	85229	0	0	24
118281	2.89999999999999991	0	85259	0	0	24
118282	2.9009999999999998	0	85290	0	0	24
118283	2.90200000000000014	0	85322	0	0	24
118284	2.90300000000000002	0	85354	0	0	24
118285	2.90399999999999991	0	85386	0	0	24
118286	2.9049999999999998	0	85418	0	0	24
118287	2.90600000000000014	0	85450	0	0	24
118288	2.90700000000000003	0	85482	0	0	24
118289	2.90799999999999992	0	85514	0	0	24
118290	2.90899999999999981	0	85546	0	0	24
118291	2.91000000000000014	0	85576	0	0	24
118292	2.91100000000000003	0	85608	0	0	24
118293	2.91199999999999992	0	85640	0	0	24
118294	2.91299999999999981	0	85672	0	0	24
118295	2.91400000000000015	0	85704	0	0	24
118296	2.91500000000000004	0	85736	0	0	24
118297	2.91599999999999993	0	85768	0	0	24
118298	2.91699999999999982	0	85800	0	0	24
118299	2.91800000000000015	0	85832	0	0	24
118300	2.91900000000000004	0	85864	0	0	24
118301	2.91999999999999993	0	85894	0	0	24
118302	2.92099999999999982	0	85926	0	0	24
118303	2.92200000000000015	0	85958	0	0	24
118304	2.92300000000000004	0	85990	0	0	24
118305	2.92399999999999993	0	86022	0	0	24
118306	2.92499999999999982	0	86054	0	0	24
118307	2.92600000000000016	0	86086	0	0	24
118308	2.92700000000000005	0	86118	0	0	24
118309	2.92799999999999994	0	86150	0	0	24
118310	2.92899999999999983	0	86182	0	0	24
118311	2.93000000000000016	0	86212	0	0	24
118312	2.93100000000000005	0	86244	0	0	24
118313	2.93199999999999994	0	86276	0	0	24
118314	2.93299999999999983	0	86308	0	0	24
118315	2.93400000000000016	0	86340	0	0	24
118316	2.93500000000000005	0	86372	0	0	24
118317	2.93599999999999994	0	86404	0	0	24
118318	2.93699999999999983	0	86436	0	0	24
118319	2.93800000000000017	0	86468	0	0	24
118320	2.93900000000000006	0	86500	0	0	24
118321	2.93999999999999995	0	86530	0	0	24
118322	2.94099999999999984	0	86562	0	0	24
118323	2.94200000000000017	0	86594	0	0	24
118324	2.94300000000000006	0	86626	0	0	24
118325	2.94399999999999995	0	86658	0	0	24
118326	2.94499999999999984	0	86690	0	0	24
118327	2.94600000000000017	0	86722	0	0	24
118328	2.94700000000000006	0	86754	0	0	24
118329	2.94799999999999995	0	86786	0	0	24
118330	2.94899999999999984	0	86818	0	0	24
118331	2.95000000000000018	0	86848	0	0	24
118332	2.95100000000000007	0	86879	0	0	24
118333	2.95199999999999996	0	86911	0	0	24
118334	2.95299999999999985	0	86943	0	0	24
118335	2.95400000000000018	0	86975	0	0	24
118336	2.95500000000000007	0	87007	0	0	24
118337	2.95599999999999996	0	87039	0	0	24
118338	2.95699999999999985	0	87071	0	0	24
118339	2.95800000000000018	0	87103	0	0	24
118340	2.95900000000000007	0	87135	0	0	24
118341	2.95999999999999996	0	87165	0	0	24
118342	2.96099999999999985	0	87197	0	0	24
118343	2.96200000000000019	0	87229	0	0	24
118344	2.96300000000000008	0	87261	0	0	24
118345	2.96399999999999997	0	87293	0	0	24
118346	2.96499999999999986	0	87325	0	0	24
118347	2.96600000000000019	0	87357	0	0	24
118348	2.96700000000000008	0	87389	0	0	24
118349	2.96799999999999997	0	87421	0	0	24
118350	2.96899999999999986	0	87453	0	0	24
118351	2.9700000000000002	0	87483	0	0	24
118352	2.97100000000000009	0	87515	0	0	24
118353	2.97199999999999998	0	87547	0	0	24
118354	2.97299999999999986	0	87579	0	0	24
118355	2.9740000000000002	0	87611	0	0	24
118356	2.97500000000000009	0	87643	0	0	24
118357	2.97599999999999998	0	87675	0	0	24
118358	2.97699999999999987	0	87707	0	0	24
118359	2.9780000000000002	0	87739	0	0	24
118360	2.97900000000000009	0	87771	0	0	24
118361	2.97999999999999998	0	87801	0	0	24
118362	2.98099999999999987	0	87833	0	0	24
118363	2.98200000000000021	0	87865	0	0	24
118364	2.9830000000000001	0	87897	0	0	24
118365	2.98399999999999999	0	87929	0	0	24
118366	2.98499999999999988	0	87961	0	0	24
118367	2.98600000000000021	0	87993	0	0	24
118368	2.9870000000000001	0	88025	0	0	24
118369	2.98799999999999999	0	88057	0	0	24
118370	2.98899999999999988	0	88089	0	0	24
118371	2.99000000000000021	0	88119	0	0	24
118372	2.9910000000000001	0	88151	0	0	24
118373	2.99199999999999999	0	88183	0	0	24
118374	2.99299999999999988	0	88215	0	0	24
118375	2.99400000000000022	0	88247	0	0	24
118376	2.99500000000000011	0	88279	0	0	24
118377	2.996	0	88311	0	0	24
118378	2.99699999999999989	0	88343	0	0	24
118379	2.99800000000000022	0	88375	0	0	24
118380	2.99900000000000011	0	88407	0	0	24
118381	3	0	88437	0	0	24
118382	3.00099999999999989	0	88468	0	0	24
118383	3.00199999999999978	0	88500	0	0	24
118384	3.00300000000000011	0	88532	0	0	24
118385	3.004	0	88564	0	0	24
118386	3.00499999999999989	0	88596	0	0	24
118387	3.00599999999999978	0	88628	0	0	24
118388	3.00700000000000012	0	88660	0	0	24
118389	3.00800000000000001	0	88692	0	0	24
118390	3.0089999999999999	0	88724	0	0	24
118391	3.00999999999999979	0	88754	0	0	24
118392	3.01100000000000012	0	88786	0	0	24
118393	3.01200000000000001	0	88818	0	0	24
118394	3.0129999999999999	0	88850	0	0	24
118395	3.01399999999999979	0	88882	0	0	24
118396	3.01500000000000012	0	88914	0	0	24
118397	3.01600000000000001	0	88946	0	0	24
118398	3.0169999999999999	0	88978	0	0	24
118399	3.01799999999999979	0	89010	0	0	24
118400	3.01900000000000013	0	89042	0	0	24
118401	3.02000000000000002	0	89072	0	0	24
118402	3.02099999999999991	0	89104	0	0	24
118403	3.0219999999999998	0	89136	0	0	24
118404	3.02300000000000013	0	89168	0	0	24
118405	3.02400000000000002	0	89200	0	0	24
118406	3.02499999999999991	0	89232	0	0	24
118407	3.0259999999999998	0	89264	0	0	24
118408	3.02700000000000014	0	89296	0	0	24
118409	3.02800000000000002	0	89328	0	0	24
118410	3.02899999999999991	0	89360	0	0	24
118411	3.0299999999999998	0	89390	0	0	24
118412	3.03100000000000014	0	89422	0	0	24
118413	3.03200000000000003	0	89454	0	0	24
118414	3.03299999999999992	0	89486	0	0	24
118415	3.03399999999999981	0	89518	0	0	24
118416	3.03500000000000014	0	89550	0	0	24
118417	3.03600000000000003	0	89582	0	0	24
118418	3.03699999999999992	0	89614	0	0	24
118419	3.03799999999999981	0	89646	0	0	24
118420	3.03900000000000015	0	89678	0	0	24
118421	3.04000000000000004	0	89708	0	0	24
118422	3.04099999999999993	0	89740	0	0	24
118423	3.04199999999999982	0	89772	0	0	24
118424	3.04300000000000015	0	89804	0	0	24
118425	3.04400000000000004	0	89836	0	0	24
118426	3.04499999999999993	0	89868	0	0	24
118427	3.04599999999999982	0	89900	0	0	24
118428	3.04700000000000015	0	89932	0	0	24
118429	3.04800000000000004	0	89964	0	0	24
118430	3.04899999999999993	0	89996	0	0	24
118431	3.04999999999999982	0	90026	0	0	24
118432	3.05100000000000016	0	90057	0	0	24
118433	3.05200000000000005	0	90089	0	0	24
118434	3.05299999999999994	0	90121	0	0	24
118435	3.05399999999999983	0	90153	0	0	24
118436	3.05500000000000016	0	90185	0	0	24
118437	3.05600000000000005	0	90217	0	0	24
118438	3.05699999999999994	0	90249	0	0	24
118439	3.05799999999999983	0	90281	0	0	24
118440	3.05900000000000016	0	90313	0	0	24
118441	3.06000000000000005	0	90343	0	0	24
118442	3.06099999999999994	0	90375	0	0	24
118443	3.06199999999999983	0	90407	0	0	24
118444	3.06300000000000017	0	90439	0	0	24
118445	3.06400000000000006	0	90471	0	0	24
118446	3.06499999999999995	0	90503	0	0	24
118447	3.06599999999999984	0	90535	0	0	24
118448	3.06700000000000017	0	90567	0	0	24
118449	3.06800000000000006	0	90599	0	0	24
118450	3.06899999999999995	0	90631	0	0	24
118451	3.06999999999999984	0	90661	0	0	24
118452	3.07100000000000017	0	90693	0	0	24
118453	3.07200000000000006	0	90725	0	0	24
118454	3.07299999999999995	0	90757	0	0	24
118455	3.07399999999999984	0	90789	0	0	24
118456	3.07500000000000018	0	90821	0	0	24
118457	3.07600000000000007	0	90853	0	0	24
118458	3.07699999999999996	0	90885	0	0	24
118459	3.07799999999999985	0	90917	0	0	24
118460	3.07900000000000018	0	90949	0	0	24
118461	3.08000000000000007	0	90979	0	0	24
118462	3.08099999999999996	0	91011	0	0	24
118463	3.08199999999999985	0	91043	0	0	24
118464	3.08300000000000018	0	91075	0	0	24
118465	3.08400000000000007	0	91107	0	0	24
118466	3.08499999999999996	0	91139	0	0	24
118467	3.08599999999999985	0	91171	0	0	24
118468	3.08700000000000019	0	91203	0	0	24
118469	3.08800000000000008	0	91235	0	0	24
118470	3.08899999999999997	0	91267	0	0	24
118471	3.08999999999999986	0	91297	0	0	24
118472	3.09100000000000019	0	91329	0	0	24
118473	3.09200000000000008	0	91361	0	0	24
118474	3.09299999999999997	0	91393	0	0	24
118475	3.09399999999999986	0	91425	0	0	24
118476	3.0950000000000002	0	91457	0	0	24
118477	3.09600000000000009	0	91489	0	0	24
118478	3.09699999999999998	0	91521	0	0	24
118479	3.09799999999999986	0	91553	0	0	24
118480	3.0990000000000002	0	91585	0	0	24
118481	3.10000000000000009	0	91615	0	0	24
118482	3.10099999999999998	0	91646	0	0	24
118483	3.10199999999999987	0	91678	0	0	24
118484	3.1030000000000002	0	91710	0	0	24
118485	3.10400000000000009	0	91742	0	0	24
118486	3.10499999999999998	0	91774	0	0	24
118487	3.10599999999999987	0	91806	0	0	24
118488	3.10700000000000021	0	91838	0	0	24
118489	3.1080000000000001	0	91870	0	0	24
118490	3.10899999999999999	0	91902	0	0	24
118491	3.10999999999999988	0	91932	0	0	24
118492	3.11100000000000021	0	91964	0	0	24
118493	3.1120000000000001	0	91996	0	0	24
118494	3.11299999999999999	0	92028	0	0	24
118495	3.11399999999999988	0	92060	0	0	24
118496	3.11500000000000021	0	92092	0	0	24
118497	3.1160000000000001	0	92124	0	0	24
118498	3.11699999999999999	0	92156	0	0	24
118499	3.11799999999999988	0	92188	0	0	24
118500	3.11900000000000022	0	92220	0	0	24
118501	3.12000000000000011	0	92250	0	0	24
118502	3.121	0	92282	0	0	24
118503	3.12199999999999989	0	92314	0	0	24
118504	3.12300000000000022	0	92346	0	0	24
118505	3.12400000000000011	0	92378	0	0	24
118506	3.125	0	92410	0	0	24
118507	3.12599999999999989	0	92442	0	0	24
118508	3.12699999999999978	0	92474	0	0	24
118509	3.12800000000000011	0	92506	0	0	24
118510	3.129	0	92538	0	0	24
118511	3.12999999999999989	0	92568	0	0	24
118512	3.13099999999999978	0	92600	0	0	24
118513	3.13200000000000012	0	92632	0	0	24
118514	3.13300000000000001	0	92664	0	0	24
118515	3.1339999999999999	0	92696	0	0	24
118516	3.13499999999999979	0	92728	0	0	24
118517	3.13600000000000012	0	92760	0	0	24
118518	3.13700000000000001	0	92792	0	0	24
118519	3.1379999999999999	0	92824	0	0	24
118520	3.13899999999999979	0	92856	0	0	24
118521	3.14000000000000012	0	92886	0	0	24
118522	3.14100000000000001	0	92918	0	0	24
118523	3.1419999999999999	0	92950	0	0	24
118524	3.14299999999999979	0	92982	0	0	24
118525	3.14400000000000013	0	93014	0	0	24
118526	3.14500000000000002	0	93046	0	0	24
118527	3.14599999999999991	0	93078	0	0	24
118528	3.1469999999999998	0	93110	0	0	24
118529	3.14800000000000013	0	93142	0	0	24
118530	3.14900000000000002	0	93174	0	0	24
118531	3.14999999999999991	0	93204	0	0	24
118532	3.1509999999999998	0	93235	0	0	24
118533	3.15200000000000014	0	93267	0	0	24
118534	3.15300000000000002	0	93299	0	0	24
118535	3.15399999999999991	0	93331	0	0	24
118536	3.1549999999999998	0	93363	0	0	24
118537	3.15600000000000014	0	93395	0	0	24
118538	3.15700000000000003	0	93427	0	0	24
118539	3.15799999999999992	0	93459	0	0	24
118540	3.15899999999999981	0	93491	0	0	24
118541	3.16000000000000014	0	93521	0	0	24
118542	3.16100000000000003	0	93553	0	0	24
118543	3.16199999999999992	0	93585	0	0	24
118544	3.16299999999999981	0	93617	0	0	24
118545	3.16400000000000015	0	93649	0	0	24
118546	3.16500000000000004	0	93681	0	0	24
118547	3.16599999999999993	0	93713	0	0	24
118548	3.16699999999999982	0	93745	0	0	24
118549	3.16800000000000015	0	93777	0	0	24
118550	3.16900000000000004	0	93809	0	0	24
118551	3.16999999999999993	0	93839	0	0	24
118552	3.17099999999999982	0	93871	0	0	24
118553	3.17200000000000015	0	93903	0	0	24
118554	3.17300000000000004	0	93935	0	0	24
118555	3.17399999999999993	0	93967	0	0	24
118556	3.17499999999999982	0	93999	0	0	24
118557	3.17600000000000016	0	94031	0	0	24
118558	3.17700000000000005	0	94063	0	0	24
118559	3.17799999999999994	0	94095	0	0	24
118560	3.17899999999999983	0	94127	0	0	24
118561	3.18000000000000016	0	94157	0	0	24
118562	3.18100000000000005	0	94189	0	0	24
118563	3.18199999999999994	0	94221	0	0	24
118564	3.18299999999999983	0	94253	0	0	24
118565	3.18400000000000016	0	94285	0	0	24
118566	3.18500000000000005	0	94317	0	0	24
118567	3.18599999999999994	0	94349	0	0	24
118568	3.18699999999999983	0	94381	0	0	24
118569	3.18800000000000017	0	94413	0	0	24
118570	3.18900000000000006	0	94445	0	0	24
118571	3.18999999999999995	0	94475	0	0	24
118572	3.19099999999999984	0	94507	0	0	24
118573	3.19200000000000017	0	94539	0	0	24
118574	3.19300000000000006	0	94571	0	0	24
118575	3.19399999999999995	0	94603	0	0	24
118576	3.19499999999999984	0	94635	0	0	24
118577	3.19600000000000017	0	94667	0	0	24
118578	3.19700000000000006	0	94699	0	0	24
118579	3.19799999999999995	0	94731	0	0	24
118580	3.19899999999999984	0	94763	0	0	24
118581	3.20000000000000018	0	94793	0	0	24
118582	3.20100000000000007	0	94824	0	0	24
118583	3.20199999999999996	0	94856	0	0	24
118584	3.20299999999999985	0	94888	0	0	24
118585	3.20400000000000018	0	94920	0	0	24
118586	3.20500000000000007	0	94952	0	0	24
118587	3.20599999999999996	0	94984	0	0	24
118588	3.20699999999999985	0	95016	0	0	24
118589	3.20800000000000018	0	95048	0	0	24
118590	3.20900000000000007	0	95080	0	0	24
118591	3.20999999999999996	0	95110	0	0	24
118592	3.21099999999999985	0	95142	0	0	24
118593	3.21200000000000019	0	95174	0	0	24
118594	3.21300000000000008	0	95206	0	0	24
118595	3.21399999999999997	0	95238	0	0	24
118596	3.21499999999999986	0	95270	0	0	24
118597	3.21600000000000019	0	95302	0	0	24
118598	3.21700000000000008	0	95334	0	0	24
118599	3.21799999999999997	0	95366	0	0	24
118600	3.21899999999999986	0	95398	0	0	24
118601	3.2200000000000002	0	95428	0	0	24
118602	3.22100000000000009	0	95460	0	0	24
118603	3.22199999999999998	0	95492	0	0	24
118604	3.22299999999999986	0	95524	0	0	24
118605	3.2240000000000002	0	95556	0	0	24
118606	3.22500000000000009	0	95588	0	0	24
118607	3.22599999999999998	0	95620	0	0	24
118608	3.22699999999999987	0	95652	0	0	24
118609	3.2280000000000002	0	95684	0	0	24
118610	3.22900000000000009	0	95716	0	0	24
118611	3.22999999999999998	0	95746	0	0	24
118612	3.23099999999999987	0	95778	0	0	24
118613	3.23200000000000021	0	95810	0	0	24
118614	3.2330000000000001	0	95842	0	0	24
118615	3.23399999999999999	0	95874	0	0	24
118616	3.23499999999999988	0	95906	0	0	24
118617	3.23600000000000021	0	95938	0	0	24
118618	3.2370000000000001	0	95970	0	0	24
118619	3.23799999999999999	0	96002	0	0	24
118620	3.23899999999999988	0	96034	0	0	24
118621	3.24000000000000021	0	96064	0	0	24
118622	3.2410000000000001	0	96096	0	0	24
118623	3.24199999999999999	0	96128	0	0	24
118624	3.24299999999999988	0	96160	0	0	24
118625	3.24400000000000022	0	96192	0	0	24
118626	3.24500000000000011	0	96224	0	0	24
118627	3.246	0	96256	0	0	24
118628	3.24699999999999989	0	96288	0	0	24
118629	3.24800000000000022	0	96320	0	0	24
118630	3.24900000000000011	0	96352	0	0	24
118631	3.25	0	96382	0	0	24
118632	3.25099999999999989	0	96413	0	0	24
118633	3.25199999999999978	0	96445	0	0	24
118634	3.25300000000000011	0	96477	0	0	24
118635	3.254	0	96509	0	0	24
118636	3.25499999999999989	0	96541	0	0	24
118637	3.25599999999999978	0	96573	0	0	24
118638	3.25700000000000012	0	96605	0	0	24
118639	3.25800000000000001	0	96637	0	0	24
118640	3.2589999999999999	0	96669	0	0	24
118641	3.25999999999999979	0	96699	0	0	24
118642	3.26100000000000012	0	96731	0	0	24
118643	3.26200000000000001	0	96763	0	0	24
118644	3.2629999999999999	0	96795	0	0	24
118645	3.26399999999999979	0	96827	0	0	24
118646	3.26500000000000012	0	96859	0	0	24
118647	3.26600000000000001	0	96891	0	0	24
118648	3.2669999999999999	0	96923	0	0	24
118649	3.26799999999999979	0	96955	0	0	24
118650	3.26900000000000013	0	96987	0	0	24
118651	3.27000000000000002	0	97017	0	0	24
118652	3.27099999999999991	0	97049	0	0	24
118653	3.2719999999999998	0	97081	0	0	24
118654	3.27300000000000013	0	97113	0	0	24
118655	3.27400000000000002	0	97145	0	0	24
118656	3.27499999999999991	0	97177	0	0	24
118657	3.2759999999999998	0	97209	0	0	24
118658	3.27700000000000014	0	97241	0	0	24
118659	3.27800000000000002	0	97273	0	0	24
118660	3.27899999999999991	0	97305	0	0	24
118661	3.2799999999999998	0	97335	0	0	24
118662	3.28100000000000014	0	97367	0	0	24
118663	3.28200000000000003	0	97399	0	0	24
118664	3.28299999999999992	0	97431	0	0	24
118665	3.28399999999999981	0	97463	0	0	24
118666	3.28500000000000014	0	97495	0	0	24
118667	3.28600000000000003	0	97527	0	0	24
118668	3.28699999999999992	0	97559	0	0	24
118669	3.28799999999999981	0	97591	0	0	24
118670	3.28900000000000015	0	97623	0	0	24
118671	3.29000000000000004	0	97653	0	0	24
118672	3.29099999999999993	0	97685	0	0	24
118673	3.29199999999999982	0	97717	0	0	24
118674	3.29300000000000015	0	97749	0	0	24
118675	3.29400000000000004	0	97781	0	0	24
118676	3.29499999999999993	0	97813	0	0	24
118677	3.29599999999999982	0	97845	0	0	24
118678	3.29700000000000015	0	97877	0	0	24
118679	3.29800000000000004	0	97909	0	0	24
118680	3.29899999999999993	0	97941	0	0	24
118681	3.29999999999999982	0	97971	0	0	24
118682	3.30100000000000016	0	98002	0	0	24
118683	3.30200000000000005	0	98034	0	0	24
118684	3.30299999999999994	0	98066	0	0	24
118685	3.30399999999999983	0	98098	0	0	24
118686	3.30500000000000016	0	98130	0	0	24
118687	3.30600000000000005	0	98162	0	0	24
118688	3.30699999999999994	0	98194	0	0	24
118689	3.30799999999999983	0	98226	0	0	24
118690	3.30900000000000016	0	98258	0	0	24
118691	3.31000000000000005	0	98288	0	0	24
118692	3.31099999999999994	0	98320	0	0	24
118693	3.31199999999999983	0	98352	0	0	24
118694	3.31300000000000017	0	98384	0	0	24
118695	3.31400000000000006	0	98416	0	0	24
118696	3.31499999999999995	0	98448	0	0	24
118697	3.31599999999999984	0	98480	0	0	24
118698	3.31700000000000017	0	98512	0	0	24
118699	3.31800000000000006	0	98544	0	0	24
118700	3.31899999999999995	0	98576	0	0	24
118701	3.31999999999999984	0	98606	0	0	24
118702	3.32100000000000017	0	98638	0	0	24
118703	3.32200000000000006	0	98670	0	0	24
118704	3.32299999999999995	0	98702	0	0	24
118705	3.32399999999999984	0	98734	0	0	24
118706	3.32500000000000018	0	98766	0	0	24
118707	3.32600000000000007	0	98798	0	0	24
118708	3.32699999999999996	0	98830	0	0	24
118709	3.32799999999999985	0	98862	0	0	24
118710	3.32900000000000018	0	98894	0	0	24
118711	3.33000000000000007	0	98924	0	0	24
118712	3.33099999999999996	0	98956	0	0	24
118713	3.33199999999999985	0	98988	0	0	24
118714	3.33300000000000018	0	99020	0	0	24
118715	3.33400000000000007	0	99052	0	0	24
118716	3.33499999999999996	0	99084	0	0	24
118717	3.33599999999999985	0	99116	0	0	24
118718	3.33700000000000019	0	99148	0	0	24
118719	3.33800000000000008	0	99180	0	0	24
118720	3.33899999999999997	0	99212	0	0	24
118721	3.33999999999999986	0	99242	0	0	24
118722	3.34100000000000019	0	99274	0	0	24
118723	3.34200000000000008	0	99306	0	0	24
118724	3.34299999999999997	0	99338	0	0	24
118725	3.34399999999999986	0	99370	0	0	24
118726	3.3450000000000002	0	99402	0	0	24
118727	3.34600000000000009	0	99434	0	0	24
118728	3.34699999999999998	0	99466	0	0	24
118729	3.34799999999999986	0	99498	0	0	24
118730	3.3490000000000002	0	99530	0	0	24
118731	3.35000000000000009	0	99560	0	0	24
118732	3.35099999999999998	0	99591	0	0	24
118733	3.35199999999999987	0	99623	0	0	24
118734	3.3530000000000002	0	99655	0	0	24
118735	3.35400000000000009	0	99687	0	0	24
118736	3.35499999999999998	0	99719	0	0	24
118737	3.35599999999999987	0	99751	0	0	24
118738	3.35700000000000021	0	99783	0	0	24
118739	3.3580000000000001	0	99815	0	0	24
118740	3.35899999999999999	0	99847	0	0	24
118741	3.35999999999999988	0	99877	0	0	24
118742	3.36100000000000021	0	99909	0	0	24
118743	3.3620000000000001	0	99941	0	0	24
118744	3.36299999999999999	0	99973	0	0	24
118745	3.36399999999999988	0	100005	0	0	24
118746	3.36500000000000021	0	100037	0	0	24
118747	3.3660000000000001	0	100069	0	0	24
118748	3.36699999999999999	0	100101	0	0	24
118749	3.36799999999999988	0	100133	0	0	24
118750	3.36900000000000022	0	100165	0	0	24
118751	3.37000000000000011	0	100195	0	0	24
118752	3.371	0	100227	0	0	24
118753	3.37199999999999989	0	100259	0	0	24
118754	3.37300000000000022	0	100291	0	0	24
118755	3.37400000000000011	0	100323	0	0	24
118756	3.375	0	100355	0	0	24
118757	3.37599999999999989	0	100387	0	0	24
118758	3.37699999999999978	0	100419	0	0	24
118759	3.37800000000000011	0	100451	0	0	24
118760	3.379	0	100483	0	0	24
118761	3.37999999999999989	0	100513	0	0	24
118762	3.38099999999999978	0	100545	0	0	24
118763	3.38200000000000012	0	100577	0	0	24
118764	3.38300000000000001	0	100609	0	0	24
118765	3.3839999999999999	0	100641	0	0	24
118766	3.38499999999999979	0	100673	0	0	24
118767	3.38600000000000012	0	100705	0	0	24
118768	3.38700000000000001	0	100737	0	0	24
118769	3.3879999999999999	0	100769	0	0	24
118770	3.38899999999999979	0	100801	0	0	24
118771	3.39000000000000012	0	100831	0	0	24
118772	3.39100000000000001	0	100863	0	0	24
118773	3.3919999999999999	0	100895	0	0	24
118774	3.39299999999999979	0	100927	0	0	24
118775	3.39400000000000013	0	100959	0	0	24
118776	3.39500000000000002	0	100991	0	0	24
118777	3.39599999999999991	0	101023	0	0	24
118778	3.3969999999999998	0	101055	0	0	24
118779	3.39800000000000013	0	101087	0	0	24
118780	3.39900000000000002	0	101119	0	0	24
118781	3.39999999999999991	0	101149	0	0	24
118782	3.4009999999999998	0	101180	0	0	24
118783	3.40200000000000014	0	101212	0	0	24
118784	3.40300000000000002	0	101244	0	0	24
118785	3.40399999999999991	0	101276	0	0	24
118786	3.4049999999999998	0	101308	0	0	24
118787	3.40600000000000014	0	101340	0	0	24
118788	3.40700000000000003	0	101372	0	0	24
118789	3.40799999999999992	0	101404	0	0	24
118790	3.40899999999999981	0	101436	0	0	24
118791	3.41000000000000014	0	101466	0	0	24
118792	3.41100000000000003	0	101498	0	0	24
118793	3.41199999999999992	0	101530	0	0	24
118794	3.41299999999999981	0	101562	0	0	24
118795	3.41400000000000015	0	101594	0	0	24
118796	3.41500000000000004	0	101626	0	0	24
118797	3.41599999999999993	0	101658	0	0	24
118798	3.41699999999999982	0	101690	0	0	24
118799	3.41800000000000015	0	101722	0	0	24
118800	3.41900000000000004	0	101754	0	0	24
118801	3.41999999999999993	0	101784	0	0	24
118802	3.42099999999999982	0	101816	0	0	24
118803	3.42200000000000015	0	101848	0	0	24
118804	3.42300000000000004	0	101880	0	0	24
118805	3.42399999999999993	0	101912	0	0	24
118806	3.42499999999999982	0	101944	0	0	24
118807	3.42600000000000016	0	101976	0	0	24
118808	3.42700000000000005	0	102008	0	0	24
118809	3.42799999999999994	0	102040	0	0	24
118810	3.42899999999999983	0	102072	0	0	24
118811	3.43000000000000016	0	102102	0	0	24
118812	3.43100000000000005	0	102134	0	0	24
118813	3.43199999999999994	0	102166	0	0	24
118814	3.43299999999999983	0	102198	0	0	24
118815	3.43400000000000016	0	102230	0	0	24
118816	3.43500000000000005	0	102262	0	0	24
118817	3.43599999999999994	0	102294	0	0	24
118818	3.43699999999999983	0	102326	0	0	24
118819	3.43800000000000017	0	102358	0	0	24
118820	3.43900000000000006	0	102390	0	0	24
118821	3.43999999999999995	0	102420	0	0	24
118822	3.44099999999999984	0	102452	0	0	24
118823	3.44200000000000017	0	102484	0	0	24
118824	3.44300000000000006	0	102516	0	0	24
118825	3.44399999999999995	0	102548	0	0	24
118826	3.44499999999999984	0	102580	0	0	24
118827	3.44600000000000017	0	102612	0	0	24
118828	3.44700000000000006	0	102644	0	0	24
118829	3.44799999999999995	0	102676	0	0	24
118830	3.44899999999999984	0	102708	0	0	24
118831	3.45000000000000018	0	102738	0	0	24
118832	3.45100000000000007	0	102769	0	0	24
118833	3.45199999999999996	0	102801	0	0	24
118834	3.45299999999999985	0	102833	0	0	24
118835	3.45400000000000018	0	102865	0	0	24
118836	3.45500000000000007	0	102897	0	0	24
118837	3.45599999999999996	0	102929	0	0	24
118838	3.45699999999999985	0	102961	0	0	24
118839	3.45800000000000018	0	102993	0	0	24
118840	3.45900000000000007	0	103025	0	0	24
118841	3.45999999999999996	0	103055	0	0	24
118842	3.46099999999999985	0	103087	0	0	24
118843	3.46200000000000019	0	103119	0	0	24
118844	3.46300000000000008	0	103151	0	0	24
118845	3.46399999999999997	0	103183	0	0	24
118846	3.46499999999999986	0	103215	0	0	24
118847	3.46600000000000019	0	103247	0	0	24
118848	3.46700000000000008	0	103279	0	0	24
118849	3.46799999999999997	0	103311	0	0	24
118850	3.46899999999999986	0	103343	0	0	24
118851	3.4700000000000002	0	103373	0	0	24
118852	3.47100000000000009	0	103405	0	0	24
118853	3.47199999999999998	0	103437	0	0	24
118854	3.47299999999999986	0	103469	0	0	24
118855	3.4740000000000002	0	103501	0	0	24
118856	3.47500000000000009	0	103533	0	0	24
118857	3.47599999999999998	0	103565	0	0	24
118858	3.47699999999999987	0	103597	0	0	24
118859	3.4780000000000002	0	103629	0	0	24
118860	3.47900000000000009	0	103661	0	0	24
118861	3.47999999999999998	0	103691	0	0	24
118862	3.48099999999999987	0	103723	0	0	24
118863	3.48200000000000021	0	103755	0	0	24
118864	3.4830000000000001	0	103787	0	0	24
118865	3.48399999999999999	0	103819	0	0	24
118866	3.48499999999999988	0	103851	0	0	24
118867	3.48600000000000021	0	103883	0	0	24
118868	3.4870000000000001	0	103915	0	0	24
118869	3.48799999999999999	0	103947	0	0	24
118870	3.48899999999999988	0	103979	0	0	24
118871	3.49000000000000021	0	104009	0	0	24
118872	3.4910000000000001	0	104041	0	0	24
118873	3.49199999999999999	0	104073	0	0	24
118874	3.49299999999999988	0	104105	0	0	24
118875	3.49400000000000022	0	104137	0	0	24
118876	3.49500000000000011	0	104169	0	0	24
118877	3.496	0	104201	0	0	24
118878	3.49699999999999989	0	104233	0	0	24
118879	3.49800000000000022	0	104265	0	0	24
118880	3.49900000000000011	0	104297	0	0	24
118881	3.5	0	104327	0	0	24
118882	3.50099999999999989	0	104358	0	0	24
118883	3.50199999999999978	0	104390	0	0	24
118884	3.50300000000000011	0	104422	0	0	24
118885	3.504	0	104454	0	0	24
118886	3.50499999999999989	0	104486	0	0	24
118887	3.50599999999999978	0	104518	0	0	24
118888	3.50700000000000012	0	104550	0	0	24
118889	3.50800000000000001	0	104582	0	0	24
118890	3.5089999999999999	0	104614	0	0	24
118891	3.50999999999999979	0	104644	0	0	24
118892	3.51100000000000012	0	104676	0	0	24
118893	3.51200000000000001	0	104708	0	0	24
118894	3.5129999999999999	0	104740	0	0	24
118895	3.51399999999999979	0	104772	0	0	24
118896	3.51500000000000012	0	104804	0	0	24
118897	3.51600000000000001	0	104836	0	0	24
118898	3.5169999999999999	0	104868	0	0	24
118899	3.51799999999999979	0	104900	0	0	24
118900	3.51900000000000013	0	104932	0	0	24
118901	3.52000000000000002	0	104962	0	0	24
118902	3.52099999999999991	0	104994	0	0	24
118903	3.5219999999999998	0	105026	0	0	24
118904	3.52300000000000013	0	105058	0	0	24
118905	3.52400000000000002	0	105090	0	0	24
118906	3.52499999999999991	0	105122	0	0	24
118907	3.5259999999999998	0	105154	0	0	24
118908	3.52700000000000014	0	105186	0	0	24
118909	3.52800000000000002	0	105218	0	0	24
118910	3.52899999999999991	0	105250	0	0	24
118911	3.5299999999999998	0	105280	0	0	24
118912	3.53100000000000014	0	105312	0	0	24
118913	3.53200000000000003	0	105344	0	0	24
118914	3.53299999999999992	0	105376	0	0	24
118915	3.53399999999999981	0	105408	0	0	24
118916	3.53500000000000014	0	105440	0	0	24
118917	3.53600000000000003	0	105472	0	0	24
118918	3.53699999999999992	0	105504	0	0	24
118919	3.53799999999999981	0	105536	0	0	24
118920	3.53900000000000015	0	105568	0	0	24
118921	3.54000000000000004	0	105598	0	0	24
118922	3.54099999999999993	0	105630	0	0	24
118923	3.54199999999999982	0	105662	0	0	24
118924	3.54300000000000015	0	105694	0	0	24
118925	3.54400000000000004	0	105726	0	0	24
118926	3.54499999999999993	0	105758	0	0	24
118927	3.54599999999999982	0	105790	0	0	24
118928	3.54700000000000015	0	105822	0	0	24
118929	3.54800000000000004	0	105854	0	0	24
118930	3.54899999999999993	0	105886	0	0	24
118931	3.54999999999999982	0	105916	0	0	24
118932	3.55100000000000016	0	105947	0	0	24
118933	3.55200000000000005	0	105979	0	0	24
118934	3.55299999999999994	0	106011	0	0	24
118935	3.55399999999999983	0	106043	0	0	24
118936	3.55500000000000016	0	106075	0	0	24
118937	3.55600000000000005	0	106107	0	0	24
118938	3.55699999999999994	0	106139	0	0	24
118939	3.55799999999999983	0	106171	0	0	24
118940	3.55900000000000016	0	106203	0	0	24
118941	3.56000000000000005	0	106233	0	0	24
118942	3.56099999999999994	0	106265	0	0	24
118943	3.56199999999999983	0	106297	0	0	24
118944	3.56300000000000017	0	106329	0	0	24
118945	3.56400000000000006	0	106361	0	0	24
118946	3.56499999999999995	0	106393	0	0	24
118947	3.56599999999999984	0	106425	0	0	24
118948	3.56700000000000017	0	106457	0	0	24
118949	3.56800000000000006	0	106489	0	0	24
118950	3.56899999999999995	0	106521	0	0	24
118951	3.56999999999999984	0	106551	0	0	24
118952	3.57100000000000017	0	106583	0	0	24
118953	3.57200000000000006	0	106615	0	0	24
118954	3.57299999999999995	0	106647	0	0	24
118955	3.57399999999999984	0	106679	0	0	24
118956	3.57500000000000018	0	106711	0	0	24
118957	3.57600000000000007	0	106743	0	0	24
118958	3.57699999999999996	0	106775	0	0	24
118959	3.57799999999999985	0	106807	0	0	24
118960	3.57900000000000018	0	106839	0	0	24
118961	3.58000000000000007	0	106869	0	0	24
118962	3.58099999999999996	0	106901	0	0	24
118963	3.58199999999999985	0	106933	0	0	24
118964	3.58300000000000018	0	106965	0	0	24
118965	3.58400000000000007	0	106997	0	0	24
118966	3.58499999999999996	0	107029	0	0	24
118967	3.58599999999999985	0	107061	0	0	24
118968	3.58700000000000019	0	107093	0	0	24
118969	3.58800000000000008	0	107125	0	0	24
118970	3.58899999999999997	0	107157	0	0	24
118971	3.58999999999999986	0	107187	0	0	24
118972	3.59100000000000019	0	107219	0	0	24
118973	3.59200000000000008	0	107251	0	0	24
118974	3.59299999999999997	0	107283	0	0	24
118975	3.59399999999999986	0	107315	0	0	24
118976	3.5950000000000002	0	107347	0	0	24
118977	3.59600000000000009	0	107379	0	0	24
118978	3.59699999999999998	0	107411	0	0	24
118979	3.59799999999999986	0	107443	0	0	24
118980	3.5990000000000002	0	107475	0	0	24
118981	3.60000000000000009	0	107505	0	0	24
118982	3.60099999999999998	0	107536	0	0	24
118983	3.60199999999999987	0	107568	0	0	24
118984	3.6030000000000002	0	107600	0	0	24
118985	3.60400000000000009	0	107632	0	0	24
118986	3.60499999999999998	0	107664	0	0	24
118987	3.60599999999999987	0	107696	0	0	24
118988	3.60700000000000021	0	107728	0	0	24
118989	3.6080000000000001	0	107760	0	0	24
118990	3.60899999999999999	0	107792	0	0	24
118991	3.60999999999999988	0	107822	0	0	24
118992	3.61100000000000021	0	107854	0	0	24
118993	3.6120000000000001	0	107886	0	0	24
118994	3.61299999999999999	0	107918	0	0	24
118995	3.61399999999999988	0	107950	0	0	24
118996	3.61500000000000021	0	107982	0	0	24
118997	3.6160000000000001	0	108014	0	0	24
118998	3.61699999999999999	0	108046	0	0	24
118999	3.61799999999999988	0	108078	0	0	24
119000	3.61900000000000022	0	108110	0	0	24
119001	3.62000000000000011	0	108140	0	0	24
119002	3.621	0	108172	0	0	24
119003	3.62199999999999989	0	108204	0	0	24
119004	3.62300000000000022	0	108236	0	0	24
119005	3.62400000000000011	0	108268	0	0	24
119006	3.625	0	108300	0	0	24
119007	3.62599999999999989	0	108332	0	0	24
119008	3.62699999999999978	0	108364	0	0	24
119009	3.62800000000000011	0	108396	0	0	24
119010	3.629	0	108428	0	0	24
119011	3.62999999999999989	0	108458	0	0	24
119012	3.63099999999999978	0	108490	0	0	24
119013	3.63200000000000012	0	108522	0	0	24
119014	3.63300000000000001	0	108554	0	0	24
119015	3.6339999999999999	0	108586	0	0	24
119016	3.63499999999999979	0	108618	0	0	24
119017	3.63600000000000012	0	108650	0	0	24
119018	3.63700000000000001	0	108682	0	0	24
119019	3.6379999999999999	0	108714	0	0	24
119020	3.63899999999999979	0	108746	0	0	24
119021	3.64000000000000012	0	108776	0	0	24
119022	3.64100000000000001	0	108808	0	0	24
119023	3.6419999999999999	0	108840	0	0	24
119024	3.64299999999999979	0	108872	0	0	24
119025	3.64400000000000013	0	108904	0	0	24
119026	3.64500000000000002	0	108936	0	0	24
119027	3.64599999999999991	0	108968	0	0	24
119028	3.6469999999999998	0	109000	0	0	24
119029	3.64800000000000013	0	109032	0	0	24
119030	3.64900000000000002	0	109064	0	0	24
119031	3.64999999999999991	0	109094	0	0	24
119032	3.6509999999999998	0	109125	0	0	24
119033	3.65200000000000014	0	109157	0	0	24
119034	3.65300000000000002	0	109189	0	0	24
119035	3.65399999999999991	0	109221	0	0	24
119036	3.6549999999999998	0	109253	0	0	24
119037	3.65600000000000014	0	109285	0	0	24
119038	3.65700000000000003	0	109317	0	0	24
119039	3.65799999999999992	0	109349	0	0	24
119040	3.65899999999999981	0	109381	0	0	24
119041	3.66000000000000014	0	109411	0	0	24
119042	3.66100000000000003	0	109443	0	0	24
119043	3.66199999999999992	0	109475	0	0	24
119044	3.66299999999999981	0	109507	0	0	24
119045	3.66400000000000015	0	109539	0	0	24
119046	3.66500000000000004	0	109571	0	0	24
119047	3.66599999999999993	0	109603	0	0	24
119048	3.66699999999999982	0	109635	0	0	24
119049	3.66800000000000015	0	109667	0	0	24
119050	3.66900000000000004	0	109699	0	0	24
119051	3.66999999999999993	0	109729	0	0	24
119052	3.67099999999999982	0	109761	0	0	24
119053	3.67200000000000015	0	109793	0	0	24
119054	3.67300000000000004	0	109825	0	0	24
119055	3.67399999999999993	0	109857	0	0	24
119056	3.67499999999999982	0	109889	0	0	24
119057	3.67600000000000016	0	109921	0	0	24
119058	3.67700000000000005	0	109953	0	0	24
119059	3.67799999999999994	0	109985	0	0	24
119060	3.67899999999999983	0	110017	0	0	24
119061	3.68000000000000016	0	110047	0	0	24
119062	3.68100000000000005	0	110079	0	0	24
119063	3.68199999999999994	0	110111	0	0	24
119064	3.68299999999999983	0	110143	0	0	24
119065	3.68400000000000016	0	110175	0	0	24
119066	3.68500000000000005	0	110207	0	0	24
119067	3.68599999999999994	0	110239	0	0	24
119068	3.68699999999999983	0	110271	0	0	24
119069	3.68800000000000017	0	110303	0	0	24
119070	3.68900000000000006	0	110335	0	0	24
119071	3.68999999999999995	0	110365	0	0	24
119072	3.69099999999999984	0	110397	0	0	24
119073	3.69200000000000017	0	110429	0	0	24
119074	3.69300000000000006	0	110461	0	0	24
119075	3.69399999999999995	0	110493	0	0	24
119076	3.69499999999999984	0	110525	0	0	24
119077	3.69600000000000017	0	110557	0	0	24
119078	3.69700000000000006	0	110589	0	0	24
119079	3.69799999999999995	0	110621	0	0	24
119080	3.69899999999999984	0	110653	0	0	24
119081	3.70000000000000018	0	110683	0	0	24
119082	3.70100000000000007	0	110714	0	0	24
119083	3.70199999999999996	0	110746	0	0	24
119084	3.70299999999999985	0	110778	0	0	24
119085	3.70400000000000018	0	110810	0	0	24
119086	3.70500000000000007	0	110842	0	0	24
119087	3.70599999999999996	0	110874	0	0	24
119088	3.70699999999999985	0	110906	0	0	24
119089	3.70800000000000018	0	110938	0	0	24
119090	3.70900000000000007	0	110970	0	0	24
119091	3.70999999999999996	0	111000	0	0	24
119092	3.71099999999999985	0	111032	0	0	24
119093	3.71200000000000019	0	111064	0	0	24
119094	3.71300000000000008	0	111096	0	0	24
119095	3.71399999999999997	0	111128	0	0	24
119096	3.71499999999999986	0	111160	0	0	24
119097	3.71600000000000019	0	111192	0	0	24
119098	3.71700000000000008	0	111224	0	0	24
119099	3.71799999999999997	0	111256	0	0	24
119100	3.71899999999999986	0	111288	0	0	24
119101	3.7200000000000002	0	111318	0	0	24
119102	3.72100000000000009	0	111350	0	0	24
119103	3.72199999999999998	0	111382	0	0	24
119104	3.72299999999999986	0	111414	0	0	24
119105	3.7240000000000002	0	111446	0	0	24
119106	3.72500000000000009	0	111478	0	0	24
119107	3.72599999999999998	0	111510	0	0	24
119108	3.72699999999999987	0	111542	0	0	24
119109	3.7280000000000002	0	111574	0	0	24
119110	3.72900000000000009	0	111606	0	0	24
119111	3.72999999999999998	0	111636	0	0	24
119112	3.73099999999999987	0	111668	0	0	24
119113	3.73200000000000021	0	111700	0	0	24
119114	3.7330000000000001	0	111732	0	0	24
119115	3.73399999999999999	0	111764	0	0	24
119116	3.73499999999999988	0	111796	0	0	24
119117	3.73600000000000021	0	111828	0	0	24
119118	3.7370000000000001	0	111860	0	0	24
119119	3.73799999999999999	0	111892	0	0	24
119120	3.73899999999999988	0	111924	0	0	24
119121	3.74000000000000021	0	111954	0	0	24
119122	3.7410000000000001	0	111986	0	0	24
119123	3.74199999999999999	0	112018	0	0	24
119124	3.74299999999999988	0	112050	0	0	24
119125	3.74400000000000022	0	112082	0	0	24
119126	3.74500000000000011	0	112114	0	0	24
119127	3.746	0	112146	0	0	24
119128	3.74699999999999989	0	112178	0	0	24
119129	3.74800000000000022	0	112210	0	0	24
119130	3.74900000000000011	0	112242	0	0	24
119131	3.75	0	112272	0	0	24
119132	3.75099999999999989	0	112303	0	0	24
119133	3.75199999999999978	0	112335	0	0	24
119134	3.75300000000000011	0	112367	0	0	24
119135	3.754	0	112399	0	0	24
119136	3.75499999999999989	0	112431	0	0	24
119137	3.75599999999999978	0	112463	0	0	24
119138	3.75700000000000012	0	112495	0	0	24
119139	3.75800000000000001	0	112527	0	0	24
119140	3.7589999999999999	0	112559	0	0	24
119141	3.75999999999999979	0	112589	0	0	24
119142	3.76100000000000012	0	112621	0	0	24
119143	3.76200000000000001	0	112653	0	0	24
119144	3.7629999999999999	0	112685	0	0	24
119145	3.76399999999999979	0	112717	0	0	24
119146	3.76500000000000012	0	112749	0	0	24
119147	3.76600000000000001	0	112781	0	0	24
119148	3.7669999999999999	0	112813	0	0	24
119149	3.76799999999999979	0	112845	0	0	24
119150	3.76900000000000013	0	112877	0	0	24
119151	3.77000000000000002	0	112907	0	0	24
119152	3.77099999999999991	0	112939	0	0	24
119153	3.7719999999999998	0	112971	0	0	24
119154	3.77300000000000013	0	113003	0	0	24
119155	3.77400000000000002	0	113035	0	0	24
119156	3.77499999999999991	0	113067	0	0	24
119157	3.7759999999999998	0	113099	0	0	24
119158	3.77700000000000014	0	113131	0	0	24
119159	3.77800000000000002	0	113163	0	0	24
119160	3.77899999999999991	0	113195	0	0	24
119161	3.7799999999999998	0	113225	0	0	24
119162	3.78100000000000014	0	113257	0	0	24
119163	3.78200000000000003	0	113289	0	0	24
119164	3.78299999999999992	0	113321	0	0	24
119165	3.78399999999999981	0	113353	0	0	24
119166	3.78500000000000014	0	113385	0	0	24
119167	3.78600000000000003	0	113417	0	0	24
119168	3.78699999999999992	0	113449	0	0	24
119169	3.78799999999999981	0	113481	0	0	24
119170	3.78900000000000015	0	113513	0	0	24
119171	3.79000000000000004	0	113543	0	0	24
119172	3.79099999999999993	0	113575	0	0	24
119173	3.79199999999999982	0	113607	0	0	24
119174	3.79300000000000015	0	113639	0	0	24
119175	3.79400000000000004	0	113671	0	0	24
119176	3.79499999999999993	0	113703	0	0	24
119177	3.79599999999999982	0	113735	0	0	24
119178	3.79700000000000015	0	113767	0	0	24
119179	3.79800000000000004	0	113799	0	0	24
119180	3.79899999999999993	0	113831	0	0	24
119181	3.79999999999999982	0	113861	0	0	24
119182	3.80100000000000016	0	113892	0	0	24
119183	3.80200000000000005	0	113924	0	0	24
119184	3.80299999999999994	0	113956	0	0	24
119185	3.80399999999999983	0	113988	0	0	24
119186	3.80500000000000016	0	114020	0	0	24
119187	3.80600000000000005	0	114052	0	0	24
119188	3.80699999999999994	0	114084	0	0	24
119189	3.80799999999999983	0	114116	0	0	24
119190	3.80900000000000016	0	114148	0	0	24
119191	3.81000000000000005	0	114178	0	0	24
119192	3.81099999999999994	0	114210	0	0	24
119193	3.81199999999999983	0	114242	0	0	24
119194	3.81300000000000017	0	114274	0	0	24
119195	3.81400000000000006	0	114306	0	0	24
119196	3.81499999999999995	0	114338	0	0	24
119197	3.81599999999999984	0	114370	0	0	24
119198	3.81700000000000017	0	114402	0	0	24
119199	3.81800000000000006	0	114434	0	0	24
119200	3.81899999999999995	0	114466	0	0	24
119201	3.81999999999999984	0	114496	0	0	24
119202	3.82100000000000017	0	114528	0	0	24
119203	3.82200000000000006	0	114560	0	0	24
119204	3.82299999999999995	0	114592	0	0	24
119205	3.82399999999999984	0	114624	0	0	24
119206	3.82500000000000018	0	114656	0	0	24
119207	3.82600000000000007	0	114688	0	0	24
119208	3.82699999999999996	0	114720	0	0	24
119209	3.82799999999999985	0	114752	0	0	24
119210	3.82900000000000018	0	114784	0	0	24
119211	3.83000000000000007	0	114814	0	0	24
119212	3.83099999999999996	0	114846	0	0	24
119213	3.83199999999999985	0	114878	0	0	24
119214	3.83300000000000018	0	114910	0	0	24
119215	3.83400000000000007	0	114942	0	0	24
119216	3.83499999999999996	0	114974	0	0	24
119217	3.83599999999999985	0	115006	0	0	24
119218	3.83700000000000019	0	115038	0	0	24
119219	3.83800000000000008	0	115070	0	0	24
119220	3.83899999999999997	0	115102	0	0	24
119221	3.83999999999999986	0	115132	0	0	24
119222	3.84100000000000019	0	115164	0	0	24
119223	3.84200000000000008	0	115196	0	0	24
119224	3.84299999999999997	0	115228	0	0	24
119225	3.84399999999999986	0	115260	0	0	24
119226	3.8450000000000002	0	115292	0	0	24
119227	3.84600000000000009	0	115324	0	0	24
119228	3.84699999999999998	0	115356	0	0	24
119229	3.84799999999999986	0	115388	0	0	24
119230	3.8490000000000002	0	115420	0	0	24
119231	3.85000000000000009	0	115450	0	0	24
119232	3.85099999999999998	0	115481	0	0	24
119233	3.85199999999999987	0	115513	0	0	24
119234	3.8530000000000002	0	115545	0	0	24
119235	3.85400000000000009	0	115577	0	0	24
119236	3.85499999999999998	0	115609	0	0	24
119237	3.85599999999999987	0	115641	0	0	24
119238	3.85700000000000021	0	115673	0	0	24
119239	3.8580000000000001	0	115705	0	0	24
119240	3.85899999999999999	0	115737	0	0	24
119241	3.85999999999999988	0	115767	0	0	24
119242	3.86100000000000021	0	115799	0	0	24
119243	3.8620000000000001	0	115831	0	0	24
119244	3.86299999999999999	0	115863	0	0	24
119245	3.86399999999999988	0	115895	0	0	24
119246	3.86500000000000021	0	115927	0	0	24
119247	3.8660000000000001	0	115959	0	0	24
119248	3.86699999999999999	0	115991	0	0	24
119249	3.86799999999999988	0	116023	0	0	24
119250	3.86900000000000022	0	116055	0	0	24
119251	3.87000000000000011	0	116085	0	0	24
119252	3.871	0	116117	0	0	24
119253	3.87199999999999989	0	116149	0	0	24
119254	3.87300000000000022	0	116181	0	0	24
119255	3.87400000000000011	0	116213	0	0	24
119256	3.875	0	116245	0	0	24
119257	3.87599999999999989	0	116277	0	0	24
119258	3.87699999999999978	0	116309	0	0	24
119259	3.87800000000000011	0	116341	0	0	24
119260	3.879	0	116373	0	0	24
119261	3.87999999999999989	0	116403	0	0	24
119262	3.88099999999999978	0	116435	0	0	24
119263	3.88200000000000012	0	116467	0	0	24
119264	3.88300000000000001	0	116499	0	0	24
119265	3.8839999999999999	0	116531	0	0	24
119266	3.88499999999999979	0	116563	0	0	24
119267	3.88600000000000012	0	116595	0	0	24
119268	3.88700000000000001	0	116627	0	0	24
119269	3.8879999999999999	0	116659	0	0	24
119270	3.88899999999999979	0	116691	0	0	24
119271	3.89000000000000012	0	116721	0	0	24
119272	3.89100000000000001	0	116753	0	0	24
119273	3.8919999999999999	0	116785	0	0	24
119274	3.89299999999999979	0	116817	0	0	24
119275	3.89400000000000013	0	116849	0	0	24
119276	3.89500000000000002	0	116881	0	0	24
119277	3.89599999999999991	0	116913	0	0	24
119278	3.8969999999999998	0	116945	0	0	24
119279	3.89800000000000013	0	116977	0	0	24
119280	3.89900000000000002	0	117009	0	0	24
119281	3.89999999999999991	0	117039	0	0	24
119282	3.9009999999999998	0	117070	0	0	24
119283	3.90200000000000014	0	117102	0	0	24
119284	3.90300000000000002	0	117134	0	0	24
119285	3.90399999999999991	0	117166	0	0	24
119286	3.9049999999999998	0	117198	0	0	24
119287	3.90600000000000014	0	117230	0	0	24
119288	3.90700000000000003	0	117262	0	0	24
119289	3.90799999999999992	0	117294	0	0	24
119290	3.90899999999999981	0	117326	0	0	24
119291	3.91000000000000014	0	117356	0	0	24
119292	3.91100000000000003	0	117388	0	0	24
119293	3.91199999999999992	0	117420	0	0	24
119294	3.91299999999999981	0	117452	0	0	24
119295	3.91400000000000015	0	117484	0	0	24
119296	3.91500000000000004	0	117516	0	0	24
119297	3.91599999999999993	0	117548	0	0	24
119298	3.91699999999999982	0	117580	0	0	24
119299	3.91800000000000015	0	117612	0	0	24
119300	3.91900000000000004	0	117644	0	0	24
119301	3.91999999999999993	0	117674	0	0	24
119302	3.92099999999999982	0	117706	0	0	24
119303	3.92200000000000015	0	117738	0	0	24
119304	3.92300000000000004	0	117770	0	0	24
119305	3.92399999999999993	0	117802	0	0	24
119306	3.92499999999999982	0	117834	0	0	24
119307	3.92600000000000016	0	117866	0	0	24
119308	3.92700000000000005	0	117898	0	0	24
119309	3.92799999999999994	0	117930	0	0	24
119310	3.92899999999999983	0	117962	0	0	24
119311	3.93000000000000016	0	117992	0	0	24
119312	3.93100000000000005	0	118024	0	0	24
119313	3.93199999999999994	0	118056	0	0	24
119314	3.93299999999999983	0	118088	0	0	24
119315	3.93400000000000016	0	118120	0	0	24
119316	3.93500000000000005	0	118152	0	0	24
119317	3.93599999999999994	0	118184	0	0	24
119318	3.93699999999999983	0	118216	0	0	24
119319	3.93800000000000017	0	118248	0	0	24
119320	3.93900000000000006	0	118280	0	0	24
119321	3.93999999999999995	0	118310	0	0	24
119322	3.94099999999999984	0	118342	0	0	24
119323	3.94200000000000017	0	118374	0	0	24
119324	3.94300000000000006	0	118406	0	0	24
119325	3.94399999999999995	0	118438	0	0	24
119326	3.94499999999999984	0	118470	0	0	24
119327	3.94600000000000017	0	118502	0	0	24
119328	3.94700000000000006	0	118534	0	0	24
119329	3.94799999999999995	0	118566	0	0	24
119330	3.94899999999999984	0	118598	0	0	24
119331	3.95000000000000018	0	118628	0	0	24
119332	3.95100000000000007	0	118659	0	0	24
119333	3.95199999999999996	0	118691	0	0	24
119334	3.95299999999999985	0	118723	0	0	24
119335	3.95400000000000018	0	118755	0	0	24
119336	3.95500000000000007	0	118787	0	0	24
119337	3.95599999999999996	0	118819	0	0	24
119338	3.95699999999999985	0	118851	0	0	24
119339	3.95800000000000018	0	118883	0	0	24
119340	3.95900000000000007	0	118915	0	0	24
119341	3.95999999999999996	0	118945	0	0	24
119342	3.96099999999999985	0	118977	0	0	24
119343	3.96200000000000019	0	119009	0	0	24
119344	3.96300000000000008	0	119041	0	0	24
119345	3.96399999999999997	0	119073	0	0	24
119346	3.96499999999999986	0	119105	0	0	24
119347	3.96600000000000019	0	119137	0	0	24
119348	3.96700000000000008	0	119169	0	0	24
119349	3.96799999999999997	0	119201	0	0	24
119350	3.96899999999999986	0	119233	0	0	24
119351	3.9700000000000002	0	119263	0	0	24
119352	3.97100000000000009	0	119295	0	0	24
119353	3.97199999999999998	0	119327	0	0	24
119354	3.97299999999999986	0	119359	0	0	24
119355	3.9740000000000002	0	119391	0	0	24
119356	3.97500000000000009	0	119423	0	0	24
119357	3.97599999999999998	0	119455	0	0	24
119358	3.97699999999999987	0	119487	0	0	24
119359	3.9780000000000002	0	119519	0	0	24
119360	3.97900000000000009	0	119551	0	0	24
119361	3.97999999999999998	0	119581	0	0	24
119362	3.98099999999999987	0	119613	0	0	24
119363	3.98200000000000021	0	119645	0	0	24
119364	3.9830000000000001	0	119677	0	0	24
119365	3.98399999999999999	0	119709	0	0	24
119366	3.98499999999999988	0	119741	0	0	24
119367	3.98600000000000021	0	119773	0	0	24
119368	3.9870000000000001	0	119805	0	0	24
119369	3.98799999999999999	0	119837	0	0	24
119370	3.98899999999999988	0	119869	0	0	24
119371	3.99000000000000021	0	119899	0	0	24
119372	3.9910000000000001	0	119931	0	0	24
119373	3.99199999999999999	0	119963	0	0	24
119374	3.99299999999999988	0	119995	0	0	24
119375	3.99400000000000022	0	120027	0	0	24
119376	3.99500000000000011	0	120059	0	0	24
119377	3.996	0	120091	0	0	24
119378	3.99699999999999989	0	120123	0	0	24
119379	3.99800000000000022	0	120155	0	0	24
119380	3.99900000000000011	0	120187	0	0	24
119381	4	0	120217	0	0	24
119382	4.00100000000000033	0	120248	0	0	24
119383	4.00199999999999978	0	120280	0	0	24
119384	4.00300000000000011	0	120312	0	0	24
119385	4.00399999999999956	0	120344	0	0	24
119386	4.00499999999999989	0	120376	0	0	24
119387	4.00600000000000023	0	120408	0	0	24
119388	4.00699999999999967	0	120440	0	0	24
119389	4.00800000000000001	0	120472	0	0	24
119390	4.00900000000000034	0	120504	0	0	24
119391	4.00999999999999979	0	120534	0	0	24
119392	4.01100000000000012	0	120566	0	0	24
119393	4.01199999999999957	0	120598	0	0	24
119394	4.0129999999999999	0	120630	0	0	24
119395	4.01400000000000023	0	120662	0	0	24
119396	4.01499999999999968	0	120694	0	0	24
119397	4.01600000000000001	0	120726	0	0	24
119398	4.01700000000000035	0	120758	0	0	24
119399	4.01799999999999979	0	120790	0	0	24
119400	4.01900000000000013	0	120822	0	0	24
119401	4.01999999999999957	0	120852	0	0	24
119402	4.02099999999999991	0	120884	0	0	24
119403	4.02200000000000024	0	120916	0	0	24
119404	4.02299999999999969	0	120948	0	0	24
119405	4.02400000000000002	0	120980	0	0	24
119406	4.02500000000000036	0	121012	0	0	24
119407	4.0259999999999998	0	121044	0	0	24
119408	4.02700000000000014	0	121076	0	0	24
119409	4.02799999999999958	0	121108	0	0	24
119410	4.02899999999999991	0	121140	0	0	24
119411	4.03000000000000025	0	121170	0	0	24
119412	4.03099999999999969	0	121202	0	0	24
119413	4.03200000000000003	0	121234	0	0	24
119414	4.03300000000000036	0	121266	0	0	24
119415	4.03399999999999981	0	121298	0	0	24
119416	4.03500000000000014	0	121330	0	0	24
119417	4.03599999999999959	0	121362	0	0	24
119418	4.03699999999999992	0	121394	0	0	24
119419	4.03800000000000026	0	121426	0	0	24
119420	4.0389999999999997	0	121458	0	0	24
119421	4.04000000000000004	0	121488	0	0	24
119422	4.04100000000000037	0	121520	0	0	24
119423	4.04199999999999982	0	121552	0	0	24
119424	4.04300000000000015	0	121584	0	0	24
119425	4.04399999999999959	0	121616	0	0	24
119426	4.04499999999999993	0	121648	0	0	24
119427	4.04600000000000026	0	121680	0	0	24
119428	4.04699999999999971	0	121712	0	0	24
119429	4.04800000000000004	0	121744	0	0	24
119430	4.04900000000000038	0	121776	0	0	24
119431	4.04999999999999982	0	121806	0	0	24
119432	4.05100000000000016	0	121837	0	0	24
119433	4.0519999999999996	0	121869	0	0	24
119434	4.05299999999999994	0	121901	0	0	24
119435	4.05400000000000027	0	121933	0	0	24
119436	4.05499999999999972	0	121965	0	0	24
119437	4.05600000000000005	0	121997	0	0	24
119438	4.05700000000000038	0	122029	0	0	24
119439	4.05799999999999983	0	122061	0	0	24
119440	4.05900000000000016	0	122093	0	0	24
119441	4.05999999999999961	0	122123	0	0	24
119442	4.06099999999999994	0	122155	0	0	24
119443	4.06200000000000028	0	122187	0	0	24
119444	4.06299999999999972	0	122219	0	0	24
119445	4.06400000000000006	0	122251	0	0	24
119446	4.06500000000000039	0	122283	0	0	24
119447	4.06599999999999984	0	122315	0	0	24
119448	4.06700000000000017	0	122347	0	0	24
119449	4.06799999999999962	0	122379	0	0	24
119450	4.06899999999999995	0	122411	0	0	24
119451	4.07000000000000028	0	122441	0	0	24
119452	4.07099999999999973	0	122473	0	0	24
119453	4.07200000000000006	0	122505	0	0	24
119454	4.0730000000000004	0	122537	0	0	24
119455	4.07399999999999984	0	122569	0	0	24
119456	4.07500000000000018	0	122601	0	0	24
119457	4.07599999999999962	0	122633	0	0	24
119458	4.07699999999999996	0	122665	0	0	24
119459	4.07800000000000029	0	122697	0	0	24
119460	4.07899999999999974	0	122729	0	0	24
119461	4.08000000000000007	0	122759	0	0	24
119462	4.08100000000000041	0	122791	0	0	24
119463	4.08199999999999985	0	122823	0	0	24
119464	4.08300000000000018	0	122855	0	0	24
119465	4.08399999999999963	0	122887	0	0	24
119466	4.08499999999999996	0	122919	0	0	24
119467	4.0860000000000003	0	122951	0	0	24
119468	4.08699999999999974	0	122983	0	0	24
119469	4.08800000000000008	0	123015	0	0	24
119470	4.08900000000000041	0	123047	0	0	24
119471	4.08999999999999986	0	123077	0	0	24
119472	4.09100000000000019	0	123109	0	0	24
119473	4.09199999999999964	0	123141	0	0	24
119474	4.09299999999999997	0	123173	0	0	24
119475	4.09400000000000031	0	123205	0	0	24
119476	4.09499999999999975	0	123237	0	0	24
119477	4.09600000000000009	0	123269	0	0	24
119478	4.09700000000000042	0	123301	0	0	24
119479	4.09799999999999986	0	123333	0	0	24
119480	4.0990000000000002	0	123365	0	0	24
119481	4.09999999999999964	0	123395	0	0	24
119482	4.10099999999999998	0	123426	0	0	24
119483	4.10200000000000031	0	123458	0	0	24
119484	4.10299999999999976	0	123490	0	0	24
119485	4.10400000000000009	0	123522	0	0	24
119486	4.10500000000000043	0	123554	0	0	24
119487	4.10599999999999987	0	123586	0	0	24
119488	4.10700000000000021	0	123618	0	0	24
119489	4.10799999999999965	0	123650	0	0	24
119490	4.10899999999999999	0	123682	0	0	24
119491	4.11000000000000032	0	123712	0	0	24
119492	4.11099999999999977	0	123744	0	0	24
119493	4.1120000000000001	0	123776	0	0	24
119494	4.11300000000000043	0	123808	0	0	24
119495	4.11399999999999988	0	123840	0	0	24
119496	4.11500000000000021	0	123872	0	0	24
119497	4.11599999999999966	0	123904	0	0	24
119498	4.11699999999999999	0	123936	0	0	24
119499	4.11800000000000033	0	123968	0	0	24
119500	4.11899999999999977	0	124000	0	0	24
119501	4.12000000000000011	0	124030	0	0	24
119502	4.12100000000000044	0	124062	0	0	24
119503	4.12199999999999989	0	124094	0	0	24
119504	4.12300000000000022	0	124126	0	0	24
119505	4.12399999999999967	0	124158	0	0	24
119506	4.125	0	124190	0	0	24
119507	4.12600000000000033	0	124222	0	0	24
119508	4.12699999999999978	0	124254	0	0	24
119509	4.12800000000000011	0	124286	0	0	24
119510	4.12899999999999956	0	124318	0	0	24
119511	4.12999999999999989	0	124348	0	0	24
119512	4.13100000000000023	0	124380	0	0	24
119513	4.13199999999999967	0	124412	0	0	24
119514	4.13300000000000001	0	124444	0	0	24
119515	4.13400000000000034	0	124476	0	0	24
119516	4.13499999999999979	0	124508	0	0	24
119517	4.13600000000000012	0	124540	0	0	24
119518	4.13699999999999957	0	124572	0	0	24
119519	4.1379999999999999	0	124604	0	0	24
119520	4.13900000000000023	0	124636	0	0	24
119521	4.13999999999999968	0	124666	0	0	24
119522	4.14100000000000001	0	124698	0	0	24
119523	4.14200000000000035	0	124730	0	0	24
119524	4.14299999999999979	0	124762	0	0	24
119525	4.14400000000000013	0	124794	0	0	24
119526	4.14499999999999957	0	124826	0	0	24
119527	4.14599999999999991	0	124858	0	0	24
119528	4.14700000000000024	0	124890	0	0	24
119529	4.14799999999999969	0	124922	0	0	24
119530	4.14900000000000002	0	124954	0	0	24
119531	4.15000000000000036	0	124984	0	0	24
119532	4.1509999999999998	0	125015	0	0	24
119533	4.15200000000000014	0	125047	0	0	24
119534	4.15299999999999958	0	125079	0	0	24
119535	4.15399999999999991	0	125111	0	0	24
119536	4.15500000000000025	0	125143	0	0	24
119537	4.15599999999999969	0	125175	0	0	24
119538	4.15700000000000003	0	125207	0	0	24
119539	4.15800000000000036	0	125239	0	0	24
119540	4.15899999999999981	0	125271	0	0	24
119541	4.16000000000000014	0	125301	0	0	24
119542	4.16099999999999959	0	125333	0	0	24
119543	4.16199999999999992	0	125365	0	0	24
119544	4.16300000000000026	0	125397	0	0	24
119545	4.1639999999999997	0	125429	0	0	24
119546	4.16500000000000004	0	125461	0	0	24
119547	4.16600000000000037	0	125493	0	0	24
119548	4.16699999999999982	0	125525	0	0	24
119549	4.16800000000000015	0	125557	0	0	24
119550	4.16899999999999959	0	125589	0	0	24
119551	4.16999999999999993	0	125619	0	0	24
119552	4.17100000000000026	0	125651	0	0	24
119553	4.17199999999999971	0	125683	0	0	24
119554	4.17300000000000004	0	125715	0	0	24
119555	4.17400000000000038	0	125747	0	0	24
119556	4.17499999999999982	0	125779	0	0	24
119557	4.17600000000000016	0	125811	0	0	24
119558	4.1769999999999996	0	125843	0	0	24
119559	4.17799999999999994	0	125875	0	0	24
119560	4.17900000000000027	0	125907	0	0	24
119561	4.17999999999999972	0	125937	0	0	24
119562	4.18100000000000005	0	125969	0	0	24
119563	4.18200000000000038	0	126001	0	0	24
119564	4.18299999999999983	0	126033	0	0	24
119565	4.18400000000000016	0	126065	0	0	24
119566	4.18499999999999961	0	126097	0	0	24
119567	4.18599999999999994	0	126129	0	0	24
119568	4.18700000000000028	0	126161	0	0	24
119569	4.18799999999999972	0	126193	0	0	24
119570	4.18900000000000006	0	126225	0	0	24
119571	4.19000000000000039	0	126255	0	0	24
119572	4.19099999999999984	0	126287	0	0	24
119573	4.19200000000000017	0	126319	0	0	24
119574	4.19299999999999962	0	126351	0	0	24
119575	4.19399999999999995	0	126383	0	0	24
119576	4.19500000000000028	0	126415	0	0	24
119577	4.19599999999999973	0	126447	0	0	24
119578	4.19700000000000006	0	126479	0	0	24
119579	4.1980000000000004	0	126511	0	0	24
119580	4.19899999999999984	0	126543	0	0	24
119581	4.20000000000000018	0	126573	0	0	24
119582	4.20099999999999962	0	126604	0	0	24
119583	4.20199999999999996	0	126636	0	0	24
119584	4.20300000000000029	0	126668	0	0	24
119585	4.20399999999999974	0	126700	0	0	24
119586	4.20500000000000007	0	126732	0	0	24
119587	4.20600000000000041	0	126764	0	0	24
119588	4.20699999999999985	0	126796	0	0	24
119589	4.20800000000000018	0	126828	0	0	24
119590	4.20899999999999963	0	126860	0	0	24
119591	4.20999999999999996	0	126890	0	0	24
119592	4.2110000000000003	0	126922	0	0	24
119593	4.21199999999999974	0	126954	0	0	24
119594	4.21300000000000008	0	126986	0	0	24
119595	4.21400000000000041	0	127018	0	0	24
119596	4.21499999999999986	0	127050	0	0	24
119597	4.21600000000000019	0	127082	0	0	24
119598	4.21699999999999964	0	127114	0	0	24
119599	4.21799999999999997	0	127146	0	0	24
119600	4.21900000000000031	0	127178	0	0	24
119601	4.21999999999999975	0	127208	0	0	24
119602	4.22100000000000009	0	127240	0	0	24
119603	4.22200000000000042	0	127272	0	0	24
119604	4.22299999999999986	0	127304	0	0	24
119605	4.2240000000000002	0	127336	0	0	24
119606	4.22499999999999964	0	127368	0	0	24
119607	4.22599999999999998	0	127400	0	0	24
119608	4.22700000000000031	0	127432	0	0	24
119609	4.22799999999999976	0	127464	0	0	24
119610	4.22900000000000009	0	127496	0	0	24
119611	4.23000000000000043	0	127526	0	0	24
119612	4.23099999999999987	0	127558	0	0	24
119613	4.23200000000000021	0	127590	0	0	24
119614	4.23299999999999965	0	127622	0	0	24
119615	4.23399999999999999	0	127654	0	0	24
119616	4.23500000000000032	0	127686	0	0	24
119617	4.23599999999999977	0	127718	0	0	24
119618	4.2370000000000001	0	127750	0	0	24
119619	4.23800000000000043	0	127782	0	0	24
119620	4.23899999999999988	0	127814	0	0	24
119621	4.24000000000000021	0	127844	0	0	24
119622	4.24099999999999966	0	127876	0	0	24
119623	4.24199999999999999	0	127908	0	0	24
119624	4.24300000000000033	0	127940	0	0	24
119625	4.24399999999999977	0	127972	0	0	24
119626	4.24500000000000011	0	128004	0	0	24
119627	4.24600000000000044	0	128036	0	0	24
119628	4.24699999999999989	0	128068	0	0	24
119629	4.24800000000000022	0	128100	0	0	24
119630	4.24899999999999967	0	128132	0	0	24
119631	4.25	0	128162	0	0	24
119632	4.25100000000000033	0	128193	0	0	24
119633	4.25199999999999978	0	128225	0	0	24
119634	4.25300000000000011	0	128257	0	0	24
119635	4.25399999999999956	0	128289	0	0	24
119636	4.25499999999999989	0	128321	0	0	24
119637	4.25600000000000023	0	128353	0	0	24
119638	4.25699999999999967	0	128385	0	0	24
119639	4.25800000000000001	0	128417	0	0	24
119640	4.25900000000000034	0	128449	0	0	24
119641	4.25999999999999979	0	128479	0	0	24
119642	4.26100000000000012	0	128511	0	0	24
119643	4.26199999999999957	0	128543	0	0	24
119644	4.2629999999999999	0	128575	0	0	24
119645	4.26400000000000023	0	128607	0	0	24
119646	4.26499999999999968	0	128639	0	0	24
119647	4.26600000000000001	0	128671	0	0	24
119648	4.26700000000000035	0	128703	0	0	24
119649	4.26799999999999979	0	128735	0	0	24
119650	4.26900000000000013	0	128767	0	0	24
119651	4.26999999999999957	0	128797	0	0	24
119652	4.27099999999999991	0	128829	0	0	24
119653	4.27200000000000024	0	128861	0	0	24
119654	4.27299999999999969	0	128893	0	0	24
119655	4.27400000000000002	0	128925	0	0	24
119656	4.27500000000000036	0	128957	0	0	24
119657	4.2759999999999998	0	128989	0	0	24
119658	4.27700000000000014	0	129021	0	0	24
119659	4.27799999999999958	0	129053	0	0	24
119660	4.27899999999999991	0	129085	0	0	24
119661	4.28000000000000025	0	129115	0	0	24
119662	4.28099999999999969	0	129147	0	0	24
119663	4.28200000000000003	0	129179	0	0	24
119664	4.28300000000000036	0	129211	0	0	24
119665	4.28399999999999981	0	129243	0	0	24
119666	4.28500000000000014	0	129275	0	0	24
119667	4.28599999999999959	0	129307	0	0	24
119668	4.28699999999999992	0	129339	0	0	24
119669	4.28800000000000026	0	129371	0	0	24
119670	4.2889999999999997	0	129403	0	0	24
119671	4.29000000000000004	0	129433	0	0	24
119672	4.29100000000000037	0	129465	0	0	24
119673	4.29199999999999982	0	129497	0	0	24
119674	4.29300000000000015	0	129529	0	0	24
119675	4.29399999999999959	0	129561	0	0	24
119676	4.29499999999999993	0	129593	0	0	24
119677	4.29600000000000026	0	129625	0	0	24
119678	4.29699999999999971	0	129657	0	0	24
119679	4.29800000000000004	0	129689	0	0	24
119680	4.29900000000000038	0	129721	0	0	24
119681	4.29999999999999982	0	129751	0	0	24
119682	4.30100000000000016	0	129782	0	0	24
119683	4.3019999999999996	0	129814	0	0	24
119684	4.30299999999999994	0	129846	0	0	24
119685	4.30400000000000027	0	129878	0	0	24
119686	4.30499999999999972	0	129910	0	0	24
119687	4.30600000000000005	0	129942	0	0	24
119688	4.30700000000000038	0	129974	0	0	24
119689	4.30799999999999983	0	130006	0	0	24
119690	4.30900000000000016	0	130038	0	0	24
119691	4.30999999999999961	0	130068	0	0	24
119692	4.31099999999999994	0	130100	0	0	24
119693	4.31200000000000028	0	130132	0	0	24
119694	4.31299999999999972	0	130164	0	0	24
119695	4.31400000000000006	0	130196	0	0	24
119696	4.31500000000000039	0	130228	0	0	24
119697	4.31599999999999984	0	130260	0	0	24
119698	4.31700000000000017	0	130292	0	0	24
119699	4.31799999999999962	0	130324	0	0	24
119700	4.31899999999999995	0	130356	0	0	24
119701	4.32000000000000028	0	130386	0	0	24
119702	4.32099999999999973	0	130418	0	0	24
119703	4.32200000000000006	0	130450	0	0	24
119704	4.3230000000000004	0	130482	0	0	24
119705	4.32399999999999984	0	130514	0	0	24
119706	4.32500000000000018	0	130546	0	0	24
119707	4.32599999999999962	0	130578	0	0	24
119708	4.32699999999999996	0	130610	0	0	24
119709	4.32800000000000029	0	130642	0	0	24
119710	4.32899999999999974	0	130674	0	0	24
119711	4.33000000000000007	0	130704	0	0	24
119712	4.33100000000000041	0	130736	0	0	24
119713	4.33199999999999985	0	130768	0	0	24
119714	4.33300000000000018	0	130800	0	0	24
119715	4.33399999999999963	0	130832	0	0	24
119716	4.33499999999999996	0	130864	0	0	24
119717	4.3360000000000003	0	130896	0	0	24
119718	4.33699999999999974	0	130928	0	0	24
119719	4.33800000000000008	0	130960	0	0	24
119720	4.33900000000000041	0	130992	0	0	24
119721	4.33999999999999986	0	131022	0	0	24
119722	4.34100000000000019	0	131054	0	0	24
119723	4.34199999999999964	0	131086	0	0	24
119724	4.34299999999999997	0	131118	0	0	24
119725	4.34400000000000031	0	131150	0	0	24
119726	4.34499999999999975	0	131182	0	0	24
119727	4.34600000000000009	0	131214	0	0	24
119728	4.34700000000000042	0	131246	0	0	24
119729	4.34799999999999986	0	131278	0	0	24
119730	4.3490000000000002	0	131310	0	0	24
119731	4.34999999999999964	0	131340	0	0	24
119732	4.35099999999999998	0	131371	0	0	24
119733	4.35200000000000031	0	131403	0	0	24
119734	4.35299999999999976	0	131435	0	0	24
119735	4.35400000000000009	0	131467	0	0	24
119736	4.35500000000000043	0	131499	0	0	24
119737	4.35599999999999987	0	131531	0	0	24
119738	4.35700000000000021	0	131563	0	0	24
119739	4.35799999999999965	0	131595	0	0	24
119740	4.35899999999999999	0	131627	0	0	24
119741	4.36000000000000032	0	131657	0	0	24
119742	4.36099999999999977	0	131689	0	0	24
119743	4.3620000000000001	0	131721	0	0	24
119744	4.36300000000000043	0	131753	0	0	24
119745	4.36399999999999988	0	131785	0	0	24
119746	4.36500000000000021	0	131817	0	0	24
119747	4.36599999999999966	0	131849	0	0	24
119748	4.36699999999999999	0	131881	0	0	24
119749	4.36800000000000033	0	131913	0	0	24
119750	4.36899999999999977	0	131945	0	0	24
119751	4.37000000000000011	0	131975	0	0	24
119752	4.37100000000000044	0	132007	0	0	24
119753	4.37199999999999989	0	132039	0	0	24
119754	4.37300000000000022	0	132071	0	0	24
119755	4.37399999999999967	0	132103	0	0	24
119756	4.375	0	132135	0	0	24
119757	4.37600000000000033	0	132167	0	0	24
119758	4.37699999999999978	0	132199	0	0	24
119759	4.37800000000000011	0	132231	0	0	24
119760	4.37899999999999956	0	132263	0	0	24
119761	4.37999999999999989	0	132293	0	0	24
119762	4.38100000000000023	0	132325	0	0	24
119763	4.38199999999999967	0	132357	0	0	24
119764	4.38300000000000001	0	132389	0	0	24
119765	4.38400000000000034	0	132421	0	0	24
119766	4.38499999999999979	0	132453	0	0	24
119767	4.38600000000000012	0	132485	0	0	24
119768	4.38699999999999957	0	132517	0	0	24
119769	4.3879999999999999	0	132549	0	0	24
119770	4.38900000000000023	0	132581	0	0	24
119771	4.38999999999999968	0	132611	0	0	24
119772	4.39100000000000001	0	132643	0	0	24
119773	4.39200000000000035	0	132675	0	0	24
119774	4.39299999999999979	0	132707	0	0	24
119775	4.39400000000000013	0	132739	0	0	24
119776	4.39499999999999957	0	132771	0	0	24
119777	4.39599999999999991	0	132803	0	0	24
119778	4.39700000000000024	0	132835	0	0	24
119779	4.39799999999999969	0	132867	0	0	24
119780	4.39900000000000002	0	132899	0	0	24
119781	4.40000000000000036	0	132929	0	0	24
119782	4.4009999999999998	0	132960	0	0	24
119783	4.40200000000000014	0	132992	0	0	24
119784	4.40299999999999958	0	133024	0	0	24
119785	4.40399999999999991	0	133056	0	0	24
119786	4.40500000000000025	0	133088	0	0	24
119787	4.40599999999999969	0	133120	0	0	24
119788	4.40700000000000003	0	133152	0	0	24
119789	4.40800000000000036	0	133184	0	0	24
119790	4.40899999999999981	0	133216	0	0	24
119791	4.41000000000000014	0	133246	0	0	24
119792	4.41099999999999959	0	133278	0	0	24
119793	4.41199999999999992	0	133310	0	0	24
119794	4.41300000000000026	0	133342	0	0	24
119795	4.4139999999999997	0	133374	0	0	24
119796	4.41500000000000004	0	133406	0	0	24
119797	4.41600000000000037	0	133438	0	0	24
119798	4.41699999999999982	0	133470	0	0	24
119799	4.41800000000000015	0	133502	0	0	24
119800	4.41899999999999959	0	133534	0	0	24
119801	4.41999999999999993	0	133564	0	0	24
119802	4.42100000000000026	0	133596	0	0	24
119803	4.42199999999999971	0	133628	0	0	24
119804	4.42300000000000004	0	133660	0	0	24
119805	4.42400000000000038	0	133692	0	0	24
119806	4.42499999999999982	0	133724	0	0	24
119807	4.42600000000000016	0	133756	0	0	24
119808	4.4269999999999996	0	133788	0	0	24
119809	4.42799999999999994	0	133820	0	0	24
119810	4.42900000000000027	0	133852	0	0	24
119811	4.42999999999999972	0	133882	0	0	24
119812	4.43100000000000005	0	133914	0	0	24
119813	4.43200000000000038	0	133946	0	0	24
119814	4.43299999999999983	0	133978	0	0	24
119815	4.43400000000000016	0	134010	0	0	24
119816	4.43499999999999961	0	134042	0	0	24
119817	4.43599999999999994	0	134074	0	0	24
119818	4.43700000000000028	0	134106	0	0	24
119819	4.43799999999999972	0	134138	0	0	24
119820	4.43900000000000006	0	134170	0	0	24
119821	4.44000000000000039	0	134200	0	0	24
119822	4.44099999999999984	0	134232	0	0	24
119823	4.44200000000000017	0	134264	0	0	24
119824	4.44299999999999962	0	134296	0	0	24
119825	4.44399999999999995	0	134328	0	0	24
119826	4.44500000000000028	0	134360	0	0	24
119827	4.44599999999999973	0	134392	0	0	24
119828	4.44700000000000006	0	134424	0	0	24
119829	4.4480000000000004	0	134456	0	0	24
119830	4.44899999999999984	0	134488	0	0	24
119831	4.45000000000000018	0	134518	0	0	24
119832	4.45099999999999962	0	134549	0	0	24
119833	4.45199999999999996	0	134581	0	0	24
119834	4.45300000000000029	0	134613	0	0	24
119835	4.45399999999999974	0	134645	0	0	24
119836	4.45500000000000007	0	134677	0	0	24
119837	4.45600000000000041	0	134709	0	0	24
119838	4.45699999999999985	0	134741	0	0	24
119839	4.45800000000000018	0	134773	0	0	24
119840	4.45899999999999963	0	134805	0	0	24
119841	4.45999999999999996	0	134835	0	0	24
119842	4.4610000000000003	0	134867	0	0	24
119843	4.46199999999999974	0	134899	0	0	24
119844	4.46300000000000008	0	134931	0	0	24
119845	4.46400000000000041	0	134963	0	0	24
119846	4.46499999999999986	0	134995	0	0	24
119847	4.46600000000000019	0	135027	0	0	24
119848	4.46699999999999964	0	135059	0	0	24
119849	4.46799999999999997	0	135091	0	0	24
119850	4.46900000000000031	0	135123	0	0	24
119851	4.46999999999999975	0	135153	0	0	24
119852	4.47100000000000009	0	135185	0	0	24
119853	4.47200000000000042	0	135217	0	0	24
119854	4.47299999999999986	0	135249	0	0	24
119855	4.4740000000000002	0	135281	0	0	24
119856	4.47499999999999964	0	135313	0	0	24
119857	4.47599999999999998	0	135345	0	0	24
119858	4.47700000000000031	0	135377	0	0	24
119859	4.47799999999999976	0	135409	0	0	24
119860	4.47900000000000009	0	135441	0	0	24
119861	4.48000000000000043	0	135471	0	0	24
119862	4.48099999999999987	0	135503	0	0	24
119863	4.48200000000000021	0	135535	0	0	24
119864	4.48299999999999965	0	135567	0	0	24
119865	4.48399999999999999	0	135599	0	0	24
119866	4.48500000000000032	0	135631	0	0	24
119867	4.48599999999999977	0	135663	0	0	24
119868	4.4870000000000001	0	135695	0	0	24
119869	4.48800000000000043	0	135727	0	0	24
119870	4.48899999999999988	0	135759	0	0	24
119871	4.49000000000000021	0	135789	0	0	24
119872	4.49099999999999966	0	135821	0	0	24
119873	4.49199999999999999	0	135853	0	0	24
119874	4.49300000000000033	0	135885	0	0	24
119875	4.49399999999999977	0	135917	0	0	24
119876	4.49500000000000011	0	135949	0	0	24
119877	4.49600000000000044	0	135981	0	0	24
119878	4.49699999999999989	0	136013	0	0	24
119879	4.49800000000000022	0	136045	0	0	24
119880	4.49899999999999967	0	136077	0	0	24
119881	4.5	0	136107	0	0	24
119882	4.50100000000000033	0	136138	0	0	24
119883	4.50199999999999978	0	136170	0	0	24
119884	4.50300000000000011	0	136202	0	0	24
119885	4.50399999999999956	0	136234	0	0	24
119886	4.50499999999999989	0	136266	0	0	24
119887	4.50600000000000023	0	136298	0	0	24
119888	4.50699999999999967	0	136330	0	0	24
119889	4.50800000000000001	0	136362	0	0	24
119890	4.50900000000000034	0	136394	0	0	24
119891	4.50999999999999979	0	136424	0	0	24
119892	4.51100000000000012	0	136456	0	0	24
119893	4.51199999999999957	0	136488	0	0	24
119894	4.5129999999999999	0	136520	0	0	24
119895	4.51400000000000023	0	136552	0	0	24
119896	4.51499999999999968	0	136584	0	0	24
119897	4.51600000000000001	0	136616	0	0	24
119898	4.51700000000000035	0	136648	0	0	24
119899	4.51799999999999979	0	136680	0	0	24
119900	4.51900000000000013	0	136712	0	0	24
119901	4.51999999999999957	0	136742	0	0	24
119902	4.52099999999999991	0	136774	0	0	24
119903	4.52200000000000024	0	136806	0	0	24
119904	4.52299999999999969	0	136838	0	0	24
119905	4.52400000000000002	0	136870	0	0	24
119906	4.52500000000000036	0	136902	0	0	24
119907	4.5259999999999998	0	136934	0	0	24
119908	4.52700000000000014	0	136966	0	0	24
119909	4.52799999999999958	0	136998	0	0	24
119910	4.52899999999999991	0	137030	0	0	24
119911	4.53000000000000025	0	137060	0	0	24
119912	4.53099999999999969	0	137092	0	0	24
119913	4.53200000000000003	0	137124	0	0	24
119914	4.53300000000000036	0	137156	0	0	24
119915	4.53399999999999981	0	137188	0	0	24
119916	4.53500000000000014	0	137220	0	0	24
119917	4.53599999999999959	0	137252	0	0	24
119918	4.53699999999999992	0	137284	0	0	24
119919	4.53800000000000026	0	137316	0	0	24
119920	4.5389999999999997	0	137348	0	0	24
119921	4.54000000000000004	0	137378	0	0	24
119922	4.54100000000000037	0	137410	0	0	24
119923	4.54199999999999982	0	137442	0	0	24
119924	4.54300000000000015	0	137474	0	0	24
119925	4.54399999999999959	0	137506	0	0	24
119926	4.54499999999999993	0	137538	0	0	24
119927	4.54600000000000026	0	137570	0	0	24
119928	4.54699999999999971	0	137602	0	0	24
119929	4.54800000000000004	0	137634	0	0	24
119930	4.54900000000000038	0	137666	0	0	24
119931	4.54999999999999982	0	137696	0	0	24
119932	4.55100000000000016	0	137727	0	0	24
119933	4.5519999999999996	0	137759	0	0	24
119934	4.55299999999999994	0	137791	0	0	24
119935	4.55400000000000027	0	137823	0	0	24
119936	4.55499999999999972	0	137855	0	0	24
119937	4.55600000000000005	0	137887	0	0	24
119938	4.55700000000000038	0	137919	0	0	24
119939	4.55799999999999983	0	137951	0	0	24
119940	4.55900000000000016	0	137983	0	0	24
119941	4.55999999999999961	0	138013	0	0	24
119942	4.56099999999999994	0	138045	0	0	24
119943	4.56200000000000028	0	138077	0	0	24
119944	4.56299999999999972	0	138109	0	0	24
119945	4.56400000000000006	0	138141	0	0	24
119946	4.56500000000000039	0	138173	0	0	24
119947	4.56599999999999984	0	138205	0	0	24
119948	4.56700000000000017	0	138237	0	0	24
119949	4.56799999999999962	0	138269	0	0	24
119950	4.56899999999999995	0	138301	0	0	24
119951	4.57000000000000028	0	138331	0	0	24
119952	4.57099999999999973	0	138363	0	0	24
119953	4.57200000000000006	0	138395	0	0	24
119954	4.5730000000000004	0	138427	0	0	24
119955	4.57399999999999984	0	138459	0	0	24
119956	4.57500000000000018	0	138491	0	0	24
119957	4.57599999999999962	0	138523	0	0	24
119958	4.57699999999999996	0	138555	0	0	24
119959	4.57800000000000029	0	138587	0	0	24
119960	4.57899999999999974	0	138619	0	0	24
119961	4.58000000000000007	0	138649	0	0	24
119962	4.58100000000000041	0	138681	0	0	24
119963	4.58199999999999985	0	138713	0	0	24
119964	4.58300000000000018	0	138745	0	0	24
119965	4.58399999999999963	0	138777	0	0	24
119966	4.58499999999999996	0	138809	0	0	24
119967	4.5860000000000003	0	138841	0	0	24
119968	4.58699999999999974	0	138873	0	0	24
119969	4.58800000000000008	0	138905	0	0	24
119970	4.58900000000000041	0	138937	0	0	24
119971	4.58999999999999986	0	138967	0	0	24
119972	4.59100000000000019	0	138999	0	0	24
119973	4.59199999999999964	0	139031	0	0	24
119974	4.59299999999999997	0	139063	0	0	24
119975	4.59400000000000031	0	139095	0	0	24
119976	4.59499999999999975	0	139127	0	0	24
119977	4.59600000000000009	0	139159	0	0	24
119978	4.59700000000000042	0	139191	0	0	24
119979	4.59799999999999986	0	139223	0	0	24
119980	4.5990000000000002	0	139255	0	0	24
119981	4.59999999999999964	0	139285	0	0	24
119982	4.60099999999999998	0	139316	0	0	24
119983	4.60200000000000031	0	139348	0	0	24
119984	4.60299999999999976	0	139380	0	0	24
119985	4.60400000000000009	0	139412	0	0	24
119986	4.60500000000000043	0	139444	0	0	24
119987	4.60599999999999987	0	139476	0	0	24
119988	4.60700000000000021	0	139508	0	0	24
119989	4.60799999999999965	0	139540	0	0	24
119990	4.60899999999999999	0	139572	0	0	24
119991	4.61000000000000032	0	139602	0	0	24
119992	4.61099999999999977	0	139634	0	0	24
119993	4.6120000000000001	0	139666	0	0	24
119994	4.61300000000000043	0	139698	0	0	24
119995	4.61399999999999988	0	139730	0	0	24
119996	4.61500000000000021	0	139762	0	0	24
119997	4.61599999999999966	0	139794	0	0	24
119998	4.61699999999999999	0	139826	0	0	24
119999	4.61800000000000033	0	139858	0	0	24
120000	4.61899999999999977	0	139890	0	0	24
120001	4.62000000000000011	0	139920	0	0	24
120002	4.62100000000000044	0	139952	0	0	24
120003	4.62199999999999989	0	139984	0	0	24
120004	4.62300000000000022	0	140016	0	0	24
120005	4.62399999999999967	0	140048	0	0	24
120006	4.625	0	140080	0	0	24
120007	4.62600000000000033	0	140112	0	0	24
120008	4.62699999999999978	0	140144	0	0	24
120009	4.62800000000000011	0	140176	0	0	24
120010	4.62899999999999956	0	140208	0	0	24
120011	4.62999999999999989	0	140238	0	0	24
120012	4.63100000000000023	0	140270	0	0	24
120013	4.63199999999999967	0	140302	0	0	24
120014	4.63300000000000001	0	140334	0	0	24
120015	4.63400000000000034	0	140366	0	0	24
120016	4.63499999999999979	0	140398	0	0	24
120017	4.63600000000000012	0	140430	0	0	24
120018	4.63699999999999957	0	140462	0	0	24
120019	4.6379999999999999	0	140494	0	0	24
120020	4.63900000000000023	0	140526	0	0	24
120021	4.63999999999999968	0	140556	0	0	24
120022	4.64100000000000001	0	140588	0	0	24
120023	4.64200000000000035	0	140620	0	0	24
120024	4.64299999999999979	0	140652	0	0	24
120025	4.64400000000000013	0	140684	0	0	24
120026	4.64499999999999957	0	140716	0	0	24
120027	4.64599999999999991	0	140748	0	0	24
120028	4.64700000000000024	0	140780	0	0	24
120029	4.64799999999999969	0	140812	0	0	24
120030	4.64900000000000002	0	140844	0	0	24
120031	4.65000000000000036	0	140874	0	0	24
120032	4.6509999999999998	0	140905	0	0	24
120033	4.65200000000000014	0	140937	0	0	24
120034	4.65299999999999958	0	140969	0	0	24
120035	4.65399999999999991	0	141001	0	0	24
120036	4.65500000000000025	0	141033	0	0	24
120037	4.65599999999999969	0	141065	0	0	24
120038	4.65700000000000003	0	141097	0	0	24
120039	4.65800000000000036	0	141129	0	0	24
120040	4.65899999999999981	0	141161	0	0	24
120041	4.66000000000000014	0	141191	0	0	24
120042	4.66099999999999959	0	141223	0	0	24
120043	4.66199999999999992	0	141255	0	0	24
120044	4.66300000000000026	0	141287	0	0	24
120045	4.6639999999999997	0	141319	0	0	24
120046	4.66500000000000004	0	141351	0	0	24
120047	4.66600000000000037	0	141383	0	0	24
120048	4.66699999999999982	0	141415	0	0	24
120049	4.66800000000000015	0	141447	0	0	24
120050	4.66899999999999959	0	141479	0	0	24
120051	4.66999999999999993	0	141509	0	0	24
120052	4.67100000000000026	0	141541	0	0	24
120053	4.67199999999999971	0	141573	0	0	24
120054	4.67300000000000004	0	141605	0	0	24
120055	4.67400000000000038	0	141637	0	0	24
120056	4.67499999999999982	0	141669	0	0	24
120057	4.67600000000000016	0	141701	0	0	24
133001	17.620000000000001	0	553193	0	0	24
133002	17.6209999999999987	0	553225	0	0	24
133003	17.6219999999999999	0	553257	0	0	24
133004	17.6230000000000011	0	553289	0	0	24
133005	17.6239999999999988	0	553321	0	0	24
133006	17.625	0	553353	0	0	24
133007	17.6260000000000012	0	553385	0	0	24
133008	17.6269999999999989	0	553417	0	0	24
133009	17.6280000000000001	0	553449	0	0	24
133010	17.6290000000000013	0	553481	0	0	24
133011	17.629999999999999	0	553511	0	0	24
133012	17.6310000000000002	0	553543	0	0	24
133013	17.6320000000000014	0	553575	0	0	24
133014	17.6329999999999991	0	553607	0	0	24
133015	17.6340000000000003	0	553639	0	0	24
133016	17.6350000000000016	0	553671	0	0	24
133017	17.6359999999999992	0	553703	0	0	24
133018	17.6370000000000005	0	553735	0	0	24
133019	17.6380000000000017	0	553767	0	0	24
133020	17.6389999999999993	0	553799	0	0	24
133021	17.6400000000000006	0	553829	0	0	24
133022	17.6409999999999982	0	553861	0	0	24
133023	17.6419999999999995	0	553893	0	0	24
133024	17.6430000000000007	0	553925	0	0	24
133025	17.6439999999999984	0	553957	0	0	24
133026	17.6449999999999996	0	553989	0	0	24
133027	17.6460000000000008	0	554021	0	0	24
133028	17.6469999999999985	0	554053	0	0	24
133029	17.6479999999999997	0	554085	0	0	24
133030	17.6490000000000009	0	554117	0	0	24
133031	17.6499999999999986	0	554147	0	0	24
133032	17.6509999999999998	0	554179	0	0	24
133033	17.652000000000001	0	554211	0	0	24
133034	17.6529999999999987	0	554243	0	0	24
133035	17.6539999999999999	0	554275	0	0	24
133036	17.6550000000000011	0	554307	0	0	24
133037	17.6559999999999988	0	554339	0	0	24
133038	17.657	0	554371	0	0	24
133039	17.6580000000000013	0	554403	0	0	24
133040	17.6589999999999989	0	554435	0	0	24
133041	17.6600000000000001	0	554465	0	0	24
133042	17.6610000000000014	0	554497	0	0	24
133043	17.661999999999999	0	554529	0	0	24
133044	17.6630000000000003	0	554561	0	0	24
133045	17.6640000000000015	0	554593	0	0	24
133046	17.6649999999999991	0	554625	0	0	24
133047	17.6660000000000004	0	554657	0	0	24
133048	17.6670000000000016	0	554689	0	0	24
133049	17.6679999999999993	0	554721	0	0	24
133050	17.6690000000000005	0	554753	0	0	24
133051	17.6700000000000017	0	554783	0	0	24
133052	17.6709999999999994	0	554815	0	0	24
133053	17.6720000000000006	0	554847	0	0	24
120058	4.6769999999999996	0	141733	0	0	24
120059	4.67799999999999994	0	141765	0	0	24
120060	4.67900000000000027	0	141797	0	0	24
120061	4.67999999999999972	0	141827	0	0	24
120062	4.68100000000000005	0	141859	0	0	24
120063	4.68200000000000038	0	141891	0	0	24
120064	4.68299999999999983	0	141923	0	0	24
120065	4.68400000000000016	0	141955	0	0	24
120066	4.68499999999999961	0	141987	0	0	24
120067	4.68599999999999994	0	142019	0	0	24
120068	4.68700000000000028	0	142051	0	0	24
120069	4.68799999999999972	0	142083	0	0	24
120070	4.68900000000000006	0	142115	0	0	24
120071	4.69000000000000039	0	142145	0	0	24
120072	4.69099999999999984	0	142177	0	0	24
120073	4.69200000000000017	0	142209	0	0	24
120074	4.69299999999999962	0	142241	0	0	24
120075	4.69399999999999995	0	142273	0	0	24
120076	4.69500000000000028	0	142305	0	0	24
120077	4.69599999999999973	0	142337	0	0	24
120078	4.69700000000000006	0	142369	0	0	24
120079	4.6980000000000004	0	142401	0	0	24
120080	4.69899999999999984	0	142433	0	0	24
120081	4.70000000000000018	0	142463	0	0	24
120082	4.70099999999999962	0	142494	0	0	24
120083	4.70199999999999996	0	142526	0	0	24
120084	4.70300000000000029	0	142558	0	0	24
120085	4.70399999999999974	0	142590	0	0	24
120086	4.70500000000000007	0	142622	0	0	24
120087	4.70600000000000041	0	142654	0	0	24
120088	4.70699999999999985	0	142686	0	0	24
120089	4.70800000000000018	0	142718	0	0	24
120090	4.70899999999999963	0	142750	0	0	24
120091	4.70999999999999996	0	142780	0	0	24
120092	4.7110000000000003	0	142812	0	0	24
120093	4.71199999999999974	0	142844	0	0	24
120094	4.71300000000000008	0	142876	0	0	24
120095	4.71400000000000041	0	142908	0	0	24
120096	4.71499999999999986	0	142940	0	0	24
120097	4.71600000000000019	0	142972	0	0	24
120098	4.71699999999999964	0	143004	0	0	24
120099	4.71799999999999997	0	143036	0	0	24
120100	4.71900000000000031	0	143068	0	0	24
120101	4.71999999999999975	0	143098	0	0	24
120102	4.72100000000000009	0	143130	0	0	24
120103	4.72200000000000042	0	143162	0	0	24
120104	4.72299999999999986	0	143194	0	0	24
120105	4.7240000000000002	0	143226	0	0	24
120106	4.72499999999999964	0	143258	0	0	24
120107	4.72599999999999998	0	143290	0	0	24
120108	4.72700000000000031	0	143322	0	0	24
120109	4.72799999999999976	0	143354	0	0	24
120110	4.72900000000000009	0	143386	0	0	24
120111	4.73000000000000043	0	143416	0	0	24
120112	4.73099999999999987	0	143448	0	0	24
120113	4.73200000000000021	0	143480	0	0	24
120114	4.73299999999999965	0	143512	0	0	24
120115	4.73399999999999999	0	143544	0	0	24
120116	4.73500000000000032	0	143576	0	0	24
120117	4.73599999999999977	0	143608	0	0	24
120118	4.7370000000000001	0	143640	0	0	24
120119	4.73800000000000043	0	143672	0	0	24
120120	4.73899999999999988	0	143704	0	0	24
120121	4.74000000000000021	0	143734	0	0	24
120122	4.74099999999999966	0	143766	0	0	24
120123	4.74199999999999999	0	143798	0	0	24
120124	4.74300000000000033	0	143830	0	0	24
120125	4.74399999999999977	0	143862	0	0	24
120126	4.74500000000000011	0	143894	0	0	24
120127	4.74600000000000044	0	143926	0	0	24
120128	4.74699999999999989	0	143958	0	0	24
120129	4.74800000000000022	0	143990	0	0	24
120130	4.74899999999999967	0	144022	0	0	24
120131	4.75	0	144052	0	0	24
120132	4.75100000000000033	0	144083	0	0	24
120133	4.75199999999999978	0	144115	0	0	24
120134	4.75300000000000011	0	144147	0	0	24
120135	4.75399999999999956	0	144179	0	0	24
120136	4.75499999999999989	0	144211	0	0	24
120137	4.75600000000000023	0	144243	0	0	24
120138	4.75699999999999967	0	144275	0	0	24
120139	4.75800000000000001	0	144307	0	0	24
120140	4.75900000000000034	0	144339	0	0	24
120141	4.75999999999999979	0	144369	0	0	24
120142	4.76100000000000012	0	144401	0	0	24
120143	4.76199999999999957	0	144433	0	0	24
120144	4.7629999999999999	0	144465	0	0	24
120145	4.76400000000000023	0	144497	0	0	24
120146	4.76499999999999968	0	144529	0	0	24
120147	4.76600000000000001	0	144561	0	0	24
120148	4.76700000000000035	0	144593	0	0	24
120149	4.76799999999999979	0	144625	0	0	24
120150	4.76900000000000013	0	144657	0	0	24
120151	4.76999999999999957	0	144687	0	0	24
120152	4.77099999999999991	0	144719	0	0	24
120153	4.77200000000000024	0	144751	0	0	24
120154	4.77299999999999969	0	144783	0	0	24
120155	4.77400000000000002	0	144815	0	0	24
120156	4.77500000000000036	0	144847	0	0	24
120157	4.7759999999999998	0	144879	0	0	24
120158	4.77700000000000014	0	144911	0	0	24
120159	4.77799999999999958	0	144943	0	0	24
120160	4.77899999999999991	0	144975	0	0	24
120161	4.78000000000000025	0	145005	0	0	24
120162	4.78099999999999969	0	145037	0	0	24
120163	4.78200000000000003	0	145069	0	0	24
120164	4.78300000000000036	0	145101	0	0	24
120165	4.78399999999999981	0	145133	0	0	24
120166	4.78500000000000014	0	145165	0	0	24
120167	4.78599999999999959	0	145197	0	0	24
120168	4.78699999999999992	0	145229	0	0	24
120169	4.78800000000000026	0	145261	0	0	24
120170	4.7889999999999997	0	145293	0	0	24
120171	4.79000000000000004	0	145323	0	0	24
120172	4.79100000000000037	0	145355	0	0	24
120173	4.79199999999999982	0	145387	0	0	24
120174	4.79300000000000015	0	145419	0	0	24
120175	4.79399999999999959	0	145451	0	0	24
120176	4.79499999999999993	0	145483	0	0	24
120177	4.79600000000000026	0	145515	0	0	24
120178	4.79699999999999971	0	145547	0	0	24
120179	4.79800000000000004	0	145579	0	0	24
120180	4.79900000000000038	0	145611	0	0	24
120181	4.79999999999999982	0	145641	0	0	24
120182	4.80100000000000016	0	145672	0	0	24
120183	4.8019999999999996	0	145704	0	0	24
120184	4.80299999999999994	0	145736	0	0	24
120185	4.80400000000000027	0	145768	0	0	24
120186	4.80499999999999972	0	145800	0	0	24
120187	4.80600000000000005	0	145832	0	0	24
120188	4.80700000000000038	0	145864	0	0	24
120189	4.80799999999999983	0	145896	0	0	24
120190	4.80900000000000016	0	145928	0	0	24
120191	4.80999999999999961	0	145958	0	0	24
120192	4.81099999999999994	0	145990	0	0	24
120193	4.81200000000000028	0	146022	0	0	24
120194	4.81299999999999972	0	146054	0	0	24
120195	4.81400000000000006	0	146086	0	0	24
120196	4.81500000000000039	0	146118	0	0	24
120197	4.81599999999999984	0	146150	0	0	24
120198	4.81700000000000017	0	146182	0	0	24
120199	4.81799999999999962	0	146214	0	0	24
120200	4.81899999999999995	0	146246	0	0	24
120201	4.82000000000000028	0	146276	0	0	24
120202	4.82099999999999973	0	146308	0	0	24
120203	4.82200000000000006	0	146340	0	0	24
120204	4.8230000000000004	0	146372	0	0	24
120205	4.82399999999999984	0	146404	0	0	24
120206	4.82500000000000018	0	146436	0	0	24
120207	4.82599999999999962	0	146468	0	0	24
120208	4.82699999999999996	0	146500	0	0	24
120209	4.82800000000000029	0	146532	0	0	24
120210	4.82899999999999974	0	146564	0	0	24
120211	4.83000000000000007	0	146594	0	0	24
120212	4.83100000000000041	0	146626	0	0	24
120213	4.83199999999999985	0	146658	0	0	24
120214	4.83300000000000018	0	146690	0	0	24
120215	4.83399999999999963	0	146722	0	0	24
120216	4.83499999999999996	0	146754	0	0	24
120217	4.8360000000000003	0	146786	0	0	24
120218	4.83699999999999974	0	146818	0	0	24
120219	4.83800000000000008	0	146850	0	0	24
120220	4.83900000000000041	0	146882	0	0	24
120221	4.83999999999999986	0	146912	0	0	24
120222	4.84100000000000019	0	146944	0	0	24
120223	4.84199999999999964	0	146976	0	0	24
120224	4.84299999999999997	0	147008	0	0	24
120225	4.84400000000000031	0	147040	0	0	24
120226	4.84499999999999975	0	147072	0	0	24
120227	4.84600000000000009	0	147104	0	0	24
120228	4.84700000000000042	0	147136	0	0	24
120229	4.84799999999999986	0	147168	0	0	24
120230	4.8490000000000002	0	147200	0	0	24
120231	4.84999999999999964	0	147230	0	0	24
120232	4.85099999999999998	0	147261	0	0	24
120233	4.85200000000000031	0	147293	0	0	24
120234	4.85299999999999976	0	147325	0	0	24
120235	4.85400000000000009	0	147357	0	0	24
120236	4.85500000000000043	0	147389	0	0	24
120237	4.85599999999999987	0	147421	0	0	24
120238	4.85700000000000021	0	147453	0	0	24
120239	4.85799999999999965	0	147485	0	0	24
120240	4.85899999999999999	0	147517	0	0	24
120241	4.86000000000000032	0	147547	0	0	24
120242	4.86099999999999977	0	147579	0	0	24
120243	4.8620000000000001	0	147611	0	0	24
120244	4.86300000000000043	0	147643	0	0	24
120245	4.86399999999999988	0	147675	0	0	24
120246	4.86500000000000021	0	147707	0	0	24
120247	4.86599999999999966	0	147739	0	0	24
120248	4.86699999999999999	0	147771	0	0	24
120249	4.86800000000000033	0	147803	0	0	24
120250	4.86899999999999977	0	147835	0	0	24
120251	4.87000000000000011	0	147865	0	0	24
120252	4.87100000000000044	0	147897	0	0	24
120253	4.87199999999999989	0	147929	0	0	24
120254	4.87300000000000022	0	147961	0	0	24
120255	4.87399999999999967	0	147993	0	0	24
120256	4.875	0	148025	0	0	24
120257	4.87600000000000033	0	148057	0	0	24
120258	4.87699999999999978	0	148089	0	0	24
120259	4.87800000000000011	0	148121	0	0	24
120260	4.87899999999999956	0	148153	0	0	24
120261	4.87999999999999989	0	148183	0	0	24
120262	4.88100000000000023	0	148215	0	0	24
120263	4.88199999999999967	0	148247	0	0	24
120264	4.88300000000000001	0	148279	0	0	24
120265	4.88400000000000034	0	148311	0	0	24
120266	4.88499999999999979	0	148343	0	0	24
120267	4.88600000000000012	0	148375	0	0	24
120268	4.88699999999999957	0	148407	0	0	24
120269	4.8879999999999999	0	148439	0	0	24
120270	4.88900000000000023	0	148471	0	0	24
120271	4.88999999999999968	0	148501	0	0	24
120272	4.89100000000000001	0	148533	0	0	24
120273	4.89200000000000035	0	148565	0	0	24
120274	4.89299999999999979	0	148597	0	0	24
120275	4.89400000000000013	0	148629	0	0	24
120276	4.89499999999999957	0	148661	0	0	24
120277	4.89599999999999991	0	148693	0	0	24
120278	4.89700000000000024	0	148725	0	0	24
120279	4.89799999999999969	0	148757	0	0	24
120280	4.89900000000000002	0	148789	0	0	24
120281	4.90000000000000036	0	148819	0	0	24
120282	4.9009999999999998	0	148850	0	0	24
120283	4.90200000000000014	0	148882	0	0	24
120284	4.90299999999999958	0	148914	0	0	24
120285	4.90399999999999991	0	148946	0	0	24
120286	4.90500000000000025	0	148978	0	0	24
120287	4.90599999999999969	0	149010	0	0	24
120288	4.90700000000000003	0	149042	0	0	24
120289	4.90800000000000036	0	149074	0	0	24
120290	4.90899999999999981	0	149106	0	0	24
120291	4.91000000000000014	0	149136	0	0	24
120292	4.91099999999999959	0	149168	0	0	24
120293	4.91199999999999992	0	149200	0	0	24
120294	4.91300000000000026	0	149232	0	0	24
120295	4.9139999999999997	0	149264	0	0	24
120296	4.91500000000000004	0	149296	0	0	24
120297	4.91600000000000037	0	149328	0	0	24
120298	4.91699999999999982	0	149360	0	0	24
120299	4.91800000000000015	0	149392	0	0	24
120300	4.91899999999999959	0	149424	0	0	24
120301	4.91999999999999993	0	149454	0	0	24
120302	4.92100000000000026	0	149486	0	0	24
120303	4.92199999999999971	0	149518	0	0	24
120304	4.92300000000000004	0	149550	0	0	24
120305	4.92400000000000038	0	149582	0	0	24
120306	4.92499999999999982	0	149614	0	0	24
120307	4.92600000000000016	0	149646	0	0	24
120308	4.9269999999999996	0	149678	0	0	24
120309	4.92799999999999994	0	149710	0	0	24
120310	4.92900000000000027	0	149742	0	0	24
120311	4.92999999999999972	0	149772	0	0	24
120312	4.93100000000000005	0	149804	0	0	24
120313	4.93200000000000038	0	149836	0	0	24
120314	4.93299999999999983	0	149868	0	0	24
120315	4.93400000000000016	0	149900	0	0	24
120316	4.93499999999999961	0	149932	0	0	24
120317	4.93599999999999994	0	149964	0	0	24
120318	4.93700000000000028	0	149996	0	0	24
120319	4.93799999999999972	0	150028	0	0	24
120320	4.93900000000000006	0	150060	0	0	24
120321	4.94000000000000039	0	150090	0	0	24
120322	4.94099999999999984	0	150122	0	0	24
120323	4.94200000000000017	0	150154	0	0	24
120324	4.94299999999999962	0	150186	0	0	24
120325	4.94399999999999995	0	150218	0	0	24
120326	4.94500000000000028	0	150250	0	0	24
120327	4.94599999999999973	0	150282	0	0	24
120328	4.94700000000000006	0	150314	0	0	24
120329	4.9480000000000004	0	150346	0	0	24
120330	4.94899999999999984	0	150378	0	0	24
120331	4.95000000000000018	0	150408	0	0	24
120332	4.95099999999999962	0	150439	0	0	24
120333	4.95199999999999996	0	150471	0	0	24
120334	4.95300000000000029	0	150503	0	0	24
120335	4.95399999999999974	0	150535	0	0	24
120336	4.95500000000000007	0	150567	0	0	24
120337	4.95600000000000041	0	150599	0	0	24
120338	4.95699999999999985	0	150631	0	0	24
120339	4.95800000000000018	0	150663	0	0	24
120340	4.95899999999999963	0	150695	0	0	24
120341	4.95999999999999996	0	150725	0	0	24
120342	4.9610000000000003	0	150757	0	0	24
120343	4.96199999999999974	0	150789	0	0	24
120344	4.96300000000000008	0	150821	0	0	24
120345	4.96400000000000041	0	150853	0	0	24
120346	4.96499999999999986	0	150885	0	0	24
120347	4.96600000000000019	0	150917	0	0	24
120348	4.96699999999999964	0	150949	0	0	24
120349	4.96799999999999997	0	150981	0	0	24
120350	4.96900000000000031	0	151013	0	0	24
120351	4.96999999999999975	0	151043	0	0	24
120352	4.97100000000000009	0	151075	0	0	24
120353	4.97200000000000042	0	151107	0	0	24
120354	4.97299999999999986	0	151139	0	0	24
120355	4.9740000000000002	0	151171	0	0	24
120356	4.97499999999999964	0	151203	0	0	24
120357	4.97599999999999998	0	151235	0	0	24
120358	4.97700000000000031	0	151267	0	0	24
120359	4.97799999999999976	0	151299	0	0	24
120360	4.97900000000000009	0	151331	0	0	24
120361	4.98000000000000043	0	151361	0	0	24
120362	4.98099999999999987	0	151393	0	0	24
120363	4.98200000000000021	0	151425	0	0	24
120364	4.98299999999999965	0	151457	0	0	24
120365	4.98399999999999999	0	151489	0	0	24
120366	4.98500000000000032	0	151521	0	0	24
120367	4.98599999999999977	0	151553	0	0	24
120368	4.9870000000000001	0	151585	0	0	24
120369	4.98800000000000043	0	151617	0	0	24
120370	4.98899999999999988	0	151649	0	0	24
120371	4.99000000000000021	0	151679	0	0	24
120372	4.99099999999999966	0	151711	0	0	24
120373	4.99199999999999999	0	151743	0	0	24
120374	4.99300000000000033	0	151775	0	0	24
120375	4.99399999999999977	0	151807	0	0	24
120376	4.99500000000000011	0	151839	0	0	24
120377	4.99600000000000044	0	151871	0	0	24
120378	4.99699999999999989	0	151903	0	0	24
120379	4.99800000000000022	0	151935	0	0	24
120380	4.99899999999999967	0	151967	0	0	24
120381	5	0	151996	0	0	24
120382	5.00100000000000033	0	152028	0	0	24
120383	5.00199999999999978	0	152060	0	0	24
120384	5.00300000000000011	0	152092	0	0	24
120385	5.00399999999999956	0	152124	0	0	24
120386	5.00499999999999989	0	152156	0	0	24
120387	5.00600000000000023	0	152188	0	0	24
120388	5.00699999999999967	0	152220	0	0	24
120389	5.00800000000000001	0	152252	0	0	24
120390	5.00900000000000034	0	152284	0	0	24
120391	5.00999999999999979	0	152314	0	0	24
120392	5.01100000000000012	0	152346	0	0	24
120393	5.01199999999999957	0	152378	0	0	24
120394	5.0129999999999999	0	152410	0	0	24
120395	5.01400000000000023	0	152442	0	0	24
120396	5.01499999999999968	0	152474	0	0	24
120397	5.01600000000000001	0	152506	0	0	24
120398	5.01700000000000035	0	152538	0	0	24
120399	5.01799999999999979	0	152570	0	0	24
120400	5.01900000000000013	0	152602	0	0	24
120401	5.01999999999999957	0	152632	0	0	24
120402	5.02099999999999991	0	152664	0	0	24
120403	5.02200000000000024	0	152696	0	0	24
120404	5.02299999999999969	0	152728	0	0	24
120405	5.02400000000000002	0	152760	0	0	24
120406	5.02500000000000036	0	152792	0	0	24
120407	5.0259999999999998	0	152824	0	0	24
120408	5.02700000000000014	0	152856	0	0	24
120409	5.02799999999999958	0	152888	0	0	24
120410	5.02899999999999991	0	152920	0	0	24
120411	5.03000000000000025	0	152950	0	0	24
120412	5.03099999999999969	0	152982	0	0	24
120413	5.03200000000000003	0	153014	0	0	24
120414	5.03300000000000036	0	153046	0	0	24
120415	5.03399999999999981	0	153078	0	0	24
120416	5.03500000000000014	0	153110	0	0	24
120417	5.03599999999999959	0	153142	0	0	24
120418	5.03699999999999992	0	153174	0	0	24
120419	5.03800000000000026	0	153206	0	0	24
120420	5.0389999999999997	0	153238	0	0	24
120421	5.04000000000000004	0	153268	0	0	24
120422	5.04100000000000037	0	153300	0	0	24
120423	5.04199999999999982	0	153332	0	0	24
120424	5.04300000000000015	0	153364	0	0	24
120425	5.04399999999999959	0	153396	0	0	24
120426	5.04499999999999993	0	153428	0	0	24
120427	5.04600000000000026	0	153460	0	0	24
120428	5.04699999999999971	0	153492	0	0	24
120429	5.04800000000000004	0	153524	0	0	24
120430	5.04900000000000038	0	153556	0	0	24
120431	5.04999999999999982	0	153585	0	0	24
120432	5.05100000000000016	0	153617	0	0	24
120433	5.0519999999999996	0	153649	0	0	24
120434	5.05299999999999994	0	153681	0	0	24
120435	5.05400000000000027	0	153713	0	0	24
120436	5.05499999999999972	0	153745	0	0	24
120437	5.05600000000000005	0	153777	0	0	24
120438	5.05700000000000038	0	153809	0	0	24
120439	5.05799999999999983	0	153841	0	0	24
120440	5.05900000000000016	0	153873	0	0	24
120441	5.05999999999999961	0	153903	0	0	24
120442	5.06099999999999994	0	153935	0	0	24
120443	5.06200000000000028	0	153967	0	0	24
120444	5.06299999999999972	0	153999	0	0	24
120445	5.06400000000000006	0	154031	0	0	24
120446	5.06500000000000039	0	154063	0	0	24
120447	5.06599999999999984	0	154095	0	0	24
120448	5.06700000000000017	0	154127	0	0	24
120449	5.06799999999999962	0	154159	0	0	24
120450	5.06899999999999995	0	154191	0	0	24
120451	5.07000000000000028	0	154221	0	0	24
120452	5.07099999999999973	0	154253	0	0	24
120453	5.07200000000000006	0	154285	0	0	24
120454	5.0730000000000004	0	154317	0	0	24
120455	5.07399999999999984	0	154349	0	0	24
120456	5.07500000000000018	0	154381	0	0	24
120457	5.07599999999999962	0	154413	0	0	24
120458	5.07699999999999996	0	154445	0	0	24
120459	5.07800000000000029	0	154477	0	0	24
120460	5.07899999999999974	0	154509	0	0	24
120461	5.08000000000000007	0	154539	0	0	24
120462	5.08100000000000041	0	154571	0	0	24
120463	5.08199999999999985	0	154603	0	0	24
120464	5.08300000000000018	0	154635	0	0	24
120465	5.08399999999999963	0	154667	0	0	24
120466	5.08499999999999996	0	154699	0	0	24
120467	5.0860000000000003	0	154731	0	0	24
120468	5.08699999999999974	0	154763	0	0	24
120469	5.08800000000000008	0	154795	0	0	24
120470	5.08900000000000041	0	154827	0	0	24
120471	5.08999999999999986	0	154857	0	0	24
120472	5.09100000000000019	0	154889	0	0	24
120473	5.09199999999999964	0	154921	0	0	24
120474	5.09299999999999997	0	154953	0	0	24
120475	5.09400000000000031	0	154985	0	0	24
120476	5.09499999999999975	0	155017	0	0	24
120477	5.09600000000000009	0	155049	0	0	24
120478	5.09700000000000042	0	155081	0	0	24
120479	5.09799999999999986	0	155113	0	0	24
120480	5.0990000000000002	0	155145	0	0	24
120481	5.09999999999999964	0	155174	0	0	24
120482	5.10099999999999998	0	155206	0	0	24
120483	5.10200000000000031	0	155238	0	0	24
120484	5.10299999999999976	0	155270	0	0	24
120485	5.10400000000000009	0	155302	0	0	24
120486	5.10500000000000043	0	155334	0	0	24
120487	5.10599999999999987	0	155366	0	0	24
120488	5.10700000000000021	0	155398	0	0	24
120489	5.10799999999999965	0	155430	0	0	24
120490	5.10899999999999999	0	155462	0	0	24
120491	5.11000000000000032	0	155492	0	0	24
120492	5.11099999999999977	0	155524	0	0	24
120493	5.1120000000000001	0	155556	0	0	24
120494	5.11300000000000043	0	155588	0	0	24
120495	5.11399999999999988	0	155620	0	0	24
120496	5.11500000000000021	0	155652	0	0	24
120497	5.11599999999999966	0	155684	0	0	24
120498	5.11699999999999999	0	155716	0	0	24
120499	5.11800000000000033	0	155748	0	0	24
120500	5.11899999999999977	0	155780	0	0	24
120501	5.12000000000000011	0	155810	0	0	24
120502	5.12100000000000044	0	155842	0	0	24
120503	5.12199999999999989	0	155874	0	0	24
120504	5.12300000000000022	0	155906	0	0	24
120505	5.12399999999999967	0	155938	0	0	24
120506	5.125	0	155970	0	0	24
120507	5.12600000000000033	0	156002	0	0	24
120508	5.12699999999999978	0	156034	0	0	24
120509	5.12800000000000011	0	156066	0	0	24
120510	5.12899999999999956	0	156098	0	0	24
120511	5.12999999999999989	0	156128	0	0	24
120512	5.13100000000000023	0	156160	0	0	24
120513	5.13199999999999967	0	156192	0	0	24
120514	5.13300000000000001	0	156224	0	0	24
120515	5.13400000000000034	0	156256	0	0	24
120516	5.13499999999999979	0	156288	0	0	24
120517	5.13600000000000012	0	156320	0	0	24
120518	5.13699999999999957	0	156352	0	0	24
120519	5.1379999999999999	0	156384	0	0	24
120520	5.13900000000000023	0	156416	0	0	24
120521	5.13999999999999968	0	156446	0	0	24
120522	5.14100000000000001	0	156478	0	0	24
120523	5.14200000000000035	0	156510	0	0	24
120524	5.14299999999999979	0	156542	0	0	24
120525	5.14400000000000013	0	156574	0	0	24
120526	5.14499999999999957	0	156606	0	0	24
120527	5.14599999999999991	0	156638	0	0	24
120528	5.14700000000000024	0	156670	0	0	24
120529	5.14799999999999969	0	156702	0	0	24
120530	5.14900000000000002	0	156734	0	0	24
120531	5.15000000000000036	0	156763	0	0	24
120532	5.1509999999999998	0	156795	0	0	24
120533	5.15200000000000014	0	156827	0	0	24
120534	5.15299999999999958	0	156859	0	0	24
120535	5.15399999999999991	0	156891	0	0	24
120536	5.15500000000000025	0	156923	0	0	24
120537	5.15599999999999969	0	156955	0	0	24
120538	5.15700000000000003	0	156987	0	0	24
120539	5.15800000000000036	0	157019	0	0	24
120540	5.15899999999999981	0	157051	0	0	24
120541	5.16000000000000014	0	157081	0	0	24
120542	5.16099999999999959	0	157113	0	0	24
120543	5.16199999999999992	0	157145	0	0	24
120544	5.16300000000000026	0	157177	0	0	24
120545	5.1639999999999997	0	157209	0	0	24
120546	5.16500000000000004	0	157241	0	0	24
120547	5.16600000000000037	0	157273	0	0	24
120548	5.16699999999999982	0	157305	0	0	24
120549	5.16800000000000015	0	157337	0	0	24
120550	5.16899999999999959	0	157369	0	0	24
120551	5.16999999999999993	0	157399	0	0	24
120552	5.17100000000000026	0	157431	0	0	24
120553	5.17199999999999971	0	157463	0	0	24
120554	5.17300000000000004	0	157495	0	0	24
120555	5.17400000000000038	0	157527	0	0	24
120556	5.17499999999999982	0	157559	0	0	24
120557	5.17600000000000016	0	157591	0	0	24
120558	5.1769999999999996	0	157623	0	0	24
120559	5.17799999999999994	0	157655	0	0	24
120560	5.17900000000000027	0	157687	0	0	24
120561	5.17999999999999972	0	157717	0	0	24
120562	5.18100000000000005	0	157749	0	0	24
120563	5.18200000000000038	0	157781	0	0	24
120564	5.18299999999999983	0	157813	0	0	24
120565	5.18400000000000016	0	157845	0	0	24
120566	5.18499999999999961	0	157877	0	0	24
120567	5.18599999999999994	0	157909	0	0	24
120568	5.18700000000000028	0	157941	0	0	24
120569	5.18799999999999972	0	157973	0	0	24
120570	5.18900000000000006	0	158005	0	0	24
120571	5.19000000000000039	0	158035	0	0	24
120572	5.19099999999999984	0	158067	0	0	24
120573	5.19200000000000017	0	158099	0	0	24
120574	5.19299999999999962	0	158131	0	0	24
120575	5.19399999999999995	0	158163	0	0	24
120576	5.19500000000000028	0	158195	0	0	24
120577	5.19599999999999973	0	158227	0	0	24
120578	5.19700000000000006	0	158259	0	0	24
120579	5.1980000000000004	0	158291	0	0	24
120580	5.19899999999999984	0	158323	0	0	24
120581	5.20000000000000018	0	158352	0	0	24
120582	5.20099999999999962	0	158384	0	0	24
120583	5.20199999999999996	0	158416	0	0	24
120584	5.20300000000000029	0	158448	0	0	24
120585	5.20399999999999974	0	158480	0	0	24
120586	5.20500000000000007	0	158512	0	0	24
120587	5.20600000000000041	0	158544	0	0	24
120588	5.20699999999999985	0	158576	0	0	24
120589	5.20800000000000018	0	158608	0	0	24
120590	5.20899999999999963	0	158640	0	0	24
120591	5.20999999999999996	0	158670	0	0	24
120592	5.2110000000000003	0	158702	0	0	24
120593	5.21199999999999974	0	158734	0	0	24
120594	5.21300000000000008	0	158766	0	0	24
120595	5.21400000000000041	0	158798	0	0	24
120596	5.21499999999999986	0	158830	0	0	24
120597	5.21600000000000019	0	158862	0	0	24
120598	5.21699999999999964	0	158894	0	0	24
120599	5.21799999999999997	0	158926	0	0	24
120600	5.21900000000000031	0	158958	0	0	24
120601	5.21999999999999975	0	158988	0	0	24
120602	5.22100000000000009	0	159020	0	0	24
120603	5.22200000000000042	0	159052	0	0	24
120604	5.22299999999999986	0	159084	0	0	24
120605	5.2240000000000002	0	159116	0	0	24
120606	5.22499999999999964	0	159148	0	0	24
120607	5.22599999999999998	0	159180	0	0	24
120608	5.22700000000000031	0	159212	0	0	24
120609	5.22799999999999976	0	159244	0	0	24
120610	5.22900000000000009	0	159276	0	0	24
120611	5.23000000000000043	0	159306	0	0	24
120612	5.23099999999999987	0	159338	0	0	24
120613	5.23200000000000021	0	159370	0	0	24
120614	5.23299999999999965	0	159402	0	0	24
120615	5.23399999999999999	0	159434	0	0	24
120616	5.23500000000000032	0	159466	0	0	24
120617	5.23599999999999977	0	159498	0	0	24
120618	5.2370000000000001	0	159530	0	0	24
120619	5.23800000000000043	0	159562	0	0	24
120620	5.23899999999999988	0	159594	0	0	24
120621	5.24000000000000021	0	159624	0	0	24
120622	5.24099999999999966	0	159656	0	0	24
120623	5.24199999999999999	0	159688	0	0	24
120624	5.24300000000000033	0	159720	0	0	24
120625	5.24399999999999977	0	159752	0	0	24
120626	5.24500000000000011	0	159784	0	0	24
120627	5.24600000000000044	0	159816	0	0	24
120628	5.24699999999999989	0	159848	0	0	24
120629	5.24800000000000022	0	159880	0	0	24
120630	5.24899999999999967	0	159912	0	0	24
120631	5.25	0	159941	0	0	24
120632	5.25100000000000033	0	159973	0	0	24
120633	5.25199999999999978	0	160005	0	0	24
120634	5.25300000000000011	0	160037	0	0	24
120635	5.25399999999999956	0	160069	0	0	24
120636	5.25499999999999989	0	160101	0	0	24
120637	5.25600000000000023	0	160133	0	0	24
120638	5.25699999999999967	0	160165	0	0	24
120639	5.25800000000000001	0	160197	0	0	24
120640	5.25900000000000034	0	160229	0	0	24
120641	5.25999999999999979	0	160259	0	0	24
120642	5.26100000000000012	0	160291	0	0	24
120643	5.26199999999999957	0	160323	0	0	24
120644	5.2629999999999999	0	160355	0	0	24
120645	5.26400000000000023	0	160387	0	0	24
120646	5.26499999999999968	0	160419	0	0	24
120647	5.26600000000000001	0	160451	0	0	24
120648	5.26700000000000035	0	160483	0	0	24
120649	5.26799999999999979	0	160515	0	0	24
120650	5.26900000000000013	0	160547	0	0	24
120651	5.26999999999999957	0	160577	0	0	24
120652	5.27099999999999991	0	160609	0	0	24
120653	5.27200000000000024	0	160641	0	0	24
120654	5.27299999999999969	0	160673	0	0	24
120655	5.27400000000000002	0	160705	0	0	24
120656	5.27500000000000036	0	160737	0	0	24
120657	5.2759999999999998	0	160769	0	0	24
120658	5.27700000000000014	0	160801	0	0	24
120659	5.27799999999999958	0	160833	0	0	24
120660	5.27899999999999991	0	160865	0	0	24
120661	5.28000000000000025	0	160895	0	0	24
120662	5.28099999999999969	0	160927	0	0	24
120663	5.28200000000000003	0	160959	0	0	24
120664	5.28300000000000036	0	160991	0	0	24
120665	5.28399999999999981	0	161023	0	0	24
120666	5.28500000000000014	0	161055	0	0	24
120667	5.28599999999999959	0	161087	0	0	24
120668	5.28699999999999992	0	161119	0	0	24
120669	5.28800000000000026	0	161151	0	0	24
120670	5.2889999999999997	0	161183	0	0	24
120671	5.29000000000000004	0	161213	0	0	24
120672	5.29100000000000037	0	161245	0	0	24
120673	5.29199999999999982	0	161277	0	0	24
120674	5.29300000000000015	0	161309	0	0	24
120675	5.29399999999999959	0	161341	0	0	24
120676	5.29499999999999993	0	161373	0	0	24
120677	5.29600000000000026	0	161405	0	0	24
120678	5.29699999999999971	0	161437	0	0	24
120679	5.29800000000000004	0	161469	0	0	24
120680	5.29900000000000038	0	161501	0	0	24
120681	5.29999999999999982	0	161530	0	0	24
120682	5.30100000000000016	0	161562	0	0	24
120683	5.3019999999999996	0	161594	0	0	24
120684	5.30299999999999994	0	161626	0	0	24
120685	5.30400000000000027	0	161658	0	0	24
120686	5.30499999999999972	0	161690	0	0	24
120687	5.30600000000000005	0	161722	0	0	24
120688	5.30700000000000038	0	161754	0	0	24
120689	5.30799999999999983	0	161786	0	0	24
120690	5.30900000000000016	0	161818	0	0	24
120691	5.30999999999999961	0	161848	0	0	24
120692	5.31099999999999994	0	161880	0	0	24
120693	5.31200000000000028	0	161912	0	0	24
120694	5.31299999999999972	0	161944	0	0	24
120695	5.31400000000000006	0	161976	0	0	24
120696	5.31500000000000039	0	162008	0	0	24
120697	5.31599999999999984	0	162040	0	0	24
120698	5.31700000000000017	0	162072	0	0	24
120699	5.31799999999999962	0	162104	0	0	24
120700	5.31899999999999995	0	162136	0	0	24
120701	5.32000000000000028	0	162166	0	0	24
120702	5.32099999999999973	0	162198	0	0	24
120703	5.32200000000000006	0	162230	0	0	24
120704	5.3230000000000004	0	162262	0	0	24
120705	5.32399999999999984	0	162294	0	0	24
120706	5.32500000000000018	0	162326	0	0	24
120707	5.32599999999999962	0	162358	0	0	24
120708	5.32699999999999996	0	162390	0	0	24
120709	5.32800000000000029	0	162422	0	0	24
120710	5.32899999999999974	0	162454	0	0	24
120711	5.33000000000000007	0	162484	0	0	24
120712	5.33100000000000041	0	162516	0	0	24
120713	5.33199999999999985	0	162548	0	0	24
120714	5.33300000000000018	0	162580	0	0	24
120715	5.33399999999999963	0	162612	0	0	24
120716	5.33499999999999996	0	162644	0	0	24
120717	5.3360000000000003	0	162676	0	0	24
120718	5.33699999999999974	0	162708	0	0	24
120719	5.33800000000000008	0	162740	0	0	24
120720	5.33900000000000041	0	162772	0	0	24
120721	5.33999999999999986	0	162802	0	0	24
120722	5.34100000000000019	0	162834	0	0	24
120723	5.34199999999999964	0	162866	0	0	24
120724	5.34299999999999997	0	162898	0	0	24
120725	5.34400000000000031	0	162930	0	0	24
120726	5.34499999999999975	0	162962	0	0	24
120727	5.34600000000000009	0	162994	0	0	24
120728	5.34700000000000042	0	163026	0	0	24
120729	5.34799999999999986	0	163058	0	0	24
120730	5.3490000000000002	0	163090	0	0	24
120731	5.34999999999999964	0	163119	0	0	24
120732	5.35099999999999998	0	163151	0	0	24
120733	5.35200000000000031	0	163183	0	0	24
120734	5.35299999999999976	0	163215	0	0	24
120735	5.35400000000000009	0	163247	0	0	24
120736	5.35500000000000043	0	163279	0	0	24
120737	5.35599999999999987	0	163311	0	0	24
120738	5.35700000000000021	0	163343	0	0	24
120739	5.35799999999999965	0	163375	0	0	24
120740	5.35899999999999999	0	163407	0	0	24
120741	5.36000000000000032	0	163437	0	0	24
120742	5.36099999999999977	0	163469	0	0	24
120743	5.3620000000000001	0	163501	0	0	24
120744	5.36300000000000043	0	163533	0	0	24
120745	5.36399999999999988	0	163565	0	0	24
120746	5.36500000000000021	0	163597	0	0	24
120747	5.36599999999999966	0	163629	0	0	24
120748	5.36699999999999999	0	163661	0	0	24
120749	5.36800000000000033	0	163693	0	0	24
120750	5.36899999999999977	0	163725	0	0	24
120751	5.37000000000000011	0	163755	0	0	24
120752	5.37100000000000044	0	163787	0	0	24
120753	5.37199999999999989	0	163819	0	0	24
120754	5.37300000000000022	0	163851	0	0	24
120755	5.37399999999999967	0	163883	0	0	24
120756	5.375	0	163915	0	0	24
120757	5.37600000000000033	0	163947	0	0	24
120758	5.37699999999999978	0	163979	0	0	24
120759	5.37800000000000011	0	164011	0	0	24
120760	5.37899999999999956	0	164043	0	0	24
120761	5.37999999999999989	0	164073	0	0	24
120762	5.38100000000000023	0	164105	0	0	24
120763	5.38199999999999967	0	164137	0	0	24
120764	5.38300000000000001	0	164169	0	0	24
120765	5.38400000000000034	0	164201	0	0	24
120766	5.38499999999999979	0	164233	0	0	24
120767	5.38600000000000012	0	164265	0	0	24
120768	5.38699999999999957	0	164297	0	0	24
120769	5.3879999999999999	0	164329	0	0	24
120770	5.38900000000000023	0	164361	0	0	24
120771	5.38999999999999968	0	164391	0	0	24
120772	5.39100000000000001	0	164423	0	0	24
120773	5.39200000000000035	0	164455	0	0	24
120774	5.39299999999999979	0	164487	0	0	24
120775	5.39400000000000013	0	164519	0	0	24
120776	5.39499999999999957	0	164551	0	0	24
120777	5.39599999999999991	0	164583	0	0	24
120778	5.39700000000000024	0	164615	0	0	24
120779	5.39799999999999969	0	164647	0	0	24
120780	5.39900000000000002	0	164679	0	0	24
120781	5.40000000000000036	0	164708	0	0	24
120782	5.4009999999999998	0	164740	0	0	24
120783	5.40200000000000014	0	164772	0	0	24
120784	5.40299999999999958	0	164804	0	0	24
120785	5.40399999999999991	0	164836	0	0	24
120786	5.40500000000000025	0	164868	0	0	24
120787	5.40599999999999969	0	164900	0	0	24
120788	5.40700000000000003	0	164932	0	0	24
120789	5.40800000000000036	0	164964	0	0	24
120790	5.40899999999999981	0	164996	0	0	24
120791	5.41000000000000014	0	165026	0	0	24
120792	5.41099999999999959	0	165058	0	0	24
120793	5.41199999999999992	0	165090	0	0	24
120794	5.41300000000000026	0	165122	0	0	24
120795	5.4139999999999997	0	165154	0	0	24
120796	5.41500000000000004	0	165186	0	0	24
120797	5.41600000000000037	0	165218	0	0	24
120798	5.41699999999999982	0	165250	0	0	24
120799	5.41800000000000015	0	165282	0	0	24
120800	5.41899999999999959	0	165314	0	0	24
120801	5.41999999999999993	0	165344	0	0	24
120802	5.42100000000000026	0	165376	0	0	24
120803	5.42199999999999971	0	165408	0	0	24
120804	5.42300000000000004	0	165440	0	0	24
120805	5.42400000000000038	0	165472	0	0	24
120806	5.42499999999999982	0	165504	0	0	24
120807	5.42600000000000016	0	165536	0	0	24
120808	5.4269999999999996	0	165568	0	0	24
120809	5.42799999999999994	0	165600	0	0	24
120810	5.42900000000000027	0	165632	0	0	24
120811	5.42999999999999972	0	165662	0	0	24
120812	5.43100000000000005	0	165694	0	0	24
120813	5.43200000000000038	0	165726	0	0	24
120814	5.43299999999999983	0	165758	0	0	24
120815	5.43400000000000016	0	165790	0	0	24
120816	5.43499999999999961	0	165822	0	0	24
120817	5.43599999999999994	0	165854	0	0	24
120818	5.43700000000000028	0	165886	0	0	24
120819	5.43799999999999972	0	165918	0	0	24
120820	5.43900000000000006	0	165950	0	0	24
120821	5.44000000000000039	0	165980	0	0	24
120822	5.44099999999999984	0	166012	0	0	24
120823	5.44200000000000017	0	166044	0	0	24
120824	5.44299999999999962	0	166076	0	0	24
120825	5.44399999999999995	0	166108	0	0	24
120826	5.44500000000000028	0	166140	0	0	24
120827	5.44599999999999973	0	166172	0	0	24
120828	5.44700000000000006	0	166204	0	0	24
120829	5.4480000000000004	0	166236	0	0	24
120830	5.44899999999999984	0	166268	0	0	24
120831	5.45000000000000018	0	166297	0	0	24
120832	5.45099999999999962	0	166329	0	0	24
120833	5.45199999999999996	0	166361	0	0	24
120834	5.45300000000000029	0	166393	0	0	24
120835	5.45399999999999974	0	166425	0	0	24
120836	5.45500000000000007	0	166457	0	0	24
120837	5.45600000000000041	0	166489	0	0	24
120838	5.45699999999999985	0	166521	0	0	24
120839	5.45800000000000018	0	166553	0	0	24
120840	5.45899999999999963	0	166585	0	0	24
120841	5.45999999999999996	0	166615	0	0	24
120842	5.4610000000000003	0	166647	0	0	24
120843	5.46199999999999974	0	166679	0	0	24
120844	5.46300000000000008	0	166711	0	0	24
120845	5.46400000000000041	0	166743	0	0	24
120846	5.46499999999999986	0	166775	0	0	24
120847	5.46600000000000019	0	166807	0	0	24
120848	5.46699999999999964	0	166839	0	0	24
120849	5.46799999999999997	0	166871	0	0	24
120850	5.46900000000000031	0	166903	0	0	24
120851	5.46999999999999975	0	166933	0	0	24
120852	5.47100000000000009	0	166965	0	0	24
120853	5.47200000000000042	0	166997	0	0	24
120854	5.47299999999999986	0	167029	0	0	24
120855	5.4740000000000002	0	167061	0	0	24
120856	5.47499999999999964	0	167093	0	0	24
120857	5.47599999999999998	0	167125	0	0	24
120858	5.47700000000000031	0	167157	0	0	24
120859	5.47799999999999976	0	167189	0	0	24
120860	5.47900000000000009	0	167221	0	0	24
120861	5.48000000000000043	0	167251	0	0	24
120862	5.48099999999999987	0	167283	0	0	24
120863	5.48200000000000021	0	167315	0	0	24
120864	5.48299999999999965	0	167347	0	0	24
120865	5.48399999999999999	0	167379	0	0	24
120866	5.48500000000000032	0	167411	0	0	24
120867	5.48599999999999977	0	167443	0	0	24
120868	5.4870000000000001	0	167475	0	0	24
120869	5.48800000000000043	0	167507	0	0	24
120870	5.48899999999999988	0	167539	0	0	24
120871	5.49000000000000021	0	167569	0	0	24
120872	5.49099999999999966	0	167601	0	0	24
120873	5.49199999999999999	0	167633	0	0	24
120874	5.49300000000000033	0	167665	0	0	24
120875	5.49399999999999977	0	167697	0	0	24
120876	5.49500000000000011	0	167729	0	0	24
120877	5.49600000000000044	0	167761	0	0	24
120878	5.49699999999999989	0	167793	0	0	24
120879	5.49800000000000022	0	167825	0	0	24
120880	5.49899999999999967	0	167857	0	0	24
120881	5.5	0	167886	0	0	24
120882	5.50100000000000033	0	167918	0	0	24
120883	5.50199999999999978	0	167950	0	0	24
120884	5.50300000000000011	0	167982	0	0	24
120885	5.50399999999999956	0	168014	0	0	24
120886	5.50499999999999989	0	168046	0	0	24
120887	5.50600000000000023	0	168078	0	0	24
120888	5.50699999999999967	0	168110	0	0	24
120889	5.50800000000000001	0	168142	0	0	24
120890	5.50900000000000034	0	168174	0	0	24
120891	5.50999999999999979	0	168204	0	0	24
120892	5.51100000000000012	0	168236	0	0	24
120893	5.51199999999999957	0	168268	0	0	24
120894	5.5129999999999999	0	168300	0	0	24
120895	5.51400000000000023	0	168332	0	0	24
120896	5.51499999999999968	0	168364	0	0	24
120897	5.51600000000000001	0	168396	0	0	24
120898	5.51700000000000035	0	168428	0	0	24
120899	5.51799999999999979	0	168460	0	0	24
120900	5.51900000000000013	0	168492	0	0	24
120901	5.51999999999999957	0	168522	0	0	24
120902	5.52099999999999991	0	168554	0	0	24
120903	5.52200000000000024	0	168586	0	0	24
120904	5.52299999999999969	0	168618	0	0	24
120905	5.52400000000000002	0	168650	0	0	24
120906	5.52500000000000036	0	168682	0	0	24
120907	5.5259999999999998	0	168714	0	0	24
120908	5.52700000000000014	0	168746	0	0	24
120909	5.52799999999999958	0	168778	0	0	24
120910	5.52899999999999991	0	168810	0	0	24
120911	5.53000000000000025	0	168840	0	0	24
120912	5.53099999999999969	0	168872	0	0	24
120913	5.53200000000000003	0	168904	0	0	24
120914	5.53300000000000036	0	168936	0	0	24
120915	5.53399999999999981	0	168968	0	0	24
120916	5.53500000000000014	0	169000	0	0	24
120917	5.53599999999999959	0	169032	0	0	24
120918	5.53699999999999992	0	169064	0	0	24
120919	5.53800000000000026	0	169096	0	0	24
120920	5.5389999999999997	0	169128	0	0	24
120921	5.54000000000000004	0	169158	0	0	24
120922	5.54100000000000037	0	169190	0	0	24
120923	5.54199999999999982	0	169222	0	0	24
120924	5.54300000000000015	0	169254	0	0	24
120925	5.54399999999999959	0	169286	0	0	24
120926	5.54499999999999993	0	169318	0	0	24
120927	5.54600000000000026	0	169350	0	0	24
120928	5.54699999999999971	0	169382	0	0	24
120929	5.54800000000000004	0	169414	0	0	24
120930	5.54900000000000038	0	169446	0	0	24
120931	5.54999999999999982	0	169475	0	0	24
120932	5.55100000000000016	0	169507	0	0	24
120933	5.5519999999999996	0	169539	0	0	24
120934	5.55299999999999994	0	169571	0	0	24
120935	5.55400000000000027	0	169603	0	0	24
120936	5.55499999999999972	0	169635	0	0	24
120937	5.55600000000000005	0	169667	0	0	24
120938	5.55700000000000038	0	169699	0	0	24
120939	5.55799999999999983	0	169731	0	0	24
120940	5.55900000000000016	0	169763	0	0	24
120941	5.55999999999999961	0	169793	0	0	24
120942	5.56099999999999994	0	169825	0	0	24
120943	5.56200000000000028	0	169857	0	0	24
120944	5.56299999999999972	0	169889	0	0	24
120945	5.56400000000000006	0	169921	0	0	24
120946	5.56500000000000039	0	169953	0	0	24
120947	5.56599999999999984	0	169985	0	0	24
120948	5.56700000000000017	0	170017	0	0	24
120949	5.56799999999999962	0	170049	0	0	24
120950	5.56899999999999995	0	170081	0	0	24
120951	5.57000000000000028	0	170111	0	0	24
120952	5.57099999999999973	0	170143	0	0	24
120953	5.57200000000000006	0	170175	0	0	24
120954	5.5730000000000004	0	170207	0	0	24
120955	5.57399999999999984	0	170239	0	0	24
120956	5.57500000000000018	0	170271	0	0	24
120957	5.57599999999999962	0	170303	0	0	24
120958	5.57699999999999996	0	170335	0	0	24
120959	5.57800000000000029	0	170367	0	0	24
120960	5.57899999999999974	0	170399	0	0	24
120961	5.58000000000000007	0	170429	0	0	24
120962	5.58100000000000041	0	170461	0	0	24
120963	5.58199999999999985	0	170493	0	0	24
120964	5.58300000000000018	0	170525	0	0	24
120965	5.58399999999999963	0	170557	0	0	24
120966	5.58499999999999996	0	170589	0	0	24
120967	5.5860000000000003	0	170621	0	0	24
120968	5.58699999999999974	0	170653	0	0	24
120969	5.58800000000000008	0	170685	0	0	24
120970	5.58900000000000041	0	170717	0	0	24
120971	5.58999999999999986	0	170747	0	0	24
120972	5.59100000000000019	0	170779	0	0	24
120973	5.59199999999999964	0	170811	0	0	24
120974	5.59299999999999997	0	170843	0	0	24
120975	5.59400000000000031	0	170875	0	0	24
120976	5.59499999999999975	0	170907	0	0	24
120977	5.59600000000000009	0	170939	0	0	24
120978	5.59700000000000042	0	170971	0	0	24
120979	5.59799999999999986	0	171003	0	0	24
120980	5.5990000000000002	0	171035	0	0	24
120981	5.59999999999999964	0	171064	0	0	24
120982	5.60099999999999998	0	171096	0	0	24
120983	5.60200000000000031	0	171128	0	0	24
120984	5.60299999999999976	0	171160	0	0	24
120985	5.60400000000000009	0	171192	0	0	24
120986	5.60500000000000043	0	171224	0	0	24
120987	5.60599999999999987	0	171256	0	0	24
120988	5.60700000000000021	0	171288	0	0	24
120989	5.60799999999999965	0	171320	0	0	24
120990	5.60899999999999999	0	171352	0	0	24
120991	5.61000000000000032	0	171382	0	0	24
120992	5.61099999999999977	0	171414	0	0	24
120993	5.6120000000000001	0	171446	0	0	24
120994	5.61300000000000043	0	171478	0	0	24
120995	5.61399999999999988	0	171510	0	0	24
120996	5.61500000000000021	0	171542	0	0	24
120997	5.61599999999999966	0	171574	0	0	24
120998	5.61699999999999999	0	171606	0	0	24
120999	5.61800000000000033	0	171638	0	0	24
121000	5.61899999999999977	0	171670	0	0	24
121001	5.62000000000000011	0	171700	0	0	24
121002	5.62100000000000044	0	171732	0	0	24
121003	5.62199999999999989	0	171764	0	0	24
121004	5.62300000000000022	0	171796	0	0	24
121005	5.62399999999999967	0	171828	0	0	24
121006	5.625	0	171860	0	0	24
121007	5.62600000000000033	0	171892	0	0	24
121008	5.62699999999999978	0	171924	0	0	24
121009	5.62800000000000011	0	171956	0	0	24
121010	5.62899999999999956	0	171988	0	0	24
121011	5.62999999999999989	0	172018	0	0	24
121012	5.63100000000000023	0	172050	0	0	24
121013	5.63199999999999967	0	172082	0	0	24
121014	5.63300000000000001	0	172114	0	0	24
121015	5.63400000000000034	0	172146	0	0	24
121016	5.63499999999999979	0	172178	0	0	24
121017	5.63600000000000012	0	172210	0	0	24
121018	5.63699999999999957	0	172242	0	0	24
121019	5.6379999999999999	0	172274	0	0	24
121020	5.63900000000000023	0	172306	0	0	24
121021	5.63999999999999968	0	172336	0	0	24
121022	5.64100000000000001	0	172368	0	0	24
121023	5.64200000000000035	0	172400	0	0	24
121024	5.64299999999999979	0	172432	0	0	24
121025	5.64400000000000013	0	172464	0	0	24
121026	5.64499999999999957	0	172496	0	0	24
121027	5.64599999999999991	0	172528	0	0	24
121028	5.64700000000000024	0	172560	0	0	24
121029	5.64799999999999969	0	172592	0	0	24
121030	5.64900000000000002	0	172624	0	0	24
121031	5.65000000000000036	0	172653	0	0	24
121032	5.6509999999999998	0	172685	0	0	24
121033	5.65200000000000014	0	172717	0	0	24
121034	5.65299999999999958	0	172749	0	0	24
121035	5.65399999999999991	0	172781	0	0	24
121036	5.65500000000000025	0	172813	0	0	24
121037	5.65599999999999969	0	172845	0	0	24
121038	5.65700000000000003	0	172877	0	0	24
121039	5.65800000000000036	0	172909	0	0	24
121040	5.65899999999999981	0	172941	0	0	24
121041	5.66000000000000014	0	172971	0	0	24
121042	5.66099999999999959	0	173003	0	0	24
121043	5.66199999999999992	0	173035	0	0	24
121044	5.66300000000000026	0	173067	0	0	24
121045	5.6639999999999997	0	173099	0	0	24
121046	5.66500000000000004	0	173131	0	0	24
121047	5.66600000000000037	0	173163	0	0	24
121048	5.66699999999999982	0	173195	0	0	24
121049	5.66800000000000015	0	173227	0	0	24
121050	5.66899999999999959	0	173259	0	0	24
121051	5.66999999999999993	0	173289	0	0	24
121052	5.67100000000000026	0	173321	0	0	24
121053	5.67199999999999971	0	173353	0	0	24
121054	5.67300000000000004	0	173385	0	0	24
121055	5.67400000000000038	0	173417	0	0	24
121056	5.67499999999999982	0	173449	0	0	24
121057	5.67600000000000016	0	173481	0	0	24
121058	5.6769999999999996	0	173513	0	0	24
121059	5.67799999999999994	0	173545	0	0	24
121060	5.67900000000000027	0	173577	0	0	24
121061	5.67999999999999972	0	173607	0	0	24
121062	5.68100000000000005	0	173639	0	0	24
121063	5.68200000000000038	0	173671	0	0	24
121064	5.68299999999999983	0	173703	0	0	24
121065	5.68400000000000016	0	173735	0	0	24
121066	5.68499999999999961	0	173767	0	0	24
121067	5.68599999999999994	0	173799	0	0	24
121068	5.68700000000000028	0	173831	0	0	24
121069	5.68799999999999972	0	173863	0	0	24
121070	5.68900000000000006	0	173895	0	0	24
121071	5.69000000000000039	0	173925	0	0	24
121072	5.69099999999999984	0	173957	0	0	24
121073	5.69200000000000017	0	173989	0	0	24
121074	5.69299999999999962	0	174021	0	0	24
121075	5.69399999999999995	0	174053	0	0	24
121076	5.69500000000000028	0	174085	0	0	24
121077	5.69599999999999973	0	174117	0	0	24
121078	5.69700000000000006	0	174149	0	0	24
121079	5.6980000000000004	0	174181	0	0	24
121080	5.69899999999999984	0	174213	0	0	24
121081	5.70000000000000018	0	174242	0	0	24
121082	5.70099999999999962	0	174274	0	0	24
121083	5.70199999999999996	0	174306	0	0	24
121084	5.70300000000000029	0	174338	0	0	24
121085	5.70399999999999974	0	174370	0	0	24
121086	5.70500000000000007	0	174402	0	0	24
121087	5.70600000000000041	0	174434	0	0	24
121088	5.70699999999999985	0	174466	0	0	24
121089	5.70800000000000018	0	174498	0	0	24
121090	5.70899999999999963	0	174530	0	0	24
121091	5.70999999999999996	0	174560	0	0	24
121092	5.7110000000000003	0	174592	0	0	24
121093	5.71199999999999974	0	174624	0	0	24
121094	5.71300000000000008	0	174656	0	0	24
121095	5.71400000000000041	0	174688	0	0	24
121096	5.71499999999999986	0	174720	0	0	24
121097	5.71600000000000019	0	174752	0	0	24
121098	5.71699999999999964	0	174784	0	0	24
121099	5.71799999999999997	0	174816	0	0	24
121100	5.71900000000000031	0	174848	0	0	24
121101	5.71999999999999975	0	174878	0	0	24
121102	5.72100000000000009	0	174910	0	0	24
121103	5.72200000000000042	0	174942	0	0	24
121104	5.72299999999999986	0	174974	0	0	24
121105	5.7240000000000002	0	175006	0	0	24
121106	5.72499999999999964	0	175038	0	0	24
121107	5.72599999999999998	0	175070	0	0	24
121108	5.72700000000000031	0	175102	0	0	24
121109	5.72799999999999976	0	175134	0	0	24
121110	5.72900000000000009	0	175166	0	0	24
121111	5.73000000000000043	0	175196	0	0	24
121112	5.73099999999999987	0	175228	0	0	24
121113	5.73200000000000021	0	175260	0	0	24
121114	5.73299999999999965	0	175292	0	0	24
121115	5.73399999999999999	0	175324	0	0	24
121116	5.73500000000000032	0	175356	0	0	24
121117	5.73599999999999977	0	175388	0	0	24
121118	5.7370000000000001	0	175420	0	0	24
121119	5.73800000000000043	0	175452	0	0	24
121120	5.73899999999999988	0	175484	0	0	24
121121	5.74000000000000021	0	175514	0	0	24
121122	5.74099999999999966	0	175546	0	0	24
121123	5.74199999999999999	0	175578	0	0	24
121124	5.74300000000000033	0	175610	0	0	24
121125	5.74399999999999977	0	175642	0	0	24
121126	5.74500000000000011	0	175674	0	0	24
121127	5.74600000000000044	0	175706	0	0	24
121128	5.74699999999999989	0	175738	0	0	24
121129	5.74800000000000022	0	175770	0	0	24
121130	5.74899999999999967	0	175802	0	0	24
121131	5.75	0	175831	0	0	24
121132	5.75100000000000033	0	175863	0	0	24
121133	5.75199999999999978	0	175895	0	0	24
121134	5.75300000000000011	0	175927	0	0	24
121135	5.75399999999999956	0	175959	0	0	24
121136	5.75499999999999989	0	175991	0	0	24
121137	5.75600000000000023	0	176023	0	0	24
121138	5.75699999999999967	0	176055	0	0	24
121139	5.75800000000000001	0	176087	0	0	24
121140	5.75900000000000034	0	176119	0	0	24
121141	5.75999999999999979	0	176149	0	0	24
121142	5.76100000000000012	0	176181	0	0	24
121143	5.76199999999999957	0	176213	0	0	24
121144	5.7629999999999999	0	176245	0	0	24
121145	5.76400000000000023	0	176277	0	0	24
121146	5.76499999999999968	0	176309	0	0	24
121147	5.76600000000000001	0	176341	0	0	24
121148	5.76700000000000035	0	176373	0	0	24
121149	5.76799999999999979	0	176405	0	0	24
121150	5.76900000000000013	0	176437	0	0	24
121151	5.76999999999999957	0	176467	0	0	24
121152	5.77099999999999991	0	176499	0	0	24
121153	5.77200000000000024	0	176531	0	0	24
121154	5.77299999999999969	0	176563	0	0	24
121155	5.77400000000000002	0	176595	0	0	24
121156	5.77500000000000036	0	176627	0	0	24
121157	5.7759999999999998	0	176659	0	0	24
121158	5.77700000000000014	0	176691	0	0	24
121159	5.77799999999999958	0	176723	0	0	24
121160	5.77899999999999991	0	176755	0	0	24
121161	5.78000000000000025	0	176785	0	0	24
121162	5.78099999999999969	0	176817	0	0	24
121163	5.78200000000000003	0	176849	0	0	24
121164	5.78300000000000036	0	176881	0	0	24
121165	5.78399999999999981	0	176913	0	0	24
121166	5.78500000000000014	0	176945	0	0	24
121167	5.78599999999999959	0	176977	0	0	24
121168	5.78699999999999992	0	177009	0	0	24
121169	5.78800000000000026	0	177041	0	0	24
121170	5.7889999999999997	0	177073	0	0	24
121171	5.79000000000000004	0	177103	0	0	24
121172	5.79100000000000037	0	177135	0	0	24
121173	5.79199999999999982	0	177167	0	0	24
121174	5.79300000000000015	0	177199	0	0	24
121175	5.79399999999999959	0	177231	0	0	24
121176	5.79499999999999993	0	177263	0	0	24
121177	5.79600000000000026	0	177295	0	0	24
121178	5.79699999999999971	0	177327	0	0	24
121179	5.79800000000000004	0	177359	0	0	24
121180	5.79900000000000038	0	177391	0	0	24
121181	5.79999999999999982	0	177420	0	0	24
121182	5.80100000000000016	0	177452	0	0	24
121183	5.8019999999999996	0	177484	0	0	24
121184	5.80299999999999994	0	177516	0	0	24
121185	5.80400000000000027	0	177548	0	0	24
121186	5.80499999999999972	0	177580	0	0	24
121187	5.80600000000000005	0	177612	0	0	24
121188	5.80700000000000038	0	177644	0	0	24
121189	5.80799999999999983	0	177676	0	0	24
121190	5.80900000000000016	0	177708	0	0	24
121191	5.80999999999999961	0	177738	0	0	24
121192	5.81099999999999994	0	177770	0	0	24
121193	5.81200000000000028	0	177802	0	0	24
121194	5.81299999999999972	0	177834	0	0	24
121195	5.81400000000000006	0	177866	0	0	24
121196	5.81500000000000039	0	177898	0	0	24
121197	5.81599999999999984	0	177930	0	0	24
121198	5.81700000000000017	0	177962	0	0	24
121199	5.81799999999999962	0	177994	0	0	24
121200	5.81899999999999995	0	178026	0	0	24
121201	5.82000000000000028	0	178056	0	0	24
121202	5.82099999999999973	0	178088	0	0	24
121203	5.82200000000000006	0	178120	0	0	24
121204	5.8230000000000004	0	178152	0	0	24
121205	5.82399999999999984	0	178184	0	0	24
121206	5.82500000000000018	0	178216	0	0	24
121207	5.82599999999999962	0	178248	0	0	24
121208	5.82699999999999996	0	178280	0	0	24
121209	5.82800000000000029	0	178312	0	0	24
121210	5.82899999999999974	0	178344	0	0	24
121211	5.83000000000000007	0	178374	0	0	24
121212	5.83100000000000041	0	178406	0	0	24
121213	5.83199999999999985	0	178438	0	0	24
121214	5.83300000000000018	0	178470	0	0	24
121215	5.83399999999999963	0	178502	0	0	24
121216	5.83499999999999996	0	178534	0	0	24
121217	5.8360000000000003	0	178566	0	0	24
121218	5.83699999999999974	0	178598	0	0	24
121219	5.83800000000000008	0	178630	0	0	24
121220	5.83900000000000041	0	178662	0	0	24
121221	5.83999999999999986	0	178692	0	0	24
121222	5.84100000000000019	0	178724	0	0	24
121223	5.84199999999999964	0	178756	0	0	24
121224	5.84299999999999997	0	178788	0	0	24
121225	5.84400000000000031	0	178820	0	0	24
121226	5.84499999999999975	0	178852	0	0	24
121227	5.84600000000000009	0	178884	0	0	24
121228	5.84700000000000042	0	178916	0	0	24
121229	5.84799999999999986	0	178948	0	0	24
121230	5.8490000000000002	0	178980	0	0	24
121231	5.84999999999999964	0	179009	0	0	24
121232	5.85099999999999998	0	179041	0	0	24
121233	5.85200000000000031	0	179073	0	0	24
121234	5.85299999999999976	0	179105	0	0	24
121235	5.85400000000000009	0	179137	0	0	24
121236	5.85500000000000043	0	179169	0	0	24
121237	5.85599999999999987	0	179201	0	0	24
121238	5.85700000000000021	0	179233	0	0	24
121239	5.85799999999999965	0	179265	0	0	24
121240	5.85899999999999999	0	179297	0	0	24
121241	5.86000000000000032	0	179327	0	0	24
121242	5.86099999999999977	0	179359	0	0	24
121243	5.8620000000000001	0	179391	0	0	24
121244	5.86300000000000043	0	179423	0	0	24
121245	5.86399999999999988	0	179455	0	0	24
121246	5.86500000000000021	0	179487	0	0	24
121247	5.86599999999999966	0	179519	0	0	24
121248	5.86699999999999999	0	179551	0	0	24
121249	5.86800000000000033	0	179583	0	0	24
121250	5.86899999999999977	0	179615	0	0	24
121251	5.87000000000000011	0	179645	0	0	24
121252	5.87100000000000044	0	179677	0	0	24
121253	5.87199999999999989	0	179709	0	0	24
121254	5.87300000000000022	0	179741	0	0	24
121255	5.87399999999999967	0	179773	0	0	24
121256	5.875	0	179805	0	0	24
121257	5.87600000000000033	0	179837	0	0	24
121258	5.87699999999999978	0	179869	0	0	24
121259	5.87800000000000011	0	179901	0	0	24
121260	5.87899999999999956	0	179933	0	0	24
121261	5.87999999999999989	0	179963	0	0	24
121262	5.88100000000000023	0	179995	0	0	24
121263	5.88199999999999967	0	180027	0	0	24
121264	5.88300000000000001	0	180059	0	0	24
121265	5.88400000000000034	0	180091	0	0	24
121266	5.88499999999999979	0	180123	0	0	24
121267	5.88600000000000012	0	180155	0	0	24
121268	5.88699999999999957	0	180187	0	0	24
121269	5.8879999999999999	0	180219	0	0	24
121270	5.88900000000000023	0	180251	0	0	24
121271	5.88999999999999968	0	180281	0	0	24
121272	5.89100000000000001	0	180313	0	0	24
121273	5.89200000000000035	0	180345	0	0	24
121274	5.89299999999999979	0	180377	0	0	24
121275	5.89400000000000013	0	180409	0	0	24
121276	5.89499999999999957	0	180441	0	0	24
121277	5.89599999999999991	0	180473	0	0	24
121278	5.89700000000000024	0	180505	0	0	24
121279	5.89799999999999969	0	180537	0	0	24
121280	5.89900000000000002	0	180569	0	0	24
121281	5.90000000000000036	0	180598	0	0	24
121282	5.9009999999999998	0	180630	0	0	24
121283	5.90200000000000014	0	180662	0	0	24
121284	5.90299999999999958	0	180694	0	0	24
121285	5.90399999999999991	0	180726	0	0	24
121286	5.90500000000000025	0	180758	0	0	24
121287	5.90599999999999969	0	180790	0	0	24
121288	5.90700000000000003	0	180822	0	0	24
121289	5.90800000000000036	0	180854	0	0	24
121290	5.90899999999999981	0	180886	0	0	24
121291	5.91000000000000014	0	180916	0	0	24
121292	5.91099999999999959	0	180948	0	0	24
121293	5.91199999999999992	0	180980	0	0	24
121294	5.91300000000000026	0	181012	0	0	24
121295	5.9139999999999997	0	181044	0	0	24
121296	5.91500000000000004	0	181076	0	0	24
121297	5.91600000000000037	0	181108	0	0	24
121298	5.91699999999999982	0	181140	0	0	24
121299	5.91800000000000015	0	181172	0	0	24
121300	5.91899999999999959	0	181204	0	0	24
121301	5.91999999999999993	0	181234	0	0	24
121302	5.92100000000000026	0	181266	0	0	24
121303	5.92199999999999971	0	181298	0	0	24
121304	5.92300000000000004	0	181330	0	0	24
121305	5.92400000000000038	0	181362	0	0	24
121306	5.92499999999999982	0	181394	0	0	24
121307	5.92600000000000016	0	181426	0	0	24
121308	5.9269999999999996	0	181458	0	0	24
121309	5.92799999999999994	0	181490	0	0	24
121310	5.92900000000000027	0	181522	0	0	24
121311	5.92999999999999972	0	181552	0	0	24
121312	5.93100000000000005	0	181584	0	0	24
121313	5.93200000000000038	0	181616	0	0	24
121314	5.93299999999999983	0	181648	0	0	24
121315	5.93400000000000016	0	181680	0	0	24
121316	5.93499999999999961	0	181712	0	0	24
121317	5.93599999999999994	0	181744	0	0	24
121318	5.93700000000000028	0	181776	0	0	24
121319	5.93799999999999972	0	181808	0	0	24
121320	5.93900000000000006	0	181840	0	0	24
121321	5.94000000000000039	0	181870	0	0	24
121322	5.94099999999999984	0	181902	0	0	24
121323	5.94200000000000017	0	181934	0	0	24
121324	5.94299999999999962	0	181966	0	0	24
121325	5.94399999999999995	0	181998	0	0	24
121326	5.94500000000000028	0	182030	0	0	24
121327	5.94599999999999973	0	182062	0	0	24
121328	5.94700000000000006	0	182094	0	0	24
121329	5.9480000000000004	0	182126	0	0	24
121330	5.94899999999999984	0	182158	0	0	24
121331	5.95000000000000018	0	182187	0	0	24
121332	5.95099999999999962	0	182219	0	0	24
121333	5.95199999999999996	0	182251	0	0	24
121334	5.95300000000000029	0	182283	0	0	24
121335	5.95399999999999974	0	182315	0	0	24
121336	5.95500000000000007	0	182347	0	0	24
121337	5.95600000000000041	0	182379	0	0	24
121338	5.95699999999999985	0	182411	0	0	24
121339	5.95800000000000018	0	182443	0	0	24
121340	5.95899999999999963	0	182475	0	0	24
121341	5.95999999999999996	0	182505	0	0	24
121342	5.9610000000000003	0	182537	0	0	24
121343	5.96199999999999974	0	182569	0	0	24
121344	5.96300000000000008	0	182601	0	0	24
121345	5.96400000000000041	0	182633	0	0	24
121346	5.96499999999999986	0	182665	0	0	24
121347	5.96600000000000019	0	182697	0	0	24
121348	5.96699999999999964	0	182729	0	0	24
121349	5.96799999999999997	0	182761	0	0	24
121350	5.96900000000000031	0	182793	0	0	24
121351	5.96999999999999975	0	182823	0	0	24
121352	5.97100000000000009	0	182855	0	0	24
121353	5.97200000000000042	0	182887	0	0	24
121354	5.97299999999999986	0	182919	0	0	24
121355	5.9740000000000002	0	182951	0	0	24
121356	5.97499999999999964	0	182983	0	0	24
121357	5.97599999999999998	0	183015	0	0	24
121358	5.97700000000000031	0	183047	0	0	24
121359	5.97799999999999976	0	183079	0	0	24
121360	5.97900000000000009	0	183111	0	0	24
121361	5.98000000000000043	0	183141	0	0	24
121362	5.98099999999999987	0	183173	0	0	24
121363	5.98200000000000021	0	183205	0	0	24
121364	5.98299999999999965	0	183237	0	0	24
121365	5.98399999999999999	0	183269	0	0	24
121366	5.98500000000000032	0	183301	0	0	24
121367	5.98599999999999977	0	183333	0	0	24
121368	5.9870000000000001	0	183365	0	0	24
121369	5.98800000000000043	0	183397	0	0	24
121370	5.98899999999999988	0	183429	0	0	24
121371	5.99000000000000021	0	183459	0	0	24
121372	5.99099999999999966	0	183491	0	0	24
121373	5.99199999999999999	0	183523	0	0	24
121374	5.99300000000000033	0	183555	0	0	24
121375	5.99399999999999977	0	183587	0	0	24
121376	5.99500000000000011	0	183619	0	0	24
121377	5.99600000000000044	0	183651	0	0	24
121378	5.99699999999999989	0	183683	0	0	24
121379	5.99800000000000022	0	183715	0	0	24
121380	5.99899999999999967	0	183747	0	0	24
121381	6	0	183776	0	0	24
121382	6.00100000000000033	0	183808	0	0	24
121383	6.00199999999999978	0	183840	0	0	24
121384	6.00300000000000011	0	183872	0	0	24
121385	6.00399999999999956	0	183904	0	0	24
121386	6.00499999999999989	0	183936	0	0	24
121387	6.00600000000000023	0	183968	0	0	24
121388	6.00699999999999967	0	184000	0	0	24
121389	6.00800000000000001	0	184032	0	0	24
121390	6.00900000000000034	0	184064	0	0	24
121391	6.00999999999999979	0	184094	0	0	24
121392	6.01100000000000012	0	184126	0	0	24
121393	6.01199999999999957	0	184158	0	0	24
121394	6.0129999999999999	0	184190	0	0	24
121395	6.01400000000000023	0	184222	0	0	24
121396	6.01499999999999968	0	184254	0	0	24
121397	6.01600000000000001	0	184286	0	0	24
121398	6.01700000000000035	0	184318	0	0	24
121399	6.01799999999999979	0	184350	0	0	24
121400	6.01900000000000013	0	184382	0	0	24
121401	6.01999999999999957	0	184412	0	0	24
121402	6.02099999999999991	0	184444	0	0	24
121403	6.02200000000000024	0	184476	0	0	24
121404	6.02299999999999969	0	184508	0	0	24
121405	6.02400000000000002	0	184540	0	0	24
121406	6.02500000000000036	0	184572	0	0	24
121407	6.0259999999999998	0	184604	0	0	24
121408	6.02700000000000014	0	184636	0	0	24
121409	6.02799999999999958	0	184668	0	0	24
121410	6.02899999999999991	0	184700	0	0	24
121411	6.03000000000000025	0	184730	0	0	24
121412	6.03099999999999969	0	184762	0	0	24
121413	6.03200000000000003	0	184794	0	0	24
121414	6.03300000000000036	0	184826	0	0	24
121415	6.03399999999999981	0	184858	0	0	24
121416	6.03500000000000014	0	184890	0	0	24
121417	6.03599999999999959	0	184922	0	0	24
121418	6.03699999999999992	0	184954	0	0	24
121419	6.03800000000000026	0	184986	0	0	24
121420	6.0389999999999997	0	185018	0	0	24
121421	6.04000000000000004	0	185048	0	0	24
121422	6.04100000000000037	0	185080	0	0	24
121423	6.04199999999999982	0	185112	0	0	24
121424	6.04300000000000015	0	185144	0	0	24
121425	6.04399999999999959	0	185176	0	0	24
121426	6.04499999999999993	0	185208	0	0	24
121427	6.04600000000000026	0	185240	0	0	24
121428	6.04699999999999971	0	185272	0	0	24
121429	6.04800000000000004	0	185304	0	0	24
121430	6.04900000000000038	0	185336	0	0	24
121431	6.04999999999999982	0	185365	0	0	24
121432	6.05100000000000016	0	185397	0	0	24
121433	6.0519999999999996	0	185429	0	0	24
121434	6.05299999999999994	0	185461	0	0	24
121435	6.05400000000000027	0	185493	0	0	24
121436	6.05499999999999972	0	185525	0	0	24
121437	6.05600000000000005	0	185557	0	0	24
121438	6.05700000000000038	0	185589	0	0	24
121439	6.05799999999999983	0	185621	0	0	24
121440	6.05900000000000016	0	185653	0	0	24
121441	6.05999999999999961	0	185683	0	0	24
121442	6.06099999999999994	0	185715	0	0	24
121443	6.06200000000000028	0	185747	0	0	24
121444	6.06299999999999972	0	185779	0	0	24
121445	6.06400000000000006	0	185811	0	0	24
121446	6.06500000000000039	0	185843	0	0	24
121447	6.06599999999999984	0	185875	0	0	24
121448	6.06700000000000017	0	185907	0	0	24
121449	6.06799999999999962	0	185939	0	0	24
121450	6.06899999999999995	0	185971	0	0	24
121451	6.07000000000000028	0	186001	0	0	24
121452	6.07099999999999973	0	186033	0	0	24
121453	6.07200000000000006	0	186065	0	0	24
121454	6.0730000000000004	0	186097	0	0	24
121455	6.07399999999999984	0	186129	0	0	24
121456	6.07500000000000018	0	186161	0	0	24
121457	6.07599999999999962	0	186193	0	0	24
121458	6.07699999999999996	0	186225	0	0	24
121459	6.07800000000000029	0	186257	0	0	24
121460	6.07899999999999974	0	186289	0	0	24
121461	6.08000000000000007	0	186319	0	0	24
121462	6.08100000000000041	0	186351	0	0	24
121463	6.08199999999999985	0	186383	0	0	24
121464	6.08300000000000018	0	186415	0	0	24
121465	6.08399999999999963	0	186447	0	0	24
121466	6.08499999999999996	0	186479	0	0	24
121467	6.0860000000000003	0	186511	0	0	24
121468	6.08699999999999974	0	186543	0	0	24
121469	6.08800000000000008	0	186575	0	0	24
121470	6.08900000000000041	0	186607	0	0	24
121471	6.08999999999999986	0	186637	0	0	24
121472	6.09100000000000019	0	186669	0	0	24
121473	6.09199999999999964	0	186701	0	0	24
121474	6.09299999999999997	0	186733	0	0	24
121475	6.09400000000000031	0	186765	0	0	24
121476	6.09499999999999975	0	186797	0	0	24
121477	6.09600000000000009	0	186829	0	0	24
121478	6.09700000000000042	0	186861	0	0	24
121479	6.09799999999999986	0	186893	0	0	24
121480	6.0990000000000002	0	186925	0	0	24
121481	6.09999999999999964	0	186954	0	0	24
121482	6.10099999999999998	0	186986	0	0	24
121483	6.10200000000000031	0	187018	0	0	24
121484	6.10299999999999976	0	187050	0	0	24
121485	6.10400000000000009	0	187082	0	0	24
121486	6.10500000000000043	0	187114	0	0	24
121487	6.10599999999999987	0	187146	0	0	24
121488	6.10700000000000021	0	187178	0	0	24
121489	6.10799999999999965	0	187210	0	0	24
121490	6.10899999999999999	0	187242	0	0	24
121491	6.11000000000000032	0	187272	0	0	24
121492	6.11099999999999977	0	187304	0	0	24
121493	6.1120000000000001	0	187336	0	0	24
121494	6.11300000000000043	0	187368	0	0	24
121495	6.11399999999999988	0	187400	0	0	24
121496	6.11500000000000021	0	187432	0	0	24
121497	6.11599999999999966	0	187464	0	0	24
121498	6.11699999999999999	0	187496	0	0	24
121499	6.11800000000000033	0	187528	0	0	24
121500	6.11899999999999977	0	187560	0	0	24
121501	6.12000000000000011	0	187590	0	0	24
121502	6.12100000000000044	0	187622	0	0	24
121503	6.12199999999999989	0	187654	0	0	24
121504	6.12300000000000022	0	187686	0	0	24
121505	6.12399999999999967	0	187718	0	0	24
121506	6.125	0	187750	0	0	24
121507	6.12600000000000033	0	187782	0	0	24
121508	6.12699999999999978	0	187814	0	0	24
121509	6.12800000000000011	0	187846	0	0	24
121510	6.12899999999999956	0	187878	0	0	24
121511	6.12999999999999989	0	187908	0	0	24
121512	6.13100000000000023	0	187940	0	0	24
121513	6.13199999999999967	0	187972	0	0	24
121514	6.13300000000000001	0	188004	0	0	24
121515	6.13400000000000034	0	188036	0	0	24
121516	6.13499999999999979	0	188068	0	0	24
121517	6.13600000000000012	0	188100	0	0	24
121518	6.13699999999999957	0	188132	0	0	24
121519	6.1379999999999999	0	188164	0	0	24
121520	6.13900000000000023	0	188196	0	0	24
121521	6.13999999999999968	0	188226	0	0	24
121522	6.14100000000000001	0	188258	0	0	24
121523	6.14200000000000035	0	188290	0	0	24
121524	6.14299999999999979	0	188322	0	0	24
121525	6.14400000000000013	0	188354	0	0	24
121526	6.14499999999999957	0	188386	0	0	24
121527	6.14599999999999991	0	188418	0	0	24
121528	6.14700000000000024	0	188450	0	0	24
121529	6.14799999999999969	0	188482	0	0	24
121530	6.14900000000000002	0	188514	0	0	24
121531	6.15000000000000036	0	188543	0	0	24
121532	6.1509999999999998	0	188575	0	0	24
121533	6.15200000000000014	0	188607	0	0	24
121534	6.15299999999999958	0	188639	0	0	24
121535	6.15399999999999991	0	188671	0	0	24
121536	6.15500000000000025	0	188703	0	0	24
121537	6.15599999999999969	0	188735	0	0	24
121538	6.15700000000000003	0	188767	0	0	24
121539	6.15800000000000036	0	188799	0	0	24
121540	6.15899999999999981	0	188831	0	0	24
121541	6.16000000000000014	0	188861	0	0	24
121542	6.16099999999999959	0	188893	0	0	24
121543	6.16199999999999992	0	188925	0	0	24
121544	6.16300000000000026	0	188957	0	0	24
121545	6.1639999999999997	0	188989	0	0	24
121546	6.16500000000000004	0	189021	0	0	24
121547	6.16600000000000037	0	189053	0	0	24
121548	6.16699999999999982	0	189085	0	0	24
121549	6.16800000000000015	0	189117	0	0	24
121550	6.16899999999999959	0	189149	0	0	24
121551	6.16999999999999993	0	189179	0	0	24
121552	6.17100000000000026	0	189211	0	0	24
121553	6.17199999999999971	0	189243	0	0	24
121554	6.17300000000000004	0	189275	0	0	24
121555	6.17400000000000038	0	189307	0	0	24
121556	6.17499999999999982	0	189339	0	0	24
121557	6.17600000000000016	0	189371	0	0	24
121558	6.1769999999999996	0	189403	0	0	24
121559	6.17799999999999994	0	189435	0	0	24
121560	6.17900000000000027	0	189467	0	0	24
121561	6.17999999999999972	0	189497	0	0	24
121562	6.18100000000000005	0	189529	0	0	24
121563	6.18200000000000038	0	189561	0	0	24
121564	6.18299999999999983	0	189593	0	0	24
121565	6.18400000000000016	0	189625	0	0	24
121566	6.18499999999999961	0	189657	0	0	24
121567	6.18599999999999994	0	189689	0	0	24
121568	6.18700000000000028	0	189721	0	0	24
121569	6.18799999999999972	0	189753	0	0	24
121570	6.18900000000000006	0	189785	0	0	24
121571	6.19000000000000039	0	189815	0	0	24
121572	6.19099999999999984	0	189847	0	0	24
121573	6.19200000000000017	0	189879	0	0	24
121574	6.19299999999999962	0	189911	0	0	24
121575	6.19399999999999995	0	189943	0	0	24
121576	6.19500000000000028	0	189975	0	0	24
121577	6.19599999999999973	0	190007	0	0	24
121578	6.19700000000000006	0	190039	0	0	24
121579	6.1980000000000004	0	190071	0	0	24
121580	6.19899999999999984	0	190103	0	0	24
121581	6.20000000000000018	0	190132	0	0	24
121582	6.20099999999999962	0	190164	0	0	24
121583	6.20199999999999996	0	190196	0	0	24
121584	6.20300000000000029	0	190228	0	0	24
121585	6.20399999999999974	0	190260	0	0	24
121586	6.20500000000000007	0	190292	0	0	24
121587	6.20600000000000041	0	190324	0	0	24
121588	6.20699999999999985	0	190356	0	0	24
121589	6.20800000000000018	0	190388	0	0	24
121590	6.20899999999999963	0	190420	0	0	24
121591	6.20999999999999996	0	190450	0	0	24
121592	6.2110000000000003	0	190482	0	0	24
121593	6.21199999999999974	0	190514	0	0	24
121594	6.21300000000000008	0	190546	0	0	24
121595	6.21400000000000041	0	190578	0	0	24
121596	6.21499999999999986	0	190610	0	0	24
121597	6.21600000000000019	0	190642	0	0	24
121598	6.21699999999999964	0	190674	0	0	24
121599	6.21799999999999997	0	190706	0	0	24
121600	6.21900000000000031	0	190738	0	0	24
121601	6.21999999999999975	0	190768	0	0	24
121602	6.22100000000000009	0	190800	0	0	24
121603	6.22200000000000042	0	190832	0	0	24
121604	6.22299999999999986	0	190864	0	0	24
121605	6.2240000000000002	0	190896	0	0	24
121606	6.22499999999999964	0	190928	0	0	24
121607	6.22599999999999998	0	190960	0	0	24
121608	6.22700000000000031	0	190992	0	0	24
121609	6.22799999999999976	0	191024	0	0	24
121610	6.22900000000000009	0	191056	0	0	24
121611	6.23000000000000043	0	191086	0	0	24
121612	6.23099999999999987	0	191118	0	0	24
121613	6.23200000000000021	0	191150	0	0	24
121614	6.23299999999999965	0	191182	0	0	24
121615	6.23399999999999999	0	191214	0	0	24
121616	6.23500000000000032	0	191246	0	0	24
121617	6.23599999999999977	0	191278	0	0	24
121618	6.2370000000000001	0	191310	0	0	24
121619	6.23800000000000043	0	191342	0	0	24
121620	6.23899999999999988	0	191374	0	0	24
121621	6.24000000000000021	0	191404	0	0	24
121622	6.24099999999999966	0	191436	0	0	24
121623	6.24199999999999999	0	191468	0	0	24
121624	6.24300000000000033	0	191500	0	0	24
121625	6.24399999999999977	0	191532	0	0	24
121626	6.24500000000000011	0	191564	0	0	24
121627	6.24600000000000044	0	191596	0	0	24
121628	6.24699999999999989	0	191628	0	0	24
121629	6.24800000000000022	0	191660	0	0	24
121630	6.24899999999999967	0	191692	0	0	24
121631	6.25	0	191721	0	0	24
121632	6.25100000000000033	0	191753	0	0	24
121633	6.25199999999999978	0	191785	0	0	24
121634	6.25300000000000011	0	191817	0	0	24
121635	6.25399999999999956	0	191849	0	0	24
121636	6.25499999999999989	0	191881	0	0	24
121637	6.25600000000000023	0	191913	0	0	24
121638	6.25699999999999967	0	191945	0	0	24
121639	6.25800000000000001	0	191977	0	0	24
121640	6.25900000000000034	0	192009	0	0	24
121641	6.25999999999999979	0	192039	0	0	24
121642	6.26100000000000012	0	192071	0	0	24
121643	6.26199999999999957	0	192103	0	0	24
121644	6.2629999999999999	0	192135	0	0	24
121645	6.26400000000000023	0	192167	0	0	24
121646	6.26499999999999968	0	192199	0	0	24
121647	6.26600000000000001	0	192231	0	0	24
121648	6.26700000000000035	0	192263	0	0	24
121649	6.26799999999999979	0	192295	0	0	24
121650	6.26900000000000013	0	192327	0	0	24
121651	6.26999999999999957	0	192357	0	0	24
121652	6.27099999999999991	0	192389	0	0	24
121653	6.27200000000000024	0	192421	0	0	24
121654	6.27299999999999969	0	192453	0	0	24
121655	6.27400000000000002	0	192485	0	0	24
121656	6.27500000000000036	0	192517	0	0	24
121657	6.2759999999999998	0	192549	0	0	24
121658	6.27700000000000014	0	192581	0	0	24
121659	6.27799999999999958	0	192613	0	0	24
121660	6.27899999999999991	0	192645	0	0	24
121661	6.28000000000000025	0	192675	0	0	24
121662	6.28099999999999969	0	192707	0	0	24
121663	6.28200000000000003	0	192739	0	0	24
121664	6.28300000000000036	0	192771	0	0	24
121665	6.28399999999999981	0	192803	0	0	24
121666	6.28500000000000014	0	192835	0	0	24
121667	6.28599999999999959	0	192867	0	0	24
121668	6.28699999999999992	0	192899	0	0	24
121669	6.28800000000000026	0	192931	0	0	24
121670	6.2889999999999997	0	192963	0	0	24
121671	6.29000000000000004	0	192993	0	0	24
121672	6.29100000000000037	0	193025	0	0	24
121673	6.29199999999999982	0	193057	0	0	24
121674	6.29300000000000015	0	193089	0	0	24
121675	6.29399999999999959	0	193121	0	0	24
121676	6.29499999999999993	0	193153	0	0	24
121677	6.29600000000000026	0	193185	0	0	24
121678	6.29699999999999971	0	193217	0	0	24
121679	6.29800000000000004	0	193249	0	0	24
121680	6.29900000000000038	0	193281	0	0	24
121681	6.29999999999999982	0	193310	0	0	24
121682	6.30100000000000016	0	193342	0	0	24
121683	6.3019999999999996	0	193374	0	0	24
121684	6.30299999999999994	0	193406	0	0	24
121685	6.30400000000000027	0	193438	0	0	24
121686	6.30499999999999972	0	193470	0	0	24
121687	6.30600000000000005	0	193502	0	0	24
121688	6.30700000000000038	0	193534	0	0	24
121689	6.30799999999999983	0	193566	0	0	24
121690	6.30900000000000016	0	193598	0	0	24
121691	6.30999999999999961	0	193628	0	0	24
121692	6.31099999999999994	0	193660	0	0	24
121693	6.31200000000000028	0	193692	0	0	24
121694	6.31299999999999972	0	193724	0	0	24
121695	6.31400000000000006	0	193756	0	0	24
121696	6.31500000000000039	0	193788	0	0	24
121697	6.31599999999999984	0	193820	0	0	24
121698	6.31700000000000017	0	193852	0	0	24
121699	6.31799999999999962	0	193884	0	0	24
121700	6.31899999999999995	0	193916	0	0	24
121701	6.32000000000000028	0	193946	0	0	24
121702	6.32099999999999973	0	193978	0	0	24
121703	6.32200000000000006	0	194010	0	0	24
121704	6.3230000000000004	0	194042	0	0	24
121705	6.32399999999999984	0	194074	0	0	24
121706	6.32500000000000018	0	194106	0	0	24
121707	6.32599999999999962	0	194138	0	0	24
121708	6.32699999999999996	0	194170	0	0	24
121709	6.32800000000000029	0	194202	0	0	24
121710	6.32899999999999974	0	194234	0	0	24
121711	6.33000000000000007	0	194264	0	0	24
121712	6.33100000000000041	0	194296	0	0	24
121713	6.33199999999999985	0	194328	0	0	24
121714	6.33300000000000018	0	194360	0	0	24
121715	6.33399999999999963	0	194392	0	0	24
121716	6.33499999999999996	0	194424	0	0	24
121717	6.3360000000000003	0	194456	0	0	24
121718	6.33699999999999974	0	194488	0	0	24
121719	6.33800000000000008	0	194520	0	0	24
121720	6.33900000000000041	0	194552	0	0	24
121721	6.33999999999999986	0	194582	0	0	24
121722	6.34100000000000019	0	194614	0	0	24
121723	6.34199999999999964	0	194646	0	0	24
121724	6.34299999999999997	0	194678	0	0	24
121725	6.34400000000000031	0	194710	0	0	24
121726	6.34499999999999975	0	194742	0	0	24
121727	6.34600000000000009	0	194774	0	0	24
121728	6.34700000000000042	0	194806	0	0	24
121729	6.34799999999999986	0	194838	0	0	24
121730	6.3490000000000002	0	194870	0	0	24
121731	6.34999999999999964	0	194899	0	0	24
121732	6.35099999999999998	0	194931	0	0	24
121733	6.35200000000000031	0	194963	0	0	24
121734	6.35299999999999976	0	194995	0	0	24
121735	6.35400000000000009	0	195027	0	0	24
121736	6.35500000000000043	0	195059	0	0	24
121737	6.35599999999999987	0	195091	0	0	24
121738	6.35700000000000021	0	195123	0	0	24
121739	6.35799999999999965	0	195155	0	0	24
121740	6.35899999999999999	0	195187	0	0	24
121741	6.36000000000000032	0	195217	0	0	24
121742	6.36099999999999977	0	195249	0	0	24
121743	6.3620000000000001	0	195281	0	0	24
121744	6.36300000000000043	0	195313	0	0	24
121745	6.36399999999999988	0	195345	0	0	24
121746	6.36500000000000021	0	195377	0	0	24
121747	6.36599999999999966	0	195409	0	0	24
121748	6.36699999999999999	0	195441	0	0	24
121749	6.36800000000000033	0	195473	0	0	24
121750	6.36899999999999977	0	195505	0	0	24
121751	6.37000000000000011	0	195535	0	0	24
121752	6.37100000000000044	0	195567	0	0	24
121753	6.37199999999999989	0	195599	0	0	24
121754	6.37300000000000022	0	195631	0	0	24
121755	6.37399999999999967	0	195663	0	0	24
121756	6.375	0	195695	0	0	24
121757	6.37600000000000033	0	195727	0	0	24
121758	6.37699999999999978	0	195759	0	0	24
121759	6.37800000000000011	0	195791	0	0	24
121760	6.37899999999999956	0	195823	0	0	24
121761	6.37999999999999989	0	195853	0	0	24
121762	6.38100000000000023	0	195885	0	0	24
121763	6.38199999999999967	0	195917	0	0	24
121764	6.38300000000000001	0	195949	0	0	24
121765	6.38400000000000034	0	195981	0	0	24
121766	6.38499999999999979	0	196013	0	0	24
121767	6.38600000000000012	0	196045	0	0	24
121768	6.38699999999999957	0	196077	0	0	24
121769	6.3879999999999999	0	196109	0	0	24
121770	6.38900000000000023	0	196141	0	0	24
121771	6.38999999999999968	0	196171	0	0	24
121772	6.39100000000000001	0	196203	0	0	24
121773	6.39200000000000035	0	196235	0	0	24
121774	6.39299999999999979	0	196267	0	0	24
121775	6.39400000000000013	0	196299	0	0	24
121776	6.39499999999999957	0	196331	0	0	24
121777	6.39599999999999991	0	196363	0	0	24
121778	6.39700000000000024	0	196395	0	0	24
121779	6.39799999999999969	0	196427	0	0	24
121780	6.39900000000000002	0	196459	0	0	24
121781	6.40000000000000036	0	196488	0	0	24
121782	6.4009999999999998	0	196520	0	0	24
121783	6.40200000000000014	0	196552	0	0	24
121784	6.40299999999999958	0	196584	0	0	24
121785	6.40399999999999991	0	196616	0	0	24
121786	6.40500000000000025	0	196648	0	0	24
121787	6.40599999999999969	0	196680	0	0	24
121788	6.40700000000000003	0	196712	0	0	24
121789	6.40800000000000036	0	196744	0	0	24
121790	6.40899999999999981	0	196776	0	0	24
121791	6.41000000000000014	0	196806	0	0	24
121792	6.41099999999999959	0	196838	0	0	24
121793	6.41199999999999992	0	196870	0	0	24
121794	6.41300000000000026	0	196902	0	0	24
121795	6.4139999999999997	0	196934	0	0	24
121796	6.41500000000000004	0	196966	0	0	24
121797	6.41600000000000037	0	196998	0	0	24
121798	6.41699999999999982	0	197030	0	0	24
121799	6.41800000000000015	0	197062	0	0	24
121800	6.41899999999999959	0	197094	0	0	24
121801	6.41999999999999993	0	197124	0	0	24
121802	6.42100000000000026	0	197156	0	0	24
121803	6.42199999999999971	0	197188	0	0	24
121804	6.42300000000000004	0	197220	0	0	24
121805	6.42400000000000038	0	197252	0	0	24
121806	6.42499999999999982	0	197284	0	0	24
121807	6.42600000000000016	0	197316	0	0	24
121808	6.4269999999999996	0	197348	0	0	24
121809	6.42799999999999994	0	197380	0	0	24
121810	6.42900000000000027	0	197412	0	0	24
121811	6.42999999999999972	0	197442	0	0	24
121812	6.43100000000000005	0	197474	0	0	24
121813	6.43200000000000038	0	197506	0	0	24
121814	6.43299999999999983	0	197538	0	0	24
121815	6.43400000000000016	0	197570	0	0	24
121816	6.43499999999999961	0	197602	0	0	24
121817	6.43599999999999994	0	197634	0	0	24
121818	6.43700000000000028	0	197666	0	0	24
121819	6.43799999999999972	0	197698	0	0	24
121820	6.43900000000000006	0	197730	0	0	24
121821	6.44000000000000039	0	197760	0	0	24
121822	6.44099999999999984	0	197792	0	0	24
121823	6.44200000000000017	0	197824	0	0	24
121824	6.44299999999999962	0	197856	0	0	24
121825	6.44399999999999995	0	197888	0	0	24
121826	6.44500000000000028	0	197920	0	0	24
121827	6.44599999999999973	0	197952	0	0	24
121828	6.44700000000000006	0	197984	0	0	24
121829	6.4480000000000004	0	198016	0	0	24
121830	6.44899999999999984	0	198048	0	0	24
121831	6.45000000000000018	0	198077	0	0	24
121832	6.45099999999999962	0	198109	0	0	24
121833	6.45199999999999996	0	198141	0	0	24
121834	6.45300000000000029	0	198173	0	0	24
121835	6.45399999999999974	0	198205	0	0	24
121836	6.45500000000000007	0	198237	0	0	24
121837	6.45600000000000041	0	198269	0	0	24
121838	6.45699999999999985	0	198301	0	0	24
121839	6.45800000000000018	0	198333	0	0	24
121840	6.45899999999999963	0	198365	0	0	24
121841	6.45999999999999996	0	198395	0	0	24
121842	6.4610000000000003	0	198427	0	0	24
121843	6.46199999999999974	0	198459	0	0	24
121844	6.46300000000000008	0	198491	0	0	24
121845	6.46400000000000041	0	198523	0	0	24
121846	6.46499999999999986	0	198555	0	0	24
121847	6.46600000000000019	0	198587	0	0	24
121848	6.46699999999999964	0	198619	0	0	24
121849	6.46799999999999997	0	198651	0	0	24
121850	6.46900000000000031	0	198683	0	0	24
121851	6.46999999999999975	0	198713	0	0	24
121852	6.47100000000000009	0	198745	0	0	24
121853	6.47200000000000042	0	198777	0	0	24
121854	6.47299999999999986	0	198809	0	0	24
121855	6.4740000000000002	0	198841	0	0	24
121856	6.47499999999999964	0	198873	0	0	24
121857	6.47599999999999998	0	198905	0	0	24
121858	6.47700000000000031	0	198937	0	0	24
121859	6.47799999999999976	0	198969	0	0	24
121860	6.47900000000000009	0	199001	0	0	24
121861	6.48000000000000043	0	199031	0	0	24
121862	6.48099999999999987	0	199063	0	0	24
121863	6.48200000000000021	0	199095	0	0	24
121864	6.48299999999999965	0	199127	0	0	24
121865	6.48399999999999999	0	199159	0	0	24
121866	6.48500000000000032	0	199191	0	0	24
121867	6.48599999999999977	0	199223	0	0	24
121868	6.4870000000000001	0	199255	0	0	24
121869	6.48800000000000043	0	199287	0	0	24
121870	6.48899999999999988	0	199319	0	0	24
121871	6.49000000000000021	0	199349	0	0	24
121872	6.49099999999999966	0	199381	0	0	24
121873	6.49199999999999999	0	199413	0	0	24
121874	6.49300000000000033	0	199445	0	0	24
121875	6.49399999999999977	0	199477	0	0	24
121876	6.49500000000000011	0	199509	0	0	24
121877	6.49600000000000044	0	199541	0	0	24
121878	6.49699999999999989	0	199573	0	0	24
121879	6.49800000000000022	0	199605	0	0	24
121880	6.49899999999999967	0	199637	0	0	24
121881	6.5	0	199666	0	0	24
121882	6.50100000000000033	0	199698	0	0	24
121883	6.50199999999999978	0	199730	0	0	24
121884	6.50300000000000011	0	199762	0	0	24
121885	6.50399999999999956	0	199794	0	0	24
121886	6.50499999999999989	0	199826	0	0	24
121887	6.50600000000000023	0	199858	0	0	24
121888	6.50699999999999967	0	199890	0	0	24
121889	6.50800000000000001	0	199922	0	0	24
121890	6.50900000000000034	0	199954	0	0	24
121891	6.50999999999999979	0	199984	0	0	24
121892	6.51100000000000012	0	200016	0	0	24
121893	6.51199999999999957	0	200048	0	0	24
121894	6.5129999999999999	0	200080	0	0	24
121895	6.51400000000000023	0	200112	0	0	24
121896	6.51499999999999968	0	200144	0	0	24
121897	6.51600000000000001	0	200176	0	0	24
121898	6.51700000000000035	0	200208	0	0	24
121899	6.51799999999999979	0	200240	0	0	24
121900	6.51900000000000013	0	200272	0	0	24
121901	6.51999999999999957	0	200302	0	0	24
121902	6.52099999999999991	0	200334	0	0	24
121903	6.52200000000000024	0	200366	0	0	24
121904	6.52299999999999969	0	200398	0	0	24
121905	6.52400000000000002	0	200430	0	0	24
121906	6.52500000000000036	0	200462	0	0	24
121907	6.5259999999999998	0	200494	0	0	24
121908	6.52700000000000014	0	200526	0	0	24
121909	6.52799999999999958	0	200558	0	0	24
121910	6.52899999999999991	0	200590	0	0	24
121911	6.53000000000000025	0	200620	0	0	24
121912	6.53099999999999969	0	200652	0	0	24
121913	6.53200000000000003	0	200684	0	0	24
121914	6.53300000000000036	0	200716	0	0	24
121915	6.53399999999999981	0	200748	0	0	24
121916	6.53500000000000014	0	200780	0	0	24
121917	6.53599999999999959	0	200812	0	0	24
121918	6.53699999999999992	0	200844	0	0	24
121919	6.53800000000000026	0	200876	0	0	24
121920	6.5389999999999997	0	200908	0	0	24
121921	6.54000000000000004	0	200938	0	0	24
121922	6.54100000000000037	0	200970	0	0	24
121923	6.54199999999999982	0	201002	0	0	24
121924	6.54300000000000015	0	201034	0	0	24
121925	6.54399999999999959	0	201066	0	0	24
121926	6.54499999999999993	0	201098	0	0	24
121927	6.54600000000000026	0	201130	0	0	24
121928	6.54699999999999971	0	201162	0	0	24
121929	6.54800000000000004	0	201194	0	0	24
121930	6.54900000000000038	0	201226	0	0	24
121931	6.54999999999999982	0	201255	0	0	24
121932	6.55100000000000016	0	201287	0	0	24
121933	6.5519999999999996	0	201319	0	0	24
121934	6.55299999999999994	0	201351	0	0	24
121935	6.55400000000000027	0	201383	0	0	24
121936	6.55499999999999972	0	201415	0	0	24
121937	6.55600000000000005	0	201447	0	0	24
121938	6.55700000000000038	0	201479	0	0	24
121939	6.55799999999999983	0	201511	0	0	24
121940	6.55900000000000016	0	201543	0	0	24
121941	6.55999999999999961	0	201573	0	0	24
121942	6.56099999999999994	0	201605	0	0	24
121943	6.56200000000000028	0	201637	0	0	24
121944	6.56299999999999972	0	201669	0	0	24
121945	6.56400000000000006	0	201701	0	0	24
121946	6.56500000000000039	0	201733	0	0	24
121947	6.56599999999999984	0	201765	0	0	24
121948	6.56700000000000017	0	201797	0	0	24
121949	6.56799999999999962	0	201829	0	0	24
121950	6.56899999999999995	0	201861	0	0	24
121951	6.57000000000000028	0	201891	0	0	24
121952	6.57099999999999973	0	201923	0	0	24
121953	6.57200000000000006	0	201955	0	0	24
121954	6.5730000000000004	0	201987	0	0	24
121955	6.57399999999999984	0	202019	0	0	24
121956	6.57500000000000018	0	202051	0	0	24
121957	6.57599999999999962	0	202083	0	0	24
121958	6.57699999999999996	0	202115	0	0	24
121959	6.57800000000000029	0	202147	0	0	24
121960	6.57899999999999974	0	202179	0	0	24
121961	6.58000000000000007	0	202209	0	0	24
121962	6.58100000000000041	0	202241	0	0	24
121963	6.58199999999999985	0	202273	0	0	24
121964	6.58300000000000018	0	202305	0	0	24
121965	6.58399999999999963	0	202337	0	0	24
121966	6.58499999999999996	0	202369	0	0	24
121967	6.5860000000000003	0	202401	0	0	24
121968	6.58699999999999974	0	202433	0	0	24
121969	6.58800000000000008	0	202465	0	0	24
121970	6.58900000000000041	0	202497	0	0	24
121971	6.58999999999999986	0	202527	0	0	24
121972	6.59100000000000019	0	202559	0	0	24
121973	6.59199999999999964	0	202591	0	0	24
121974	6.59299999999999997	0	202623	0	0	24
121975	6.59400000000000031	0	202655	0	0	24
121976	6.59499999999999975	0	202687	0	0	24
121977	6.59600000000000009	0	202719	0	0	24
121978	6.59700000000000042	0	202751	0	0	24
121979	6.59799999999999986	0	202783	0	0	24
121980	6.5990000000000002	0	202815	0	0	24
121981	6.59999999999999964	0	202844	0	0	24
121982	6.60099999999999998	0	202876	0	0	24
121983	6.60200000000000031	0	202908	0	0	24
121984	6.60299999999999976	0	202940	0	0	24
121985	6.60400000000000009	0	202972	0	0	24
121986	6.60500000000000043	0	203004	0	0	24
121987	6.60599999999999987	0	203036	0	0	24
121988	6.60700000000000021	0	203068	0	0	24
121989	6.60799999999999965	0	203100	0	0	24
121990	6.60899999999999999	0	203132	0	0	24
121991	6.61000000000000032	0	203162	0	0	24
121992	6.61099999999999977	0	203194	0	0	24
121993	6.6120000000000001	0	203226	0	0	24
121994	6.61300000000000043	0	203258	0	0	24
121995	6.61399999999999988	0	203290	0	0	24
121996	6.61500000000000021	0	203322	0	0	24
121997	6.61599999999999966	0	203354	0	0	24
121998	6.61699999999999999	0	203386	0	0	24
121999	6.61800000000000033	0	203418	0	0	24
122000	6.61899999999999977	0	203450	0	0	24
122001	6.62000000000000011	0	203480	0	0	24
122002	6.62100000000000044	0	203512	0	0	24
122003	6.62199999999999989	0	203544	0	0	24
122004	6.62300000000000022	0	203576	0	0	24
122005	6.62399999999999967	0	203608	0	0	24
122006	6.625	0	203640	0	0	24
122007	6.62600000000000033	0	203672	0	0	24
122008	6.62699999999999978	0	203704	0	0	24
122009	6.62800000000000011	0	203736	0	0	24
122010	6.62899999999999956	0	203768	0	0	24
122011	6.62999999999999989	0	203798	0	0	24
122012	6.63100000000000023	0	203830	0	0	24
122013	6.63199999999999967	0	203862	0	0	24
122014	6.63300000000000001	0	203894	0	0	24
122015	6.63400000000000034	0	203926	0	0	24
122016	6.63499999999999979	0	203958	0	0	24
122017	6.63600000000000012	0	203990	0	0	24
122018	6.63699999999999957	0	204022	0	0	24
122019	6.6379999999999999	0	204054	0	0	24
122020	6.63900000000000023	0	204086	0	0	24
122021	6.63999999999999968	0	204116	0	0	24
122022	6.64100000000000001	0	204148	0	0	24
122023	6.64200000000000035	0	204180	0	0	24
122024	6.64299999999999979	0	204212	0	0	24
122025	6.64400000000000013	0	204244	0	0	24
122026	6.64499999999999957	0	204276	0	0	24
122027	6.64599999999999991	0	204308	0	0	24
122028	6.64700000000000024	0	204340	0	0	24
122029	6.64799999999999969	0	204372	0	0	24
122030	6.64900000000000002	0	204404	0	0	24
122031	6.65000000000000036	0	204433	0	0	24
122032	6.6509999999999998	0	204465	0	0	24
122033	6.65200000000000014	0	204497	0	0	24
122034	6.65299999999999958	0	204529	0	0	24
122035	6.65399999999999991	0	204561	0	0	24
122036	6.65500000000000025	0	204593	0	0	24
122037	6.65599999999999969	0	204625	0	0	24
122038	6.65700000000000003	0	204657	0	0	24
122039	6.65800000000000036	0	204689	0	0	24
122040	6.65899999999999981	0	204721	0	0	24
122041	6.66000000000000014	0	204751	0	0	24
122042	6.66099999999999959	0	204783	0	0	24
122043	6.66199999999999992	0	204815	0	0	24
122044	6.66300000000000026	0	204847	0	0	24
122045	6.6639999999999997	0	204879	0	0	24
122046	6.66500000000000004	0	204911	0	0	24
122047	6.66600000000000037	0	204943	0	0	24
122048	6.66699999999999982	0	204975	0	0	24
122049	6.66800000000000015	0	205007	0	0	24
122050	6.66899999999999959	0	205039	0	0	24
122051	6.66999999999999993	0	205069	0	0	24
122052	6.67100000000000026	0	205101	0	0	24
122053	6.67199999999999971	0	205133	0	0	24
122054	6.67300000000000004	0	205165	0	0	24
122055	6.67400000000000038	0	205197	0	0	24
122056	6.67499999999999982	0	205229	0	0	24
122057	6.67600000000000016	0	205261	0	0	24
122058	6.6769999999999996	0	205293	0	0	24
122059	6.67799999999999994	0	205325	0	0	24
122060	6.67900000000000027	0	205357	0	0	24
122061	6.67999999999999972	0	205387	0	0	24
122062	6.68100000000000005	0	205419	0	0	24
122063	6.68200000000000038	0	205451	0	0	24
122064	6.68299999999999983	0	205483	0	0	24
122065	6.68400000000000016	0	205515	0	0	24
122066	6.68499999999999961	0	205547	0	0	24
122067	6.68599999999999994	0	205579	0	0	24
122068	6.68700000000000028	0	205611	0	0	24
122069	6.68799999999999972	0	205643	0	0	24
122070	6.68900000000000006	0	205675	0	0	24
122071	6.69000000000000039	0	205705	0	0	24
122072	6.69099999999999984	0	205737	0	0	24
122073	6.69200000000000017	0	205769	0	0	24
122074	6.69299999999999962	0	205801	0	0	24
122075	6.69399999999999995	0	205833	0	0	24
122076	6.69500000000000028	0	205865	0	0	24
122077	6.69599999999999973	0	205897	0	0	24
122078	6.69700000000000006	0	205929	0	0	24
122079	6.6980000000000004	0	205961	0	0	24
122080	6.69899999999999984	0	205993	0	0	24
122081	6.70000000000000018	0	206022	0	0	24
122082	6.70099999999999962	0	206054	0	0	24
122083	6.70199999999999996	0	206086	0	0	24
122084	6.70300000000000029	0	206118	0	0	24
122085	6.70399999999999974	0	206150	0	0	24
122086	6.70500000000000007	0	206182	0	0	24
122087	6.70600000000000041	0	206214	0	0	24
122088	6.70699999999999985	0	206246	0	0	24
122089	6.70800000000000018	0	206278	0	0	24
122090	6.70899999999999963	0	206310	0	0	24
122091	6.70999999999999996	0	206340	0	0	24
122092	6.7110000000000003	0	206372	0	0	24
122093	6.71199999999999974	0	206404	0	0	24
122094	6.71300000000000008	0	206436	0	0	24
122095	6.71400000000000041	0	206468	0	0	24
122096	6.71499999999999986	0	206500	0	0	24
122097	6.71600000000000019	0	206532	0	0	24
122098	6.71699999999999964	0	206564	0	0	24
122099	6.71799999999999997	0	206596	0	0	24
122100	6.71900000000000031	0	206628	0	0	24
122101	6.71999999999999975	0	206658	0	0	24
122102	6.72100000000000009	0	206690	0	0	24
122103	6.72200000000000042	0	206722	0	0	24
122104	6.72299999999999986	0	206754	0	0	24
122105	6.7240000000000002	0	206786	0	0	24
122106	6.72499999999999964	0	206818	0	0	24
122107	6.72599999999999998	0	206850	0	0	24
122108	6.72700000000000031	0	206882	0	0	24
122109	6.72799999999999976	0	206914	0	0	24
122110	6.72900000000000009	0	206946	0	0	24
122111	6.73000000000000043	0	206976	0	0	24
122112	6.73099999999999987	0	207008	0	0	24
122113	6.73200000000000021	0	207040	0	0	24
122114	6.73299999999999965	0	207072	0	0	24
122115	6.73399999999999999	0	207104	0	0	24
122116	6.73500000000000032	0	207136	0	0	24
122117	6.73599999999999977	0	207168	0	0	24
122118	6.7370000000000001	0	207200	0	0	24
122119	6.73800000000000043	0	207232	0	0	24
122120	6.73899999999999988	0	207264	0	0	24
122121	6.74000000000000021	0	207294	0	0	24
122122	6.74099999999999966	0	207326	0	0	24
122123	6.74199999999999999	0	207358	0	0	24
122124	6.74300000000000033	0	207390	0	0	24
122125	6.74399999999999977	0	207422	0	0	24
122126	6.74500000000000011	0	207454	0	0	24
122127	6.74600000000000044	0	207486	0	0	24
122128	6.74699999999999989	0	207518	0	0	24
122129	6.74800000000000022	0	207550	0	0	24
122130	6.74899999999999967	0	207582	0	0	24
122131	6.75	0	207611	0	0	24
122132	6.75100000000000033	0	207643	0	0	24
122133	6.75199999999999978	0	207675	0	0	24
122134	6.75300000000000011	0	207707	0	0	24
122135	6.75399999999999956	0	207739	0	0	24
122136	6.75499999999999989	0	207771	0	0	24
122137	6.75600000000000023	0	207803	0	0	24
122138	6.75699999999999967	0	207835	0	0	24
122139	6.75800000000000001	0	207867	0	0	24
122140	6.75900000000000034	0	207899	0	0	24
122141	6.75999999999999979	0	207929	0	0	24
122142	6.76100000000000012	0	207961	0	0	24
122143	6.76199999999999957	0	207993	0	0	24
122144	6.7629999999999999	0	208025	0	0	24
122145	6.76400000000000023	0	208057	0	0	24
122146	6.76499999999999968	0	208089	0	0	24
122147	6.76600000000000001	0	208121	0	0	24
122148	6.76700000000000035	0	208153	0	0	24
122149	6.76799999999999979	0	208185	0	0	24
122150	6.76900000000000013	0	208217	0	0	24
122151	6.76999999999999957	0	208247	0	0	24
122152	6.77099999999999991	0	208279	0	0	24
122153	6.77200000000000024	0	208311	0	0	24
122154	6.77299999999999969	0	208343	0	0	24
122155	6.77400000000000002	0	208375	0	0	24
122156	6.77500000000000036	0	208407	0	0	24
122157	6.7759999999999998	0	208439	0	0	24
122158	6.77700000000000014	0	208471	0	0	24
122159	6.77799999999999958	0	208503	0	0	24
122160	6.77899999999999991	0	208535	0	0	24
122161	6.78000000000000025	0	208565	0	0	24
122162	6.78099999999999969	0	208597	0	0	24
122163	6.78200000000000003	0	208629	0	0	24
122164	6.78300000000000036	0	208661	0	0	24
122165	6.78399999999999981	0	208693	0	0	24
122166	6.78500000000000014	0	208725	0	0	24
122167	6.78599999999999959	0	208757	0	0	24
122168	6.78699999999999992	0	208789	0	0	24
122169	6.78800000000000026	0	208821	0	0	24
122170	6.7889999999999997	0	208853	0	0	24
122171	6.79000000000000004	0	208883	0	0	24
122172	6.79100000000000037	0	208915	0	0	24
122173	6.79199999999999982	0	208947	0	0	24
122174	6.79300000000000015	0	208979	0	0	24
122175	6.79399999999999959	0	209011	0	0	24
122176	6.79499999999999993	0	209043	0	0	24
122177	6.79600000000000026	0	209075	0	0	24
122178	6.79699999999999971	0	209107	0	0	24
122179	6.79800000000000004	0	209139	0	0	24
122180	6.79900000000000038	0	209171	0	0	24
122181	6.79999999999999982	0	209200	0	0	24
122182	6.80100000000000016	0	209232	0	0	24
122183	6.8019999999999996	0	209264	0	0	24
122184	6.80299999999999994	0	209296	0	0	24
122185	6.80400000000000027	0	209328	0	0	24
122186	6.80499999999999972	0	209360	0	0	24
122187	6.80600000000000005	0	209392	0	0	24
122188	6.80700000000000038	0	209424	0	0	24
122189	6.80799999999999983	0	209456	0	0	24
122190	6.80900000000000016	0	209488	0	0	24
122191	6.80999999999999961	0	209518	0	0	24
122192	6.81099999999999994	0	209550	0	0	24
122193	6.81200000000000028	0	209582	0	0	24
122194	6.81299999999999972	0	209614	0	0	24
122195	6.81400000000000006	0	209646	0	0	24
122196	6.81500000000000039	0	209678	0	0	24
122197	6.81599999999999984	0	209710	0	0	24
122198	6.81700000000000017	0	209742	0	0	24
122199	6.81799999999999962	0	209774	0	0	24
122200	6.81899999999999995	0	209806	0	0	24
122201	6.82000000000000028	0	209836	0	0	24
122202	6.82099999999999973	0	209868	0	0	24
122203	6.82200000000000006	0	209900	0	0	24
122204	6.8230000000000004	0	209932	0	0	24
122205	6.82399999999999984	0	209964	0	0	24
122206	6.82500000000000018	0	209996	0	0	24
122207	6.82599999999999962	0	210028	0	0	24
122208	6.82699999999999996	0	210060	0	0	24
122209	6.82800000000000029	0	210092	0	0	24
122210	6.82899999999999974	0	210124	0	0	24
122211	6.83000000000000007	0	210154	0	0	24
122212	6.83100000000000041	0	210186	0	0	24
122213	6.83199999999999985	0	210218	0	0	24
122214	6.83300000000000018	0	210250	0	0	24
122215	6.83399999999999963	0	210282	0	0	24
122216	6.83499999999999996	0	210314	0	0	24
122217	6.8360000000000003	0	210346	0	0	24
122218	6.83699999999999974	0	210378	0	0	24
122219	6.83800000000000008	0	210410	0	0	24
122220	6.83900000000000041	0	210442	0	0	24
122221	6.83999999999999986	0	210472	0	0	24
122222	6.84100000000000019	0	210504	0	0	24
122223	6.84199999999999964	0	210536	0	0	24
122224	6.84299999999999997	0	210568	0	0	24
122225	6.84400000000000031	0	210600	0	0	24
122226	6.84499999999999975	0	210632	0	0	24
122227	6.84600000000000009	0	210664	0	0	24
122228	6.84700000000000042	0	210696	0	0	24
122229	6.84799999999999986	0	210728	0	0	24
122230	6.8490000000000002	0	210760	0	0	24
122231	6.84999999999999964	0	210789	0	0	24
122232	6.85099999999999998	0	210821	0	0	24
122233	6.85200000000000031	0	210853	0	0	24
122234	6.85299999999999976	0	210885	0	0	24
122235	6.85400000000000009	0	210917	0	0	24
122236	6.85500000000000043	0	210949	0	0	24
122237	6.85599999999999987	0	210981	0	0	24
122238	6.85700000000000021	0	211013	0	0	24
122239	6.85799999999999965	0	211045	0	0	24
122240	6.85899999999999999	0	211077	0	0	24
122241	6.86000000000000032	0	211107	0	0	24
122242	6.86099999999999977	0	211139	0	0	24
122243	6.8620000000000001	0	211171	0	0	24
122244	6.86300000000000043	0	211203	0	0	24
122245	6.86399999999999988	0	211235	0	0	24
122246	6.86500000000000021	0	211267	0	0	24
122247	6.86599999999999966	0	211299	0	0	24
122248	6.86699999999999999	0	211331	0	0	24
122249	6.86800000000000033	0	211363	0	0	24
122250	6.86899999999999977	0	211395	0	0	24
122251	6.87000000000000011	0	211425	0	0	24
122252	6.87100000000000044	0	211457	0	0	24
122253	6.87199999999999989	0	211489	0	0	24
122254	6.87300000000000022	0	211521	0	0	24
122255	6.87399999999999967	0	211553	0	0	24
122256	6.875	0	211585	0	0	24
122257	6.87600000000000033	0	211617	0	0	24
122258	6.87699999999999978	0	211649	0	0	24
122259	6.87800000000000011	0	211681	0	0	24
122260	6.87899999999999956	0	211713	0	0	24
122261	6.87999999999999989	0	211743	0	0	24
122262	6.88100000000000023	0	211775	0	0	24
122263	6.88199999999999967	0	211807	0	0	24
122264	6.88300000000000001	0	211839	0	0	24
122265	6.88400000000000034	0	211871	0	0	24
122266	6.88499999999999979	0	211903	0	0	24
122267	6.88600000000000012	0	211935	0	0	24
122268	6.88699999999999957	0	211967	0	0	24
122269	6.8879999999999999	0	211999	0	0	24
122270	6.88900000000000023	0	212031	0	0	24
122271	6.88999999999999968	0	212061	0	0	24
122272	6.89100000000000001	0	212093	0	0	24
122273	6.89200000000000035	0	212125	0	0	24
122274	6.89299999999999979	0	212157	0	0	24
122275	6.89400000000000013	0	212189	0	0	24
122276	6.89499999999999957	0	212221	0	0	24
122277	6.89599999999999991	0	212253	0	0	24
122278	6.89700000000000024	0	212285	0	0	24
122279	6.89799999999999969	0	212317	0	0	24
122280	6.89900000000000002	0	212349	0	0	24
122281	6.90000000000000036	0	212378	0	0	24
122282	6.9009999999999998	0	212410	0	0	24
122283	6.90200000000000014	0	212442	0	0	24
122284	6.90299999999999958	0	212474	0	0	24
122285	6.90399999999999991	0	212506	0	0	24
122286	6.90500000000000025	0	212538	0	0	24
122287	6.90599999999999969	0	212570	0	0	24
122288	6.90700000000000003	0	212602	0	0	24
122289	6.90800000000000036	0	212634	0	0	24
122290	6.90899999999999981	0	212666	0	0	24
122291	6.91000000000000014	0	212696	0	0	24
122292	6.91099999999999959	0	212728	0	0	24
122293	6.91199999999999992	0	212760	0	0	24
122294	6.91300000000000026	0	212792	0	0	24
122295	6.9139999999999997	0	212824	0	0	24
122296	6.91500000000000004	0	212856	0	0	24
122297	6.91600000000000037	0	212888	0	0	24
122298	6.91699999999999982	0	212920	0	0	24
122299	6.91800000000000015	0	212952	0	0	24
122300	6.91899999999999959	0	212984	0	0	24
122301	6.91999999999999993	0	213014	0	0	24
122302	6.92100000000000026	0	213046	0	0	24
122303	6.92199999999999971	0	213078	0	0	24
122304	6.92300000000000004	0	213110	0	0	24
122305	6.92400000000000038	0	213142	0	0	24
122306	6.92499999999999982	0	213174	0	0	24
122307	6.92600000000000016	0	213206	0	0	24
122308	6.9269999999999996	0	213238	0	0	24
122309	6.92799999999999994	0	213270	0	0	24
122310	6.92900000000000027	0	213302	0	0	24
122311	6.92999999999999972	0	213332	0	0	24
122312	6.93100000000000005	0	213364	0	0	24
122313	6.93200000000000038	0	213396	0	0	24
122314	6.93299999999999983	0	213428	0	0	24
122315	6.93400000000000016	0	213460	0	0	24
122316	6.93499999999999961	0	213492	0	0	24
122317	6.93599999999999994	0	213524	0	0	24
122318	6.93700000000000028	0	213556	0	0	24
122319	6.93799999999999972	0	213588	0	0	24
122320	6.93900000000000006	0	213620	0	0	24
122321	6.94000000000000039	0	213650	0	0	24
122322	6.94099999999999984	0	213682	0	0	24
122323	6.94200000000000017	0	213714	0	0	24
122324	6.94299999999999962	0	213746	0	0	24
122325	6.94399999999999995	0	213778	0	0	24
122326	6.94500000000000028	0	213810	0	0	24
122327	6.94599999999999973	0	213842	0	0	24
122328	6.94700000000000006	0	213874	0	0	24
122329	6.9480000000000004	0	213906	0	0	24
122330	6.94899999999999984	0	213938	0	0	24
122331	6.95000000000000018	0	213967	0	0	24
122332	6.95099999999999962	0	213999	0	0	24
122333	6.95199999999999996	0	214031	0	0	24
122334	6.95300000000000029	0	214063	0	0	24
122335	6.95399999999999974	0	214095	0	0	24
122336	6.95500000000000007	0	214127	0	0	24
122337	6.95600000000000041	0	214159	0	0	24
122338	6.95699999999999985	0	214191	0	0	24
122339	6.95800000000000018	0	214223	0	0	24
122340	6.95899999999999963	0	214255	0	0	24
122341	6.95999999999999996	0	214285	0	0	24
122342	6.9610000000000003	0	214317	0	0	24
122343	6.96199999999999974	0	214349	0	0	24
122344	6.96300000000000008	0	214381	0	0	24
122345	6.96400000000000041	0	214413	0	0	24
122346	6.96499999999999986	0	214445	0	0	24
122347	6.96600000000000019	0	214477	0	0	24
122348	6.96699999999999964	0	214509	0	0	24
122349	6.96799999999999997	0	214541	0	0	24
122350	6.96900000000000031	0	214573	0	0	24
122351	6.96999999999999975	0	214603	0	0	24
122352	6.97100000000000009	0	214635	0	0	24
122353	6.97200000000000042	0	214667	0	0	24
122354	6.97299999999999986	0	214699	0	0	24
122355	6.9740000000000002	0	214731	0	0	24
122356	6.97499999999999964	0	214763	0	0	24
122357	6.97599999999999998	0	214795	0	0	24
122358	6.97700000000000031	0	214827	0	0	24
122359	6.97799999999999976	0	214859	0	0	24
122360	6.97900000000000009	0	214891	0	0	24
122361	6.98000000000000043	0	214921	0	0	24
122362	6.98099999999999987	0	214953	0	0	24
122363	6.98200000000000021	0	214985	0	0	24
122364	6.98299999999999965	0	215017	0	0	24
122365	6.98399999999999999	0	215049	0	0	24
122366	6.98500000000000032	0	215081	0	0	24
122367	6.98599999999999977	0	215113	0	0	24
122368	6.9870000000000001	0	215145	0	0	24
122369	6.98800000000000043	0	215177	0	0	24
122370	6.98899999999999988	0	215209	0	0	24
122371	6.99000000000000021	0	215239	0	0	24
122372	6.99099999999999966	0	215271	0	0	24
122373	6.99199999999999999	0	215303	0	0	24
122374	6.99300000000000033	0	215335	0	0	24
122375	6.99399999999999977	0	215367	0	0	24
122376	6.99500000000000011	0	215399	0	0	24
122377	6.99600000000000044	0	215431	0	0	24
122378	6.99699999999999989	0	215463	0	0	24
122379	6.99800000000000022	0	215495	0	0	24
122380	6.99899999999999967	0	215527	0	0	24
122381	7	0	215556	0	0	24
122382	7.00100000000000033	0	215588	0	0	24
122383	7.00199999999999978	0	215620	0	0	24
122384	7.00300000000000011	0	215652	0	0	24
122385	7.00399999999999956	0	215684	0	0	24
122386	7.00499999999999989	0	215716	0	0	24
122387	7.00600000000000023	0	215748	0	0	24
122388	7.00699999999999967	0	215780	0	0	24
122389	7.00800000000000001	0	215812	0	0	24
122390	7.00900000000000034	0	215844	0	0	24
122391	7.00999999999999979	0	215874	0	0	24
122392	7.01100000000000012	0	215906	0	0	24
122393	7.01199999999999957	0	215938	0	0	24
122394	7.0129999999999999	0	215970	0	0	24
122395	7.01400000000000023	0	216002	0	0	24
122396	7.01499999999999968	0	216034	0	0	24
122397	7.01600000000000001	0	216066	0	0	24
122398	7.01700000000000035	0	216098	0	0	24
122399	7.01799999999999979	0	216130	0	0	24
122400	7.01900000000000013	0	216162	0	0	24
122401	7.01999999999999957	0	216192	0	0	24
122402	7.02099999999999991	0	216224	0	0	24
122403	7.02200000000000024	0	216256	0	0	24
122404	7.02299999999999969	0	216288	0	0	24
122405	7.02400000000000002	0	216320	0	0	24
122406	7.02500000000000036	0	216352	0	0	24
122407	7.0259999999999998	0	216384	0	0	24
122408	7.02700000000000014	0	216416	0	0	24
122409	7.02799999999999958	0	216448	0	0	24
122410	7.02899999999999991	0	216480	0	0	24
122411	7.03000000000000025	0	216510	0	0	24
122412	7.03099999999999969	0	216542	0	0	24
122413	7.03200000000000003	0	216574	0	0	24
122414	7.03300000000000036	0	216606	0	0	24
122415	7.03399999999999981	0	216638	0	0	24
122416	7.03500000000000014	0	216670	0	0	24
122417	7.03599999999999959	0	216702	0	0	24
122418	7.03699999999999992	0	216734	0	0	24
122419	7.03800000000000026	0	216766	0	0	24
122420	7.0389999999999997	0	216798	0	0	24
122421	7.04000000000000004	0	216828	0	0	24
122422	7.04100000000000037	0	216860	0	0	24
122423	7.04199999999999982	0	216892	0	0	24
122424	7.04300000000000015	0	216924	0	0	24
122425	7.04399999999999959	0	216956	0	0	24
122426	7.04499999999999993	0	216988	0	0	24
122427	7.04600000000000026	0	217020	0	0	24
122428	7.04699999999999971	0	217052	0	0	24
122429	7.04800000000000004	0	217084	0	0	24
122430	7.04900000000000038	0	217116	0	0	24
122431	7.04999999999999982	0	217145	0	0	24
122432	7.05100000000000016	0	217177	0	0	24
122433	7.0519999999999996	0	217209	0	0	24
122434	7.05299999999999994	0	217241	0	0	24
122435	7.05400000000000027	0	217273	0	0	24
122436	7.05499999999999972	0	217305	0	0	24
122437	7.05600000000000005	0	217337	0	0	24
122438	7.05700000000000038	0	217369	0	0	24
122439	7.05799999999999983	0	217401	0	0	24
122440	7.05900000000000016	0	217433	0	0	24
122441	7.05999999999999961	0	217463	0	0	24
122442	7.06099999999999994	0	217495	0	0	24
122443	7.06200000000000028	0	217527	0	0	24
122444	7.06299999999999972	0	217559	0	0	24
122445	7.06400000000000006	0	217591	0	0	24
122446	7.06500000000000039	0	217623	0	0	24
122447	7.06599999999999984	0	217655	0	0	24
122448	7.06700000000000017	0	217687	0	0	24
122449	7.06799999999999962	0	217719	0	0	24
122450	7.06899999999999995	0	217751	0	0	24
122451	7.07000000000000028	0	217781	0	0	24
122452	7.07099999999999973	0	217813	0	0	24
122453	7.07200000000000006	0	217845	0	0	24
122454	7.0730000000000004	0	217877	0	0	24
122455	7.07399999999999984	0	217909	0	0	24
122456	7.07500000000000018	0	217941	0	0	24
122457	7.07599999999999962	0	217973	0	0	24
122458	7.07699999999999996	0	218005	0	0	24
122459	7.07800000000000029	0	218037	0	0	24
122460	7.07899999999999974	0	218069	0	0	24
122461	7.08000000000000007	0	218099	0	0	24
122462	7.08100000000000041	0	218131	0	0	24
122463	7.08199999999999985	0	218163	0	0	24
122464	7.08300000000000018	0	218195	0	0	24
122465	7.08399999999999963	0	218227	0	0	24
122466	7.08499999999999996	0	218259	0	0	24
122467	7.0860000000000003	0	218291	0	0	24
122468	7.08699999999999974	0	218323	0	0	24
122469	7.08800000000000008	0	218355	0	0	24
122470	7.08900000000000041	0	218387	0	0	24
122471	7.08999999999999986	0	218417	0	0	24
122472	7.09100000000000019	0	218449	0	0	24
122473	7.09199999999999964	0	218481	0	0	24
122474	7.09299999999999997	0	218513	0	0	24
122475	7.09400000000000031	0	218545	0	0	24
122476	7.09499999999999975	0	218577	0	0	24
122477	7.09600000000000009	0	218609	0	0	24
122478	7.09700000000000042	0	218641	0	0	24
122479	7.09799999999999986	0	218673	0	0	24
122480	7.0990000000000002	0	218705	0	0	24
122481	7.09999999999999964	0	218734	0	0	24
122482	7.10099999999999998	0	218766	0	0	24
122483	7.10200000000000031	0	218798	0	0	24
122484	7.10299999999999976	0	218830	0	0	24
122485	7.10400000000000009	0	218862	0	0	24
122486	7.10500000000000043	0	218894	0	0	24
122487	7.10599999999999987	0	218926	0	0	24
122488	7.10700000000000021	0	218958	0	0	24
122489	7.10799999999999965	0	218990	0	0	24
122490	7.10899999999999999	0	219022	0	0	24
122491	7.11000000000000032	0	219052	0	0	24
122492	7.11099999999999977	0	219084	0	0	24
122493	7.1120000000000001	0	219116	0	0	24
122494	7.11300000000000043	0	219148	0	0	24
122495	7.11399999999999988	0	219180	0	0	24
122496	7.11500000000000021	0	219212	0	0	24
122497	7.11599999999999966	0	219244	0	0	24
122498	7.11699999999999999	0	219276	0	0	24
122499	7.11800000000000033	0	219308	0	0	24
122500	7.11899999999999977	0	219340	0	0	24
122501	7.12000000000000011	0	219370	0	0	24
122502	7.12100000000000044	0	219402	0	0	24
122503	7.12199999999999989	0	219434	0	0	24
122504	7.12300000000000022	0	219466	0	0	24
122505	7.12399999999999967	0	219498	0	0	24
122506	7.125	0	219530	0	0	24
122507	7.12600000000000033	0	219562	0	0	24
122508	7.12699999999999978	0	219594	0	0	24
122509	7.12800000000000011	0	219626	0	0	24
122510	7.12899999999999956	0	219658	0	0	24
122511	7.12999999999999989	0	219688	0	0	24
122512	7.13100000000000023	0	219720	0	0	24
122513	7.13199999999999967	0	219752	0	0	24
122514	7.13300000000000001	0	219784	0	0	24
122515	7.13400000000000034	0	219816	0	0	24
122516	7.13499999999999979	0	219848	0	0	24
122517	7.13600000000000012	0	219880	0	0	24
122518	7.13699999999999957	0	219912	0	0	24
122519	7.1379999999999999	0	219944	0	0	24
122520	7.13900000000000023	0	219976	0	0	24
122521	7.13999999999999968	0	220006	0	0	24
122522	7.14100000000000001	0	220038	0	0	24
122523	7.14200000000000035	0	220070	0	0	24
122524	7.14299999999999979	0	220102	0	0	24
122525	7.14400000000000013	0	220134	0	0	24
122526	7.14499999999999957	0	220166	0	0	24
122527	7.14599999999999991	0	220198	0	0	24
122528	7.14700000000000024	0	220230	0	0	24
122529	7.14799999999999969	0	220262	0	0	24
122530	7.14900000000000002	0	220294	0	0	24
122531	7.15000000000000036	0	220323	0	0	24
122532	7.1509999999999998	0	220355	0	0	24
122533	7.15200000000000014	0	220387	0	0	24
122534	7.15299999999999958	0	220419	0	0	24
122535	7.15399999999999991	0	220451	0	0	24
122536	7.15500000000000025	0	220483	0	0	24
122537	7.15599999999999969	0	220515	0	0	24
122538	7.15700000000000003	0	220547	0	0	24
122539	7.15800000000000036	0	220579	0	0	24
122540	7.15899999999999981	0	220611	0	0	24
122541	7.16000000000000014	0	220641	0	0	24
122542	7.16099999999999959	0	220673	0	0	24
122543	7.16199999999999992	0	220705	0	0	24
122544	7.16300000000000026	0	220737	0	0	24
122545	7.1639999999999997	0	220769	0	0	24
122546	7.16500000000000004	0	220801	0	0	24
122547	7.16600000000000037	0	220833	0	0	24
122548	7.16699999999999982	0	220865	0	0	24
122549	7.16800000000000015	0	220897	0	0	24
122550	7.16899999999999959	0	220929	0	0	24
122551	7.16999999999999993	0	220959	0	0	24
122552	7.17100000000000026	0	220991	0	0	24
122553	7.17199999999999971	0	221023	0	0	24
122554	7.17300000000000004	0	221055	0	0	24
122555	7.17400000000000038	0	221087	0	0	24
122556	7.17499999999999982	0	221119	0	0	24
122557	7.17600000000000016	0	221151	0	0	24
122558	7.1769999999999996	0	221183	0	0	24
122559	7.17799999999999994	0	221215	0	0	24
122560	7.17900000000000027	0	221247	0	0	24
122561	7.17999999999999972	0	221277	0	0	24
122562	7.18100000000000005	0	221309	0	0	24
122563	7.18200000000000038	0	221341	0	0	24
122564	7.18299999999999983	0	221373	0	0	24
122565	7.18400000000000016	0	221405	0	0	24
122566	7.18499999999999961	0	221437	0	0	24
122567	7.18599999999999994	0	221469	0	0	24
122568	7.18700000000000028	0	221501	0	0	24
122569	7.18799999999999972	0	221533	0	0	24
122570	7.18900000000000006	0	221565	0	0	24
122571	7.19000000000000039	0	221595	0	0	24
122572	7.19099999999999984	0	221627	0	0	24
122573	7.19200000000000017	0	221659	0	0	24
122574	7.19299999999999962	0	221691	0	0	24
122575	7.19399999999999995	0	221723	0	0	24
122576	7.19500000000000028	0	221755	0	0	24
122577	7.19599999999999973	0	221787	0	0	24
122578	7.19700000000000006	0	221819	0	0	24
122579	7.1980000000000004	0	221851	0	0	24
122580	7.19899999999999984	0	221883	0	0	24
122581	7.20000000000000018	0	221912	0	0	24
122582	7.20099999999999962	0	221944	0	0	24
122583	7.20199999999999996	0	221976	0	0	24
122584	7.20300000000000029	0	222008	0	0	24
122585	7.20399999999999974	0	222040	0	0	24
122586	7.20500000000000007	0	222072	0	0	24
122587	7.20600000000000041	0	222104	0	0	24
122588	7.20699999999999985	0	222136	0	0	24
122589	7.20800000000000018	0	222168	0	0	24
122590	7.20899999999999963	0	222200	0	0	24
122591	7.20999999999999996	0	222230	0	0	24
122592	7.2110000000000003	0	222262	0	0	24
122593	7.21199999999999974	0	222294	0	0	24
122594	7.21300000000000008	0	222326	0	0	24
122595	7.21400000000000041	0	222358	0	0	24
122596	7.21499999999999986	0	222390	0	0	24
122597	7.21600000000000019	0	222422	0	0	24
122598	7.21699999999999964	0	222454	0	0	24
122599	7.21799999999999997	0	222486	0	0	24
122600	7.21900000000000031	0	222518	0	0	24
122601	7.21999999999999975	0	222548	0	0	24
122602	7.22100000000000009	0	222580	0	0	24
122603	7.22200000000000042	0	222612	0	0	24
122604	7.22299999999999986	0	222644	0	0	24
122605	7.2240000000000002	0	222676	0	0	24
122606	7.22499999999999964	0	222708	0	0	24
122607	7.22599999999999998	0	222740	0	0	24
122608	7.22700000000000031	0	222772	0	0	24
122609	7.22799999999999976	0	222804	0	0	24
122610	7.22900000000000009	0	222836	0	0	24
122611	7.23000000000000043	0	222866	0	0	24
122612	7.23099999999999987	0	222898	0	0	24
122613	7.23200000000000021	0	222930	0	0	24
122614	7.23299999999999965	0	222962	0	0	24
122615	7.23399999999999999	0	222994	0	0	24
122616	7.23500000000000032	0	223026	0	0	24
122617	7.23599999999999977	0	223058	0	0	24
122618	7.2370000000000001	0	223090	0	0	24
122619	7.23800000000000043	0	223122	0	0	24
122620	7.23899999999999988	0	223154	0	0	24
122621	7.24000000000000021	0	223184	0	0	24
122622	7.24099999999999966	0	223216	0	0	24
122623	7.24199999999999999	0	223248	0	0	24
122624	7.24300000000000033	0	223280	0	0	24
122625	7.24399999999999977	0	223312	0	0	24
122626	7.24500000000000011	0	223344	0	0	24
122627	7.24600000000000044	0	223376	0	0	24
122628	7.24699999999999989	0	223408	0	0	24
122629	7.24800000000000022	0	223440	0	0	24
122630	7.24899999999999967	0	223472	0	0	24
122631	7.25	0	223501	0	0	24
122632	7.25100000000000033	0	223533	0	0	24
122633	7.25199999999999978	0	223565	0	0	24
122634	7.25300000000000011	0	223597	0	0	24
122635	7.25399999999999956	0	223629	0	0	24
122636	7.25499999999999989	0	223661	0	0	24
122637	7.25600000000000023	0	223693	0	0	24
122638	7.25699999999999967	0	223725	0	0	24
122639	7.25800000000000001	0	223757	0	0	24
122640	7.25900000000000034	0	223789	0	0	24
122641	7.25999999999999979	0	223819	0	0	24
122642	7.26100000000000012	0	223851	0	0	24
122643	7.26199999999999957	0	223883	0	0	24
122644	7.2629999999999999	0	223915	0	0	24
122645	7.26400000000000023	0	223947	0	0	24
122646	7.26499999999999968	0	223979	0	0	24
122647	7.26600000000000001	0	224011	0	0	24
122648	7.26700000000000035	0	224043	0	0	24
122649	7.26799999999999979	0	224075	0	0	24
122650	7.26900000000000013	0	224107	0	0	24
122651	7.26999999999999957	0	224137	0	0	24
122652	7.27099999999999991	0	224169	0	0	24
122653	7.27200000000000024	0	224201	0	0	24
122654	7.27299999999999969	0	224233	0	0	24
122655	7.27400000000000002	0	224265	0	0	24
122656	7.27500000000000036	0	224297	0	0	24
122657	7.2759999999999998	0	224329	0	0	24
122658	7.27700000000000014	0	224361	0	0	24
122659	7.27799999999999958	0	224393	0	0	24
122660	7.27899999999999991	0	224425	0	0	24
122661	7.28000000000000025	0	224455	0	0	24
122662	7.28099999999999969	0	224487	0	0	24
122663	7.28200000000000003	0	224519	0	0	24
122664	7.28300000000000036	0	224551	0	0	24
122665	7.28399999999999981	0	224583	0	0	24
122666	7.28500000000000014	0	224615	0	0	24
122667	7.28599999999999959	0	224647	0	0	24
122668	7.28699999999999992	0	224679	0	0	24
122669	7.28800000000000026	0	224711	0	0	24
122670	7.2889999999999997	0	224743	0	0	24
122671	7.29000000000000004	0	224773	0	0	24
122672	7.29100000000000037	0	224805	0	0	24
122673	7.29199999999999982	0	224837	0	0	24
122674	7.29300000000000015	0	224869	0	0	24
122675	7.29399999999999959	0	224901	0	0	24
122676	7.29499999999999993	0	224933	0	0	24
122677	7.29600000000000026	0	224965	0	0	24
122678	7.29699999999999971	0	224997	0	0	24
122679	7.29800000000000004	0	225029	0	0	24
122680	7.29900000000000038	0	225061	0	0	24
122681	7.29999999999999982	0	225090	0	0	24
122682	7.30100000000000016	0	225122	0	0	24
122683	7.3019999999999996	0	225154	0	0	24
122684	7.30299999999999994	0	225186	0	0	24
122685	7.30400000000000027	0	225218	0	0	24
122686	7.30499999999999972	0	225250	0	0	24
122687	7.30600000000000005	0	225282	0	0	24
122688	7.30700000000000038	0	225314	0	0	24
122689	7.30799999999999983	0	225346	0	0	24
122690	7.30900000000000016	0	225378	0	0	24
122691	7.30999999999999961	0	225408	0	0	24
122692	7.31099999999999994	0	225440	0	0	24
122693	7.31200000000000028	0	225472	0	0	24
122694	7.31299999999999972	0	225504	0	0	24
122695	7.31400000000000006	0	225536	0	0	24
122696	7.31500000000000039	0	225568	0	0	24
122697	7.31599999999999984	0	225600	0	0	24
122698	7.31700000000000017	0	225632	0	0	24
122699	7.31799999999999962	0	225664	0	0	24
122700	7.31899999999999995	0	225696	0	0	24
122701	7.32000000000000028	0	225726	0	0	24
122702	7.32099999999999973	0	225758	0	0	24
122703	7.32200000000000006	0	225790	0	0	24
122704	7.3230000000000004	0	225822	0	0	24
122705	7.32399999999999984	0	225854	0	0	24
122706	7.32500000000000018	0	225886	0	0	24
122707	7.32599999999999962	0	225918	0	0	24
122708	7.32699999999999996	0	225950	0	0	24
122709	7.32800000000000029	0	225982	0	0	24
122710	7.32899999999999974	0	226014	0	0	24
122711	7.33000000000000007	0	226044	0	0	24
122712	7.33100000000000041	0	226076	0	0	24
122713	7.33199999999999985	0	226108	0	0	24
122714	7.33300000000000018	0	226140	0	0	24
122715	7.33399999999999963	0	226172	0	0	24
122716	7.33499999999999996	0	226204	0	0	24
122717	7.3360000000000003	0	226236	0	0	24
122718	7.33699999999999974	0	226268	0	0	24
122719	7.33800000000000008	0	226300	0	0	24
122720	7.33900000000000041	0	226332	0	0	24
122721	7.33999999999999986	0	226362	0	0	24
122722	7.34100000000000019	0	226394	0	0	24
122723	7.34199999999999964	0	226426	0	0	24
122724	7.34299999999999997	0	226458	0	0	24
122725	7.34400000000000031	0	226490	0	0	24
122726	7.34499999999999975	0	226522	0	0	24
122727	7.34600000000000009	0	226554	0	0	24
122728	7.34700000000000042	0	226586	0	0	24
122729	7.34799999999999986	0	226618	0	0	24
122730	7.3490000000000002	0	226650	0	0	24
122731	7.34999999999999964	0	226679	0	0	24
122732	7.35099999999999998	0	226711	0	0	24
122733	7.35200000000000031	0	226743	0	0	24
122734	7.35299999999999976	0	226775	0	0	24
122735	7.35400000000000009	0	226807	0	0	24
122736	7.35500000000000043	0	226839	0	0	24
122737	7.35599999999999987	0	226871	0	0	24
122738	7.35700000000000021	0	226903	0	0	24
122739	7.35799999999999965	0	226935	0	0	24
122740	7.35899999999999999	0	226967	0	0	24
122741	7.36000000000000032	0	226997	0	0	24
122742	7.36099999999999977	0	227029	0	0	24
122743	7.3620000000000001	0	227061	0	0	24
122744	7.36300000000000043	0	227093	0	0	24
122745	7.36399999999999988	0	227125	0	0	24
122746	7.36500000000000021	0	227157	0	0	24
122747	7.36599999999999966	0	227189	0	0	24
122748	7.36699999999999999	0	227221	0	0	24
122749	7.36800000000000033	0	227253	0	0	24
122750	7.36899999999999977	0	227285	0	0	24
122751	7.37000000000000011	0	227315	0	0	24
122752	7.37100000000000044	0	227347	0	0	24
122753	7.37199999999999989	0	227379	0	0	24
122754	7.37300000000000022	0	227411	0	0	24
122755	7.37399999999999967	0	227443	0	0	24
122756	7.375	0	227475	0	0	24
122757	7.37600000000000033	0	227507	0	0	24
122758	7.37699999999999978	0	227539	0	0	24
122759	7.37800000000000011	0	227571	0	0	24
122760	7.37899999999999956	0	227603	0	0	24
122761	7.37999999999999989	0	227633	0	0	24
122762	7.38100000000000023	0	227665	0	0	24
122763	7.38199999999999967	0	227697	0	0	24
122764	7.38300000000000001	0	227729	0	0	24
122765	7.38400000000000034	0	227761	0	0	24
122766	7.38499999999999979	0	227793	0	0	24
122767	7.38600000000000012	0	227825	0	0	24
122768	7.38699999999999957	0	227857	0	0	24
122769	7.3879999999999999	0	227889	0	0	24
122770	7.38900000000000023	0	227921	0	0	24
122771	7.38999999999999968	0	227951	0	0	24
122772	7.39100000000000001	0	227983	0	0	24
122773	7.39200000000000035	0	228015	0	0	24
122774	7.39299999999999979	0	228047	0	0	24
122775	7.39400000000000013	0	228079	0	0	24
122776	7.39499999999999957	0	228111	0	0	24
122777	7.39599999999999991	0	228143	0	0	24
122778	7.39700000000000024	0	228175	0	0	24
122779	7.39799999999999969	0	228207	0	0	24
122780	7.39900000000000002	0	228239	0	0	24
122781	7.40000000000000036	0	228268	0	0	24
122782	7.4009999999999998	0	228300	0	0	24
122783	7.40200000000000014	0	228332	0	0	24
122784	7.40299999999999958	0	228364	0	0	24
122785	7.40399999999999991	0	228396	0	0	24
122786	7.40500000000000025	0	228428	0	0	24
122787	7.40599999999999969	0	228460	0	0	24
122788	7.40700000000000003	0	228492	0	0	24
122789	7.40800000000000036	0	228524	0	0	24
122790	7.40899999999999981	0	228556	0	0	24
122791	7.41000000000000014	0	228586	0	0	24
122792	7.41099999999999959	0	228618	0	0	24
122793	7.41199999999999992	0	228650	0	0	24
122794	7.41300000000000026	0	228682	0	0	24
122795	7.4139999999999997	0	228714	0	0	24
122796	7.41500000000000004	0	228746	0	0	24
122797	7.41600000000000037	0	228778	0	0	24
122798	7.41699999999999982	0	228810	0	0	24
122799	7.41800000000000015	0	228842	0	0	24
122800	7.41899999999999959	0	228874	0	0	24
122801	7.41999999999999993	0	228904	0	0	24
122802	7.42100000000000026	0	228936	0	0	24
122803	7.42199999999999971	0	228968	0	0	24
122804	7.42300000000000004	0	229000	0	0	24
122805	7.42400000000000038	0	229032	0	0	24
122806	7.42499999999999982	0	229064	0	0	24
122807	7.42600000000000016	0	229096	0	0	24
122808	7.4269999999999996	0	229128	0	0	24
122809	7.42799999999999994	0	229160	0	0	24
122810	7.42900000000000027	0	229192	0	0	24
122811	7.42999999999999972	0	229222	0	0	24
122812	7.43100000000000005	0	229254	0	0	24
122813	7.43200000000000038	0	229286	0	0	24
122814	7.43299999999999983	0	229318	0	0	24
122815	7.43400000000000016	0	229350	0	0	24
122816	7.43499999999999961	0	229382	0	0	24
122817	7.43599999999999994	0	229414	0	0	24
122818	7.43700000000000028	0	229446	0	0	24
122819	7.43799999999999972	0	229478	0	0	24
122820	7.43900000000000006	0	229510	0	0	24
122821	7.44000000000000039	0	229540	0	0	24
122822	7.44099999999999984	0	229572	0	0	24
122823	7.44200000000000017	0	229604	0	0	24
122824	7.44299999999999962	0	229636	0	0	24
122825	7.44399999999999995	0	229668	0	0	24
122826	7.44500000000000028	0	229700	0	0	24
122827	7.44599999999999973	0	229732	0	0	24
122828	7.44700000000000006	0	229764	0	0	24
122829	7.4480000000000004	0	229796	0	0	24
122830	7.44899999999999984	0	229828	0	0	24
122831	7.45000000000000018	0	229857	0	0	24
122832	7.45099999999999962	0	229889	0	0	24
122833	7.45199999999999996	0	229921	0	0	24
122834	7.45300000000000029	0	229953	0	0	24
122835	7.45399999999999974	0	229985	0	0	24
122836	7.45500000000000007	0	230017	0	0	24
122837	7.45600000000000041	0	230049	0	0	24
122838	7.45699999999999985	0	230081	0	0	24
122839	7.45800000000000018	0	230113	0	0	24
122840	7.45899999999999963	0	230145	0	0	24
122841	7.45999999999999996	0	230175	0	0	24
122842	7.4610000000000003	0	230207	0	0	24
122843	7.46199999999999974	0	230239	0	0	24
122844	7.46300000000000008	0	230271	0	0	24
122845	7.46400000000000041	0	230303	0	0	24
122846	7.46499999999999986	0	230335	0	0	24
122847	7.46600000000000019	0	230367	0	0	24
122848	7.46699999999999964	0	230399	0	0	24
122849	7.46799999999999997	0	230431	0	0	24
122850	7.46900000000000031	0	230463	0	0	24
122851	7.46999999999999975	0	230493	0	0	24
122852	7.47100000000000009	0	230525	0	0	24
122853	7.47200000000000042	0	230557	0	0	24
122854	7.47299999999999986	0	230589	0	0	24
122855	7.4740000000000002	0	230621	0	0	24
122856	7.47499999999999964	0	230653	0	0	24
122857	7.47599999999999998	0	230685	0	0	24
122858	7.47700000000000031	0	230717	0	0	24
122859	7.47799999999999976	0	230749	0	0	24
122860	7.47900000000000009	0	230781	0	0	24
122861	7.48000000000000043	0	230811	0	0	24
122862	7.48099999999999987	0	230843	0	0	24
122863	7.48200000000000021	0	230875	0	0	24
122864	7.48299999999999965	0	230907	0	0	24
122865	7.48399999999999999	0	230939	0	0	24
122866	7.48500000000000032	0	230971	0	0	24
122867	7.48599999999999977	0	231003	0	0	24
122868	7.4870000000000001	0	231035	0	0	24
122869	7.48800000000000043	0	231067	0	0	24
122870	7.48899999999999988	0	231099	0	0	24
122871	7.49000000000000021	0	231129	0	0	24
122872	7.49099999999999966	0	231161	0	0	24
122873	7.49199999999999999	0	231193	0	0	24
122874	7.49300000000000033	0	231225	0	0	24
122875	7.49399999999999977	0	231257	0	0	24
122876	7.49500000000000011	0	231289	0	0	24
122877	7.49600000000000044	0	231321	0	0	24
122878	7.49699999999999989	0	231353	0	0	24
122879	7.49800000000000022	0	231385	0	0	24
122880	7.49899999999999967	0	231417	0	0	24
122881	7.5	0	231446	0	0	24
122882	7.50100000000000033	0	231478	0	0	24
122883	7.50199999999999978	0	231510	0	0	24
122884	7.50300000000000011	0	231542	0	0	24
122885	7.50399999999999956	0	231574	0	0	24
122886	7.50499999999999989	0	231606	0	0	24
122887	7.50600000000000023	0	231638	0	0	24
122888	7.50699999999999967	0	231670	0	0	24
122889	7.50800000000000001	0	231702	0	0	24
122890	7.50900000000000034	0	231734	0	0	24
122891	7.50999999999999979	0	231764	0	0	24
122892	7.51100000000000012	0	231796	0	0	24
122893	7.51199999999999957	0	231828	0	0	24
122894	7.5129999999999999	0	231860	0	0	24
122895	7.51400000000000023	0	231892	0	0	24
122896	7.51499999999999968	0	231924	0	0	24
122897	7.51600000000000001	0	231956	0	0	24
122898	7.51700000000000035	0	231988	0	0	24
122899	7.51799999999999979	0	232020	0	0	24
122900	7.51900000000000013	0	232052	0	0	24
122901	7.51999999999999957	0	232082	0	0	24
122902	7.52099999999999991	0	232114	0	0	24
122903	7.52200000000000024	0	232146	0	0	24
122904	7.52299999999999969	0	232178	0	0	24
122905	7.52400000000000002	0	232210	0	0	24
122906	7.52500000000000036	0	232242	0	0	24
122907	7.5259999999999998	0	232274	0	0	24
122908	7.52700000000000014	0	232306	0	0	24
122909	7.52799999999999958	0	232338	0	0	24
122910	7.52899999999999991	0	232370	0	0	24
122911	7.53000000000000025	0	232400	0	0	24
122912	7.53099999999999969	0	232432	0	0	24
122913	7.53200000000000003	0	232464	0	0	24
122914	7.53300000000000036	0	232496	0	0	24
122915	7.53399999999999981	0	232528	0	0	24
122916	7.53500000000000014	0	232560	0	0	24
122917	7.53599999999999959	0	232592	0	0	24
122918	7.53699999999999992	0	232624	0	0	24
122919	7.53800000000000026	0	232656	0	0	24
122920	7.5389999999999997	0	232688	0	0	24
122921	7.54000000000000004	0	232718	0	0	24
122922	7.54100000000000037	0	232750	0	0	24
122923	7.54199999999999982	0	232782	0	0	24
122924	7.54300000000000015	0	232814	0	0	24
122925	7.54399999999999959	0	232846	0	0	24
122926	7.54499999999999993	0	232878	0	0	24
122927	7.54600000000000026	0	232910	0	0	24
122928	7.54699999999999971	0	232942	0	0	24
122929	7.54800000000000004	0	232974	0	0	24
122930	7.54900000000000038	0	233006	0	0	24
122931	7.54999999999999982	0	233035	0	0	24
122932	7.55100000000000016	0	233067	0	0	24
122933	7.5519999999999996	0	233099	0	0	24
122934	7.55299999999999994	0	233131	0	0	24
122935	7.55400000000000027	0	233163	0	0	24
122936	7.55499999999999972	0	233195	0	0	24
122937	7.55600000000000005	0	233227	0	0	24
122938	7.55700000000000038	0	233259	0	0	24
122939	7.55799999999999983	0	233291	0	0	24
122940	7.55900000000000016	0	233323	0	0	24
122941	7.55999999999999961	0	233353	0	0	24
122942	7.56099999999999994	0	233385	0	0	24
122943	7.56200000000000028	0	233417	0	0	24
122944	7.56299999999999972	0	233449	0	0	24
122945	7.56400000000000006	0	233481	0	0	24
122946	7.56500000000000039	0	233513	0	0	24
122947	7.56599999999999984	0	233545	0	0	24
122948	7.56700000000000017	0	233577	0	0	24
122949	7.56799999999999962	0	233609	0	0	24
122950	7.56899999999999995	0	233641	0	0	24
122951	7.57000000000000028	0	233671	0	0	24
122952	7.57099999999999973	0	233703	0	0	24
122953	7.57200000000000006	0	233735	0	0	24
122954	7.5730000000000004	0	233767	0	0	24
122955	7.57399999999999984	0	233799	0	0	24
122956	7.57500000000000018	0	233831	0	0	24
122957	7.57599999999999962	0	233863	0	0	24
122958	7.57699999999999996	0	233895	0	0	24
122959	7.57800000000000029	0	233927	0	0	24
122960	7.57899999999999974	0	233959	0	0	24
122961	7.58000000000000007	0	233989	0	0	24
122962	7.58100000000000041	0	234021	0	0	24
122963	7.58199999999999985	0	234053	0	0	24
122964	7.58300000000000018	0	234085	0	0	24
122965	7.58399999999999963	0	234117	0	0	24
122966	7.58499999999999996	0	234149	0	0	24
122967	7.5860000000000003	0	234181	0	0	24
122968	7.58699999999999974	0	234213	0	0	24
122969	7.58800000000000008	0	234245	0	0	24
122970	7.58900000000000041	0	234277	0	0	24
122971	7.58999999999999986	0	234307	0	0	24
122972	7.59100000000000019	0	234339	0	0	24
122973	7.59199999999999964	0	234371	0	0	24
122974	7.59299999999999997	0	234403	0	0	24
122975	7.59400000000000031	0	234435	0	0	24
122976	7.59499999999999975	0	234467	0	0	24
122977	7.59600000000000009	0	234499	0	0	24
122978	7.59700000000000042	0	234531	0	0	24
122979	7.59799999999999986	0	234563	0	0	24
122980	7.5990000000000002	0	234595	0	0	24
122981	7.59999999999999964	0	234624	0	0	24
122982	7.60099999999999998	0	234656	0	0	24
122983	7.60200000000000031	0	234688	0	0	24
122984	7.60299999999999976	0	234720	0	0	24
122985	7.60400000000000009	0	234752	0	0	24
122986	7.60500000000000043	0	234784	0	0	24
122987	7.60599999999999987	0	234816	0	0	24
122988	7.60700000000000021	0	234848	0	0	24
122989	7.60799999999999965	0	234880	0	0	24
122990	7.60899999999999999	0	234912	0	0	24
122991	7.61000000000000032	0	234942	0	0	24
122992	7.61099999999999977	0	234974	0	0	24
122993	7.6120000000000001	0	235006	0	0	24
122994	7.61300000000000043	0	235038	0	0	24
122995	7.61399999999999988	0	235070	0	0	24
122996	7.61500000000000021	0	235102	0	0	24
122997	7.61599999999999966	0	235134	0	0	24
122998	7.61699999999999999	0	235166	0	0	24
122999	7.61800000000000033	0	235198	0	0	24
123000	7.61899999999999977	0	235230	0	0	24
123001	7.62000000000000011	0	235260	0	0	24
123002	7.62100000000000044	0	235292	0	0	24
123003	7.62199999999999989	0	235324	0	0	24
123004	7.62300000000000022	0	235356	0	0	24
123005	7.62399999999999967	0	235388	0	0	24
123006	7.625	0	235420	0	0	24
123007	7.62600000000000033	0	235452	0	0	24
123008	7.62699999999999978	0	235484	0	0	24
123009	7.62800000000000011	0	235516	0	0	24
123010	7.62899999999999956	0	235548	0	0	24
123011	7.62999999999999989	0	235578	0	0	24
123012	7.63100000000000023	0	235610	0	0	24
123013	7.63199999999999967	0	235642	0	0	24
123014	7.63300000000000001	0	235674	0	0	24
123015	7.63400000000000034	0	235706	0	0	24
123016	7.63499999999999979	0	235738	0	0	24
123017	7.63600000000000012	0	235770	0	0	24
123018	7.63699999999999957	0	235802	0	0	24
123019	7.6379999999999999	0	235834	0	0	24
123020	7.63900000000000023	0	235866	0	0	24
123021	7.63999999999999968	0	235896	0	0	24
123022	7.64100000000000001	0	235928	0	0	24
123023	7.64200000000000035	0	235960	0	0	24
123024	7.64299999999999979	0	235992	0	0	24
123025	7.64400000000000013	0	236024	0	0	24
123026	7.64499999999999957	0	236056	0	0	24
123027	7.64599999999999991	0	236088	0	0	24
123028	7.64700000000000024	0	236120	0	0	24
123029	7.64799999999999969	0	236152	0	0	24
123030	7.64900000000000002	0	236184	0	0	24
123031	7.65000000000000036	0	236213	0	0	24
123032	7.6509999999999998	0	236245	0	0	24
123033	7.65200000000000014	0	236277	0	0	24
123034	7.65299999999999958	0	236309	0	0	24
123035	7.65399999999999991	0	236341	0	0	24
123036	7.65500000000000025	0	236373	0	0	24
123037	7.65599999999999969	0	236405	0	0	24
123038	7.65700000000000003	0	236437	0	0	24
123039	7.65800000000000036	0	236469	0	0	24
123040	7.65899999999999981	0	236501	0	0	24
123041	7.66000000000000014	0	236531	0	0	24
123042	7.66099999999999959	0	236563	0	0	24
123043	7.66199999999999992	0	236595	0	0	24
123044	7.66300000000000026	0	236627	0	0	24
123045	7.6639999999999997	0	236659	0	0	24
123046	7.66500000000000004	0	236691	0	0	24
123047	7.66600000000000037	0	236723	0	0	24
123048	7.66699999999999982	0	236755	0	0	24
123049	7.66800000000000015	0	236787	0	0	24
123050	7.66899999999999959	0	236819	0	0	24
123051	7.66999999999999993	0	236849	0	0	24
123052	7.67100000000000026	0	236881	0	0	24
123053	7.67199999999999971	0	236913	0	0	24
123054	7.67300000000000004	0	236945	0	0	24
123055	7.67400000000000038	0	236977	0	0	24
123056	7.67499999999999982	0	237009	0	0	24
123057	7.67600000000000016	0	237041	0	0	24
123058	7.6769999999999996	0	237073	0	0	24
123059	7.67799999999999994	0	237105	0	0	24
123060	7.67900000000000027	0	237137	0	0	24
123061	7.67999999999999972	0	237167	0	0	24
123062	7.68100000000000005	0	237199	0	0	24
123063	7.68200000000000038	0	237231	0	0	24
123064	7.68299999999999983	0	237263	0	0	24
123065	7.68400000000000016	0	237295	0	0	24
123066	7.68499999999999961	0	237327	0	0	24
123067	7.68599999999999994	0	237359	0	0	24
123068	7.68700000000000028	0	237391	0	0	24
123069	7.68799999999999972	0	237423	0	0	24
123070	7.68900000000000006	0	237455	0	0	24
123071	7.69000000000000039	0	237485	0	0	24
123072	7.69099999999999984	0	237517	0	0	24
123073	7.69200000000000017	0	237549	0	0	24
123074	7.69299999999999962	0	237581	0	0	24
123075	7.69399999999999995	0	237613	0	0	24
123076	7.69500000000000028	0	237645	0	0	24
123077	7.69599999999999973	0	237677	0	0	24
123078	7.69700000000000006	0	237709	0	0	24
123079	7.6980000000000004	0	237741	0	0	24
123080	7.69899999999999984	0	237773	0	0	24
123081	7.70000000000000018	0	237802	0	0	24
123082	7.70099999999999962	0	237834	0	0	24
123083	7.70199999999999996	0	237866	0	0	24
123084	7.70300000000000029	0	237898	0	0	24
123085	7.70399999999999974	0	237930	0	0	24
123086	7.70500000000000007	0	237962	0	0	24
123087	7.70600000000000041	0	237994	0	0	24
123088	7.70699999999999985	0	238026	0	0	24
123089	7.70800000000000018	0	238058	0	0	24
123090	7.70899999999999963	0	238090	0	0	24
123091	7.70999999999999996	0	238120	0	0	24
123092	7.7110000000000003	0	238152	0	0	24
123093	7.71199999999999974	0	238184	0	0	24
123094	7.71300000000000008	0	238216	0	0	24
123095	7.71400000000000041	0	238248	0	0	24
123096	7.71499999999999986	0	238280	0	0	24
123097	7.71600000000000019	0	238312	0	0	24
123098	7.71699999999999964	0	238344	0	0	24
123099	7.71799999999999997	0	238376	0	0	24
123100	7.71900000000000031	0	238408	0	0	24
123101	7.71999999999999975	0	238438	0	0	24
123102	7.72100000000000009	0	238470	0	0	24
123103	7.72200000000000042	0	238502	0	0	24
123104	7.72299999999999986	0	238534	0	0	24
123105	7.7240000000000002	0	238566	0	0	24
123106	7.72499999999999964	0	238598	0	0	24
123107	7.72599999999999998	0	238630	0	0	24
123108	7.72700000000000031	0	238662	0	0	24
123109	7.72799999999999976	0	238694	0	0	24
123110	7.72900000000000009	0	238726	0	0	24
123111	7.73000000000000043	0	238756	0	0	24
123112	7.73099999999999987	0	238788	0	0	24
123113	7.73200000000000021	0	238820	0	0	24
123114	7.73299999999999965	0	238852	0	0	24
123115	7.73399999999999999	0	238884	0	0	24
123116	7.73500000000000032	0	238916	0	0	24
123117	7.73599999999999977	0	238948	0	0	24
123118	7.7370000000000001	0	238980	0	0	24
123119	7.73800000000000043	0	239012	0	0	24
123120	7.73899999999999988	0	239044	0	0	24
123121	7.74000000000000021	0	239074	0	0	24
123122	7.74099999999999966	0	239106	0	0	24
123123	7.74199999999999999	0	239138	0	0	24
123124	7.74300000000000033	0	239170	0	0	24
123125	7.74399999999999977	0	239202	0	0	24
123126	7.74500000000000011	0	239234	0	0	24
123127	7.74600000000000044	0	239266	0	0	24
123128	7.74699999999999989	0	239298	0	0	24
123129	7.74800000000000022	0	239330	0	0	24
123130	7.74899999999999967	0	239362	0	0	24
123131	7.75	0	239391	0	0	24
123132	7.75100000000000033	0	239423	0	0	24
123133	7.75199999999999978	0	239455	0	0	24
123134	7.75300000000000011	0	239487	0	0	24
123135	7.75399999999999956	0	239519	0	0	24
123136	7.75499999999999989	0	239551	0	0	24
123137	7.75600000000000023	0	239583	0	0	24
123138	7.75699999999999967	0	239615	0	0	24
123139	7.75800000000000001	0	239647	0	0	24
123140	7.75900000000000034	0	239679	0	0	24
123141	7.75999999999999979	0	239709	0	0	24
123142	7.76100000000000012	0	239741	0	0	24
123143	7.76199999999999957	0	239773	0	0	24
123144	7.7629999999999999	0	239805	0	0	24
123145	7.76400000000000023	0	239837	0	0	24
123146	7.76499999999999968	0	239869	0	0	24
123147	7.76600000000000001	0	239901	0	0	24
123148	7.76700000000000035	0	239933	0	0	24
123149	7.76799999999999979	0	239965	0	0	24
123150	7.76900000000000013	0	239997	0	0	24
123151	7.76999999999999957	0	240027	0	0	24
123152	7.77099999999999991	0	240059	0	0	24
123153	7.77200000000000024	0	240091	0	0	24
123154	7.77299999999999969	0	240123	0	0	24
123155	7.77400000000000002	0	240155	0	0	24
123156	7.77500000000000036	0	240187	0	0	24
123157	7.7759999999999998	0	240219	0	0	24
123158	7.77700000000000014	0	240251	0	0	24
123159	7.77799999999999958	0	240283	0	0	24
123160	7.77899999999999991	0	240315	0	0	24
123161	7.78000000000000025	0	240345	0	0	24
123162	7.78099999999999969	0	240377	0	0	24
123163	7.78200000000000003	0	240409	0	0	24
123164	7.78300000000000036	0	240441	0	0	24
123165	7.78399999999999981	0	240473	0	0	24
123166	7.78500000000000014	0	240505	0	0	24
123167	7.78599999999999959	0	240537	0	0	24
123168	7.78699999999999992	0	240569	0	0	24
123169	7.78800000000000026	0	240601	0	0	24
123170	7.7889999999999997	0	240633	0	0	24
123171	7.79000000000000004	0	240663	0	0	24
123172	7.79100000000000037	0	240695	0	0	24
123173	7.79199999999999982	0	240727	0	0	24
123174	7.79300000000000015	0	240759	0	0	24
123175	7.79399999999999959	0	240791	0	0	24
123176	7.79499999999999993	0	240823	0	0	24
123177	7.79600000000000026	0	240855	0	0	24
123178	7.79699999999999971	0	240887	0	0	24
123179	7.79800000000000004	0	240919	0	0	24
123180	7.79900000000000038	0	240951	0	0	24
123181	7.79999999999999982	0	240980	0	0	24
123182	7.80100000000000016	0	241012	0	0	24
123183	7.8019999999999996	0	241044	0	0	24
123184	7.80299999999999994	0	241076	0	0	24
123185	7.80400000000000027	0	241108	0	0	24
123186	7.80499999999999972	0	241140	0	0	24
123187	7.80600000000000005	0	241172	0	0	24
123188	7.80700000000000038	0	241204	0	0	24
123189	7.80799999999999983	0	241236	0	0	24
123190	7.80900000000000016	0	241268	0	0	24
123191	7.80999999999999961	0	241298	0	0	24
123192	7.81099999999999994	0	241330	0	0	24
123193	7.81200000000000028	0	241362	0	0	24
123194	7.81299999999999972	0	241394	0	0	24
123195	7.81400000000000006	0	241426	0	0	24
123196	7.81500000000000039	0	241458	0	0	24
123197	7.81599999999999984	0	241490	0	0	24
123198	7.81700000000000017	0	241522	0	0	24
123199	7.81799999999999962	0	241554	0	0	24
123200	7.81899999999999995	0	241586	0	0	24
123201	7.82000000000000028	0	241616	0	0	24
123202	7.82099999999999973	0	241648	0	0	24
123203	7.82200000000000006	0	241680	0	0	24
123204	7.8230000000000004	0	241712	0	0	24
123205	7.82399999999999984	0	241744	0	0	24
123206	7.82500000000000018	0	241776	0	0	24
123207	7.82599999999999962	0	241808	0	0	24
123208	7.82699999999999996	0	241840	0	0	24
123209	7.82800000000000029	0	241872	0	0	24
123210	7.82899999999999974	0	241904	0	0	24
123211	7.83000000000000007	0	241934	0	0	24
123212	7.83100000000000041	0	241966	0	0	24
123213	7.83199999999999985	0	241998	0	0	24
123214	7.83300000000000018	0	242030	0	0	24
123215	7.83399999999999963	0	242062	0	0	24
123216	7.83499999999999996	0	242094	0	0	24
123217	7.8360000000000003	0	242126	0	0	24
123218	7.83699999999999974	0	242158	0	0	24
123219	7.83800000000000008	0	242190	0	0	24
123220	7.83900000000000041	0	242222	0	0	24
123221	7.83999999999999986	0	242252	0	0	24
123222	7.84100000000000019	0	242284	0	0	24
123223	7.84199999999999964	0	242316	0	0	24
123224	7.84299999999999997	0	242348	0	0	24
123225	7.84400000000000031	0	242380	0	0	24
123226	7.84499999999999975	0	242412	0	0	24
123227	7.84600000000000009	0	242444	0	0	24
123228	7.84700000000000042	0	242476	0	0	24
123229	7.84799999999999986	0	242508	0	0	24
123230	7.8490000000000002	0	242540	0	0	24
123231	7.84999999999999964	0	242569	0	0	24
123232	7.85099999999999998	0	242601	0	0	24
123233	7.85200000000000031	0	242633	0	0	24
123234	7.85299999999999976	0	242665	0	0	24
123235	7.85400000000000009	0	242697	0	0	24
123236	7.85500000000000043	0	242729	0	0	24
123237	7.85599999999999987	0	242761	0	0	24
123238	7.85700000000000021	0	242793	0	0	24
123239	7.85799999999999965	0	242825	0	0	24
123240	7.85899999999999999	0	242857	0	0	24
123241	7.86000000000000032	0	242887	0	0	24
123242	7.86099999999999977	0	242919	0	0	24
123243	7.8620000000000001	0	242951	0	0	24
123244	7.86300000000000043	0	242983	0	0	24
123245	7.86399999999999988	0	243015	0	0	24
123246	7.86500000000000021	0	243047	0	0	24
123247	7.86599999999999966	0	243079	0	0	24
123248	7.86699999999999999	0	243111	0	0	24
123249	7.86800000000000033	0	243143	0	0	24
123250	7.86899999999999977	0	243175	0	0	24
123251	7.87000000000000011	0	243205	0	0	24
123252	7.87100000000000044	0	243237	0	0	24
123253	7.87199999999999989	0	243269	0	0	24
123254	7.87300000000000022	0	243301	0	0	24
123255	7.87399999999999967	0	243333	0	0	24
123256	7.875	0	243365	0	0	24
123257	7.87600000000000033	0	243397	0	0	24
123258	7.87699999999999978	0	243429	0	0	24
123259	7.87800000000000011	0	243461	0	0	24
123260	7.87899999999999956	0	243493	0	0	24
123261	7.87999999999999989	0	243523	0	0	24
123262	7.88100000000000023	0	243555	0	0	24
123263	7.88199999999999967	0	243587	0	0	24
123264	7.88300000000000001	0	243619	0	0	24
123265	7.88400000000000034	0	243651	0	0	24
123266	7.88499999999999979	0	243683	0	0	24
123267	7.88600000000000012	0	243715	0	0	24
123268	7.88699999999999957	0	243747	0	0	24
123269	7.8879999999999999	0	243779	0	0	24
123270	7.88900000000000023	0	243811	0	0	24
123271	7.88999999999999968	0	243841	0	0	24
123272	7.89100000000000001	0	243873	0	0	24
123273	7.89200000000000035	0	243905	0	0	24
123274	7.89299999999999979	0	243937	0	0	24
123275	7.89400000000000013	0	243969	0	0	24
123276	7.89499999999999957	0	244001	0	0	24
123277	7.89599999999999991	0	244033	0	0	24
123278	7.89700000000000024	0	244065	0	0	24
123279	7.89799999999999969	0	244097	0	0	24
123280	7.89900000000000002	0	244129	0	0	24
123281	7.90000000000000036	0	244158	0	0	24
123282	7.9009999999999998	0	244190	0	0	24
123283	7.90200000000000014	0	244222	0	0	24
123284	7.90299999999999958	0	244254	0	0	24
123285	7.90399999999999991	0	244286	0	0	24
123286	7.90500000000000025	0	244318	0	0	24
123287	7.90599999999999969	0	244350	0	0	24
123288	7.90700000000000003	0	244382	0	0	24
123289	7.90800000000000036	0	244414	0	0	24
123290	7.90899999999999981	0	244446	0	0	24
123291	7.91000000000000014	0	244476	0	0	24
123292	7.91099999999999959	0	244508	0	0	24
123293	7.91199999999999992	0	244540	0	0	24
123294	7.91300000000000026	0	244572	0	0	24
123295	7.9139999999999997	0	244604	0	0	24
123296	7.91500000000000004	0	244636	0	0	24
123297	7.91600000000000037	0	244668	0	0	24
123298	7.91699999999999982	0	244700	0	0	24
123299	7.91800000000000015	0	244732	0	0	24
123300	7.91899999999999959	0	244764	0	0	24
123301	7.91999999999999993	0	244794	0	0	24
123302	7.92100000000000026	0	244826	0	0	24
123303	7.92199999999999971	0	244858	0	0	24
123304	7.92300000000000004	0	244890	0	0	24
123305	7.92400000000000038	0	244922	0	0	24
123306	7.92499999999999982	0	244954	0	0	24
123307	7.92600000000000016	0	244986	0	0	24
123308	7.9269999999999996	0	245018	0	0	24
123309	7.92799999999999994	0	245050	0	0	24
123310	7.92900000000000027	0	245082	0	0	24
123311	7.92999999999999972	0	245112	0	0	24
123312	7.93100000000000005	0	245144	0	0	24
123313	7.93200000000000038	0	245176	0	0	24
123314	7.93299999999999983	0	245208	0	0	24
123315	7.93400000000000016	0	245240	0	0	24
123316	7.93499999999999961	0	245272	0	0	24
123317	7.93599999999999994	0	245304	0	0	24
123318	7.93700000000000028	0	245336	0	0	24
123319	7.93799999999999972	0	245368	0	0	24
123320	7.93900000000000006	0	245400	0	0	24
123321	7.94000000000000039	0	245430	0	0	24
123322	7.94099999999999984	0	245462	0	0	24
123323	7.94200000000000017	0	245494	0	0	24
123324	7.94299999999999962	0	245526	0	0	24
123325	7.94399999999999995	0	245558	0	0	24
123326	7.94500000000000028	0	245590	0	0	24
123327	7.94599999999999973	0	245622	0	0	24
123328	7.94700000000000006	0	245654	0	0	24
123329	7.9480000000000004	0	245686	0	0	24
123330	7.94899999999999984	0	245718	0	0	24
123331	7.95000000000000018	0	245747	0	0	24
123332	7.95099999999999962	0	245779	0	0	24
123333	7.95199999999999996	0	245811	0	0	24
123334	7.95300000000000029	0	245843	0	0	24
123335	7.95399999999999974	0	245875	0	0	24
123336	7.95500000000000007	0	245907	0	0	24
123337	7.95600000000000041	0	245939	0	0	24
123338	7.95699999999999985	0	245971	0	0	24
123339	7.95800000000000018	0	246003	0	0	24
123340	7.95899999999999963	0	246035	0	0	24
123341	7.95999999999999996	0	246065	0	0	24
123342	7.9610000000000003	0	246097	0	0	24
123343	7.96199999999999974	0	246129	0	0	24
123344	7.96300000000000008	0	246161	0	0	24
123345	7.96400000000000041	0	246193	0	0	24
123346	7.96499999999999986	0	246225	0	0	24
123347	7.96600000000000019	0	246257	0	0	24
123348	7.96699999999999964	0	246289	0	0	24
123349	7.96799999999999997	0	246321	0	0	24
123350	7.96900000000000031	0	246353	0	0	24
123351	7.96999999999999975	0	246383	0	0	24
123352	7.97100000000000009	0	246415	0	0	24
123353	7.97200000000000042	0	246447	0	0	24
123354	7.97299999999999986	0	246479	0	0	24
123355	7.9740000000000002	0	246511	0	0	24
123356	7.97499999999999964	0	246543	0	0	24
123357	7.97599999999999998	0	246575	0	0	24
123358	7.97700000000000031	0	246607	0	0	24
123359	7.97799999999999976	0	246639	0	0	24
123360	7.97900000000000009	0	246671	0	0	24
123361	7.98000000000000043	0	246701	0	0	24
123362	7.98099999999999987	0	246733	0	0	24
123363	7.98200000000000021	0	246765	0	0	24
123364	7.98299999999999965	0	246797	0	0	24
123365	7.98399999999999999	0	246829	0	0	24
123366	7.98500000000000032	0	246861	0	0	24
123367	7.98599999999999977	0	246893	0	0	24
123368	7.9870000000000001	0	246925	0	0	24
123369	7.98800000000000043	0	246957	0	0	24
123370	7.98899999999999988	0	246989	0	0	24
123371	7.99000000000000021	0	247019	0	0	24
123372	7.99099999999999966	0	247051	0	0	24
123373	7.99199999999999999	0	247083	0	0	24
123374	7.99300000000000033	0	247115	0	0	24
123375	7.99399999999999977	0	247147	0	0	24
123376	7.99500000000000011	0	247179	0	0	24
123377	7.99600000000000044	0	247211	0	0	24
123378	7.99699999999999989	0	247243	0	0	24
123379	7.99800000000000022	0	247275	0	0	24
123380	7.99899999999999967	0	247307	0	0	24
123381	8	0	247336	0	0	24
123382	8.00099999999999945	0	247368	0	0	24
123383	8.00200000000000067	0	247400	0	0	24
123384	8.00300000000000011	0	247432	0	0	24
123385	8.00399999999999956	0	247464	0	0	24
123386	8.00500000000000078	0	247496	0	0	24
123387	8.00600000000000023	0	247528	0	0	24
123388	8.00699999999999967	0	247560	0	0	24
123389	8.00799999999999912	0	247592	0	0	24
123390	8.00900000000000034	0	247624	0	0	24
123391	8.00999999999999979	0	247654	0	0	24
123392	8.01099999999999923	0	247686	0	0	24
123393	8.01200000000000045	0	247718	0	0	24
123394	8.0129999999999999	0	247750	0	0	24
123395	8.01399999999999935	0	247782	0	0	24
123396	8.01500000000000057	0	247814	0	0	24
123397	8.01600000000000001	0	247846	0	0	24
123398	8.01699999999999946	0	247878	0	0	24
123399	8.01800000000000068	0	247910	0	0	24
123400	8.01900000000000013	0	247942	0	0	24
123401	8.01999999999999957	0	247972	0	0	24
123402	8.0210000000000008	0	248004	0	0	24
123403	8.02200000000000024	0	248036	0	0	24
123404	8.02299999999999969	0	248068	0	0	24
123405	8.02399999999999913	0	248100	0	0	24
123406	8.02500000000000036	0	248132	0	0	24
123407	8.0259999999999998	0	248164	0	0	24
123408	8.02699999999999925	0	248196	0	0	24
123409	8.02800000000000047	0	248228	0	0	24
123410	8.02899999999999991	0	248260	0	0	24
123411	8.02999999999999936	0	248290	0	0	24
123412	8.03100000000000058	0	248322	0	0	24
123413	8.03200000000000003	0	248354	0	0	24
123414	8.03299999999999947	0	248386	0	0	24
123415	8.0340000000000007	0	248418	0	0	24
123416	8.03500000000000014	0	248450	0	0	24
123417	8.03599999999999959	0	248482	0	0	24
123418	8.03700000000000081	0	248514	0	0	24
123419	8.03800000000000026	0	248546	0	0	24
123420	8.0389999999999997	0	248578	0	0	24
123421	8.03999999999999915	0	248608	0	0	24
123422	8.04100000000000037	0	248640	0	0	24
123423	8.04199999999999982	0	248672	0	0	24
123424	8.04299999999999926	0	248704	0	0	24
123425	8.04400000000000048	0	248736	0	0	24
123426	8.04499999999999993	0	248768	0	0	24
123427	8.04599999999999937	0	248800	0	0	24
123428	8.0470000000000006	0	248832	0	0	24
123429	8.04800000000000004	0	248864	0	0	24
123430	8.04899999999999949	0	248896	0	0	24
123431	8.05000000000000071	0	248925	0	0	24
123432	8.05100000000000016	0	248957	0	0	24
123433	8.0519999999999996	0	248989	0	0	24
123434	8.05300000000000082	0	249021	0	0	24
123435	8.05400000000000027	0	249053	0	0	24
123436	8.05499999999999972	0	249085	0	0	24
123437	8.05599999999999916	0	249117	0	0	24
123438	8.05700000000000038	0	249149	0	0	24
123439	8.05799999999999983	0	249181	0	0	24
123440	8.05899999999999928	0	249213	0	0	24
123441	8.0600000000000005	0	249243	0	0	24
123442	8.06099999999999994	0	249275	0	0	24
123443	8.06199999999999939	0	249307	0	0	24
123444	8.06300000000000061	0	249339	0	0	24
123445	8.06400000000000006	0	249371	0	0	24
123446	8.0649999999999995	0	249403	0	0	24
123447	8.06600000000000072	0	249435	0	0	24
123448	8.06700000000000017	0	249467	0	0	24
123449	8.06799999999999962	0	249499	0	0	24
123450	8.06900000000000084	0	249531	0	0	24
123451	8.07000000000000028	0	249561	0	0	24
123452	8.07099999999999973	0	249593	0	0	24
133054	17.6729999999999983	0	554879	0	0	24
133055	17.6739999999999995	0	554911	0	0	24
133056	17.6750000000000007	0	554943	0	0	24
133057	17.6759999999999984	0	554975	0	0	24
133058	17.6769999999999996	0	555007	0	0	24
133059	17.6780000000000008	0	555039	0	0	24
133060	17.6789999999999985	0	555071	0	0	24
133061	17.6799999999999997	0	555101	0	0	24
133062	17.6810000000000009	0	555133	0	0	24
133063	17.6819999999999986	0	555165	0	0	24
133064	17.6829999999999998	0	555197	0	0	24
133065	17.6840000000000011	0	555229	0	0	24
133066	17.6849999999999987	0	555261	0	0	24
133067	17.6859999999999999	0	555293	0	0	24
133068	17.6870000000000012	0	555325	0	0	24
133069	17.6879999999999988	0	555357	0	0	24
133070	17.6890000000000001	0	555389	0	0	24
133071	17.6900000000000013	0	555419	0	0	24
133072	17.6909999999999989	0	555451	0	0	24
133073	17.6920000000000002	0	555483	0	0	24
133074	17.6930000000000014	0	555515	0	0	24
133075	17.6939999999999991	0	555547	0	0	24
133076	17.6950000000000003	0	555579	0	0	24
133077	17.6960000000000015	0	555611	0	0	24
133078	17.6969999999999992	0	555643	0	0	24
133079	17.6980000000000004	0	555675	0	0	24
133080	17.6990000000000016	0	555707	0	0	24
133081	17.6999999999999993	0	555737	0	0	24
133082	17.7010000000000005	0	555769	0	0	24
123453	8.07199999999999918	0	249625	0	0	24
123454	8.0730000000000004	0	249657	0	0	24
123455	8.07399999999999984	0	249689	0	0	24
123456	8.07499999999999929	0	249721	0	0	24
123457	8.07600000000000051	0	249753	0	0	24
123458	8.07699999999999996	0	249785	0	0	24
123459	8.0779999999999994	0	249817	0	0	24
123460	8.07900000000000063	0	249849	0	0	24
123461	8.08000000000000007	0	249879	0	0	24
123462	8.08099999999999952	0	249911	0	0	24
123463	8.08200000000000074	0	249943	0	0	24
123464	8.08300000000000018	0	249975	0	0	24
123465	8.08399999999999963	0	250007	0	0	24
123466	8.08500000000000085	0	250039	0	0	24
123467	8.0860000000000003	0	250071	0	0	24
123468	8.08699999999999974	0	250103	0	0	24
123469	8.08799999999999919	0	250135	0	0	24
123470	8.08900000000000041	0	250167	0	0	24
123471	8.08999999999999986	0	250197	0	0	24
123472	8.0909999999999993	0	250229	0	0	24
123473	8.09200000000000053	0	250261	0	0	24
123474	8.09299999999999997	0	250293	0	0	24
123475	8.09399999999999942	0	250325	0	0	24
123476	8.09500000000000064	0	250357	0	0	24
123477	8.09600000000000009	0	250389	0	0	24
123478	8.09699999999999953	0	250421	0	0	24
123479	8.09800000000000075	0	250453	0	0	24
123480	8.0990000000000002	0	250485	0	0	24
123481	8.09999999999999964	0	250514	0	0	24
123482	8.10100000000000087	0	250546	0	0	24
123483	8.10200000000000031	0	250578	0	0	24
123484	8.10299999999999976	0	250610	0	0	24
123485	8.1039999999999992	0	250642	0	0	24
123486	8.10500000000000043	0	250674	0	0	24
123487	8.10599999999999987	0	250706	0	0	24
123488	8.10699999999999932	0	250738	0	0	24
123489	8.10800000000000054	0	250770	0	0	24
123490	8.10899999999999999	0	250802	0	0	24
123491	8.10999999999999943	0	250832	0	0	24
123492	8.11100000000000065	0	250864	0	0	24
123493	8.1120000000000001	0	250896	0	0	24
123494	8.11299999999999955	0	250928	0	0	24
123495	8.11400000000000077	0	250960	0	0	24
123496	8.11500000000000021	0	250992	0	0	24
123497	8.11599999999999966	0	251024	0	0	24
123498	8.11700000000000088	0	251056	0	0	24
123499	8.11800000000000033	0	251088	0	0	24
123500	8.11899999999999977	0	251120	0	0	24
123501	8.11999999999999922	0	251150	0	0	24
123502	8.12100000000000044	0	251182	0	0	24
123503	8.12199999999999989	0	251214	0	0	24
123504	8.12299999999999933	0	251246	0	0	24
123505	8.12400000000000055	0	251278	0	0	24
123506	8.125	0	251310	0	0	24
123507	8.12599999999999945	0	251342	0	0	24
123508	8.12700000000000067	0	251374	0	0	24
123509	8.12800000000000011	0	251406	0	0	24
123510	8.12899999999999956	0	251438	0	0	24
123511	8.13000000000000078	0	251468	0	0	24
123512	8.13100000000000023	0	251500	0	0	24
123513	8.13199999999999967	0	251532	0	0	24
123514	8.13299999999999912	0	251564	0	0	24
123515	8.13400000000000034	0	251596	0	0	24
123516	8.13499999999999979	0	251628	0	0	24
123517	8.13599999999999923	0	251660	0	0	24
123518	8.13700000000000045	0	251692	0	0	24
123519	8.1379999999999999	0	251724	0	0	24
123520	8.13899999999999935	0	251756	0	0	24
123521	8.14000000000000057	0	251786	0	0	24
123522	8.14100000000000001	0	251818	0	0	24
123523	8.14199999999999946	0	251850	0	0	24
123524	8.14300000000000068	0	251882	0	0	24
123525	8.14400000000000013	0	251914	0	0	24
123526	8.14499999999999957	0	251946	0	0	24
123527	8.1460000000000008	0	251978	0	0	24
123528	8.14700000000000024	0	252010	0	0	24
123529	8.14799999999999969	0	252042	0	0	24
123530	8.14899999999999913	0	252074	0	0	24
123531	8.15000000000000036	0	252103	0	0	24
123532	8.1509999999999998	0	252135	0	0	24
123533	8.15199999999999925	0	252167	0	0	24
123534	8.15300000000000047	0	252199	0	0	24
123535	8.15399999999999991	0	252231	0	0	24
123536	8.15499999999999936	0	252263	0	0	24
123537	8.15600000000000058	0	252295	0	0	24
123538	8.15700000000000003	0	252327	0	0	24
123539	8.15799999999999947	0	252359	0	0	24
123540	8.1590000000000007	0	252391	0	0	24
123541	8.16000000000000014	0	252421	0	0	24
123542	8.16099999999999959	0	252453	0	0	24
123543	8.16200000000000081	0	252485	0	0	24
123544	8.16300000000000026	0	252517	0	0	24
123545	8.1639999999999997	0	252549	0	0	24
123546	8.16499999999999915	0	252581	0	0	24
123547	8.16600000000000037	0	252613	0	0	24
123548	8.16699999999999982	0	252645	0	0	24
123549	8.16799999999999926	0	252677	0	0	24
123550	8.16900000000000048	0	252709	0	0	24
123551	8.16999999999999993	0	252739	0	0	24
123552	8.17099999999999937	0	252771	0	0	24
123553	8.1720000000000006	0	252803	0	0	24
123554	8.17300000000000004	0	252835	0	0	24
123555	8.17399999999999949	0	252867	0	0	24
123556	8.17500000000000071	0	252899	0	0	24
123557	8.17600000000000016	0	252931	0	0	24
123558	8.1769999999999996	0	252963	0	0	24
123559	8.17800000000000082	0	252995	0	0	24
123560	8.17900000000000027	0	253027	0	0	24
123561	8.17999999999999972	0	253057	0	0	24
123562	8.18099999999999916	0	253089	0	0	24
123563	8.18200000000000038	0	253121	0	0	24
123564	8.18299999999999983	0	253153	0	0	24
123565	8.18399999999999928	0	253185	0	0	24
123566	8.1850000000000005	0	253217	0	0	24
123567	8.18599999999999994	0	253249	0	0	24
123568	8.18699999999999939	0	253281	0	0	24
123569	8.18800000000000061	0	253313	0	0	24
123570	8.18900000000000006	0	253345	0	0	24
123571	8.1899999999999995	0	253375	0	0	24
123572	8.19100000000000072	0	253407	0	0	24
123573	8.19200000000000017	0	253439	0	0	24
123574	8.19299999999999962	0	253471	0	0	24
123575	8.19400000000000084	0	253503	0	0	24
123576	8.19500000000000028	0	253535	0	0	24
123577	8.19599999999999973	0	253567	0	0	24
123578	8.19699999999999918	0	253599	0	0	24
123579	8.1980000000000004	0	253631	0	0	24
123580	8.19899999999999984	0	253663	0	0	24
123581	8.19999999999999929	0	253692	0	0	24
123582	8.20100000000000051	0	253724	0	0	24
123583	8.20199999999999996	0	253756	0	0	24
123584	8.2029999999999994	0	253788	0	0	24
123585	8.20400000000000063	0	253820	0	0	24
123586	8.20500000000000007	0	253852	0	0	24
123587	8.20599999999999952	0	253884	0	0	24
123588	8.20700000000000074	0	253916	0	0	24
123589	8.20800000000000018	0	253948	0	0	24
123590	8.20899999999999963	0	253980	0	0	24
123591	8.21000000000000085	0	254010	0	0	24
123592	8.2110000000000003	0	254042	0	0	24
123593	8.21199999999999974	0	254074	0	0	24
123594	8.21299999999999919	0	254106	0	0	24
123595	8.21400000000000041	0	254138	0	0	24
123596	8.21499999999999986	0	254170	0	0	24
123597	8.2159999999999993	0	254202	0	0	24
123598	8.21700000000000053	0	254234	0	0	24
123599	8.21799999999999997	0	254266	0	0	24
123600	8.21899999999999942	0	254298	0	0	24
123601	8.22000000000000064	0	254328	0	0	24
123602	8.22100000000000009	0	254360	0	0	24
123603	8.22199999999999953	0	254392	0	0	24
123604	8.22300000000000075	0	254424	0	0	24
123605	8.2240000000000002	0	254456	0	0	24
123606	8.22499999999999964	0	254488	0	0	24
123607	8.22600000000000087	0	254520	0	0	24
123608	8.22700000000000031	0	254552	0	0	24
123609	8.22799999999999976	0	254584	0	0	24
123610	8.2289999999999992	0	254616	0	0	24
123611	8.23000000000000043	0	254646	0	0	24
123612	8.23099999999999987	0	254678	0	0	24
123613	8.23199999999999932	0	254710	0	0	24
123614	8.23300000000000054	0	254742	0	0	24
123615	8.23399999999999999	0	254774	0	0	24
123616	8.23499999999999943	0	254806	0	0	24
123617	8.23600000000000065	0	254838	0	0	24
123618	8.2370000000000001	0	254870	0	0	24
123619	8.23799999999999955	0	254902	0	0	24
123620	8.23900000000000077	0	254934	0	0	24
123621	8.24000000000000021	0	254964	0	0	24
123622	8.24099999999999966	0	254996	0	0	24
123623	8.24200000000000088	0	255028	0	0	24
123624	8.24300000000000033	0	255060	0	0	24
123625	8.24399999999999977	0	255092	0	0	24
123626	8.24499999999999922	0	255124	0	0	24
123627	8.24600000000000044	0	255156	0	0	24
123628	8.24699999999999989	0	255188	0	0	24
123629	8.24799999999999933	0	255220	0	0	24
123630	8.24900000000000055	0	255252	0	0	24
123631	8.25	0	255281	0	0	24
123632	8.25099999999999945	0	255313	0	0	24
123633	8.25200000000000067	0	255345	0	0	24
123634	8.25300000000000011	0	255377	0	0	24
123635	8.25399999999999956	0	255409	0	0	24
123636	8.25500000000000078	0	255441	0	0	24
123637	8.25600000000000023	0	255473	0	0	24
123638	8.25699999999999967	0	255505	0	0	24
123639	8.25799999999999912	0	255537	0	0	24
123640	8.25900000000000034	0	255569	0	0	24
123641	8.25999999999999979	0	255599	0	0	24
123642	8.26099999999999923	0	255631	0	0	24
123643	8.26200000000000045	0	255663	0	0	24
123644	8.2629999999999999	0	255695	0	0	24
123645	8.26399999999999935	0	255727	0	0	24
123646	8.26500000000000057	0	255759	0	0	24
123647	8.26600000000000001	0	255791	0	0	24
123648	8.26699999999999946	0	255823	0	0	24
123649	8.26800000000000068	0	255855	0	0	24
123650	8.26900000000000013	0	255887	0	0	24
123651	8.26999999999999957	0	255917	0	0	24
123652	8.2710000000000008	0	255949	0	0	24
123653	8.27200000000000024	0	255981	0	0	24
123654	8.27299999999999969	0	256013	0	0	24
123655	8.27399999999999913	0	256045	0	0	24
123656	8.27500000000000036	0	256077	0	0	24
123657	8.2759999999999998	0	256109	0	0	24
123658	8.27699999999999925	0	256141	0	0	24
123659	8.27800000000000047	0	256173	0	0	24
123660	8.27899999999999991	0	256205	0	0	24
123661	8.27999999999999936	0	256235	0	0	24
123662	8.28100000000000058	0	256267	0	0	24
123663	8.28200000000000003	0	256299	0	0	24
123664	8.28299999999999947	0	256331	0	0	24
123665	8.2840000000000007	0	256363	0	0	24
123666	8.28500000000000014	0	256395	0	0	24
123667	8.28599999999999959	0	256427	0	0	24
123668	8.28700000000000081	0	256459	0	0	24
123669	8.28800000000000026	0	256491	0	0	24
123670	8.2889999999999997	0	256523	0	0	24
123671	8.28999999999999915	0	256553	0	0	24
123672	8.29100000000000037	0	256585	0	0	24
123673	8.29199999999999982	0	256617	0	0	24
123674	8.29299999999999926	0	256649	0	0	24
123675	8.29400000000000048	0	256681	0	0	24
123676	8.29499999999999993	0	256713	0	0	24
123677	8.29599999999999937	0	256745	0	0	24
123678	8.2970000000000006	0	256777	0	0	24
123679	8.29800000000000004	0	256809	0	0	24
123680	8.29899999999999949	0	256841	0	0	24
123681	8.30000000000000071	0	256870	0	0	24
123682	8.30100000000000016	0	256902	0	0	24
123683	8.3019999999999996	0	256934	0	0	24
123684	8.30300000000000082	0	256966	0	0	24
123685	8.30400000000000027	0	256998	0	0	24
123686	8.30499999999999972	0	257030	0	0	24
123687	8.30599999999999916	0	257062	0	0	24
123688	8.30700000000000038	0	257094	0	0	24
123689	8.30799999999999983	0	257126	0	0	24
123690	8.30899999999999928	0	257158	0	0	24
123691	8.3100000000000005	0	257188	0	0	24
123692	8.31099999999999994	0	257220	0	0	24
123693	8.31199999999999939	0	257252	0	0	24
123694	8.31300000000000061	0	257284	0	0	24
123695	8.31400000000000006	0	257316	0	0	24
123696	8.3149999999999995	0	257348	0	0	24
123697	8.31600000000000072	0	257380	0	0	24
123698	8.31700000000000017	0	257412	0	0	24
123699	8.31799999999999962	0	257444	0	0	24
123700	8.31900000000000084	0	257476	0	0	24
123701	8.32000000000000028	0	257506	0	0	24
123702	8.32099999999999973	0	257538	0	0	24
123703	8.32199999999999918	0	257570	0	0	24
123704	8.3230000000000004	0	257602	0	0	24
123705	8.32399999999999984	0	257634	0	0	24
123706	8.32499999999999929	0	257666	0	0	24
123707	8.32600000000000051	0	257698	0	0	24
123708	8.32699999999999996	0	257730	0	0	24
123709	8.3279999999999994	0	257762	0	0	24
123710	8.32900000000000063	0	257794	0	0	24
123711	8.33000000000000007	0	257824	0	0	24
123712	8.33099999999999952	0	257856	0	0	24
123713	8.33200000000000074	0	257888	0	0	24
123714	8.33300000000000018	0	257920	0	0	24
123715	8.33399999999999963	0	257952	0	0	24
123716	8.33500000000000085	0	257984	0	0	24
123717	8.3360000000000003	0	258016	0	0	24
123718	8.33699999999999974	0	258048	0	0	24
123719	8.33799999999999919	0	258080	0	0	24
123720	8.33900000000000041	0	258112	0	0	24
123721	8.33999999999999986	0	258142	0	0	24
123722	8.3409999999999993	0	258174	0	0	24
123723	8.34200000000000053	0	258206	0	0	24
123724	8.34299999999999997	0	258238	0	0	24
123725	8.34399999999999942	0	258270	0	0	24
123726	8.34500000000000064	0	258302	0	0	24
123727	8.34600000000000009	0	258334	0	0	24
123728	8.34699999999999953	0	258366	0	0	24
123729	8.34800000000000075	0	258398	0	0	24
123730	8.3490000000000002	0	258430	0	0	24
123731	8.34999999999999964	0	258459	0	0	24
123732	8.35100000000000087	0	258491	0	0	24
123733	8.35200000000000031	0	258523	0	0	24
123734	8.35299999999999976	0	258555	0	0	24
123735	8.3539999999999992	0	258587	0	0	24
123736	8.35500000000000043	0	258619	0	0	24
123737	8.35599999999999987	0	258651	0	0	24
123738	8.35699999999999932	0	258683	0	0	24
123739	8.35800000000000054	0	258715	0	0	24
123740	8.35899999999999999	0	258747	0	0	24
123741	8.35999999999999943	0	258777	0	0	24
123742	8.36100000000000065	0	258809	0	0	24
123743	8.3620000000000001	0	258841	0	0	24
123744	8.36299999999999955	0	258873	0	0	24
123745	8.36400000000000077	0	258905	0	0	24
123746	8.36500000000000021	0	258937	0	0	24
123747	8.36599999999999966	0	258969	0	0	24
123748	8.36700000000000088	0	259001	0	0	24
123749	8.36800000000000033	0	259033	0	0	24
123750	8.36899999999999977	0	259065	0	0	24
123751	8.36999999999999922	0	259095	0	0	24
123752	8.37100000000000044	0	259127	0	0	24
123753	8.37199999999999989	0	259159	0	0	24
123754	8.37299999999999933	0	259191	0	0	24
123755	8.37400000000000055	0	259223	0	0	24
123756	8.375	0	259255	0	0	24
123757	8.37599999999999945	0	259287	0	0	24
123758	8.37700000000000067	0	259319	0	0	24
123759	8.37800000000000011	0	259351	0	0	24
123760	8.37899999999999956	0	259383	0	0	24
123761	8.38000000000000078	0	259413	0	0	24
123762	8.38100000000000023	0	259445	0	0	24
123763	8.38199999999999967	0	259477	0	0	24
123764	8.38299999999999912	0	259509	0	0	24
123765	8.38400000000000034	0	259541	0	0	24
123766	8.38499999999999979	0	259573	0	0	24
123767	8.38599999999999923	0	259605	0	0	24
123768	8.38700000000000045	0	259637	0	0	24
123769	8.3879999999999999	0	259669	0	0	24
123770	8.38899999999999935	0	259701	0	0	24
123771	8.39000000000000057	0	259731	0	0	24
123772	8.39100000000000001	0	259763	0	0	24
123773	8.39199999999999946	0	259795	0	0	24
123774	8.39300000000000068	0	259827	0	0	24
123775	8.39400000000000013	0	259859	0	0	24
123776	8.39499999999999957	0	259891	0	0	24
123777	8.3960000000000008	0	259923	0	0	24
123778	8.39700000000000024	0	259955	0	0	24
123779	8.39799999999999969	0	259987	0	0	24
123780	8.39899999999999913	0	260019	0	0	24
123781	8.40000000000000036	0	260048	0	0	24
123782	8.4009999999999998	0	260080	0	0	24
123783	8.40199999999999925	0	260112	0	0	24
123784	8.40300000000000047	0	260144	0	0	24
123785	8.40399999999999991	0	260176	0	0	24
123786	8.40499999999999936	0	260208	0	0	24
123787	8.40600000000000058	0	260240	0	0	24
123788	8.40700000000000003	0	260272	0	0	24
123789	8.40799999999999947	0	260304	0	0	24
123790	8.4090000000000007	0	260336	0	0	24
123791	8.41000000000000014	0	260366	0	0	24
123792	8.41099999999999959	0	260398	0	0	24
123793	8.41200000000000081	0	260430	0	0	24
123794	8.41300000000000026	0	260462	0	0	24
123795	8.4139999999999997	0	260494	0	0	24
123796	8.41499999999999915	0	260526	0	0	24
123797	8.41600000000000037	0	260558	0	0	24
123798	8.41699999999999982	0	260590	0	0	24
123799	8.41799999999999926	0	260622	0	0	24
123800	8.41900000000000048	0	260654	0	0	24
123801	8.41999999999999993	0	260684	0	0	24
123802	8.42099999999999937	0	260716	0	0	24
123803	8.4220000000000006	0	260748	0	0	24
123804	8.42300000000000004	0	260780	0	0	24
123805	8.42399999999999949	0	260812	0	0	24
123806	8.42500000000000071	0	260844	0	0	24
123807	8.42600000000000016	0	260876	0	0	24
123808	8.4269999999999996	0	260908	0	0	24
123809	8.42800000000000082	0	260940	0	0	24
123810	8.42900000000000027	0	260972	0	0	24
123811	8.42999999999999972	0	261002	0	0	24
123812	8.43099999999999916	0	261034	0	0	24
123813	8.43200000000000038	0	261066	0	0	24
123814	8.43299999999999983	0	261098	0	0	24
123815	8.43399999999999928	0	261130	0	0	24
123816	8.4350000000000005	0	261162	0	0	24
123817	8.43599999999999994	0	261194	0	0	24
123818	8.43699999999999939	0	261226	0	0	24
123819	8.43800000000000061	0	261258	0	0	24
123820	8.43900000000000006	0	261290	0	0	24
123821	8.4399999999999995	0	261320	0	0	24
123822	8.44100000000000072	0	261352	0	0	24
123823	8.44200000000000017	0	261384	0	0	24
123824	8.44299999999999962	0	261416	0	0	24
123825	8.44400000000000084	0	261448	0	0	24
123826	8.44500000000000028	0	261480	0	0	24
123827	8.44599999999999973	0	261512	0	0	24
123828	8.44699999999999918	0	261544	0	0	24
123829	8.4480000000000004	0	261576	0	0	24
123830	8.44899999999999984	0	261608	0	0	24
123831	8.44999999999999929	0	261637	0	0	24
123832	8.45100000000000051	0	261669	0	0	24
123833	8.45199999999999996	0	261701	0	0	24
123834	8.4529999999999994	0	261733	0	0	24
123835	8.45400000000000063	0	261765	0	0	24
123836	8.45500000000000007	0	261797	0	0	24
123837	8.45599999999999952	0	261829	0	0	24
123838	8.45700000000000074	0	261861	0	0	24
123839	8.45800000000000018	0	261893	0	0	24
123840	8.45899999999999963	0	261925	0	0	24
123841	8.46000000000000085	0	261955	0	0	24
123842	8.4610000000000003	0	261987	0	0	24
123843	8.46199999999999974	0	262019	0	0	24
123844	8.46299999999999919	0	262051	0	0	24
123845	8.46400000000000041	0	262083	0	0	24
123846	8.46499999999999986	0	262115	0	0	24
123847	8.4659999999999993	0	262147	0	0	24
123848	8.46700000000000053	0	262179	0	0	24
123849	8.46799999999999997	0	262211	0	0	24
123850	8.46899999999999942	0	262243	0	0	24
123851	8.47000000000000064	0	262273	0	0	24
123852	8.47100000000000009	0	262305	0	0	24
123853	8.47199999999999953	0	262337	0	0	24
123854	8.47300000000000075	0	262369	0	0	24
123855	8.4740000000000002	0	262401	0	0	24
123856	8.47499999999999964	0	262433	0	0	24
123857	8.47600000000000087	0	262465	0	0	24
123858	8.47700000000000031	0	262497	0	0	24
123859	8.47799999999999976	0	262529	0	0	24
123860	8.4789999999999992	0	262561	0	0	24
123861	8.48000000000000043	0	262591	0	0	24
123862	8.48099999999999987	0	262623	0	0	24
123863	8.48199999999999932	0	262655	0	0	24
123864	8.48300000000000054	0	262687	0	0	24
123865	8.48399999999999999	0	262719	0	0	24
123866	8.48499999999999943	0	262751	0	0	24
123867	8.48600000000000065	0	262783	0	0	24
123868	8.4870000000000001	0	262815	0	0	24
123869	8.48799999999999955	0	262847	0	0	24
123870	8.48900000000000077	0	262879	0	0	24
123871	8.49000000000000021	0	262909	0	0	24
123872	8.49099999999999966	0	262941	0	0	24
123873	8.49200000000000088	0	262973	0	0	24
123874	8.49300000000000033	0	263005	0	0	24
123875	8.49399999999999977	0	263037	0	0	24
123876	8.49499999999999922	0	263069	0	0	24
123877	8.49600000000000044	0	263101	0	0	24
123878	8.49699999999999989	0	263133	0	0	24
123879	8.49799999999999933	0	263165	0	0	24
123880	8.49900000000000055	0	263197	0	0	24
123881	8.5	0	263226	0	0	24
123882	8.50099999999999945	0	263258	0	0	24
123883	8.50200000000000067	0	263290	0	0	24
123884	8.50300000000000011	0	263322	0	0	24
123885	8.50399999999999956	0	263354	0	0	24
123886	8.50500000000000078	0	263386	0	0	24
123887	8.50600000000000023	0	263418	0	0	24
123888	8.50699999999999967	0	263450	0	0	24
123889	8.50799999999999912	0	263482	0	0	24
123890	8.50900000000000034	0	263514	0	0	24
123891	8.50999999999999979	0	263544	0	0	24
123892	8.51099999999999923	0	263576	0	0	24
123893	8.51200000000000045	0	263608	0	0	24
123894	8.5129999999999999	0	263640	0	0	24
123895	8.51399999999999935	0	263672	0	0	24
123896	8.51500000000000057	0	263704	0	0	24
123897	8.51600000000000001	0	263736	0	0	24
123898	8.51699999999999946	0	263768	0	0	24
123899	8.51800000000000068	0	263800	0	0	24
123900	8.51900000000000013	0	263832	0	0	24
123901	8.51999999999999957	0	263862	0	0	24
123902	8.5210000000000008	0	263894	0	0	24
123903	8.52200000000000024	0	263926	0	0	24
123904	8.52299999999999969	0	263958	0	0	24
123905	8.52399999999999913	0	263990	0	0	24
123906	8.52500000000000036	0	264022	0	0	24
123907	8.5259999999999998	0	264054	0	0	24
123908	8.52699999999999925	0	264086	0	0	24
123909	8.52800000000000047	0	264118	0	0	24
123910	8.52899999999999991	0	264150	0	0	24
123911	8.52999999999999936	0	264180	0	0	24
123912	8.53100000000000058	0	264212	0	0	24
123913	8.53200000000000003	0	264244	0	0	24
123914	8.53299999999999947	0	264276	0	0	24
123915	8.5340000000000007	0	264308	0	0	24
123916	8.53500000000000014	0	264340	0	0	24
123917	8.53599999999999959	0	264372	0	0	24
123918	8.53700000000000081	0	264404	0	0	24
123919	8.53800000000000026	0	264436	0	0	24
123920	8.5389999999999997	0	264468	0	0	24
123921	8.53999999999999915	0	264498	0	0	24
123922	8.54100000000000037	0	264530	0	0	24
123923	8.54199999999999982	0	264562	0	0	24
123924	8.54299999999999926	0	264594	0	0	24
123925	8.54400000000000048	0	264626	0	0	24
123926	8.54499999999999993	0	264658	0	0	24
123927	8.54599999999999937	0	264690	0	0	24
123928	8.5470000000000006	0	264722	0	0	24
123929	8.54800000000000004	0	264754	0	0	24
123930	8.54899999999999949	0	264786	0	0	24
123931	8.55000000000000071	0	264815	0	0	24
123932	8.55100000000000016	0	264847	0	0	24
123933	8.5519999999999996	0	264879	0	0	24
123934	8.55300000000000082	0	264911	0	0	24
123935	8.55400000000000027	0	264943	0	0	24
123936	8.55499999999999972	0	264975	0	0	24
123937	8.55599999999999916	0	265007	0	0	24
123938	8.55700000000000038	0	265039	0	0	24
123939	8.55799999999999983	0	265071	0	0	24
123940	8.55899999999999928	0	265103	0	0	24
123941	8.5600000000000005	0	265133	0	0	24
123942	8.56099999999999994	0	265165	0	0	24
123943	8.56199999999999939	0	265197	0	0	24
123944	8.56300000000000061	0	265229	0	0	24
123945	8.56400000000000006	0	265261	0	0	24
123946	8.5649999999999995	0	265293	0	0	24
123947	8.56600000000000072	0	265325	0	0	24
123948	8.56700000000000017	0	265357	0	0	24
123949	8.56799999999999962	0	265389	0	0	24
123950	8.56900000000000084	0	265421	0	0	24
123951	8.57000000000000028	0	265451	0	0	24
123952	8.57099999999999973	0	265483	0	0	24
123953	8.57199999999999918	0	265515	0	0	24
123954	8.5730000000000004	0	265547	0	0	24
123955	8.57399999999999984	0	265579	0	0	24
123956	8.57499999999999929	0	265611	0	0	24
123957	8.57600000000000051	0	265643	0	0	24
123958	8.57699999999999996	0	265675	0	0	24
123959	8.5779999999999994	0	265707	0	0	24
123960	8.57900000000000063	0	265739	0	0	24
123961	8.58000000000000007	0	265769	0	0	24
123962	8.58099999999999952	0	265801	0	0	24
123963	8.58200000000000074	0	265833	0	0	24
123964	8.58300000000000018	0	265865	0	0	24
123965	8.58399999999999963	0	265897	0	0	24
123966	8.58500000000000085	0	265929	0	0	24
123967	8.5860000000000003	0	265961	0	0	24
123968	8.58699999999999974	0	265993	0	0	24
123969	8.58799999999999919	0	266025	0	0	24
123970	8.58900000000000041	0	266057	0	0	24
123971	8.58999999999999986	0	266087	0	0	24
123972	8.5909999999999993	0	266119	0	0	24
123973	8.59200000000000053	0	266151	0	0	24
123974	8.59299999999999997	0	266183	0	0	24
123975	8.59399999999999942	0	266215	0	0	24
123976	8.59500000000000064	0	266247	0	0	24
123977	8.59600000000000009	0	266279	0	0	24
123978	8.59699999999999953	0	266311	0	0	24
123979	8.59800000000000075	0	266343	0	0	24
123980	8.5990000000000002	0	266375	0	0	24
123981	8.59999999999999964	0	266404	0	0	24
123982	8.60100000000000087	0	266436	0	0	24
123983	8.60200000000000031	0	266468	0	0	24
123984	8.60299999999999976	0	266500	0	0	24
123985	8.6039999999999992	0	266532	0	0	24
123986	8.60500000000000043	0	266564	0	0	24
123987	8.60599999999999987	0	266596	0	0	24
123988	8.60699999999999932	0	266628	0	0	24
123989	8.60800000000000054	0	266660	0	0	24
123990	8.60899999999999999	0	266692	0	0	24
123991	8.60999999999999943	0	266722	0	0	24
123992	8.61100000000000065	0	266754	0	0	24
123993	8.6120000000000001	0	266786	0	0	24
123994	8.61299999999999955	0	266818	0	0	24
123995	8.61400000000000077	0	266850	0	0	24
123996	8.61500000000000021	0	266882	0	0	24
123997	8.61599999999999966	0	266914	0	0	24
123998	8.61700000000000088	0	266946	0	0	24
123999	8.61800000000000033	0	266978	0	0	24
124000	8.61899999999999977	0	267010	0	0	24
124001	8.61999999999999922	0	267040	0	0	24
124002	8.62100000000000044	0	267072	0	0	24
124003	8.62199999999999989	0	267104	0	0	24
124004	8.62299999999999933	0	267136	0	0	24
124005	8.62400000000000055	0	267168	0	0	24
124006	8.625	0	267200	0	0	24
124007	8.62599999999999945	0	267232	0	0	24
124008	8.62700000000000067	0	267264	0	0	24
124009	8.62800000000000011	0	267296	0	0	24
124010	8.62899999999999956	0	267328	0	0	24
124011	8.63000000000000078	0	267358	0	0	24
124012	8.63100000000000023	0	267390	0	0	24
124013	8.63199999999999967	0	267422	0	0	24
124014	8.63299999999999912	0	267454	0	0	24
124015	8.63400000000000034	0	267486	0	0	24
124016	8.63499999999999979	0	267518	0	0	24
124017	8.63599999999999923	0	267550	0	0	24
124018	8.63700000000000045	0	267582	0	0	24
124019	8.6379999999999999	0	267614	0	0	24
124020	8.63899999999999935	0	267646	0	0	24
124021	8.64000000000000057	0	267676	0	0	24
124022	8.64100000000000001	0	267708	0	0	24
124023	8.64199999999999946	0	267740	0	0	24
124024	8.64300000000000068	0	267772	0	0	24
124025	8.64400000000000013	0	267804	0	0	24
124026	8.64499999999999957	0	267836	0	0	24
124027	8.6460000000000008	0	267868	0	0	24
124028	8.64700000000000024	0	267900	0	0	24
124029	8.64799999999999969	0	267932	0	0	24
124030	8.64899999999999913	0	267964	0	0	24
124031	8.65000000000000036	0	267993	0	0	24
124032	8.6509999999999998	0	268025	0	0	24
124033	8.65199999999999925	0	268057	0	0	24
124034	8.65300000000000047	0	268089	0	0	24
124035	8.65399999999999991	0	268121	0	0	24
124036	8.65499999999999936	0	268153	0	0	24
124037	8.65600000000000058	0	268185	0	0	24
124038	8.65700000000000003	0	268217	0	0	24
124039	8.65799999999999947	0	268249	0	0	24
124040	8.6590000000000007	0	268281	0	0	24
124041	8.66000000000000014	0	268311	0	0	24
124042	8.66099999999999959	0	268343	0	0	24
124043	8.66200000000000081	0	268375	0	0	24
124044	8.66300000000000026	0	268407	0	0	24
124045	8.6639999999999997	0	268439	0	0	24
124046	8.66499999999999915	0	268471	0	0	24
124047	8.66600000000000037	0	268503	0	0	24
124048	8.66699999999999982	0	268535	0	0	24
124049	8.66799999999999926	0	268567	0	0	24
124050	8.66900000000000048	0	268599	0	0	24
124051	8.66999999999999993	0	268629	0	0	24
124052	8.67099999999999937	0	268661	0	0	24
124053	8.6720000000000006	0	268693	0	0	24
124054	8.67300000000000004	0	268725	0	0	24
124055	8.67399999999999949	0	268757	0	0	24
124056	8.67500000000000071	0	268789	0	0	24
124057	8.67600000000000016	0	268821	0	0	24
124058	8.6769999999999996	0	268853	0	0	24
124059	8.67800000000000082	0	268885	0	0	24
124060	8.67900000000000027	0	268917	0	0	24
124061	8.67999999999999972	0	268947	0	0	24
124062	8.68099999999999916	0	268979	0	0	24
124063	8.68200000000000038	0	269011	0	0	24
124064	8.68299999999999983	0	269043	0	0	24
124065	8.68399999999999928	0	269075	0	0	24
124066	8.6850000000000005	0	269107	0	0	24
124067	8.68599999999999994	0	269139	0	0	24
124068	8.68699999999999939	0	269171	0	0	24
124069	8.68800000000000061	0	269203	0	0	24
124070	8.68900000000000006	0	269235	0	0	24
124071	8.6899999999999995	0	269265	0	0	24
124072	8.69100000000000072	0	269297	0	0	24
124073	8.69200000000000017	0	269329	0	0	24
124074	8.69299999999999962	0	269361	0	0	24
124075	8.69400000000000084	0	269393	0	0	24
124076	8.69500000000000028	0	269425	0	0	24
124077	8.69599999999999973	0	269457	0	0	24
124078	8.69699999999999918	0	269489	0	0	24
124079	8.6980000000000004	0	269521	0	0	24
124080	8.69899999999999984	0	269553	0	0	24
124081	8.69999999999999929	0	269582	0	0	24
124082	8.70100000000000051	0	269614	0	0	24
124083	8.70199999999999996	0	269646	0	0	24
124084	8.7029999999999994	0	269678	0	0	24
124085	8.70400000000000063	0	269710	0	0	24
124086	8.70500000000000007	0	269742	0	0	24
124087	8.70599999999999952	0	269774	0	0	24
124088	8.70700000000000074	0	269806	0	0	24
124089	8.70800000000000018	0	269838	0	0	24
124090	8.70899999999999963	0	269870	0	0	24
124091	8.71000000000000085	0	269900	0	0	24
124092	8.7110000000000003	0	269932	0	0	24
124093	8.71199999999999974	0	269964	0	0	24
124094	8.71299999999999919	0	269996	0	0	24
124095	8.71400000000000041	0	270028	0	0	24
124096	8.71499999999999986	0	270060	0	0	24
124097	8.7159999999999993	0	270092	0	0	24
124098	8.71700000000000053	0	270124	0	0	24
124099	8.71799999999999997	0	270156	0	0	24
124100	8.71899999999999942	0	270188	0	0	24
124101	8.72000000000000064	0	270218	0	0	24
124102	8.72100000000000009	0	270250	0	0	24
124103	8.72199999999999953	0	270282	0	0	24
124104	8.72300000000000075	0	270314	0	0	24
124105	8.7240000000000002	0	270346	0	0	24
124106	8.72499999999999964	0	270378	0	0	24
124107	8.72600000000000087	0	270410	0	0	24
124108	8.72700000000000031	0	270442	0	0	24
124109	8.72799999999999976	0	270474	0	0	24
124110	8.7289999999999992	0	270506	0	0	24
124111	8.73000000000000043	0	270536	0	0	24
124112	8.73099999999999987	0	270568	0	0	24
124113	8.73199999999999932	0	270600	0	0	24
124114	8.73300000000000054	0	270632	0	0	24
124115	8.73399999999999999	0	270664	0	0	24
124116	8.73499999999999943	0	270696	0	0	24
124117	8.73600000000000065	0	270728	0	0	24
124118	8.7370000000000001	0	270760	0	0	24
124119	8.73799999999999955	0	270792	0	0	24
124120	8.73900000000000077	0	270824	0	0	24
124121	8.74000000000000021	0	270854	0	0	24
124122	8.74099999999999966	0	270886	0	0	24
124123	8.74200000000000088	0	270918	0	0	24
124124	8.74300000000000033	0	270950	0	0	24
124125	8.74399999999999977	0	270982	0	0	24
124126	8.74499999999999922	0	271014	0	0	24
124127	8.74600000000000044	0	271046	0	0	24
124128	8.74699999999999989	0	271078	0	0	24
124129	8.74799999999999933	0	271110	0	0	24
124130	8.74900000000000055	0	271142	0	0	24
124131	8.75	0	271171	0	0	24
124132	8.75099999999999945	0	271203	0	0	24
124133	8.75200000000000067	0	271235	0	0	24
124134	8.75300000000000011	0	271267	0	0	24
124135	8.75399999999999956	0	271299	0	0	24
124136	8.75500000000000078	0	271331	0	0	24
124137	8.75600000000000023	0	271363	0	0	24
124138	8.75699999999999967	0	271395	0	0	24
124139	8.75799999999999912	0	271427	0	0	24
124140	8.75900000000000034	0	271459	0	0	24
124141	8.75999999999999979	0	271489	0	0	24
124142	8.76099999999999923	0	271521	0	0	24
124143	8.76200000000000045	0	271553	0	0	24
124144	8.7629999999999999	0	271585	0	0	24
124145	8.76399999999999935	0	271617	0	0	24
124146	8.76500000000000057	0	271649	0	0	24
124147	8.76600000000000001	0	271681	0	0	24
124148	8.76699999999999946	0	271713	0	0	24
124149	8.76800000000000068	0	271745	0	0	24
124150	8.76900000000000013	0	271777	0	0	24
124151	8.76999999999999957	0	271807	0	0	24
124152	8.7710000000000008	0	271839	0	0	24
124153	8.77200000000000024	0	271871	0	0	24
124154	8.77299999999999969	0	271903	0	0	24
124155	8.77399999999999913	0	271935	0	0	24
124156	8.77500000000000036	0	271967	0	0	24
124157	8.7759999999999998	0	271999	0	0	24
124158	8.77699999999999925	0	272031	0	0	24
124159	8.77800000000000047	0	272063	0	0	24
124160	8.77899999999999991	0	272095	0	0	24
124161	8.77999999999999936	0	272125	0	0	24
124162	8.78100000000000058	0	272157	0	0	24
124163	8.78200000000000003	0	272189	0	0	24
124164	8.78299999999999947	0	272221	0	0	24
124165	8.7840000000000007	0	272253	0	0	24
124166	8.78500000000000014	0	272285	0	0	24
124167	8.78599999999999959	0	272317	0	0	24
124168	8.78700000000000081	0	272349	0	0	24
124169	8.78800000000000026	0	272381	0	0	24
124170	8.7889999999999997	0	272413	0	0	24
124171	8.78999999999999915	0	272443	0	0	24
124172	8.79100000000000037	0	272475	0	0	24
124173	8.79199999999999982	0	272507	0	0	24
124174	8.79299999999999926	0	272539	0	0	24
124175	8.79400000000000048	0	272571	0	0	24
124176	8.79499999999999993	0	272603	0	0	24
124177	8.79599999999999937	0	272635	0	0	24
124178	8.7970000000000006	0	272667	0	0	24
124179	8.79800000000000004	0	272699	0	0	24
124180	8.79899999999999949	0	272731	0	0	24
124181	8.80000000000000071	0	272760	0	0	24
124182	8.80100000000000016	0	272792	0	0	24
124183	8.8019999999999996	0	272824	0	0	24
124184	8.80300000000000082	0	272856	0	0	24
124185	8.80400000000000027	0	272888	0	0	24
124186	8.80499999999999972	0	272920	0	0	24
124187	8.80599999999999916	0	272952	0	0	24
124188	8.80700000000000038	0	272984	0	0	24
124189	8.80799999999999983	0	273016	0	0	24
124190	8.80899999999999928	0	273048	0	0	24
124191	8.8100000000000005	0	273078	0	0	24
124192	8.81099999999999994	0	273110	0	0	24
124193	8.81199999999999939	0	273142	0	0	24
124194	8.81300000000000061	0	273174	0	0	24
124195	8.81400000000000006	0	273206	0	0	24
124196	8.8149999999999995	0	273238	0	0	24
124197	8.81600000000000072	0	273270	0	0	24
124198	8.81700000000000017	0	273302	0	0	24
124199	8.81799999999999962	0	273334	0	0	24
124200	8.81900000000000084	0	273366	0	0	24
124201	8.82000000000000028	0	273396	0	0	24
124202	8.82099999999999973	0	273428	0	0	24
124203	8.82199999999999918	0	273460	0	0	24
124204	8.8230000000000004	0	273492	0	0	24
124205	8.82399999999999984	0	273524	0	0	24
124206	8.82499999999999929	0	273556	0	0	24
124207	8.82600000000000051	0	273588	0	0	24
124208	8.82699999999999996	0	273620	0	0	24
124209	8.8279999999999994	0	273652	0	0	24
124210	8.82900000000000063	0	273684	0	0	24
124211	8.83000000000000007	0	273714	0	0	24
124212	8.83099999999999952	0	273746	0	0	24
124213	8.83200000000000074	0	273778	0	0	24
124214	8.83300000000000018	0	273810	0	0	24
124215	8.83399999999999963	0	273842	0	0	24
124216	8.83500000000000085	0	273874	0	0	24
124217	8.8360000000000003	0	273906	0	0	24
124218	8.83699999999999974	0	273938	0	0	24
124219	8.83799999999999919	0	273970	0	0	24
124220	8.83900000000000041	0	274002	0	0	24
124221	8.83999999999999986	0	274032	0	0	24
124222	8.8409999999999993	0	274064	0	0	24
124223	8.84200000000000053	0	274096	0	0	24
124224	8.84299999999999997	0	274128	0	0	24
124225	8.84399999999999942	0	274160	0	0	24
124226	8.84500000000000064	0	274192	0	0	24
124227	8.84600000000000009	0	274224	0	0	24
124228	8.84699999999999953	0	274256	0	0	24
124229	8.84800000000000075	0	274288	0	0	24
124230	8.8490000000000002	0	274320	0	0	24
124231	8.84999999999999964	0	274349	0	0	24
124232	8.85100000000000087	0	274381	0	0	24
124233	8.85200000000000031	0	274413	0	0	24
124234	8.85299999999999976	0	274445	0	0	24
124235	8.8539999999999992	0	274477	0	0	24
124236	8.85500000000000043	0	274509	0	0	24
124237	8.85599999999999987	0	274541	0	0	24
124238	8.85699999999999932	0	274573	0	0	24
124239	8.85800000000000054	0	274605	0	0	24
124240	8.85899999999999999	0	274637	0	0	24
124241	8.85999999999999943	0	274667	0	0	24
124242	8.86100000000000065	0	274699	0	0	24
124243	8.8620000000000001	0	274731	0	0	24
124244	8.86299999999999955	0	274763	0	0	24
124245	8.86400000000000077	0	274795	0	0	24
124246	8.86500000000000021	0	274827	0	0	24
124247	8.86599999999999966	0	274859	0	0	24
124248	8.86700000000000088	0	274891	0	0	24
124249	8.86800000000000033	0	274923	0	0	24
124250	8.86899999999999977	0	274955	0	0	24
124251	8.86999999999999922	0	274985	0	0	24
124252	8.87100000000000044	0	275017	0	0	24
124253	8.87199999999999989	0	275049	0	0	24
124254	8.87299999999999933	0	275081	0	0	24
124255	8.87400000000000055	0	275113	0	0	24
124256	8.875	0	275145	0	0	24
124257	8.87599999999999945	0	275177	0	0	24
124258	8.87700000000000067	0	275209	0	0	24
124259	8.87800000000000011	0	275241	0	0	24
124260	8.87899999999999956	0	275273	0	0	24
124261	8.88000000000000078	0	275303	0	0	24
124262	8.88100000000000023	0	275335	0	0	24
124263	8.88199999999999967	0	275367	0	0	24
124264	8.88299999999999912	0	275399	0	0	24
124265	8.88400000000000034	0	275431	0	0	24
124266	8.88499999999999979	0	275463	0	0	24
124267	8.88599999999999923	0	275495	0	0	24
124268	8.88700000000000045	0	275527	0	0	24
124269	8.8879999999999999	0	275559	0	0	24
124270	8.88899999999999935	0	275591	0	0	24
124271	8.89000000000000057	0	275621	0	0	24
124272	8.89100000000000001	0	275653	0	0	24
124273	8.89199999999999946	0	275685	0	0	24
124274	8.89300000000000068	0	275717	0	0	24
124275	8.89400000000000013	0	275749	0	0	24
124276	8.89499999999999957	0	275781	0	0	24
124277	8.8960000000000008	0	275813	0	0	24
124278	8.89700000000000024	0	275845	0	0	24
124279	8.89799999999999969	0	275877	0	0	24
124280	8.89899999999999913	0	275909	0	0	24
124281	8.90000000000000036	0	275938	0	0	24
124282	8.9009999999999998	0	275970	0	0	24
124283	8.90199999999999925	0	276002	0	0	24
124284	8.90300000000000047	0	276034	0	0	24
124285	8.90399999999999991	0	276066	0	0	24
124286	8.90499999999999936	0	276098	0	0	24
124287	8.90600000000000058	0	276130	0	0	24
124288	8.90700000000000003	0	276162	0	0	24
124289	8.90799999999999947	0	276194	0	0	24
124290	8.9090000000000007	0	276226	0	0	24
124291	8.91000000000000014	0	276256	0	0	24
124292	8.91099999999999959	0	276288	0	0	24
124293	8.91200000000000081	0	276320	0	0	24
124294	8.91300000000000026	0	276352	0	0	24
124295	8.9139999999999997	0	276384	0	0	24
124296	8.91499999999999915	0	276416	0	0	24
124297	8.91600000000000037	0	276448	0	0	24
124298	8.91699999999999982	0	276480	0	0	24
124299	8.91799999999999926	0	276512	0	0	24
124300	8.91900000000000048	0	276544	0	0	24
124301	8.91999999999999993	0	276574	0	0	24
124302	8.92099999999999937	0	276606	0	0	24
124303	8.9220000000000006	0	276638	0	0	24
124304	8.92300000000000004	0	276670	0	0	24
124305	8.92399999999999949	0	276702	0	0	24
124306	8.92500000000000071	0	276734	0	0	24
124307	8.92600000000000016	0	276766	0	0	24
124308	8.9269999999999996	0	276798	0	0	24
124309	8.92800000000000082	0	276830	0	0	24
124310	8.92900000000000027	0	276862	0	0	24
124311	8.92999999999999972	0	276892	0	0	24
124312	8.93099999999999916	0	276924	0	0	24
124313	8.93200000000000038	0	276956	0	0	24
124314	8.93299999999999983	0	276988	0	0	24
124315	8.93399999999999928	0	277020	0	0	24
124316	8.9350000000000005	0	277052	0	0	24
124317	8.93599999999999994	0	277084	0	0	24
124318	8.93699999999999939	0	277116	0	0	24
124319	8.93800000000000061	0	277148	0	0	24
124320	8.93900000000000006	0	277180	0	0	24
124321	8.9399999999999995	0	277210	0	0	24
124322	8.94100000000000072	0	277242	0	0	24
124323	8.94200000000000017	0	277274	0	0	24
124324	8.94299999999999962	0	277306	0	0	24
124325	8.94400000000000084	0	277338	0	0	24
124326	8.94500000000000028	0	277370	0	0	24
124327	8.94599999999999973	0	277402	0	0	24
124328	8.94699999999999918	0	277434	0	0	24
124329	8.9480000000000004	0	277466	0	0	24
124330	8.94899999999999984	0	277498	0	0	24
124331	8.94999999999999929	0	277527	0	0	24
124332	8.95100000000000051	0	277559	0	0	24
124333	8.95199999999999996	0	277591	0	0	24
124334	8.9529999999999994	0	277623	0	0	24
124335	8.95400000000000063	0	277655	0	0	24
124336	8.95500000000000007	0	277687	0	0	24
124337	8.95599999999999952	0	277719	0	0	24
124338	8.95700000000000074	0	277751	0	0	24
124339	8.95800000000000018	0	277783	0	0	24
124340	8.95899999999999963	0	277815	0	0	24
124341	8.96000000000000085	0	277845	0	0	24
124342	8.9610000000000003	0	277877	0	0	24
124343	8.96199999999999974	0	277909	0	0	24
124344	8.96299999999999919	0	277941	0	0	24
124345	8.96400000000000041	0	277973	0	0	24
124346	8.96499999999999986	0	278005	0	0	24
124347	8.9659999999999993	0	278037	0	0	24
124348	8.96700000000000053	0	278069	0	0	24
124349	8.96799999999999997	0	278101	0	0	24
124350	8.96899999999999942	0	278133	0	0	24
124351	8.97000000000000064	0	278163	0	0	24
124352	8.97100000000000009	0	278195	0	0	24
124353	8.97199999999999953	0	278227	0	0	24
124354	8.97300000000000075	0	278259	0	0	24
124355	8.9740000000000002	0	278291	0	0	24
124356	8.97499999999999964	0	278323	0	0	24
124357	8.97600000000000087	0	278355	0	0	24
124358	8.97700000000000031	0	278387	0	0	24
124359	8.97799999999999976	0	278419	0	0	24
124360	8.9789999999999992	0	278451	0	0	24
124361	8.98000000000000043	0	278481	0	0	24
124362	8.98099999999999987	0	278513	0	0	24
124363	8.98199999999999932	0	278545	0	0	24
124364	8.98300000000000054	0	278577	0	0	24
124365	8.98399999999999999	0	278609	0	0	24
124366	8.98499999999999943	0	278641	0	0	24
124367	8.98600000000000065	0	278673	0	0	24
124368	8.9870000000000001	0	278705	0	0	24
124369	8.98799999999999955	0	278737	0	0	24
124370	8.98900000000000077	0	278769	0	0	24
124371	8.99000000000000021	0	278799	0	0	24
124372	8.99099999999999966	0	278831	0	0	24
124373	8.99200000000000088	0	278863	0	0	24
124374	8.99300000000000033	0	278895	0	0	24
124375	8.99399999999999977	0	278927	0	0	24
124376	8.99499999999999922	0	278959	0	0	24
124377	8.99600000000000044	0	278991	0	0	24
124378	8.99699999999999989	0	279023	0	0	24
124379	8.99799999999999933	0	279055	0	0	24
124380	8.99900000000000055	0	279087	0	0	24
124381	9	0	279116	0	0	24
124382	9.00099999999999945	0	279148	0	0	24
124383	9.00200000000000067	0	279180	0	0	24
124384	9.00300000000000011	0	279212	0	0	24
124385	9.00399999999999956	0	279244	0	0	24
124386	9.00500000000000078	0	279276	0	0	24
124387	9.00600000000000023	0	279308	0	0	24
124388	9.00699999999999967	0	279340	0	0	24
124389	9.00799999999999912	0	279372	0	0	24
124390	9.00900000000000034	0	279404	0	0	24
124391	9.00999999999999979	0	279434	0	0	24
124392	9.01099999999999923	0	279466	0	0	24
124393	9.01200000000000045	0	279498	0	0	24
124394	9.0129999999999999	0	279530	0	0	24
124395	9.01399999999999935	0	279562	0	0	24
124396	9.01500000000000057	0	279594	0	0	24
124397	9.01600000000000001	0	279626	0	0	24
124398	9.01699999999999946	0	279658	0	0	24
124399	9.01800000000000068	0	279690	0	0	24
124400	9.01900000000000013	0	279722	0	0	24
124401	9.01999999999999957	0	279752	0	0	24
124402	9.0210000000000008	0	279784	0	0	24
124403	9.02200000000000024	0	279816	0	0	24
124404	9.02299999999999969	0	279848	0	0	24
124405	9.02399999999999913	0	279880	0	0	24
124406	9.02500000000000036	0	279912	0	0	24
124407	9.0259999999999998	0	279944	0	0	24
124408	9.02699999999999925	0	279976	0	0	24
124409	9.02800000000000047	0	280008	0	0	24
124410	9.02899999999999991	0	280040	0	0	24
124411	9.02999999999999936	0	280070	0	0	24
124412	9.03100000000000058	0	280102	0	0	24
124413	9.03200000000000003	0	280134	0	0	24
124414	9.03299999999999947	0	280166	0	0	24
124415	9.0340000000000007	0	280198	0	0	24
124416	9.03500000000000014	0	280230	0	0	24
124417	9.03599999999999959	0	280262	0	0	24
124418	9.03700000000000081	0	280294	0	0	24
124419	9.03800000000000026	0	280326	0	0	24
124420	9.0389999999999997	0	280358	0	0	24
124421	9.03999999999999915	0	280388	0	0	24
124422	9.04100000000000037	0	280420	0	0	24
124423	9.04199999999999982	0	280452	0	0	24
124424	9.04299999999999926	0	280484	0	0	24
124425	9.04400000000000048	0	280516	0	0	24
124426	9.04499999999999993	0	280548	0	0	24
124427	9.04599999999999937	0	280580	0	0	24
124428	9.0470000000000006	0	280612	0	0	24
124429	9.04800000000000004	0	280644	0	0	24
124430	9.04899999999999949	0	280676	0	0	24
124431	9.05000000000000071	0	280705	0	0	24
124432	9.05100000000000016	0	280737	0	0	24
124433	9.0519999999999996	0	280769	0	0	24
124434	9.05300000000000082	0	280801	0	0	24
124435	9.05400000000000027	0	280833	0	0	24
124436	9.05499999999999972	0	280865	0	0	24
124437	9.05599999999999916	0	280897	0	0	24
124438	9.05700000000000038	0	280929	0	0	24
124439	9.05799999999999983	0	280961	0	0	24
124440	9.05899999999999928	0	280993	0	0	24
124441	9.0600000000000005	0	281023	0	0	24
124442	9.06099999999999994	0	281055	0	0	24
124443	9.06199999999999939	0	281087	0	0	24
124444	9.06300000000000061	0	281119	0	0	24
124445	9.06400000000000006	0	281151	0	0	24
124446	9.0649999999999995	0	281183	0	0	24
124447	9.06600000000000072	0	281215	0	0	24
124448	9.06700000000000017	0	281247	0	0	24
124449	9.06799999999999962	0	281279	0	0	24
124450	9.06900000000000084	0	281311	0	0	24
124451	9.07000000000000028	0	281341	0	0	24
124452	9.07099999999999973	0	281373	0	0	24
124453	9.07199999999999918	0	281405	0	0	24
124454	9.0730000000000004	0	281437	0	0	24
124455	9.07399999999999984	0	281469	0	0	24
124456	9.07499999999999929	0	281501	0	0	24
124457	9.07600000000000051	0	281533	0	0	24
124458	9.07699999999999996	0	281565	0	0	24
124459	9.0779999999999994	0	281597	0	0	24
124460	9.07900000000000063	0	281629	0	0	24
124461	9.08000000000000007	0	281659	0	0	24
124462	9.08099999999999952	0	281691	0	0	24
124463	9.08200000000000074	0	281723	0	0	24
124464	9.08300000000000018	0	281755	0	0	24
124465	9.08399999999999963	0	281787	0	0	24
124466	9.08500000000000085	0	281819	0	0	24
124467	9.0860000000000003	0	281851	0	0	24
124468	9.08699999999999974	0	281883	0	0	24
124469	9.08799999999999919	0	281915	0	0	24
124470	9.08900000000000041	0	281947	0	0	24
124471	9.08999999999999986	0	281977	0	0	24
124472	9.0909999999999993	0	282009	0	0	24
124473	9.09200000000000053	0	282041	0	0	24
124474	9.09299999999999997	0	282073	0	0	24
124475	9.09399999999999942	0	282105	0	0	24
124476	9.09500000000000064	0	282137	0	0	24
124477	9.09600000000000009	0	282169	0	0	24
124478	9.09699999999999953	0	282201	0	0	24
124479	9.09800000000000075	0	282233	0	0	24
124480	9.0990000000000002	0	282265	0	0	24
124481	9.09999999999999964	0	282294	0	0	24
124482	9.10100000000000087	0	282326	0	0	24
124483	9.10200000000000031	0	282358	0	0	24
133083	17.7020000000000017	0	555801	0	0	24
133084	17.7029999999999994	0	555833	0	0	24
133085	17.7040000000000006	0	555865	0	0	24
133086	17.7049999999999983	0	555897	0	0	24
133087	17.7059999999999995	0	555929	0	0	24
133088	17.7070000000000007	0	555961	0	0	24
133089	17.7079999999999984	0	555993	0	0	24
133090	17.7089999999999996	0	556025	0	0	24
133091	17.7100000000000009	0	556055	0	0	24
133092	17.7109999999999985	0	556087	0	0	24
133093	17.7119999999999997	0	556119	0	0	24
133094	17.713000000000001	0	556151	0	0	24
133095	17.7139999999999986	0	556183	0	0	24
133096	17.7149999999999999	0	556215	0	0	24
133097	17.7160000000000011	0	556247	0	0	24
133098	17.7169999999999987	0	556279	0	0	24
133099	17.718	0	556311	0	0	24
133100	17.7190000000000012	0	556343	0	0	24
133101	17.7199999999999989	0	556373	0	0	24
133102	17.7210000000000001	0	556405	0	0	24
133103	17.7220000000000013	0	556437	0	0	24
133104	17.722999999999999	0	556469	0	0	24
133105	17.7240000000000002	0	556501	0	0	24
133106	17.7250000000000014	0	556533	0	0	24
133107	17.7259999999999991	0	556565	0	0	24
133108	17.7270000000000003	0	556597	0	0	24
133109	17.7280000000000015	0	556629	0	0	24
133110	17.7289999999999992	0	556661	0	0	24
133111	17.7300000000000004	0	556691	0	0	24
133112	17.7310000000000016	0	556723	0	0	24
133113	17.7319999999999993	0	556755	0	0	24
133114	17.7330000000000005	0	556787	0	0	24
133115	17.7340000000000018	0	556819	0	0	24
133116	17.7349999999999994	0	556851	0	0	24
133117	17.7360000000000007	0	556883	0	0	24
133118	17.7369999999999983	0	556915	0	0	24
133119	17.7379999999999995	0	556947	0	0	24
133120	17.7390000000000008	0	556979	0	0	24
133121	17.7399999999999984	0	557009	0	0	24
124484	9.10299999999999976	0	282390	0	0	24
124485	9.1039999999999992	0	282422	0	0	24
124486	9.10500000000000043	0	282454	0	0	24
124487	9.10599999999999987	0	282486	0	0	24
124488	9.10699999999999932	0	282518	0	0	24
124489	9.10800000000000054	0	282550	0	0	24
124490	9.10899999999999999	0	282582	0	0	24
124491	9.10999999999999943	0	282612	0	0	24
124492	9.11100000000000065	0	282644	0	0	24
124493	9.1120000000000001	0	282676	0	0	24
124494	9.11299999999999955	0	282708	0	0	24
124495	9.11400000000000077	0	282740	0	0	24
124496	9.11500000000000021	0	282772	0	0	24
124497	9.11599999999999966	0	282804	0	0	24
124498	9.11700000000000088	0	282836	0	0	24
124499	9.11800000000000033	0	282868	0	0	24
124500	9.11899999999999977	0	282900	0	0	24
124501	9.11999999999999922	0	282930	0	0	24
124502	9.12100000000000044	0	282962	0	0	24
124503	9.12199999999999989	0	282994	0	0	24
124504	9.12299999999999933	0	283026	0	0	24
124505	9.12400000000000055	0	283058	0	0	24
124506	9.125	0	283090	0	0	24
124507	9.12599999999999945	0	283122	0	0	24
124508	9.12700000000000067	0	283154	0	0	24
124509	9.12800000000000011	0	283186	0	0	24
124510	9.12899999999999956	0	283218	0	0	24
124511	9.13000000000000078	0	283248	0	0	24
124512	9.13100000000000023	0	283280	0	0	24
124513	9.13199999999999967	0	283312	0	0	24
124514	9.13299999999999912	0	283344	0	0	24
124515	9.13400000000000034	0	283376	0	0	24
124516	9.13499999999999979	0	283408	0	0	24
124517	9.13599999999999923	0	283440	0	0	24
124518	9.13700000000000045	0	283472	0	0	24
124519	9.1379999999999999	0	283504	0	0	24
124520	9.13899999999999935	0	283536	0	0	24
124521	9.14000000000000057	0	283566	0	0	24
124522	9.14100000000000001	0	283598	0	0	24
124523	9.14199999999999946	0	283630	0	0	24
124524	9.14300000000000068	0	283662	0	0	24
124525	9.14400000000000013	0	283694	0	0	24
124526	9.14499999999999957	0	283726	0	0	24
124527	9.1460000000000008	0	283758	0	0	24
124528	9.14700000000000024	0	283790	0	0	24
124529	9.14799999999999969	0	283822	0	0	24
124530	9.14899999999999913	0	283854	0	0	24
124531	9.15000000000000036	0	283883	0	0	24
124532	9.1509999999999998	0	283915	0	0	24
124533	9.15199999999999925	0	283947	0	0	24
124534	9.15300000000000047	0	283979	0	0	24
124535	9.15399999999999991	0	284011	0	0	24
124536	9.15499999999999936	0	284043	0	0	24
124537	9.15600000000000058	0	284075	0	0	24
124538	9.15700000000000003	0	284107	0	0	24
124539	9.15799999999999947	0	284139	0	0	24
124540	9.1590000000000007	0	284171	0	0	24
124541	9.16000000000000014	0	284201	0	0	24
124542	9.16099999999999959	0	284233	0	0	24
124543	9.16200000000000081	0	284265	0	0	24
124544	9.16300000000000026	0	284297	0	0	24
124545	9.1639999999999997	0	284329	0	0	24
124546	9.16499999999999915	0	284361	0	0	24
124547	9.16600000000000037	0	284393	0	0	24
124548	9.16699999999999982	0	284425	0	0	24
124549	9.16799999999999926	0	284457	0	0	24
124550	9.16900000000000048	0	284489	0	0	24
124551	9.16999999999999993	0	284519	0	0	24
124552	9.17099999999999937	0	284551	0	0	24
124553	9.1720000000000006	0	284583	0	0	24
124554	9.17300000000000004	0	284615	0	0	24
124555	9.17399999999999949	0	284647	0	0	24
124556	9.17500000000000071	0	284679	0	0	24
124557	9.17600000000000016	0	284711	0	0	24
124558	9.1769999999999996	0	284743	0	0	24
124559	9.17800000000000082	0	284775	0	0	24
124560	9.17900000000000027	0	284807	0	0	24
124561	9.17999999999999972	0	284837	0	0	24
124562	9.18099999999999916	0	284869	0	0	24
124563	9.18200000000000038	0	284901	0	0	24
124564	9.18299999999999983	0	284933	0	0	24
124565	9.18399999999999928	0	284965	0	0	24
124566	9.1850000000000005	0	284997	0	0	24
124567	9.18599999999999994	0	285029	0	0	24
124568	9.18699999999999939	0	285061	0	0	24
124569	9.18800000000000061	0	285093	0	0	24
124570	9.18900000000000006	0	285125	0	0	24
124571	9.1899999999999995	0	285155	0	0	24
124572	9.19100000000000072	0	285187	0	0	24
124573	9.19200000000000017	0	285219	0	0	24
124574	9.19299999999999962	0	285251	0	0	24
124575	9.19400000000000084	0	285283	0	0	24
124576	9.19500000000000028	0	285315	0	0	24
124577	9.19599999999999973	0	285347	0	0	24
124578	9.19699999999999918	0	285379	0	0	24
124579	9.1980000000000004	0	285411	0	0	24
124580	9.19899999999999984	0	285443	0	0	24
124581	9.19999999999999929	0	285472	0	0	24
124582	9.20100000000000051	0	285504	0	0	24
124583	9.20199999999999996	0	285536	0	0	24
124584	9.2029999999999994	0	285568	0	0	24
124585	9.20400000000000063	0	285600	0	0	24
124586	9.20500000000000007	0	285632	0	0	24
124587	9.20599999999999952	0	285664	0	0	24
124588	9.20700000000000074	0	285696	0	0	24
124589	9.20800000000000018	0	285728	0	0	24
124590	9.20899999999999963	0	285760	0	0	24
124591	9.21000000000000085	0	285790	0	0	24
124592	9.2110000000000003	0	285822	0	0	24
124593	9.21199999999999974	0	285854	0	0	24
124594	9.21299999999999919	0	285886	0	0	24
124595	9.21400000000000041	0	285918	0	0	24
124596	9.21499999999999986	0	285950	0	0	24
124597	9.2159999999999993	0	285982	0	0	24
124598	9.21700000000000053	0	286014	0	0	24
124599	9.21799999999999997	0	286046	0	0	24
124600	9.21899999999999942	0	286078	0	0	24
124601	9.22000000000000064	0	286108	0	0	24
124602	9.22100000000000009	0	286140	0	0	24
124603	9.22199999999999953	0	286172	0	0	24
124604	9.22300000000000075	0	286204	0	0	24
124605	9.2240000000000002	0	286236	0	0	24
124606	9.22499999999999964	0	286268	0	0	24
124607	9.22600000000000087	0	286300	0	0	24
124608	9.22700000000000031	0	286332	0	0	24
124609	9.22799999999999976	0	286364	0	0	24
124610	9.2289999999999992	0	286396	0	0	24
124611	9.23000000000000043	0	286426	0	0	24
124612	9.23099999999999987	0	286458	0	0	24
124613	9.23199999999999932	0	286490	0	0	24
124614	9.23300000000000054	0	286522	0	0	24
124615	9.23399999999999999	0	286554	0	0	24
124616	9.23499999999999943	0	286586	0	0	24
124617	9.23600000000000065	0	286618	0	0	24
124618	9.2370000000000001	0	286650	0	0	24
124619	9.23799999999999955	0	286682	0	0	24
124620	9.23900000000000077	0	286714	0	0	24
124621	9.24000000000000021	0	286744	0	0	24
124622	9.24099999999999966	0	286776	0	0	24
124623	9.24200000000000088	0	286808	0	0	24
124624	9.24300000000000033	0	286840	0	0	24
124625	9.24399999999999977	0	286872	0	0	24
124626	9.24499999999999922	0	286904	0	0	24
124627	9.24600000000000044	0	286936	0	0	24
124628	9.24699999999999989	0	286968	0	0	24
124629	9.24799999999999933	0	287000	0	0	24
124630	9.24900000000000055	0	287032	0	0	24
124631	9.25	0	287061	0	0	24
124632	9.25099999999999945	0	287093	0	0	24
124633	9.25200000000000067	0	287125	0	0	24
124634	9.25300000000000011	0	287157	0	0	24
124635	9.25399999999999956	0	287189	0	0	24
124636	9.25500000000000078	0	287221	0	0	24
124637	9.25600000000000023	0	287253	0	0	24
124638	9.25699999999999967	0	287285	0	0	24
124639	9.25799999999999912	0	287317	0	0	24
124640	9.25900000000000034	0	287349	0	0	24
124641	9.25999999999999979	0	287379	0	0	24
124642	9.26099999999999923	0	287411	0	0	24
124643	9.26200000000000045	0	287443	0	0	24
124644	9.2629999999999999	0	287475	0	0	24
124645	9.26399999999999935	0	287507	0	0	24
124646	9.26500000000000057	0	287539	0	0	24
124647	9.26600000000000001	0	287571	0	0	24
124648	9.26699999999999946	0	287603	0	0	24
124649	9.26800000000000068	0	287635	0	0	24
124650	9.26900000000000013	0	287667	0	0	24
124651	9.26999999999999957	0	287697	0	0	24
124652	9.2710000000000008	0	287729	0	0	24
124653	9.27200000000000024	0	287761	0	0	24
124654	9.27299999999999969	0	287793	0	0	24
124655	9.27399999999999913	0	287825	0	0	24
124656	9.27500000000000036	0	287857	0	0	24
124657	9.2759999999999998	0	287889	0	0	24
124658	9.27699999999999925	0	287921	0	0	24
124659	9.27800000000000047	0	287953	0	0	24
124660	9.27899999999999991	0	287985	0	0	24
124661	9.27999999999999936	0	288015	0	0	24
124662	9.28100000000000058	0	288047	0	0	24
124663	9.28200000000000003	0	288079	0	0	24
124664	9.28299999999999947	0	288111	0	0	24
124665	9.2840000000000007	0	288143	0	0	24
124666	9.28500000000000014	0	288175	0	0	24
124667	9.28599999999999959	0	288207	0	0	24
124668	9.28700000000000081	0	288239	0	0	24
124669	9.28800000000000026	0	288271	0	0	24
124670	9.2889999999999997	0	288303	0	0	24
124671	9.28999999999999915	0	288333	0	0	24
124672	9.29100000000000037	0	288365	0	0	24
124673	9.29199999999999982	0	288397	0	0	24
124674	9.29299999999999926	0	288429	0	0	24
124675	9.29400000000000048	0	288461	0	0	24
124676	9.29499999999999993	0	288493	0	0	24
124677	9.29599999999999937	0	288525	0	0	24
124678	9.2970000000000006	0	288557	0	0	24
124679	9.29800000000000004	0	288589	0	0	24
124680	9.29899999999999949	0	288621	0	0	24
124681	9.30000000000000071	0	288650	0	0	24
124682	9.30100000000000016	0	288682	0	0	24
124683	9.3019999999999996	0	288714	0	0	24
124684	9.30300000000000082	0	288746	0	0	24
124685	9.30400000000000027	0	288778	0	0	24
124686	9.30499999999999972	0	288810	0	0	24
124687	9.30599999999999916	0	288842	0	0	24
124688	9.30700000000000038	0	288874	0	0	24
124689	9.30799999999999983	0	288906	0	0	24
124690	9.30899999999999928	0	288938	0	0	24
124691	9.3100000000000005	0	288968	0	0	24
124692	9.31099999999999994	0	289000	0	0	24
124693	9.31199999999999939	0	289032	0	0	24
124694	9.31300000000000061	0	289064	0	0	24
124695	9.31400000000000006	0	289096	0	0	24
124696	9.3149999999999995	0	289128	0	0	24
124697	9.31600000000000072	0	289160	0	0	24
124698	9.31700000000000017	0	289192	0	0	24
124699	9.31799999999999962	0	289224	0	0	24
124700	9.31900000000000084	0	289256	0	0	24
124701	9.32000000000000028	0	289286	0	0	24
124702	9.32099999999999973	0	289318	0	0	24
124703	9.32199999999999918	0	289350	0	0	24
124704	9.3230000000000004	0	289382	0	0	24
124705	9.32399999999999984	0	289414	0	0	24
124706	9.32499999999999929	0	289446	0	0	24
124707	9.32600000000000051	0	289478	0	0	24
124708	9.32699999999999996	0	289510	0	0	24
124709	9.3279999999999994	0	289542	0	0	24
124710	9.32900000000000063	0	289574	0	0	24
124711	9.33000000000000007	0	289604	0	0	24
124712	9.33099999999999952	0	289636	0	0	24
124713	9.33200000000000074	0	289668	0	0	24
124714	9.33300000000000018	0	289700	0	0	24
124715	9.33399999999999963	0	289732	0	0	24
124716	9.33500000000000085	0	289764	0	0	24
124717	9.3360000000000003	0	289796	0	0	24
124718	9.33699999999999974	0	289828	0	0	24
124719	9.33799999999999919	0	289860	0	0	24
124720	9.33900000000000041	0	289892	0	0	24
124721	9.33999999999999986	0	289922	0	0	24
124722	9.3409999999999993	0	289954	0	0	24
124723	9.34200000000000053	0	289986	0	0	24
124724	9.34299999999999997	0	290018	0	0	24
124725	9.34399999999999942	0	290050	0	0	24
124726	9.34500000000000064	0	290082	0	0	24
124727	9.34600000000000009	0	290114	0	0	24
124728	9.34699999999999953	0	290146	0	0	24
124729	9.34800000000000075	0	290178	0	0	24
124730	9.3490000000000002	0	290210	0	0	24
124731	9.34999999999999964	0	290239	0	0	24
124732	9.35100000000000087	0	290271	0	0	24
124733	9.35200000000000031	0	290303	0	0	24
124734	9.35299999999999976	0	290335	0	0	24
124735	9.3539999999999992	0	290367	0	0	24
124736	9.35500000000000043	0	290399	0	0	24
124737	9.35599999999999987	0	290431	0	0	24
124738	9.35699999999999932	0	290463	0	0	24
124739	9.35800000000000054	0	290495	0	0	24
124740	9.35899999999999999	0	290527	0	0	24
124741	9.35999999999999943	0	290557	0	0	24
124742	9.36100000000000065	0	290589	0	0	24
124743	9.3620000000000001	0	290621	0	0	24
124744	9.36299999999999955	0	290653	0	0	24
124745	9.36400000000000077	0	290685	0	0	24
124746	9.36500000000000021	0	290717	0	0	24
124747	9.36599999999999966	0	290749	0	0	24
124748	9.36700000000000088	0	290781	0	0	24
124749	9.36800000000000033	0	290813	0	0	24
124750	9.36899999999999977	0	290845	0	0	24
124751	9.36999999999999922	0	290875	0	0	24
124752	9.37100000000000044	0	290907	0	0	24
124753	9.37199999999999989	0	290939	0	0	24
124754	9.37299999999999933	0	290971	0	0	24
124755	9.37400000000000055	0	291003	0	0	24
124756	9.375	0	291035	0	0	24
124757	9.37599999999999945	0	291067	0	0	24
124758	9.37700000000000067	0	291099	0	0	24
124759	9.37800000000000011	0	291131	0	0	24
124760	9.37899999999999956	0	291163	0	0	24
124761	9.38000000000000078	0	291193	0	0	24
124762	9.38100000000000023	0	291225	0	0	24
124763	9.38199999999999967	0	291257	0	0	24
124764	9.38299999999999912	0	291289	0	0	24
124765	9.38400000000000034	0	291321	0	0	24
124766	9.38499999999999979	0	291353	0	0	24
124767	9.38599999999999923	0	291385	0	0	24
124768	9.38700000000000045	0	291417	0	0	24
124769	9.3879999999999999	0	291449	0	0	24
124770	9.38899999999999935	0	291481	0	0	24
124771	9.39000000000000057	0	291511	0	0	24
124772	9.39100000000000001	0	291543	0	0	24
124773	9.39199999999999946	0	291575	0	0	24
124774	9.39300000000000068	0	291607	0	0	24
124775	9.39400000000000013	0	291639	0	0	24
124776	9.39499999999999957	0	291671	0	0	24
124777	9.3960000000000008	0	291703	0	0	24
124778	9.39700000000000024	0	291735	0	0	24
124779	9.39799999999999969	0	291767	0	0	24
124780	9.39899999999999913	0	291799	0	0	24
124781	9.40000000000000036	0	291828	0	0	24
124782	9.4009999999999998	0	291860	0	0	24
124783	9.40199999999999925	0	291892	0	0	24
124784	9.40300000000000047	0	291924	0	0	24
124785	9.40399999999999991	0	291956	0	0	24
124786	9.40499999999999936	0	291988	0	0	24
124787	9.40600000000000058	0	292020	0	0	24
124788	9.40700000000000003	0	292052	0	0	24
124789	9.40799999999999947	0	292084	0	0	24
124790	9.4090000000000007	0	292116	0	0	24
124791	9.41000000000000014	0	292146	0	0	24
124792	9.41099999999999959	0	292178	0	0	24
124793	9.41200000000000081	0	292210	0	0	24
124794	9.41300000000000026	0	292242	0	0	24
124795	9.4139999999999997	0	292274	0	0	24
124796	9.41499999999999915	0	292306	0	0	24
124797	9.41600000000000037	0	292338	0	0	24
124798	9.41699999999999982	0	292370	0	0	24
124799	9.41799999999999926	0	292402	0	0	24
124800	9.41900000000000048	0	292434	0	0	24
124801	9.41999999999999993	0	292464	0	0	24
124802	9.42099999999999937	0	292496	0	0	24
124803	9.4220000000000006	0	292528	0	0	24
124804	9.42300000000000004	0	292560	0	0	24
124805	9.42399999999999949	0	292592	0	0	24
124806	9.42500000000000071	0	292624	0	0	24
124807	9.42600000000000016	0	292656	0	0	24
124808	9.4269999999999996	0	292688	0	0	24
124809	9.42800000000000082	0	292720	0	0	24
124810	9.42900000000000027	0	292752	0	0	24
124811	9.42999999999999972	0	292782	0	0	24
124812	9.43099999999999916	0	292814	0	0	24
124813	9.43200000000000038	0	292846	0	0	24
124814	9.43299999999999983	0	292878	0	0	24
124815	9.43399999999999928	0	292910	0	0	24
124816	9.4350000000000005	0	292942	0	0	24
124817	9.43599999999999994	0	292974	0	0	24
124818	9.43699999999999939	0	293006	0	0	24
124819	9.43800000000000061	0	293038	0	0	24
124820	9.43900000000000006	0	293070	0	0	24
124821	9.4399999999999995	0	293100	0	0	24
124822	9.44100000000000072	0	293132	0	0	24
124823	9.44200000000000017	0	293164	0	0	24
124824	9.44299999999999962	0	293196	0	0	24
124825	9.44400000000000084	0	293228	0	0	24
124826	9.44500000000000028	0	293260	0	0	24
124827	9.44599999999999973	0	293292	0	0	24
124828	9.44699999999999918	0	293324	0	0	24
124829	9.4480000000000004	0	293356	0	0	24
124830	9.44899999999999984	0	293388	0	0	24
124831	9.44999999999999929	0	293417	0	0	24
124832	9.45100000000000051	0	293449	0	0	24
124833	9.45199999999999996	0	293481	0	0	24
124834	9.4529999999999994	0	293513	0	0	24
124835	9.45400000000000063	0	293545	0	0	24
124836	9.45500000000000007	0	293577	0	0	24
124837	9.45599999999999952	0	293609	0	0	24
124838	9.45700000000000074	0	293641	0	0	24
124839	9.45800000000000018	0	293673	0	0	24
124840	9.45899999999999963	0	293705	0	0	24
124841	9.46000000000000085	0	293735	0	0	24
124842	9.4610000000000003	0	293767	0	0	24
124843	9.46199999999999974	0	293799	0	0	24
124844	9.46299999999999919	0	293831	0	0	24
124845	9.46400000000000041	0	293863	0	0	24
124846	9.46499999999999986	0	293895	0	0	24
124847	9.4659999999999993	0	293927	0	0	24
124848	9.46700000000000053	0	293959	0	0	24
124849	9.46799999999999997	0	293991	0	0	24
124850	9.46899999999999942	0	294023	0	0	24
124851	9.47000000000000064	0	294053	0	0	24
124852	9.47100000000000009	0	294085	0	0	24
124853	9.47199999999999953	0	294117	0	0	24
124854	9.47300000000000075	0	294149	0	0	24
124855	9.4740000000000002	0	294181	0	0	24
124856	9.47499999999999964	0	294213	0	0	24
124857	9.47600000000000087	0	294245	0	0	24
124858	9.47700000000000031	0	294277	0	0	24
124859	9.47799999999999976	0	294309	0	0	24
124860	9.4789999999999992	0	294341	0	0	24
124861	9.48000000000000043	0	294371	0	0	24
124862	9.48099999999999987	0	294403	0	0	24
124863	9.48199999999999932	0	294435	0	0	24
124864	9.48300000000000054	0	294467	0	0	24
124865	9.48399999999999999	0	294499	0	0	24
124866	9.48499999999999943	0	294531	0	0	24
124867	9.48600000000000065	0	294563	0	0	24
124868	9.4870000000000001	0	294595	0	0	24
124869	9.48799999999999955	0	294627	0	0	24
124870	9.48900000000000077	0	294659	0	0	24
124871	9.49000000000000021	0	294689	0	0	24
124872	9.49099999999999966	0	294721	0	0	24
124873	9.49200000000000088	0	294753	0	0	24
124874	9.49300000000000033	0	294785	0	0	24
124875	9.49399999999999977	0	294817	0	0	24
124876	9.49499999999999922	0	294849	0	0	24
124877	9.49600000000000044	0	294881	0	0	24
124878	9.49699999999999989	0	294913	0	0	24
124879	9.49799999999999933	0	294945	0	0	24
124880	9.49900000000000055	0	294977	0	0	24
124881	9.5	0	295006	0	0	24
124882	9.50099999999999945	0	295038	0	0	24
124883	9.50200000000000067	0	295070	0	0	24
124884	9.50300000000000011	0	295102	0	0	24
124885	9.50399999999999956	0	295134	0	0	24
124886	9.50500000000000078	0	295166	0	0	24
124887	9.50600000000000023	0	295198	0	0	24
124888	9.50699999999999967	0	295230	0	0	24
124889	9.50799999999999912	0	295262	0	0	24
124890	9.50900000000000034	0	295294	0	0	24
124891	9.50999999999999979	0	295324	0	0	24
124892	9.51099999999999923	0	295356	0	0	24
124893	9.51200000000000045	0	295388	0	0	24
124894	9.5129999999999999	0	295420	0	0	24
124895	9.51399999999999935	0	295452	0	0	24
124896	9.51500000000000057	0	295484	0	0	24
124897	9.51600000000000001	0	295516	0	0	24
124898	9.51699999999999946	0	295548	0	0	24
124899	9.51800000000000068	0	295580	0	0	24
124900	9.51900000000000013	0	295612	0	0	24
124901	9.51999999999999957	0	295642	0	0	24
124902	9.5210000000000008	0	295674	0	0	24
124903	9.52200000000000024	0	295706	0	0	24
124904	9.52299999999999969	0	295738	0	0	24
124905	9.52399999999999913	0	295770	0	0	24
124906	9.52500000000000036	0	295802	0	0	24
124907	9.5259999999999998	0	295834	0	0	24
124908	9.52699999999999925	0	295866	0	0	24
124909	9.52800000000000047	0	295898	0	0	24
124910	9.52899999999999991	0	295930	0	0	24
124911	9.52999999999999936	0	295960	0	0	24
124912	9.53100000000000058	0	295992	0	0	24
124913	9.53200000000000003	0	296024	0	0	24
124914	9.53299999999999947	0	296056	0	0	24
124915	9.5340000000000007	0	296088	0	0	24
124916	9.53500000000000014	0	296120	0	0	24
124917	9.53599999999999959	0	296152	0	0	24
124918	9.53700000000000081	0	296184	0	0	24
124919	9.53800000000000026	0	296216	0	0	24
124920	9.5389999999999997	0	296248	0	0	24
124921	9.53999999999999915	0	296278	0	0	24
124922	9.54100000000000037	0	296310	0	0	24
124923	9.54199999999999982	0	296342	0	0	24
124924	9.54299999999999926	0	296374	0	0	24
124925	9.54400000000000048	0	296406	0	0	24
124926	9.54499999999999993	0	296438	0	0	24
124927	9.54599999999999937	0	296470	0	0	24
124928	9.5470000000000006	0	296502	0	0	24
124929	9.54800000000000004	0	296534	0	0	24
124930	9.54899999999999949	0	296566	0	0	24
124931	9.55000000000000071	0	296595	0	0	24
124932	9.55100000000000016	0	296627	0	0	24
124933	9.5519999999999996	0	296659	0	0	24
124934	9.55300000000000082	0	296691	0	0	24
124935	9.55400000000000027	0	296723	0	0	24
124936	9.55499999999999972	0	296755	0	0	24
124937	9.55599999999999916	0	296787	0	0	24
124938	9.55700000000000038	0	296819	0	0	24
124939	9.55799999999999983	0	296851	0	0	24
124940	9.55899999999999928	0	296883	0	0	24
124941	9.5600000000000005	0	296913	0	0	24
124942	9.56099999999999994	0	296945	0	0	24
124943	9.56199999999999939	0	296977	0	0	24
124944	9.56300000000000061	0	297009	0	0	24
124945	9.56400000000000006	0	297041	0	0	24
124946	9.5649999999999995	0	297073	0	0	24
124947	9.56600000000000072	0	297105	0	0	24
124948	9.56700000000000017	0	297137	0	0	24
124949	9.56799999999999962	0	297169	0	0	24
124950	9.56900000000000084	0	297201	0	0	24
124951	9.57000000000000028	0	297231	0	0	24
124952	9.57099999999999973	0	297263	0	0	24
124953	9.57199999999999918	0	297295	0	0	24
124954	9.5730000000000004	0	297327	0	0	24
124955	9.57399999999999984	0	297359	0	0	24
124956	9.57499999999999929	0	297391	0	0	24
124957	9.57600000000000051	0	297423	0	0	24
124958	9.57699999999999996	0	297455	0	0	24
124959	9.5779999999999994	0	297487	0	0	24
124960	9.57900000000000063	0	297519	0	0	24
124961	9.58000000000000007	0	297549	0	0	24
124962	9.58099999999999952	0	297581	0	0	24
124963	9.58200000000000074	0	297613	0	0	24
124964	9.58300000000000018	0	297645	0	0	24
124965	9.58399999999999963	0	297677	0	0	24
124966	9.58500000000000085	0	297709	0	0	24
124967	9.5860000000000003	0	297741	0	0	24
124968	9.58699999999999974	0	297773	0	0	24
124969	9.58799999999999919	0	297805	0	0	24
124970	9.58900000000000041	0	297837	0	0	24
124971	9.58999999999999986	0	297867	0	0	24
124972	9.5909999999999993	0	297899	0	0	24
124973	9.59200000000000053	0	297931	0	0	24
124974	9.59299999999999997	0	297963	0	0	24
124975	9.59399999999999942	0	297995	0	0	24
124976	9.59500000000000064	0	298027	0	0	24
124977	9.59600000000000009	0	298059	0	0	24
124978	9.59699999999999953	0	298091	0	0	24
124979	9.59800000000000075	0	298123	0	0	24
124980	9.5990000000000002	0	298155	0	0	24
124981	9.59999999999999964	0	298184	0	0	24
124982	9.60100000000000087	0	298216	0	0	24
124983	9.60200000000000031	0	298248	0	0	24
124984	9.60299999999999976	0	298280	0	0	24
124985	9.6039999999999992	0	298312	0	0	24
124986	9.60500000000000043	0	298344	0	0	24
124987	9.60599999999999987	0	298376	0	0	24
124988	9.60699999999999932	0	298408	0	0	24
124989	9.60800000000000054	0	298440	0	0	24
124990	9.60899999999999999	0	298472	0	0	24
124991	9.60999999999999943	0	298502	0	0	24
124992	9.61100000000000065	0	298534	0	0	24
124993	9.6120000000000001	0	298566	0	0	24
124994	9.61299999999999955	0	298598	0	0	24
124995	9.61400000000000077	0	298630	0	0	24
124996	9.61500000000000021	0	298662	0	0	24
124997	9.61599999999999966	0	298694	0	0	24
124998	9.61700000000000088	0	298726	0	0	24
124999	9.61800000000000033	0	298758	0	0	24
125000	9.61899999999999977	0	298790	0	0	24
125001	9.61999999999999922	0	298820	0	0	24
125002	9.62100000000000044	0	298852	0	0	24
125003	9.62199999999999989	0	298884	0	0	24
125004	9.62299999999999933	0	298916	0	0	24
125005	9.62400000000000055	0	298948	0	0	24
125006	9.625	0	298980	0	0	24
125007	9.62599999999999945	0	299012	0	0	24
125008	9.62700000000000067	0	299044	0	0	24
125009	9.62800000000000011	0	299076	0	0	24
125010	9.62899999999999956	0	299108	0	0	24
125011	9.63000000000000078	0	299138	0	0	24
125012	9.63100000000000023	0	299170	0	0	24
125013	9.63199999999999967	0	299202	0	0	24
125014	9.63299999999999912	0	299234	0	0	24
125015	9.63400000000000034	0	299266	0	0	24
125016	9.63499999999999979	0	299298	0	0	24
125017	9.63599999999999923	0	299330	0	0	24
125018	9.63700000000000045	0	299362	0	0	24
125019	9.6379999999999999	0	299394	0	0	24
125020	9.63899999999999935	0	299426	0	0	24
125021	9.64000000000000057	0	299456	0	0	24
125022	9.64100000000000001	0	299488	0	0	24
125023	9.64199999999999946	0	299520	0	0	24
125024	9.64300000000000068	0	299552	0	0	24
125025	9.64400000000000013	0	299584	0	0	24
125026	9.64499999999999957	0	299616	0	0	24
125027	9.6460000000000008	0	299648	0	0	24
125028	9.64700000000000024	0	299680	0	0	24
125029	9.64799999999999969	0	299712	0	0	24
125030	9.64899999999999913	0	299744	0	0	24
125031	9.65000000000000036	0	299773	0	0	24
125032	9.6509999999999998	0	299805	0	0	24
125033	9.65199999999999925	0	299837	0	0	24
125034	9.65300000000000047	0	299869	0	0	24
125035	9.65399999999999991	0	299901	0	0	24
125036	9.65499999999999936	0	299933	0	0	24
125037	9.65600000000000058	0	299965	0	0	24
125038	9.65700000000000003	0	299997	0	0	24
125039	9.65799999999999947	0	300029	0	0	24
125040	9.6590000000000007	0	300061	0	0	24
125041	9.66000000000000014	0	300091	0	0	24
125042	9.66099999999999959	0	300123	0	0	24
125043	9.66200000000000081	0	300155	0	0	24
125044	9.66300000000000026	0	300187	0	0	24
125045	9.6639999999999997	0	300219	0	0	24
125046	9.66499999999999915	0	300251	0	0	24
125047	9.66600000000000037	0	300283	0	0	24
125048	9.66699999999999982	0	300315	0	0	24
125049	9.66799999999999926	0	300347	0	0	24
125050	9.66900000000000048	0	300379	0	0	24
125051	9.66999999999999993	0	300409	0	0	24
125052	9.67099999999999937	0	300441	0	0	24
125053	9.6720000000000006	0	300473	0	0	24
125054	9.67300000000000004	0	300505	0	0	24
125055	9.67399999999999949	0	300537	0	0	24
125056	9.67500000000000071	0	300569	0	0	24
125057	9.67600000000000016	0	300601	0	0	24
125058	9.6769999999999996	0	300633	0	0	24
125059	9.67800000000000082	0	300665	0	0	24
125060	9.67900000000000027	0	300697	0	0	24
125061	9.67999999999999972	0	300727	0	0	24
125062	9.68099999999999916	0	300759	0	0	24
125063	9.68200000000000038	0	300791	0	0	24
125064	9.68299999999999983	0	300823	0	0	24
125065	9.68399999999999928	0	300855	0	0	24
125066	9.6850000000000005	0	300887	0	0	24
125067	9.68599999999999994	0	300919	0	0	24
125068	9.68699999999999939	0	300951	0	0	24
125069	9.68800000000000061	0	300983	0	0	24
125070	9.68900000000000006	0	301015	0	0	24
125071	9.6899999999999995	0	301045	0	0	24
125072	9.69100000000000072	0	301077	0	0	24
125073	9.69200000000000017	0	301109	0	0	24
125074	9.69299999999999962	0	301141	0	0	24
125075	9.69400000000000084	0	301173	0	0	24
125076	9.69500000000000028	0	301205	0	0	24
125077	9.69599999999999973	0	301237	0	0	24
125078	9.69699999999999918	0	301269	0	0	24
125079	9.6980000000000004	0	301301	0	0	24
125080	9.69899999999999984	0	301333	0	0	24
125081	9.69999999999999929	0	301362	0	0	24
125082	9.70100000000000051	0	301394	0	0	24
125083	9.70199999999999996	0	301426	0	0	24
125084	9.7029999999999994	0	301458	0	0	24
125085	9.70400000000000063	0	301490	0	0	24
125086	9.70500000000000007	0	301522	0	0	24
125087	9.70599999999999952	0	301554	0	0	24
125088	9.70700000000000074	0	301586	0	0	24
125089	9.70800000000000018	0	301618	0	0	24
125090	9.70899999999999963	0	301650	0	0	24
125091	9.71000000000000085	0	301680	0	0	24
125092	9.7110000000000003	0	301712	0	0	24
125093	9.71199999999999974	0	301744	0	0	24
125094	9.71299999999999919	0	301776	0	0	24
125095	9.71400000000000041	0	301808	0	0	24
125096	9.71499999999999986	0	301840	0	0	24
125097	9.7159999999999993	0	301872	0	0	24
125098	9.71700000000000053	0	301904	0	0	24
125099	9.71799999999999997	0	301936	0	0	24
125100	9.71899999999999942	0	301968	0	0	24
125101	9.72000000000000064	0	301998	0	0	24
125102	9.72100000000000009	0	302030	0	0	24
125103	9.72199999999999953	0	302062	0	0	24
125104	9.72300000000000075	0	302094	0	0	24
125105	9.7240000000000002	0	302126	0	0	24
125106	9.72499999999999964	0	302158	0	0	24
125107	9.72600000000000087	0	302190	0	0	24
125108	9.72700000000000031	0	302222	0	0	24
125109	9.72799999999999976	0	302254	0	0	24
125110	9.7289999999999992	0	302286	0	0	24
125111	9.73000000000000043	0	302316	0	0	24
125112	9.73099999999999987	0	302348	0	0	24
125113	9.73199999999999932	0	302380	0	0	24
125114	9.73300000000000054	0	302412	0	0	24
125115	9.73399999999999999	0	302444	0	0	24
125116	9.73499999999999943	0	302476	0	0	24
125117	9.73600000000000065	0	302508	0	0	24
125118	9.7370000000000001	0	302540	0	0	24
125119	9.73799999999999955	0	302572	0	0	24
125120	9.73900000000000077	0	302604	0	0	24
125121	9.74000000000000021	0	302634	0	0	24
125122	9.74099999999999966	0	302666	0	0	24
125123	9.74200000000000088	0	302698	0	0	24
125124	9.74300000000000033	0	302730	0	0	24
125125	9.74399999999999977	0	302762	0	0	24
125126	9.74499999999999922	0	302794	0	0	24
125127	9.74600000000000044	0	302826	0	0	24
125128	9.74699999999999989	0	302858	0	0	24
125129	9.74799999999999933	0	302890	0	0	24
125130	9.74900000000000055	0	302922	0	0	24
125131	9.75	0	302951	0	0	24
125132	9.75099999999999945	0	302983	0	0	24
125133	9.75200000000000067	0	303015	0	0	24
125134	9.75300000000000011	0	303047	0	0	24
125135	9.75399999999999956	0	303079	0	0	24
125136	9.75500000000000078	0	303111	0	0	24
125137	9.75600000000000023	0	303143	0	0	24
125138	9.75699999999999967	0	303175	0	0	24
125139	9.75799999999999912	0	303207	0	0	24
125140	9.75900000000000034	0	303239	0	0	24
125141	9.75999999999999979	0	303269	0	0	24
125142	9.76099999999999923	0	303301	0	0	24
125143	9.76200000000000045	0	303333	0	0	24
125144	9.7629999999999999	0	303365	0	0	24
125145	9.76399999999999935	0	303397	0	0	24
125146	9.76500000000000057	0	303429	0	0	24
125147	9.76600000000000001	0	303461	0	0	24
125148	9.76699999999999946	0	303493	0	0	24
125149	9.76800000000000068	0	303525	0	0	24
125150	9.76900000000000013	0	303557	0	0	24
125151	9.76999999999999957	0	303587	0	0	24
125152	9.7710000000000008	0	303619	0	0	24
125153	9.77200000000000024	0	303651	0	0	24
125154	9.77299999999999969	0	303683	0	0	24
125155	9.77399999999999913	0	303715	0	0	24
125156	9.77500000000000036	0	303747	0	0	24
125157	9.7759999999999998	0	303779	0	0	24
125158	9.77699999999999925	0	303811	0	0	24
125159	9.77800000000000047	0	303843	0	0	24
125160	9.77899999999999991	0	303875	0	0	24
125161	9.77999999999999936	0	303905	0	0	24
125162	9.78100000000000058	0	303937	0	0	24
125163	9.78200000000000003	0	303969	0	0	24
125164	9.78299999999999947	0	304001	0	0	24
125165	9.7840000000000007	0	304033	0	0	24
125166	9.78500000000000014	0	304065	0	0	24
125167	9.78599999999999959	0	304097	0	0	24
125168	9.78700000000000081	0	304129	0	0	24
125169	9.78800000000000026	0	304161	0	0	24
125170	9.7889999999999997	0	304193	0	0	24
125171	9.78999999999999915	0	304223	0	0	24
125172	9.79100000000000037	0	304255	0	0	24
125173	9.79199999999999982	0	304287	0	0	24
125174	9.79299999999999926	0	304319	0	0	24
125175	9.79400000000000048	0	304351	0	0	24
125176	9.79499999999999993	0	304383	0	0	24
125177	9.79599999999999937	0	304415	0	0	24
125178	9.7970000000000006	0	304447	0	0	24
125179	9.79800000000000004	0	304479	0	0	24
125180	9.79899999999999949	0	304511	0	0	24
125181	9.80000000000000071	0	304540	0	0	24
125182	9.80100000000000016	0	304572	0	0	24
125183	9.8019999999999996	0	304604	0	0	24
125184	9.80300000000000082	0	304636	0	0	24
125185	9.80400000000000027	0	304668	0	0	24
125186	9.80499999999999972	0	304700	0	0	24
125187	9.80599999999999916	0	304732	0	0	24
125188	9.80700000000000038	0	304764	0	0	24
125189	9.80799999999999983	0	304796	0	0	24
125190	9.80899999999999928	0	304828	0	0	24
125191	9.8100000000000005	0	304858	0	0	24
125192	9.81099999999999994	0	304890	0	0	24
125193	9.81199999999999939	0	304922	0	0	24
125194	9.81300000000000061	0	304954	0	0	24
125195	9.81400000000000006	0	304986	0	0	24
125196	9.8149999999999995	0	305018	0	0	24
125197	9.81600000000000072	0	305050	0	0	24
125198	9.81700000000000017	0	305082	0	0	24
125199	9.81799999999999962	0	305114	0	0	24
125200	9.81900000000000084	0	305146	0	0	24
125201	9.82000000000000028	0	305176	0	0	24
125202	9.82099999999999973	0	305208	0	0	24
125203	9.82199999999999918	0	305240	0	0	24
125204	9.8230000000000004	0	305272	0	0	24
125205	9.82399999999999984	0	305304	0	0	24
125206	9.82499999999999929	0	305336	0	0	24
125207	9.82600000000000051	0	305368	0	0	24
125208	9.82699999999999996	0	305400	0	0	24
125209	9.8279999999999994	0	305432	0	0	24
125210	9.82900000000000063	0	305464	0	0	24
125211	9.83000000000000007	0	305494	0	0	24
125212	9.83099999999999952	0	305526	0	0	24
125213	9.83200000000000074	0	305558	0	0	24
125214	9.83300000000000018	0	305590	0	0	24
125215	9.83399999999999963	0	305622	0	0	24
125216	9.83500000000000085	0	305654	0	0	24
125217	9.8360000000000003	0	305686	0	0	24
125218	9.83699999999999974	0	305718	0	0	24
125219	9.83799999999999919	0	305750	0	0	24
125220	9.83900000000000041	0	305782	0	0	24
125221	9.83999999999999986	0	305812	0	0	24
125222	9.8409999999999993	0	305844	0	0	24
125223	9.84200000000000053	0	305876	0	0	24
125224	9.84299999999999997	0	305908	0	0	24
125225	9.84399999999999942	0	305940	0	0	24
125226	9.84500000000000064	0	305972	0	0	24
125227	9.84600000000000009	0	306004	0	0	24
125228	9.84699999999999953	0	306036	0	0	24
125229	9.84800000000000075	0	306068	0	0	24
125230	9.8490000000000002	0	306100	0	0	24
125231	9.84999999999999964	0	304540	0	0	24
125232	9.85100000000000087	0	306161	0	0	24
125233	9.85200000000000031	0	306193	0	0	24
125234	9.85299999999999976	0	306225	0	0	24
125235	9.8539999999999992	0	306257	0	0	24
125236	9.85500000000000043	0	306289	0	0	24
125237	9.85599999999999987	0	306321	0	0	24
125238	9.85699999999999932	0	306353	0	0	24
125239	9.85800000000000054	0	306385	0	0	24
125240	9.85899999999999999	0	306417	0	0	24
125241	9.85999999999999943	0	306447	0	0	24
125242	9.86100000000000065	0	306479	0	0	24
125243	9.8620000000000001	0	306511	0	0	24
125244	9.86299999999999955	0	306543	0	0	24
125245	9.86400000000000077	0	306575	0	0	24
125246	9.86500000000000021	0	306607	0	0	24
125247	9.86599999999999966	0	306639	0	0	24
125248	9.86700000000000088	0	306671	0	0	24
125249	9.86800000000000033	0	306703	0	0	24
125250	9.86899999999999977	0	306735	0	0	24
125251	9.86999999999999922	0	306765	0	0	24
125252	9.87100000000000044	0	306797	0	0	24
125253	9.87199999999999989	0	306829	0	0	24
125254	9.87299999999999933	0	306861	0	0	24
125255	9.87400000000000055	0	306893	0	0	24
125256	9.875	0	306925	0	0	24
125257	9.87599999999999945	0	306957	0	0	24
125258	9.87700000000000067	0	306989	0	0	24
125259	9.87800000000000011	0	307021	0	0	24
125260	9.87899999999999956	0	307053	0	0	24
125261	9.88000000000000078	0	307083	0	0	24
125262	9.88100000000000023	0	307115	0	0	24
125263	9.88199999999999967	0	307147	0	0	24
125264	9.88299999999999912	0	307179	0	0	24
125265	9.88400000000000034	0	307211	0	0	24
125266	9.88499999999999979	0	307243	0	0	24
125267	9.88599999999999923	0	307275	0	0	24
125268	9.88700000000000045	0	307307	0	0	24
125269	9.8879999999999999	0	307339	0	0	24
125270	9.88899999999999935	0	307371	0	0	24
125271	9.89000000000000057	0	307401	0	0	24
125272	9.89100000000000001	0	307433	0	0	24
125273	9.89199999999999946	0	307465	0	0	24
125274	9.89300000000000068	0	307497	0	0	24
125275	9.89400000000000013	0	307529	0	0	24
125276	9.89499999999999957	0	307561	0	0	24
125277	9.8960000000000008	0	307593	0	0	24
125278	9.89700000000000024	0	307625	0	0	24
125279	9.89799999999999969	0	307657	0	0	24
125280	9.89899999999999913	0	307689	0	0	24
125281	9.90000000000000036	0	307719	0	0	24
125282	9.9009999999999998	0	307750	0	0	24
125283	9.90199999999999925	0	307782	0	0	24
125284	9.90300000000000047	0	307814	0	0	24
125285	9.90399999999999991	0	307846	0	0	24
125286	9.90499999999999936	0	307878	0	0	24
125287	9.90600000000000058	0	307910	0	0	24
125288	9.90700000000000003	0	307942	0	0	24
125289	9.90799999999999947	0	307974	0	0	24
125290	9.9090000000000007	0	308006	0	0	24
125291	9.91000000000000014	0	308036	0	0	24
125292	9.91099999999999959	0	308068	0	0	24
125293	9.91200000000000081	0	308100	0	0	24
125294	9.91300000000000026	0	308132	0	0	24
125295	9.9139999999999997	0	308164	0	0	24
125296	9.91499999999999915	0	308196	0	0	24
125297	9.91600000000000037	0	308228	0	0	24
125298	9.91699999999999982	0	308260	0	0	24
125299	9.91799999999999926	0	308292	0	0	24
125300	9.91900000000000048	0	308324	0	0	24
125301	9.91999999999999993	0	308354	0	0	24
125302	9.92099999999999937	0	308386	0	0	24
125303	9.9220000000000006	0	308418	0	0	24
125304	9.92300000000000004	0	308450	0	0	24
125305	9.92399999999999949	0	308482	0	0	24
125306	9.92500000000000071	0	308514	0	0	24
125307	9.92600000000000016	0	308546	0	0	24
125308	9.9269999999999996	0	308578	0	0	24
125309	9.92800000000000082	0	308610	0	0	24
125310	9.92900000000000027	0	308642	0	0	24
125311	9.92999999999999972	0	308672	0	0	24
125312	9.93099999999999916	0	308704	0	0	24
125313	9.93200000000000038	0	308736	0	0	24
125314	9.93299999999999983	0	308768	0	0	24
125315	9.93399999999999928	0	308800	0	0	24
125316	9.9350000000000005	0	308832	0	0	24
125317	9.93599999999999994	0	308864	0	0	24
125318	9.93699999999999939	0	308896	0	0	24
125319	9.93800000000000061	0	308928	0	0	24
125320	9.93900000000000006	0	308960	0	0	24
125321	9.9399999999999995	0	308990	0	0	24
125322	9.94100000000000072	0	309022	0	0	24
125323	9.94200000000000017	0	309054	0	0	24
125324	9.94299999999999962	0	309086	0	0	24
125325	9.94400000000000084	0	309118	0	0	24
125326	9.94500000000000028	0	309150	0	0	24
125327	9.94599999999999973	0	309182	0	0	24
125328	9.94699999999999918	0	309214	0	0	24
125329	9.9480000000000004	0	309246	0	0	24
125330	9.94899999999999984	0	309278	0	0	24
125331	9.94999999999999929	0	309308	0	0	24
125332	9.95100000000000051	0	309339	0	0	24
125333	9.95199999999999996	0	309371	0	0	24
125334	9.9529999999999994	0	309403	0	0	24
125335	9.95400000000000063	0	309435	0	0	24
125336	9.95500000000000007	0	309467	0	0	24
125337	9.95599999999999952	0	309499	0	0	24
125338	9.95700000000000074	0	309531	0	0	24
125339	9.95800000000000018	0	309563	0	0	24
125340	9.95899999999999963	0	309595	0	0	24
125341	9.96000000000000085	0	309625	0	0	24
125342	9.9610000000000003	0	309657	0	0	24
125343	9.96199999999999974	0	309689	0	0	24
125344	9.96299999999999919	0	309721	0	0	24
125345	9.96400000000000041	0	309753	0	0	24
125346	9.96499999999999986	0	309785	0	0	24
125347	9.9659999999999993	0	309817	0	0	24
125348	9.96700000000000053	0	309849	0	0	24
125349	9.96799999999999997	0	309881	0	0	24
125350	9.96899999999999942	0	309913	0	0	24
125351	9.97000000000000064	0	309943	0	0	24
125352	9.97100000000000009	0	309975	0	0	24
125353	9.97199999999999953	0	310007	0	0	24
125354	9.97300000000000075	0	310039	0	0	24
125355	9.9740000000000002	0	310071	0	0	24
125356	9.97499999999999964	0	310103	0	0	24
125357	9.97600000000000087	0	310135	0	0	24
125358	9.97700000000000031	0	310167	0	0	24
125359	9.97799999999999976	0	310199	0	0	24
125360	9.9789999999999992	0	310231	0	0	24
125361	9.98000000000000043	0	310261	0	0	24
125362	9.98099999999999987	0	310293	0	0	24
125363	9.98199999999999932	0	310325	0	0	24
125364	9.98300000000000054	0	310357	0	0	24
125365	9.98399999999999999	0	310389	0	0	24
125366	9.98499999999999943	0	310421	0	0	24
125367	9.98600000000000065	0	310453	0	0	24
125368	9.9870000000000001	0	310485	0	0	24
125369	9.98799999999999955	0	310517	0	0	24
125370	9.98900000000000077	0	310549	0	0	24
125371	9.99000000000000021	0	310579	0	0	24
125372	9.99099999999999966	0	310611	0	0	24
125373	9.99200000000000088	0	310643	0	0	24
125374	9.99300000000000033	0	310675	0	0	24
125375	9.99399999999999977	0	310707	0	0	24
125376	9.99499999999999922	0	310739	0	0	24
125377	9.99600000000000044	0	310771	0	0	24
125378	9.99699999999999989	0	310803	0	0	24
125379	9.99799999999999933	0	310835	0	0	24
125380	9.99900000000000055	0	310867	0	0	24
125381	10	0	310897	0	0	24
125382	10.0009999999999994	0	310928	0	0	24
125383	10.0020000000000007	0	310960	0	0	24
125384	10.0030000000000001	0	310992	0	0	24
125385	10.0039999999999996	0	311024	0	0	24
125386	10.0050000000000008	0	311056	0	0	24
125387	10.0060000000000002	0	311088	0	0	24
125388	10.0069999999999997	0	311120	0	0	24
125389	10.0079999999999991	0	311152	0	0	24
125390	10.0090000000000003	0	311184	0	0	24
125391	10.0099999999999998	0	311214	0	0	24
125392	10.0109999999999992	0	311246	0	0	24
125393	10.0120000000000005	0	311278	0	0	24
125394	10.0129999999999999	0	311310	0	0	24
125395	10.0139999999999993	0	311342	0	0	24
125396	10.0150000000000006	0	311374	0	0	24
125397	10.016	0	311406	0	0	24
125398	10.0169999999999995	0	311438	0	0	24
125399	10.0180000000000007	0	311470	0	0	24
125400	10.0190000000000001	0	311502	0	0	24
125401	10.0199999999999996	0	311532	0	0	24
125402	10.0210000000000008	0	311564	0	0	24
125403	10.0220000000000002	0	311596	0	0	24
125404	10.0229999999999997	0	311628	0	0	24
125405	10.0239999999999991	0	311660	0	0	24
125406	10.0250000000000004	0	311692	0	0	24
125407	10.0259999999999998	0	311724	0	0	24
125408	10.0269999999999992	0	311756	0	0	24
125409	10.0280000000000005	0	311788	0	0	24
125410	10.0289999999999999	0	311820	0	0	24
125411	10.0299999999999994	0	311850	0	0	24
125412	10.0310000000000006	0	311882	0	0	24
125413	10.032	0	311914	0	0	24
125414	10.0329999999999995	0	311946	0	0	24
125415	10.0340000000000007	0	311978	0	0	24
125416	10.0350000000000001	0	312010	0	0	24
125417	10.0359999999999996	0	312042	0	0	24
125418	10.0370000000000008	0	312074	0	0	24
125419	10.0380000000000003	0	312106	0	0	24
125420	10.0389999999999997	0	312138	0	0	24
125421	10.0399999999999991	0	312168	0	0	24
125422	10.0410000000000004	0	312200	0	0	24
125423	10.0419999999999998	0	312232	0	0	24
125424	10.0429999999999993	0	312264	0	0	24
125425	10.0440000000000005	0	312296	0	0	24
125426	10.0449999999999999	0	312328	0	0	24
125427	10.0459999999999994	0	312360	0	0	24
125428	10.0470000000000006	0	312392	0	0	24
125429	10.048	0	312424	0	0	24
125430	10.0489999999999995	0	312456	0	0	24
125431	10.0500000000000007	0	312486	0	0	24
125432	10.0510000000000002	0	312517	0	0	24
125433	10.0519999999999996	0	312549	0	0	24
125434	10.0530000000000008	0	312581	0	0	24
125435	10.0540000000000003	0	312613	0	0	24
125436	10.0549999999999997	0	312645	0	0	24
125437	10.0559999999999992	0	312677	0	0	24
125438	10.0570000000000004	0	312709	0	0	24
125439	10.0579999999999998	0	312741	0	0	24
125440	10.0589999999999993	0	312773	0	0	24
125441	10.0600000000000005	0	312803	0	0	24
125442	10.0609999999999999	0	312835	0	0	24
125443	10.0619999999999994	0	312867	0	0	24
125444	10.0630000000000006	0	312899	0	0	24
125445	10.0640000000000001	0	312931	0	0	24
125446	10.0649999999999995	0	312963	0	0	24
125447	10.0660000000000007	0	312995	0	0	24
125448	10.0670000000000002	0	313027	0	0	24
125449	10.0679999999999996	0	313059	0	0	24
125450	10.0690000000000008	0	313091	0	0	24
125451	10.0700000000000003	0	313121	0	0	24
125452	10.0709999999999997	0	313153	0	0	24
125453	10.0719999999999992	0	313185	0	0	24
125454	10.0730000000000004	0	313217	0	0	24
125455	10.0739999999999998	0	313249	0	0	24
125456	10.0749999999999993	0	313281	0	0	24
125457	10.0760000000000005	0	313313	0	0	24
125458	10.077	0	313345	0	0	24
125459	10.0779999999999994	0	313377	0	0	24
125460	10.0790000000000006	0	313409	0	0	24
125461	10.0800000000000001	0	313439	0	0	24
125462	10.0809999999999995	0	313471	0	0	24
125463	10.0820000000000007	0	313503	0	0	24
125464	10.0830000000000002	0	313535	0	0	24
125465	10.0839999999999996	0	313567	0	0	24
125466	10.0850000000000009	0	313599	0	0	24
125467	10.0860000000000003	0	313631	0	0	24
125468	10.0869999999999997	0	313663	0	0	24
125469	10.0879999999999992	0	313695	0	0	24
125470	10.0890000000000004	0	313727	0	0	24
125471	10.0899999999999999	0	313757	0	0	24
125472	10.0909999999999993	0	313789	0	0	24
125473	10.0920000000000005	0	313821	0	0	24
125474	10.093	0	313853	0	0	24
125475	10.0939999999999994	0	313885	0	0	24
125476	10.0950000000000006	0	313917	0	0	24
125477	10.0960000000000001	0	313949	0	0	24
125478	10.0969999999999995	0	313981	0	0	24
125479	10.0980000000000008	0	314013	0	0	24
125480	10.0990000000000002	0	314045	0	0	24
125481	10.0999999999999996	0	314075	0	0	24
125482	10.1010000000000009	0	314106	0	0	24
125483	10.1020000000000003	0	314138	0	0	24
125484	10.1029999999999998	0	314170	0	0	24
125485	10.1039999999999992	0	314202	0	0	24
125486	10.1050000000000004	0	314234	0	0	24
125487	10.1059999999999999	0	314266	0	0	24
125488	10.1069999999999993	0	314298	0	0	24
125489	10.1080000000000005	0	314330	0	0	24
125490	10.109	0	314362	0	0	24
125491	10.1099999999999994	0	314392	0	0	24
125492	10.1110000000000007	0	314424	0	0	24
125493	10.1120000000000001	0	314456	0	0	24
125494	10.1129999999999995	0	314488	0	0	24
125495	10.1140000000000008	0	314520	0	0	24
125496	10.1150000000000002	0	314552	0	0	24
125497	10.1159999999999997	0	314584	0	0	24
125498	10.1170000000000009	0	314616	0	0	24
125499	10.1180000000000003	0	314648	0	0	24
125500	10.1189999999999998	0	314680	0	0	24
125501	10.1199999999999992	0	314710	0	0	24
125502	10.1210000000000004	0	314742	0	0	24
125503	10.1219999999999999	0	314774	0	0	24
125504	10.1229999999999993	0	314806	0	0	24
125505	10.1240000000000006	0	314838	0	0	24
125506	10.125	0	314870	0	0	24
125507	10.1259999999999994	0	314902	0	0	24
125508	10.1270000000000007	0	314934	0	0	24
125509	10.1280000000000001	0	314966	0	0	24
125510	10.1289999999999996	0	314998	0	0	24
125511	10.1300000000000008	0	315028	0	0	24
125512	10.1310000000000002	0	315060	0	0	24
125513	10.1319999999999997	0	315092	0	0	24
125514	10.1329999999999991	0	315124	0	0	24
125515	10.1340000000000003	0	315156	0	0	24
125516	10.1349999999999998	0	315188	0	0	24
125517	10.1359999999999992	0	315220	0	0	24
125518	10.1370000000000005	0	315252	0	0	24
125519	10.1379999999999999	0	315284	0	0	24
125520	10.1389999999999993	0	315316	0	0	24
125521	10.1400000000000006	0	315346	0	0	24
125522	10.141	0	315378	0	0	24
125523	10.1419999999999995	0	315410	0	0	24
125524	10.1430000000000007	0	315442	0	0	24
125525	10.1440000000000001	0	315474	0	0	24
125526	10.1449999999999996	0	315506	0	0	24
125527	10.1460000000000008	0	315538	0	0	24
125528	10.1470000000000002	0	315570	0	0	24
125529	10.1479999999999997	0	315602	0	0	24
125530	10.1489999999999991	0	315634	0	0	24
125531	10.1500000000000004	0	315664	0	0	24
125532	10.1509999999999998	0	315695	0	0	24
125533	10.1519999999999992	0	315727	0	0	24
125534	10.1530000000000005	0	315759	0	0	24
125535	10.1539999999999999	0	315791	0	0	24
125536	10.1549999999999994	0	315823	0	0	24
125537	10.1560000000000006	0	315855	0	0	24
125538	10.157	0	315887	0	0	24
125539	10.1579999999999995	0	315919	0	0	24
125540	10.1590000000000007	0	315951	0	0	24
125541	10.1600000000000001	0	315981	0	0	24
125542	10.1609999999999996	0	316013	0	0	24
125543	10.1620000000000008	0	316045	0	0	24
125544	10.1630000000000003	0	316077	0	0	24
125545	10.1639999999999997	0	316109	0	0	24
125546	10.1649999999999991	0	316141	0	0	24
125547	10.1660000000000004	0	316173	0	0	24
125548	10.1669999999999998	0	316205	0	0	24
125549	10.1679999999999993	0	316237	0	0	24
125550	10.1690000000000005	0	316269	0	0	24
125551	10.1699999999999999	0	316299	0	0	24
125552	10.1709999999999994	0	316331	0	0	24
125553	10.1720000000000006	0	316363	0	0	24
125554	10.173	0	316395	0	0	24
125555	10.1739999999999995	0	316427	0	0	24
125556	10.1750000000000007	0	316459	0	0	24
125557	10.1760000000000002	0	316491	0	0	24
125558	10.1769999999999996	0	316523	0	0	24
125559	10.1780000000000008	0	316555	0	0	24
125560	10.1790000000000003	0	316587	0	0	24
125561	10.1799999999999997	0	316617	0	0	24
125562	10.1809999999999992	0	316649	0	0	24
125563	10.1820000000000004	0	316681	0	0	24
125564	10.1829999999999998	0	316713	0	0	24
125565	10.1839999999999993	0	316745	0	0	24
125566	10.1850000000000005	0	316777	0	0	24
125567	10.1859999999999999	0	316809	0	0	24
125568	10.1869999999999994	0	316841	0	0	24
125569	10.1880000000000006	0	316873	0	0	24
125570	10.1890000000000001	0	316905	0	0	24
125571	10.1899999999999995	0	316935	0	0	24
125572	10.1910000000000007	0	316967	0	0	24
125573	10.1920000000000002	0	316999	0	0	24
125574	10.1929999999999996	0	317031	0	0	24
125575	10.1940000000000008	0	317063	0	0	24
125576	10.1950000000000003	0	317095	0	0	24
125577	10.1959999999999997	0	317127	0	0	24
125578	10.1969999999999992	0	317159	0	0	24
125579	10.1980000000000004	0	317191	0	0	24
125580	10.1989999999999998	0	317223	0	0	24
125581	10.1999999999999993	0	317253	0	0	24
125582	10.2010000000000005	0	317284	0	0	24
125583	10.202	0	317316	0	0	24
125584	10.2029999999999994	0	317348	0	0	24
125585	10.2040000000000006	0	317380	0	0	24
125586	10.2050000000000001	0	317412	0	0	24
125587	10.2059999999999995	0	317444	0	0	24
125588	10.2070000000000007	0	317476	0	0	24
125589	10.2080000000000002	0	317508	0	0	24
125590	10.2089999999999996	0	317540	0	0	24
125591	10.2100000000000009	0	317570	0	0	24
125592	10.2110000000000003	0	317602	0	0	24
125593	10.2119999999999997	0	317634	0	0	24
125594	10.2129999999999992	0	317666	0	0	24
125595	10.2140000000000004	0	317698	0	0	24
125596	10.2149999999999999	0	317730	0	0	24
125597	10.2159999999999993	0	317762	0	0	24
125598	10.2170000000000005	0	317794	0	0	24
125599	10.218	0	317826	0	0	24
125600	10.2189999999999994	0	317858	0	0	24
125601	10.2200000000000006	0	317888	0	0	24
125602	10.2210000000000001	0	317920	0	0	24
125603	10.2219999999999995	0	317952	0	0	24
125604	10.2230000000000008	0	317984	0	0	24
125605	10.2240000000000002	0	318016	0	0	24
125606	10.2249999999999996	0	318048	0	0	24
125607	10.2260000000000009	0	318080	0	0	24
125608	10.2270000000000003	0	318112	0	0	24
125609	10.2279999999999998	0	318144	0	0	24
125610	10.2289999999999992	0	318176	0	0	24
125611	10.2300000000000004	0	318206	0	0	24
125612	10.2309999999999999	0	318238	0	0	24
125613	10.2319999999999993	0	318270	0	0	24
125614	10.2330000000000005	0	318302	0	0	24
125615	10.234	0	318334	0	0	24
125616	10.2349999999999994	0	318366	0	0	24
125617	10.2360000000000007	0	318398	0	0	24
125618	10.2370000000000001	0	318430	0	0	24
125619	10.2379999999999995	0	318462	0	0	24
125620	10.2390000000000008	0	318494	0	0	24
125621	10.2400000000000002	0	318524	0	0	24
125622	10.2409999999999997	0	318556	0	0	24
125623	10.2420000000000009	0	318588	0	0	24
125624	10.2430000000000003	0	318620	0	0	24
125625	10.2439999999999998	0	318652	0	0	24
125626	10.2449999999999992	0	318684	0	0	24
125627	10.2460000000000004	0	318716	0	0	24
125628	10.2469999999999999	0	318748	0	0	24
125629	10.2479999999999993	0	318780	0	0	24
125630	10.2490000000000006	0	318812	0	0	24
125631	10.25	0	318842	0	0	24
125632	10.2509999999999994	0	318873	0	0	24
125633	10.2520000000000007	0	318905	0	0	24
125634	10.2530000000000001	0	318937	0	0	24
125635	10.2539999999999996	0	318969	0	0	24
125636	10.2550000000000008	0	319001	0	0	24
125637	10.2560000000000002	0	319033	0	0	24
125638	10.2569999999999997	0	319065	0	0	24
125639	10.2579999999999991	0	319097	0	0	24
125640	10.2590000000000003	0	319129	0	0	24
125641	10.2599999999999998	0	319159	0	0	24
125642	10.2609999999999992	0	319191	0	0	24
125643	10.2620000000000005	0	319223	0	0	24
125644	10.2629999999999999	0	319255	0	0	24
125645	10.2639999999999993	0	319287	0	0	24
125646	10.2650000000000006	0	319319	0	0	24
125647	10.266	0	319351	0	0	24
125648	10.2669999999999995	0	319383	0	0	24
125649	10.2680000000000007	0	319415	0	0	24
125650	10.2690000000000001	0	319447	0	0	24
125651	10.2699999999999996	0	319477	0	0	24
125652	10.2710000000000008	0	319509	0	0	24
125653	10.2720000000000002	0	319541	0	0	24
125654	10.2729999999999997	0	319573	0	0	24
125655	10.2739999999999991	0	319605	0	0	24
125656	10.2750000000000004	0	319637	0	0	24
125657	10.2759999999999998	0	319669	0	0	24
125658	10.2769999999999992	0	319701	0	0	24
125659	10.2780000000000005	0	319733	0	0	24
125660	10.2789999999999999	0	319765	0	0	24
125661	10.2799999999999994	0	319795	0	0	24
125662	10.2810000000000006	0	319827	0	0	24
125663	10.282	0	319859	0	0	24
125664	10.2829999999999995	0	319891	0	0	24
125665	10.2840000000000007	0	319923	0	0	24
125666	10.2850000000000001	0	319955	0	0	24
125667	10.2859999999999996	0	319987	0	0	24
125668	10.2870000000000008	0	320019	0	0	24
125669	10.2880000000000003	0	320051	0	0	24
125670	10.2889999999999997	0	320083	0	0	24
125671	10.2899999999999991	0	320113	0	0	24
125672	10.2910000000000004	0	320145	0	0	24
125673	10.2919999999999998	0	320177	0	0	24
125674	10.2929999999999993	0	320209	0	0	24
125675	10.2940000000000005	0	320241	0	0	24
125676	10.2949999999999999	0	320273	0	0	24
125677	10.2959999999999994	0	320305	0	0	24
125678	10.2970000000000006	0	320337	0	0	24
125679	10.298	0	320369	0	0	24
125680	10.2989999999999995	0	320401	0	0	24
125681	10.3000000000000007	0	320431	0	0	24
125682	10.3010000000000002	0	320462	0	0	24
125683	10.3019999999999996	0	320494	0	0	24
125684	10.3030000000000008	0	320526	0	0	24
125685	10.3040000000000003	0	320558	0	0	24
125686	10.3049999999999997	0	320590	0	0	24
125687	10.3059999999999992	0	320622	0	0	24
125688	10.3070000000000004	0	320654	0	0	24
125689	10.3079999999999998	0	320686	0	0	24
125690	10.3089999999999993	0	320718	0	0	24
125691	10.3100000000000005	0	320748	0	0	24
125692	10.3109999999999999	0	320780	0	0	24
125693	10.3119999999999994	0	320812	0	0	24
125694	10.3130000000000006	0	320844	0	0	24
125695	10.3140000000000001	0	320876	0	0	24
125696	10.3149999999999995	0	320908	0	0	24
125697	10.3160000000000007	0	320940	0	0	24
125698	10.3170000000000002	0	320972	0	0	24
125699	10.3179999999999996	0	321004	0	0	24
125700	10.3190000000000008	0	321036	0	0	24
125701	10.3200000000000003	0	321066	0	0	24
125702	10.3209999999999997	0	321098	0	0	24
125703	10.3219999999999992	0	321130	0	0	24
125704	10.3230000000000004	0	321162	0	0	24
125705	10.3239999999999998	0	321194	0	0	24
125706	10.3249999999999993	0	321226	0	0	24
125707	10.3260000000000005	0	321258	0	0	24
125708	10.327	0	321290	0	0	24
125709	10.3279999999999994	0	321322	0	0	24
125710	10.3290000000000006	0	321354	0	0	24
125711	10.3300000000000001	0	321384	0	0	24
125712	10.3309999999999995	0	321416	0	0	24
125713	10.3320000000000007	0	321448	0	0	24
125714	10.3330000000000002	0	321480	0	0	24
125715	10.3339999999999996	0	321512	0	0	24
125716	10.3350000000000009	0	321544	0	0	24
125717	10.3360000000000003	0	321576	0	0	24
125718	10.3369999999999997	0	321608	0	0	24
125719	10.3379999999999992	0	321640	0	0	24
125720	10.3390000000000004	0	321672	0	0	24
125721	10.3399999999999999	0	321702	0	0	24
125722	10.3409999999999993	0	321734	0	0	24
125723	10.3420000000000005	0	321766	0	0	24
125724	10.343	0	321798	0	0	24
125725	10.3439999999999994	0	321830	0	0	24
125726	10.3450000000000006	0	321862	0	0	24
125727	10.3460000000000001	0	321894	0	0	24
125728	10.3469999999999995	0	321926	0	0	24
125729	10.3480000000000008	0	321958	0	0	24
125730	10.3490000000000002	0	321990	0	0	24
125731	10.3499999999999996	0	322020	0	0	24
125732	10.3510000000000009	0	322051	0	0	24
125733	10.3520000000000003	0	322083	0	0	24
125734	10.3529999999999998	0	322115	0	0	24
125735	10.3539999999999992	0	322147	0	0	24
125736	10.3550000000000004	0	322179	0	0	24
125737	10.3559999999999999	0	322211	0	0	24
125738	10.3569999999999993	0	322243	0	0	24
125739	10.3580000000000005	0	322275	0	0	24
125740	10.359	0	322307	0	0	24
125741	10.3599999999999994	0	322337	0	0	24
125742	10.3610000000000007	0	322369	0	0	24
125743	10.3620000000000001	0	322401	0	0	24
125744	10.3629999999999995	0	322433	0	0	24
125745	10.3640000000000008	0	322465	0	0	24
125746	10.3650000000000002	0	322497	0	0	24
125747	10.3659999999999997	0	322529	0	0	24
125748	10.3670000000000009	0	322561	0	0	24
125749	10.3680000000000003	0	322593	0	0	24
125750	10.3689999999999998	0	322625	0	0	24
125751	10.3699999999999992	0	322655	0	0	24
125752	10.3710000000000004	0	322687	0	0	24
125753	10.3719999999999999	0	322719	0	0	24
125754	10.3729999999999993	0	322751	0	0	24
125755	10.3740000000000006	0	322783	0	0	24
125756	10.375	0	322815	0	0	24
125757	10.3759999999999994	0	322847	0	0	24
125758	10.3770000000000007	0	322879	0	0	24
125759	10.3780000000000001	0	322911	0	0	24
125760	10.3789999999999996	0	322943	0	0	24
125761	10.3800000000000008	0	322973	0	0	24
125762	10.3810000000000002	0	323005	0	0	24
125763	10.3819999999999997	0	323037	0	0	24
125764	10.3829999999999991	0	323069	0	0	24
125765	10.3840000000000003	0	323101	0	0	24
125766	10.3849999999999998	0	323133	0	0	24
125767	10.3859999999999992	0	323165	0	0	24
125768	10.3870000000000005	0	323197	0	0	24
125769	10.3879999999999999	0	323229	0	0	24
125770	10.3889999999999993	0	323261	0	0	24
125771	10.3900000000000006	0	323291	0	0	24
125772	10.391	0	323323	0	0	24
125773	10.3919999999999995	0	323355	0	0	24
125774	10.3930000000000007	0	323387	0	0	24
125775	10.3940000000000001	0	323419	0	0	24
125776	10.3949999999999996	0	323451	0	0	24
125777	10.3960000000000008	0	323483	0	0	24
125778	10.3970000000000002	0	323515	0	0	24
125779	10.3979999999999997	0	323547	0	0	24
125780	10.3989999999999991	0	323579	0	0	24
125781	10.4000000000000004	0	323609	0	0	24
125782	10.4009999999999998	0	323640	0	0	24
125783	10.4019999999999992	0	323672	0	0	24
125784	10.4030000000000005	0	323704	0	0	24
125785	10.4039999999999999	0	323736	0	0	24
125786	10.4049999999999994	0	323768	0	0	24
125787	10.4060000000000006	0	323800	0	0	24
125788	10.407	0	323832	0	0	24
125789	10.4079999999999995	0	323864	0	0	24
125790	10.4090000000000007	0	323896	0	0	24
125791	10.4100000000000001	0	323926	0	0	24
125792	10.4109999999999996	0	323958	0	0	24
125793	10.4120000000000008	0	323990	0	0	24
125794	10.4130000000000003	0	324022	0	0	24
125795	10.4139999999999997	0	324054	0	0	24
125796	10.4149999999999991	0	324086	0	0	24
125797	10.4160000000000004	0	324118	0	0	24
125798	10.4169999999999998	0	324150	0	0	24
125799	10.4179999999999993	0	324182	0	0	24
125800	10.4190000000000005	0	324214	0	0	24
125801	10.4199999999999999	0	324244	0	0	24
125802	10.4209999999999994	0	324276	0	0	24
125803	10.4220000000000006	0	324308	0	0	24
125804	10.423	0	324340	0	0	24
125805	10.4239999999999995	0	324372	0	0	24
125806	10.4250000000000007	0	324404	0	0	24
125807	10.4260000000000002	0	324436	0	0	24
125808	10.4269999999999996	0	324468	0	0	24
125809	10.4280000000000008	0	324500	0	0	24
125810	10.4290000000000003	0	324532	0	0	24
125811	10.4299999999999997	0	324562	0	0	24
125812	10.4309999999999992	0	324594	0	0	24
125813	10.4320000000000004	0	324626	0	0	24
125814	10.4329999999999998	0	324658	0	0	24
125815	10.4339999999999993	0	324690	0	0	24
125816	10.4350000000000005	0	324722	0	0	24
125817	10.4359999999999999	0	324754	0	0	24
125818	10.4369999999999994	0	324786	0	0	24
125819	10.4380000000000006	0	324818	0	0	24
125820	10.4390000000000001	0	324850	0	0	24
125821	10.4399999999999995	0	324880	0	0	24
125822	10.4410000000000007	0	324912	0	0	24
125823	10.4420000000000002	0	324944	0	0	24
125824	10.4429999999999996	0	324976	0	0	24
125825	10.4440000000000008	0	325008	0	0	24
125826	10.4450000000000003	0	325040	0	0	24
125827	10.4459999999999997	0	325072	0	0	24
125828	10.4469999999999992	0	325104	0	0	24
125829	10.4480000000000004	0	325136	0	0	24
125830	10.4489999999999998	0	325168	0	0	24
125831	10.4499999999999993	0	325198	0	0	24
125832	10.4510000000000005	0	325229	0	0	24
125833	10.452	0	325261	0	0	24
125834	10.4529999999999994	0	325293	0	0	24
125835	10.4540000000000006	0	325325	0	0	24
125836	10.4550000000000001	0	325357	0	0	24
125837	10.4559999999999995	0	325389	0	0	24
125838	10.4570000000000007	0	325421	0	0	24
125839	10.4580000000000002	0	325453	0	0	24
125840	10.4589999999999996	0	325485	0	0	24
125841	10.4600000000000009	0	325515	0	0	24
125842	10.4610000000000003	0	325547	0	0	24
125843	10.4619999999999997	0	325579	0	0	24
125844	10.4629999999999992	0	325611	0	0	24
125845	10.4640000000000004	0	325643	0	0	24
125846	10.4649999999999999	0	325675	0	0	24
125847	10.4659999999999993	0	325707	0	0	24
125848	10.4670000000000005	0	325739	0	0	24
125849	10.468	0	325771	0	0	24
125850	10.4689999999999994	0	325803	0	0	24
125851	10.4700000000000006	0	325833	0	0	24
125852	10.4710000000000001	0	325865	0	0	24
125853	10.4719999999999995	0	325897	0	0	24
125854	10.4730000000000008	0	325929	0	0	24
125855	10.4740000000000002	0	325961	0	0	24
125856	10.4749999999999996	0	325993	0	0	24
125857	10.4760000000000009	0	326025	0	0	24
125858	10.4770000000000003	0	326057	0	0	24
125859	10.4779999999999998	0	326089	0	0	24
125860	10.4789999999999992	0	326121	0	0	24
125861	10.4800000000000004	0	326151	0	0	24
125862	10.4809999999999999	0	326183	0	0	24
125863	10.4819999999999993	0	326215	0	0	24
125864	10.4830000000000005	0	326247	0	0	24
125865	10.484	0	326279	0	0	24
125866	10.4849999999999994	0	326311	0	0	24
125867	10.4860000000000007	0	326343	0	0	24
125868	10.4870000000000001	0	326375	0	0	24
125869	10.4879999999999995	0	326407	0	0	24
125870	10.4890000000000008	0	326439	0	0	24
125871	10.4900000000000002	0	326469	0	0	24
125872	10.4909999999999997	0	326501	0	0	24
125873	10.4920000000000009	0	326533	0	0	24
125874	10.4930000000000003	0	326565	0	0	24
125875	10.4939999999999998	0	326597	0	0	24
125876	10.4949999999999992	0	326629	0	0	24
125877	10.4960000000000004	0	326661	0	0	24
125878	10.4969999999999999	0	326693	0	0	24
125879	10.4979999999999993	0	326725	0	0	24
125880	10.4990000000000006	0	326757	0	0	24
125881	10.5	0	326787	0	0	24
125882	10.5009999999999994	0	326818	0	0	24
125883	10.5020000000000007	0	326850	0	0	24
125884	10.5030000000000001	0	326882	0	0	24
125885	10.5039999999999996	0	326914	0	0	24
125886	10.5050000000000008	0	326946	0	0	24
125887	10.5060000000000002	0	326978	0	0	24
125888	10.5069999999999997	0	327010	0	0	24
125889	10.5079999999999991	0	327042	0	0	24
125890	10.5090000000000003	0	327074	0	0	24
125891	10.5099999999999998	0	327104	0	0	24
125892	10.5109999999999992	0	327136	0	0	24
125893	10.5120000000000005	0	327168	0	0	24
125894	10.5129999999999999	0	327200	0	0	24
125895	10.5139999999999993	0	327232	0	0	24
125896	10.5150000000000006	0	327264	0	0	24
125897	10.516	0	327296	0	0	24
125898	10.5169999999999995	0	327328	0	0	24
125899	10.5180000000000007	0	327360	0	0	24
125900	10.5190000000000001	0	327392	0	0	24
125901	10.5199999999999996	0	327422	0	0	24
125902	10.5210000000000008	0	327454	0	0	24
125903	10.5220000000000002	0	327486	0	0	24
125904	10.5229999999999997	0	327518	0	0	24
125905	10.5239999999999991	0	327550	0	0	24
125906	10.5250000000000004	0	327582	0	0	24
125907	10.5259999999999998	0	327614	0	0	24
125908	10.5269999999999992	0	327646	0	0	24
125909	10.5280000000000005	0	327678	0	0	24
125910	10.5289999999999999	0	327710	0	0	24
125911	10.5299999999999994	0	327740	0	0	24
125912	10.5310000000000006	0	327772	0	0	24
125913	10.532	0	327804	0	0	24
125914	10.5329999999999995	0	327836	0	0	24
125915	10.5340000000000007	0	327868	0	0	24
125916	10.5350000000000001	0	327900	0	0	24
125917	10.5359999999999996	0	327932	0	0	24
125918	10.5370000000000008	0	327964	0	0	24
125919	10.5380000000000003	0	327996	0	0	24
125920	10.5389999999999997	0	328028	0	0	24
125921	10.5399999999999991	0	328058	0	0	24
125922	10.5410000000000004	0	328090	0	0	24
125923	10.5419999999999998	0	328122	0	0	24
125924	10.5429999999999993	0	328154	0	0	24
125925	10.5440000000000005	0	328186	0	0	24
125926	10.5449999999999999	0	328218	0	0	24
125927	10.5459999999999994	0	328250	0	0	24
125928	10.5470000000000006	0	328282	0	0	24
125929	10.548	0	328314	0	0	24
125930	10.5489999999999995	0	328346	0	0	24
125931	10.5500000000000007	0	328376	0	0	24
125932	10.5510000000000002	0	328407	0	0	24
125933	10.5519999999999996	0	328439	0	0	24
125934	10.5530000000000008	0	328471	0	0	24
125935	10.5540000000000003	0	328503	0	0	24
125936	10.5549999999999997	0	328535	0	0	24
125937	10.5559999999999992	0	328567	0	0	24
125938	10.5570000000000004	0	328599	0	0	24
125939	10.5579999999999998	0	328631	0	0	24
125940	10.5589999999999993	0	328663	0	0	24
125941	10.5600000000000005	0	328693	0	0	24
125942	10.5609999999999999	0	328725	0	0	24
125943	10.5619999999999994	0	328757	0	0	24
125944	10.5630000000000006	0	328789	0	0	24
125945	10.5640000000000001	0	328821	0	0	24
125946	10.5649999999999995	0	328853	0	0	24
125947	10.5660000000000007	0	328885	0	0	24
125948	10.5670000000000002	0	328917	0	0	24
125949	10.5679999999999996	0	328949	0	0	24
125950	10.5690000000000008	0	328981	0	0	24
125951	10.5700000000000003	0	329011	0	0	24
125952	10.5709999999999997	0	329043	0	0	24
125953	10.5719999999999992	0	329075	0	0	24
125954	10.5730000000000004	0	329107	0	0	24
125955	10.5739999999999998	0	329139	0	0	24
125956	10.5749999999999993	0	329171	0	0	24
125957	10.5760000000000005	0	329203	0	0	24
125958	10.577	0	329235	0	0	24
125959	10.5779999999999994	0	329267	0	0	24
125960	10.5790000000000006	0	329299	0	0	24
125961	10.5800000000000001	0	329329	0	0	24
125962	10.5809999999999995	0	329361	0	0	24
125963	10.5820000000000007	0	329393	0	0	24
125964	10.5830000000000002	0	329425	0	0	24
125965	10.5839999999999996	0	329457	0	0	24
125966	10.5850000000000009	0	329489	0	0	24
125967	10.5860000000000003	0	329521	0	0	24
125968	10.5869999999999997	0	329553	0	0	24
125969	10.5879999999999992	0	329585	0	0	24
125970	10.5890000000000004	0	329617	0	0	24
125971	10.5899999999999999	0	329647	0	0	24
125972	10.5909999999999993	0	329679	0	0	24
125973	10.5920000000000005	0	329711	0	0	24
125974	10.593	0	329743	0	0	24
125975	10.5939999999999994	0	329775	0	0	24
125976	10.5950000000000006	0	329807	0	0	24
125977	10.5960000000000001	0	329839	0	0	24
125978	10.5969999999999995	0	329871	0	0	24
125979	10.5980000000000008	0	329903	0	0	24
125980	10.5990000000000002	0	329935	0	0	24
125981	10.5999999999999996	0	329965	0	0	24
125982	10.6010000000000009	0	329996	0	0	24
125983	10.6020000000000003	0	330028	0	0	24
125984	10.6029999999999998	0	330060	0	0	24
125985	10.6039999999999992	0	330092	0	0	24
125986	10.6050000000000004	0	330124	0	0	24
125987	10.6059999999999999	0	330156	0	0	24
125988	10.6069999999999993	0	330188	0	0	24
125989	10.6080000000000005	0	330220	0	0	24
125990	10.609	0	330252	0	0	24
125991	10.6099999999999994	0	330282	0	0	24
125992	10.6110000000000007	0	330314	0	0	24
125993	10.6120000000000001	0	330346	0	0	24
133122	17.7409999999999997	0	557041	0	0	24
133123	17.7420000000000009	0	557073	0	0	24
133124	17.7429999999999986	0	557105	0	0	24
133125	17.7439999999999998	0	557137	0	0	24
133126	17.745000000000001	0	557169	0	0	24
133127	17.7459999999999987	0	557201	0	0	24
133128	17.7469999999999999	0	557233	0	0	24
133129	17.7480000000000011	0	557265	0	0	24
133130	17.7489999999999988	0	557297	0	0	24
133131	17.75	0	557327	0	0	24
133132	17.7510000000000012	0	557359	0	0	24
133133	17.7519999999999989	0	557391	0	0	24
133134	17.7530000000000001	0	557423	0	0	24
133135	17.7540000000000013	0	557455	0	0	24
133136	17.754999999999999	0	557487	0	0	24
133137	17.7560000000000002	0	557519	0	0	24
133138	17.7570000000000014	0	557551	0	0	24
133139	17.7579999999999991	0	557583	0	0	24
133140	17.7590000000000003	0	557615	0	0	24
133141	17.7600000000000016	0	557645	0	0	24
133142	17.7609999999999992	0	557677	0	0	24
133143	17.7620000000000005	0	557709	0	0	24
133144	17.7630000000000017	0	557741	0	0	24
133145	17.7639999999999993	0	557773	0	0	24
133146	17.7650000000000006	0	557805	0	0	24
133147	17.7659999999999982	0	557837	0	0	24
133148	17.7669999999999995	0	557869	0	0	24
133149	17.7680000000000007	0	557901	0	0	24
133150	17.7689999999999984	0	557933	0	0	24
133151	17.7699999999999996	0	557963	0	0	24
133152	17.7710000000000008	0	557995	0	0	24
133153	17.7719999999999985	0	558027	0	0	24
133154	17.7729999999999997	0	558059	0	0	24
133155	17.7740000000000009	0	558091	0	0	24
133156	17.7749999999999986	0	558123	0	0	24
133157	17.7759999999999998	0	558155	0	0	24
133158	17.777000000000001	0	558187	0	0	24
133159	17.7779999999999987	0	558219	0	0	24
133160	17.7789999999999999	0	558251	0	0	24
133161	17.7800000000000011	0	558281	0	0	24
133162	17.7809999999999988	0	558313	0	0	24
133163	17.782	0	558345	0	0	24
133164	17.7830000000000013	0	558377	0	0	24
133165	17.7839999999999989	0	558409	0	0	24
133166	17.7850000000000001	0	558441	0	0	24
133167	17.7860000000000014	0	558473	0	0	24
133168	17.786999999999999	0	558505	0	0	24
133169	17.7880000000000003	0	558537	0	0	24
133170	17.7890000000000015	0	558569	0	0	24
133171	17.7899999999999991	0	558599	0	0	24
133172	17.7910000000000004	0	558631	0	0	24
133173	17.7920000000000016	0	558663	0	0	24
133174	17.7929999999999993	0	558695	0	0	24
133175	17.7940000000000005	0	558727	0	0	24
133176	17.7950000000000017	0	558759	0	0	24
133177	17.7959999999999994	0	558791	0	0	24
133178	17.7970000000000006	0	558823	0	0	24
133179	17.7979999999999983	0	558855	0	0	24
133180	17.7989999999999995	0	558887	0	0	24
133181	17.8000000000000007	0	558917	0	0	24
133182	17.8009999999999984	0	558949	0	0	24
133183	17.8019999999999996	0	558981	0	0	24
133184	17.8030000000000008	0	559013	0	0	24
133185	17.8039999999999985	0	559045	0	0	24
133186	17.8049999999999997	0	559077	0	0	24
133187	17.8060000000000009	0	559109	0	0	24
133188	17.8069999999999986	0	559141	0	0	24
133189	17.8079999999999998	0	559173	0	0	24
133190	17.8090000000000011	0	559205	0	0	24
133191	17.8099999999999987	0	559235	0	0	24
133192	17.8109999999999999	0	559267	0	0	24
133193	17.8120000000000012	0	559299	0	0	24
133194	17.8129999999999988	0	559331	0	0	24
133195	17.8140000000000001	0	559363	0	0	24
133196	17.8150000000000013	0	559395	0	0	24
133197	17.8159999999999989	0	559427	0	0	24
133198	17.8170000000000002	0	559459	0	0	24
133199	17.8180000000000014	0	559491	0	0	24
133200	17.8189999999999991	0	559523	0	0	24
133201	17.8200000000000003	0	559553	0	0	24
133202	17.8210000000000015	0	559585	0	0	24
133203	17.8219999999999992	0	559617	0	0	24
133204	17.8230000000000004	0	559649	0	0	24
133205	17.8240000000000016	0	559681	0	0	24
133206	17.8249999999999993	0	559713	0	0	24
133207	17.8260000000000005	0	559745	0	0	24
133208	17.8270000000000017	0	559777	0	0	24
133209	17.8279999999999994	0	559809	0	0	24
133210	17.8290000000000006	0	559841	0	0	24
133211	17.8299999999999983	0	559871	0	0	24
133212	17.8309999999999995	0	559903	0	0	24
133213	17.8320000000000007	0	559935	0	0	24
133214	17.8329999999999984	0	559967	0	0	24
133215	17.8339999999999996	0	559999	0	0	24
133216	17.8350000000000009	0	560031	0	0	24
125994	10.6129999999999995	0	330378	0	0	24
125995	10.6140000000000008	0	330410	0	0	24
125996	10.6150000000000002	0	330442	0	0	24
125997	10.6159999999999997	0	330474	0	0	24
125998	10.6170000000000009	0	330506	0	0	24
125999	10.6180000000000003	0	330538	0	0	24
126000	10.6189999999999998	0	330570	0	0	24
126001	10.6199999999999992	0	330600	0	0	24
126002	10.6210000000000004	0	330632	0	0	24
126003	10.6219999999999999	0	330664	0	0	24
126004	10.6229999999999993	0	330696	0	0	24
126005	10.6240000000000006	0	330728	0	0	24
126006	10.625	0	330760	0	0	24
126007	10.6259999999999994	0	330792	0	0	24
126008	10.6270000000000007	0	330824	0	0	24
126009	10.6280000000000001	0	330856	0	0	24
126010	10.6289999999999996	0	330888	0	0	24
126011	10.6300000000000008	0	330918	0	0	24
126012	10.6310000000000002	0	330950	0	0	24
126013	10.6319999999999997	0	330982	0	0	24
126014	10.6329999999999991	0	331014	0	0	24
126015	10.6340000000000003	0	331046	0	0	24
126016	10.6349999999999998	0	331078	0	0	24
126017	10.6359999999999992	0	331110	0	0	24
126018	10.6370000000000005	0	331142	0	0	24
126019	10.6379999999999999	0	331174	0	0	24
126020	10.6389999999999993	0	331206	0	0	24
126021	10.6400000000000006	0	331236	0	0	24
126022	10.641	0	331268	0	0	24
126023	10.6419999999999995	0	331300	0	0	24
126024	10.6430000000000007	0	331332	0	0	24
126025	10.6440000000000001	0	331364	0	0	24
126026	10.6449999999999996	0	331396	0	0	24
126027	10.6460000000000008	0	331428	0	0	24
126028	10.6470000000000002	0	331460	0	0	24
126029	10.6479999999999997	0	331492	0	0	24
126030	10.6489999999999991	0	331524	0	0	24
126031	10.6500000000000004	0	331554	0	0	24
126032	10.6509999999999998	0	331585	0	0	24
126033	10.6519999999999992	0	331617	0	0	24
126034	10.6530000000000005	0	331649	0	0	24
126035	10.6539999999999999	0	331681	0	0	24
126036	10.6549999999999994	0	331713	0	0	24
126037	10.6560000000000006	0	331745	0	0	24
126038	10.657	0	331777	0	0	24
126039	10.6579999999999995	0	331809	0	0	24
126040	10.6590000000000007	0	331841	0	0	24
126041	10.6600000000000001	0	331871	0	0	24
126042	10.6609999999999996	0	331903	0	0	24
126043	10.6620000000000008	0	331935	0	0	24
126044	10.6630000000000003	0	331967	0	0	24
126045	10.6639999999999997	0	331999	0	0	24
126046	10.6649999999999991	0	332031	0	0	24
126047	10.6660000000000004	0	332063	0	0	24
126048	10.6669999999999998	0	332095	0	0	24
126049	10.6679999999999993	0	332127	0	0	24
126050	10.6690000000000005	0	332159	0	0	24
126051	10.6699999999999999	0	332189	0	0	24
126052	10.6709999999999994	0	332221	0	0	24
126053	10.6720000000000006	0	332253	0	0	24
126054	10.673	0	332285	0	0	24
126055	10.6739999999999995	0	332317	0	0	24
126056	10.6750000000000007	0	332349	0	0	24
126057	10.6760000000000002	0	332381	0	0	24
126058	10.6769999999999996	0	332413	0	0	24
126059	10.6780000000000008	0	332445	0	0	24
126060	10.6790000000000003	0	332477	0	0	24
126061	10.6799999999999997	0	332507	0	0	24
126062	10.6809999999999992	0	332539	0	0	24
126063	10.6820000000000004	0	332571	0	0	24
126064	10.6829999999999998	0	332603	0	0	24
126065	10.6839999999999993	0	332635	0	0	24
126066	10.6850000000000005	0	332667	0	0	24
126067	10.6859999999999999	0	332699	0	0	24
126068	10.6869999999999994	0	332731	0	0	24
126069	10.6880000000000006	0	332763	0	0	24
126070	10.6890000000000001	0	332795	0	0	24
126071	10.6899999999999995	0	332825	0	0	24
126072	10.6910000000000007	0	332857	0	0	24
126073	10.6920000000000002	0	332889	0	0	24
126074	10.6929999999999996	0	332921	0	0	24
126075	10.6940000000000008	0	332953	0	0	24
126076	10.6950000000000003	0	332985	0	0	24
126077	10.6959999999999997	0	333017	0	0	24
126078	10.6969999999999992	0	333049	0	0	24
126079	10.6980000000000004	0	333081	0	0	24
126080	10.6989999999999998	0	333113	0	0	24
126081	10.6999999999999993	0	333143	0	0	24
126082	10.7010000000000005	0	333174	0	0	24
126083	10.702	0	333206	0	0	24
126084	10.7029999999999994	0	333238	0	0	24
126085	10.7040000000000006	0	333270	0	0	24
126086	10.7050000000000001	0	333302	0	0	24
126087	10.7059999999999995	0	333334	0	0	24
126088	10.7070000000000007	0	333366	0	0	24
126089	10.7080000000000002	0	333398	0	0	24
126090	10.7089999999999996	0	333430	0	0	24
126091	10.7100000000000009	0	333460	0	0	24
126092	10.7110000000000003	0	333492	0	0	24
126093	10.7119999999999997	0	333524	0	0	24
126094	10.7129999999999992	0	333556	0	0	24
126095	10.7140000000000004	0	333588	0	0	24
126096	10.7149999999999999	0	333620	0	0	24
126097	10.7159999999999993	0	333652	0	0	24
126098	10.7170000000000005	0	333684	0	0	24
126099	10.718	0	333716	0	0	24
126100	10.7189999999999994	0	333748	0	0	24
126101	10.7200000000000006	0	333778	0	0	24
126102	10.7210000000000001	0	333810	0	0	24
126103	10.7219999999999995	0	333842	0	0	24
126104	10.7230000000000008	0	333874	0	0	24
126105	10.7240000000000002	0	333906	0	0	24
126106	10.7249999999999996	0	333938	0	0	24
126107	10.7260000000000009	0	333970	0	0	24
126108	10.7270000000000003	0	334002	0	0	24
126109	10.7279999999999998	0	334034	0	0	24
126110	10.7289999999999992	0	334066	0	0	24
126111	10.7300000000000004	0	334096	0	0	24
126112	10.7309999999999999	0	334128	0	0	24
126113	10.7319999999999993	0	334160	0	0	24
126114	10.7330000000000005	0	334192	0	0	24
126115	10.734	0	334224	0	0	24
126116	10.7349999999999994	0	334256	0	0	24
126117	10.7360000000000007	0	334288	0	0	24
126118	10.7370000000000001	0	334320	0	0	24
126119	10.7379999999999995	0	334352	0	0	24
126120	10.7390000000000008	0	334384	0	0	24
126121	10.7400000000000002	0	334414	0	0	24
126122	10.7409999999999997	0	334446	0	0	24
126123	10.7420000000000009	0	334478	0	0	24
126124	10.7430000000000003	0	334510	0	0	24
126125	10.7439999999999998	0	334542	0	0	24
126126	10.7449999999999992	0	334574	0	0	24
126127	10.7460000000000004	0	334606	0	0	24
126128	10.7469999999999999	0	334638	0	0	24
126129	10.7479999999999993	0	334670	0	0	24
126130	10.7490000000000006	0	334702	0	0	24
126131	10.75	0	334732	0	0	24
126132	10.7509999999999994	0	334763	0	0	24
126133	10.7520000000000007	0	334795	0	0	24
126134	10.7530000000000001	0	334827	0	0	24
126135	10.7539999999999996	0	334859	0	0	24
126136	10.7550000000000008	0	334891	0	0	24
126137	10.7560000000000002	0	334923	0	0	24
126138	10.7569999999999997	0	334955	0	0	24
126139	10.7579999999999991	0	334987	0	0	24
126140	10.7590000000000003	0	335019	0	0	24
126141	10.7599999999999998	0	335049	0	0	24
126142	10.7609999999999992	0	335081	0	0	24
126143	10.7620000000000005	0	335113	0	0	24
126144	10.7629999999999999	0	335145	0	0	24
126145	10.7639999999999993	0	335177	0	0	24
126146	10.7650000000000006	0	335209	0	0	24
126147	10.766	0	335241	0	0	24
126148	10.7669999999999995	0	335273	0	0	24
126149	10.7680000000000007	0	335305	0	0	24
126150	10.7690000000000001	0	335337	0	0	24
126151	10.7699999999999996	0	335367	0	0	24
126152	10.7710000000000008	0	335399	0	0	24
126153	10.7720000000000002	0	335431	0	0	24
126154	10.7729999999999997	0	335463	0	0	24
126155	10.7739999999999991	0	335495	0	0	24
126156	10.7750000000000004	0	335527	0	0	24
126157	10.7759999999999998	0	335559	0	0	24
126158	10.7769999999999992	0	335591	0	0	24
126159	10.7780000000000005	0	335623	0	0	24
126160	10.7789999999999999	0	335655	0	0	24
126161	10.7799999999999994	0	335685	0	0	24
126162	10.7810000000000006	0	335717	0	0	24
126163	10.782	0	335749	0	0	24
126164	10.7829999999999995	0	335781	0	0	24
126165	10.7840000000000007	0	335813	0	0	24
126166	10.7850000000000001	0	335845	0	0	24
126167	10.7859999999999996	0	335877	0	0	24
126168	10.7870000000000008	0	335909	0	0	24
126169	10.7880000000000003	0	335941	0	0	24
126170	10.7889999999999997	0	335973	0	0	24
126171	10.7899999999999991	0	336003	0	0	24
126172	10.7910000000000004	0	336035	0	0	24
126173	10.7919999999999998	0	336067	0	0	24
126174	10.7929999999999993	0	336099	0	0	24
126175	10.7940000000000005	0	336131	0	0	24
126176	10.7949999999999999	0	336163	0	0	24
126177	10.7959999999999994	0	336195	0	0	24
126178	10.7970000000000006	0	336227	0	0	24
126179	10.798	0	336259	0	0	24
126180	10.7989999999999995	0	336291	0	0	24
126181	10.8000000000000007	0	336321	0	0	24
126182	10.8010000000000002	0	336352	0	0	24
126183	10.8019999999999996	0	336384	0	0	24
126184	10.8030000000000008	0	336416	0	0	24
126185	10.8040000000000003	0	336448	0	0	24
126186	10.8049999999999997	0	336480	0	0	24
126187	10.8059999999999992	0	336512	0	0	24
126188	10.8070000000000004	0	336544	0	0	24
126189	10.8079999999999998	0	336576	0	0	24
126190	10.8089999999999993	0	336608	0	0	24
126191	10.8100000000000005	0	336638	0	0	24
126192	10.8109999999999999	0	336670	0	0	24
126193	10.8119999999999994	0	336702	0	0	24
126194	10.8130000000000006	0	336734	0	0	24
126195	10.8140000000000001	0	336766	0	0	24
126196	10.8149999999999995	0	336798	0	0	24
126197	10.8160000000000007	0	336830	0	0	24
126198	10.8170000000000002	0	336862	0	0	24
126199	10.8179999999999996	0	336894	0	0	24
126200	10.8190000000000008	0	336926	0	0	24
126201	10.8200000000000003	0	336956	0	0	24
126202	10.8209999999999997	0	336988	0	0	24
126203	10.8219999999999992	0	337020	0	0	24
126204	10.8230000000000004	0	337052	0	0	24
126205	10.8239999999999998	0	337084	0	0	24
126206	10.8249999999999993	0	337116	0	0	24
126207	10.8260000000000005	0	337148	0	0	24
126208	10.827	0	337180	0	0	24
126209	10.8279999999999994	0	337212	0	0	24
126210	10.8290000000000006	0	337244	0	0	24
126211	10.8300000000000001	0	337274	0	0	24
126212	10.8309999999999995	0	337306	0	0	24
126213	10.8320000000000007	0	337338	0	0	24
126214	10.8330000000000002	0	337370	0	0	24
126215	10.8339999999999996	0	337402	0	0	24
126216	10.8350000000000009	0	337434	0	0	24
126217	10.8360000000000003	0	337466	0	0	24
126218	10.8369999999999997	0	337498	0	0	24
126219	10.8379999999999992	0	337530	0	0	24
126220	10.8390000000000004	0	337562	0	0	24
126221	10.8399999999999999	0	337592	0	0	24
126222	10.8409999999999993	0	337624	0	0	24
126223	10.8420000000000005	0	337656	0	0	24
126224	10.843	0	337688	0	0	24
126225	10.8439999999999994	0	337720	0	0	24
126226	10.8450000000000006	0	337752	0	0	24
126227	10.8460000000000001	0	337784	0	0	24
126228	10.8469999999999995	0	337816	0	0	24
126229	10.8480000000000008	0	337848	0	0	24
126230	10.8490000000000002	0	337880	0	0	24
126231	10.8499999999999996	0	337910	0	0	24
126232	10.8510000000000009	0	337941	0	0	24
126233	10.8520000000000003	0	337973	0	0	24
126234	10.8529999999999998	0	338005	0	0	24
126235	10.8539999999999992	0	338037	0	0	24
126236	10.8550000000000004	0	338069	0	0	24
126237	10.8559999999999999	0	338101	0	0	24
126238	10.8569999999999993	0	338133	0	0	24
126239	10.8580000000000005	0	338165	0	0	24
126240	10.859	0	338197	0	0	24
126241	10.8599999999999994	0	338227	0	0	24
126242	10.8610000000000007	0	338259	0	0	24
126243	10.8620000000000001	0	338291	0	0	24
126244	10.8629999999999995	0	338323	0	0	24
126245	10.8640000000000008	0	338355	0	0	24
126246	10.8650000000000002	0	338387	0	0	24
126247	10.8659999999999997	0	338419	0	0	24
126248	10.8670000000000009	0	338451	0	0	24
126249	10.8680000000000003	0	338483	0	0	24
126250	10.8689999999999998	0	338515	0	0	24
126251	10.8699999999999992	0	338545	0	0	24
126252	10.8710000000000004	0	338577	0	0	24
126253	10.8719999999999999	0	338609	0	0	24
126254	10.8729999999999993	0	338641	0	0	24
126255	10.8740000000000006	0	338673	0	0	24
126256	10.875	0	338705	0	0	24
126257	10.8759999999999994	0	338737	0	0	24
126258	10.8770000000000007	0	338769	0	0	24
126259	10.8780000000000001	0	338801	0	0	24
126260	10.8789999999999996	0	338833	0	0	24
126261	10.8800000000000008	0	338863	0	0	24
126262	10.8810000000000002	0	338895	0	0	24
126263	10.8819999999999997	0	338927	0	0	24
126264	10.8829999999999991	0	338959	0	0	24
126265	10.8840000000000003	0	338991	0	0	24
126266	10.8849999999999998	0	339023	0	0	24
126267	10.8859999999999992	0	339055	0	0	24
126268	10.8870000000000005	0	339087	0	0	24
126269	10.8879999999999999	0	339119	0	0	24
126270	10.8889999999999993	0	339151	0	0	24
126271	10.8900000000000006	0	339181	0	0	24
126272	10.891	0	339213	0	0	24
126273	10.8919999999999995	0	339245	0	0	24
126274	10.8930000000000007	0	339277	0	0	24
126275	10.8940000000000001	0	339309	0	0	24
126276	10.8949999999999996	0	339341	0	0	24
126277	10.8960000000000008	0	339373	0	0	24
126278	10.8970000000000002	0	339405	0	0	24
126279	10.8979999999999997	0	339437	0	0	24
126280	10.8989999999999991	0	339469	0	0	24
126281	10.9000000000000004	0	339499	0	0	24
126282	10.9009999999999998	0	339530	0	0	24
126283	10.9019999999999992	0	339562	0	0	24
126284	10.9030000000000005	0	339594	0	0	24
126285	10.9039999999999999	0	339626	0	0	24
126286	10.9049999999999994	0	339658	0	0	24
126287	10.9060000000000006	0	339690	0	0	24
126288	10.907	0	339722	0	0	24
126289	10.9079999999999995	0	339754	0	0	24
126290	10.9090000000000007	0	339786	0	0	24
126291	10.9100000000000001	0	339816	0	0	24
126292	10.9109999999999996	0	339848	0	0	24
126293	10.9120000000000008	0	339880	0	0	24
126294	10.9130000000000003	0	339912	0	0	24
126295	10.9139999999999997	0	339944	0	0	24
126296	10.9149999999999991	0	339976	0	0	24
126297	10.9160000000000004	0	340008	0	0	24
126298	10.9169999999999998	0	340040	0	0	24
126299	10.9179999999999993	0	340072	0	0	24
126300	10.9190000000000005	0	340104	0	0	24
126301	10.9199999999999999	0	340134	0	0	24
126302	10.9209999999999994	0	340166	0	0	24
126303	10.9220000000000006	0	340198	0	0	24
126304	10.923	0	340230	0	0	24
126305	10.9239999999999995	0	340262	0	0	24
126306	10.9250000000000007	0	340294	0	0	24
126307	10.9260000000000002	0	340326	0	0	24
126308	10.9269999999999996	0	340358	0	0	24
126309	10.9280000000000008	0	340390	0	0	24
126310	10.9290000000000003	0	340422	0	0	24
126311	10.9299999999999997	0	340452	0	0	24
126312	10.9309999999999992	0	340484	0	0	24
126313	10.9320000000000004	0	340516	0	0	24
126314	10.9329999999999998	0	340548	0	0	24
126315	10.9339999999999993	0	340580	0	0	24
126316	10.9350000000000005	0	340612	0	0	24
126317	10.9359999999999999	0	340644	0	0	24
126318	10.9369999999999994	0	340676	0	0	24
126319	10.9380000000000006	0	340708	0	0	24
126320	10.9390000000000001	0	340740	0	0	24
126321	10.9399999999999995	0	340770	0	0	24
126322	10.9410000000000007	0	340802	0	0	24
126323	10.9420000000000002	0	340834	0	0	24
126324	10.9429999999999996	0	340866	0	0	24
126325	10.9440000000000008	0	340898	0	0	24
126326	10.9450000000000003	0	340930	0	0	24
126327	10.9459999999999997	0	340962	0	0	24
126328	10.9469999999999992	0	340994	0	0	24
126329	10.9480000000000004	0	341026	0	0	24
126330	10.9489999999999998	0	341058	0	0	24
126331	10.9499999999999993	0	341088	0	0	24
126332	10.9510000000000005	0	341119	0	0	24
126333	10.952	0	341151	0	0	24
126334	10.9529999999999994	0	341183	0	0	24
126335	10.9540000000000006	0	341215	0	0	24
126336	10.9550000000000001	0	341247	0	0	24
126337	10.9559999999999995	0	341279	0	0	24
126338	10.9570000000000007	0	341311	0	0	24
126339	10.9580000000000002	0	341343	0	0	24
126340	10.9589999999999996	0	341375	0	0	24
126341	10.9600000000000009	0	341405	0	0	24
126342	10.9610000000000003	0	341437	0	0	24
126343	10.9619999999999997	0	341469	0	0	24
126344	10.9629999999999992	0	341501	0	0	24
126345	10.9640000000000004	0	341533	0	0	24
126346	10.9649999999999999	0	341565	0	0	24
126347	10.9659999999999993	0	341597	0	0	24
126348	10.9670000000000005	0	341629	0	0	24
126349	10.968	0	341661	0	0	24
126350	10.9689999999999994	0	341693	0	0	24
126351	10.9700000000000006	0	341723	0	0	24
126352	10.9710000000000001	0	341755	0	0	24
126353	10.9719999999999995	0	341787	0	0	24
126354	10.9730000000000008	0	341819	0	0	24
126355	10.9740000000000002	0	341851	0	0	24
126356	10.9749999999999996	0	341883	0	0	24
126357	10.9760000000000009	0	341915	0	0	24
126358	10.9770000000000003	0	341947	0	0	24
126359	10.9779999999999998	0	341979	0	0	24
126360	10.9789999999999992	0	342011	0	0	24
126361	10.9800000000000004	0	342041	0	0	24
126362	10.9809999999999999	0	342073	0	0	24
126363	10.9819999999999993	0	342105	0	0	24
126364	10.9830000000000005	0	342137	0	0	24
126365	10.984	0	342169	0	0	24
126366	10.9849999999999994	0	342201	0	0	24
126367	10.9860000000000007	0	342233	0	0	24
126368	10.9870000000000001	0	342265	0	0	24
126369	10.9879999999999995	0	342297	0	0	24
126370	10.9890000000000008	0	342329	0	0	24
126371	10.9900000000000002	0	342359	0	0	24
126372	10.9909999999999997	0	342391	0	0	24
126373	10.9920000000000009	0	342423	0	0	24
126374	10.9930000000000003	0	342455	0	0	24
126375	10.9939999999999998	0	342487	0	0	24
126376	10.9949999999999992	0	342519	0	0	24
126377	10.9960000000000004	0	342551	0	0	24
126378	10.9969999999999999	0	342583	0	0	24
126379	10.9979999999999993	0	342615	0	0	24
126380	10.9990000000000006	0	342647	0	0	24
126381	11	0	342677	0	0	24
126382	11.0009999999999994	0	342709	0	0	24
126383	11.0020000000000007	0	342741	0	0	24
126384	11.0030000000000001	0	342773	0	0	24
126385	11.0039999999999996	0	342805	0	0	24
126386	11.0050000000000008	0	342837	0	0	24
126387	11.0060000000000002	0	342869	0	0	24
126388	11.0069999999999997	0	342901	0	0	24
126389	11.0079999999999991	0	342933	0	0	24
126390	11.0090000000000003	0	342965	0	0	24
126391	11.0099999999999998	0	342995	0	0	24
126392	11.0109999999999992	0	343027	0	0	24
126393	11.0120000000000005	0	343059	0	0	24
126394	11.0129999999999999	0	343091	0	0	24
126395	11.0139999999999993	0	343123	0	0	24
126396	11.0150000000000006	0	343155	0	0	24
126397	11.016	0	343187	0	0	24
126398	11.0169999999999995	0	343219	0	0	24
126399	11.0180000000000007	0	343251	0	0	24
126400	11.0190000000000001	0	343283	0	0	24
126401	11.0199999999999996	0	343313	0	0	24
126402	11.0210000000000008	0	343345	0	0	24
126403	11.0220000000000002	0	343377	0	0	24
126404	11.0229999999999997	0	343409	0	0	24
126405	11.0239999999999991	0	343441	0	0	24
126406	11.0250000000000004	0	343473	0	0	24
126407	11.0259999999999998	0	343505	0	0	24
126408	11.0269999999999992	0	343537	0	0	24
126409	11.0280000000000005	0	343569	0	0	24
126410	11.0289999999999999	0	343601	0	0	24
126411	11.0299999999999994	0	343631	0	0	24
126412	11.0310000000000006	0	343663	0	0	24
126413	11.032	0	343695	0	0	24
126414	11.0329999999999995	0	343727	0	0	24
126415	11.0340000000000007	0	343759	0	0	24
126416	11.0350000000000001	0	343791	0	0	24
126417	11.0359999999999996	0	343823	0	0	24
126418	11.0370000000000008	0	343855	0	0	24
126419	11.0380000000000003	0	343887	0	0	24
126420	11.0389999999999997	0	343919	0	0	24
126421	11.0399999999999991	0	343949	0	0	24
126422	11.0410000000000004	0	343981	0	0	24
126423	11.0419999999999998	0	344013	0	0	24
126424	11.0429999999999993	0	344045	0	0	24
126425	11.0440000000000005	0	344077	0	0	24
126426	11.0449999999999999	0	344109	0	0	24
126427	11.0459999999999994	0	344141	0	0	24
126428	11.0470000000000006	0	344173	0	0	24
126429	11.048	0	344205	0	0	24
126430	11.0489999999999995	0	344237	0	0	24
126431	11.0500000000000007	0	344267	0	0	24
126432	11.0510000000000002	0	344299	0	0	24
126433	11.0519999999999996	0	344331	0	0	24
126434	11.0530000000000008	0	344363	0	0	24
126435	11.0540000000000003	0	344395	0	0	24
126436	11.0549999999999997	0	344427	0	0	24
126437	11.0559999999999992	0	344459	0	0	24
126438	11.0570000000000004	0	344491	0	0	24
126439	11.0579999999999998	0	344523	0	0	24
126440	11.0589999999999993	0	344555	0	0	24
126441	11.0600000000000005	0	344585	0	0	24
126442	11.0609999999999999	0	344617	0	0	24
126443	11.0619999999999994	0	344649	0	0	24
126444	11.0630000000000006	0	344681	0	0	24
126445	11.0640000000000001	0	344713	0	0	24
126446	11.0649999999999995	0	344745	0	0	24
126447	11.0660000000000007	0	344777	0	0	24
126448	11.0670000000000002	0	344809	0	0	24
126449	11.0679999999999996	0	344841	0	0	24
126450	11.0690000000000008	0	344873	0	0	24
126451	11.0700000000000003	0	344903	0	0	24
126452	11.0709999999999997	0	344935	0	0	24
126453	11.0719999999999992	0	344967	0	0	24
126454	11.0730000000000004	0	344999	0	0	24
126455	11.0739999999999998	0	345031	0	0	24
126456	11.0749999999999993	0	345063	0	0	24
126457	11.0760000000000005	0	345095	0	0	24
126458	11.077	0	345127	0	0	24
126459	11.0779999999999994	0	345159	0	0	24
126460	11.0790000000000006	0	345191	0	0	24
126461	11.0800000000000001	0	345221	0	0	24
126462	11.0809999999999995	0	345253	0	0	24
126463	11.0820000000000007	0	345285	0	0	24
126464	11.0830000000000002	0	345317	0	0	24
126465	11.0839999999999996	0	345349	0	0	24
126466	11.0850000000000009	0	345381	0	0	24
126467	11.0860000000000003	0	345413	0	0	24
126468	11.0869999999999997	0	345445	0	0	24
126469	11.0879999999999992	0	345477	0	0	24
126470	11.0890000000000004	0	345509	0	0	24
126471	11.0899999999999999	0	345539	0	0	24
126472	11.0909999999999993	0	345571	0	0	24
126473	11.0920000000000005	0	345603	0	0	24
126474	11.093	0	345635	0	0	24
126475	11.0939999999999994	0	345667	0	0	24
126476	11.0950000000000006	0	345699	0	0	24
126477	11.0960000000000001	0	345731	0	0	24
126478	11.0969999999999995	0	345763	0	0	24
126479	11.0980000000000008	0	345795	0	0	24
126480	11.0990000000000002	0	345827	0	0	24
126481	11.0999999999999996	0	345857	0	0	24
126482	11.1010000000000009	0	345889	0	0	24
126483	11.1020000000000003	0	345921	0	0	24
126484	11.1029999999999998	0	345953	0	0	24
126485	11.1039999999999992	0	345985	0	0	24
126486	11.1050000000000004	0	346017	0	0	24
126487	11.1059999999999999	0	346049	0	0	24
126488	11.1069999999999993	0	346081	0	0	24
126489	11.1080000000000005	0	346113	0	0	24
126490	11.109	0	346145	0	0	24
126491	11.1099999999999994	0	346175	0	0	24
126492	11.1110000000000007	0	346207	0	0	24
126493	11.1120000000000001	0	346239	0	0	24
126494	11.1129999999999995	0	346271	0	0	24
126495	11.1140000000000008	0	346303	0	0	24
126496	11.1150000000000002	0	346335	0	0	24
126497	11.1159999999999997	0	346367	0	0	24
126498	11.1170000000000009	0	346399	0	0	24
126499	11.1180000000000003	0	346431	0	0	24
126500	11.1189999999999998	0	346463	0	0	24
126501	11.1199999999999992	0	346493	0	0	24
126502	11.1210000000000004	0	346525	0	0	24
126503	11.1219999999999999	0	346557	0	0	24
126504	11.1229999999999993	0	346589	0	0	24
126505	11.1240000000000006	0	346621	0	0	24
126506	11.125	0	346653	0	0	24
126507	11.1259999999999994	0	346685	0	0	24
126508	11.1270000000000007	0	346717	0	0	24
126509	11.1280000000000001	0	346749	0	0	24
126510	11.1289999999999996	0	346781	0	0	24
126511	11.1300000000000008	0	346811	0	0	24
126512	11.1310000000000002	0	346843	0	0	24
126513	11.1319999999999997	0	346875	0	0	24
126514	11.1329999999999991	0	346907	0	0	24
126515	11.1340000000000003	0	346939	0	0	24
126516	11.1349999999999998	0	346971	0	0	24
126517	11.1359999999999992	0	347003	0	0	24
126518	11.1370000000000005	0	347035	0	0	24
126519	11.1379999999999999	0	347067	0	0	24
126520	11.1389999999999993	0	347099	0	0	24
126521	11.1400000000000006	0	347129	0	0	24
126522	11.141	0	347161	0	0	24
126523	11.1419999999999995	0	347193	0	0	24
126524	11.1430000000000007	0	347225	0	0	24
126525	11.1440000000000001	0	347257	0	0	24
126526	11.1449999999999996	0	347289	0	0	24
126527	11.1460000000000008	0	347321	0	0	24
126528	11.1470000000000002	0	347353	0	0	24
126529	11.1479999999999997	0	347385	0	0	24
126530	11.1489999999999991	0	347417	0	0	24
126531	11.1500000000000004	0	347447	0	0	24
126532	11.1509999999999998	0	347479	0	0	24
126533	11.1519999999999992	0	347511	0	0	24
126534	11.1530000000000005	0	347543	0	0	24
126535	11.1539999999999999	0	347575	0	0	24
126536	11.1549999999999994	0	347607	0	0	24
126537	11.1560000000000006	0	347639	0	0	24
126538	11.157	0	347671	0	0	24
126539	11.1579999999999995	0	347703	0	0	24
126540	11.1590000000000007	0	347735	0	0	24
126541	11.1600000000000001	0	347765	0	0	24
126542	11.1609999999999996	0	347797	0	0	24
126543	11.1620000000000008	0	347829	0	0	24
126544	11.1630000000000003	0	347861	0	0	24
126545	11.1639999999999997	0	347893	0	0	24
126546	11.1649999999999991	0	347925	0	0	24
126547	11.1660000000000004	0	347957	0	0	24
126548	11.1669999999999998	0	347989	0	0	24
126549	11.1679999999999993	0	348021	0	0	24
126550	11.1690000000000005	0	348053	0	0	24
126551	11.1699999999999999	0	348083	0	0	24
126552	11.1709999999999994	0	348115	0	0	24
126553	11.1720000000000006	0	348147	0	0	24
126554	11.173	0	348179	0	0	24
126555	11.1739999999999995	0	348211	0	0	24
126556	11.1750000000000007	0	348243	0	0	24
126557	11.1760000000000002	0	348275	0	0	24
126558	11.1769999999999996	0	348307	0	0	24
126559	11.1780000000000008	0	348339	0	0	24
126560	11.1790000000000003	0	348371	0	0	24
126561	11.1799999999999997	0	348401	0	0	24
126562	11.1809999999999992	0	348433	0	0	24
126563	11.1820000000000004	0	348465	0	0	24
126564	11.1829999999999998	0	348497	0	0	24
126565	11.1839999999999993	0	348529	0	0	24
126566	11.1850000000000005	0	348561	0	0	24
126567	11.1859999999999999	0	348593	0	0	24
126568	11.1869999999999994	0	348625	0	0	24
126569	11.1880000000000006	0	348657	0	0	24
126570	11.1890000000000001	0	348689	0	0	24
126571	11.1899999999999995	0	348719	0	0	24
126572	11.1910000000000007	0	348751	0	0	24
126573	11.1920000000000002	0	348783	0	0	24
126574	11.1929999999999996	0	348815	0	0	24
126575	11.1940000000000008	0	348847	0	0	24
126576	11.1950000000000003	0	348879	0	0	24
126577	11.1959999999999997	0	348911	0	0	24
126578	11.1969999999999992	0	348943	0	0	24
126579	11.1980000000000004	0	348975	0	0	24
126580	11.1989999999999998	0	349007	0	0	24
126581	11.1999999999999993	0	349037	0	0	24
126582	11.2010000000000005	0	349069	0	0	24
126583	11.202	0	349101	0	0	24
126584	11.2029999999999994	0	349133	0	0	24
126585	11.2040000000000006	0	349165	0	0	24
126586	11.2050000000000001	0	349197	0	0	24
126587	11.2059999999999995	0	349229	0	0	24
126588	11.2070000000000007	0	349261	0	0	24
126589	11.2080000000000002	0	349293	0	0	24
126590	11.2089999999999996	0	349325	0	0	24
126591	11.2100000000000009	0	349355	0	0	24
126592	11.2110000000000003	0	349387	0	0	24
126593	11.2119999999999997	0	349419	0	0	24
126594	11.2129999999999992	0	349451	0	0	24
126595	11.2140000000000004	0	349483	0	0	24
126596	11.2149999999999999	0	349515	0	0	24
126597	11.2159999999999993	0	349547	0	0	24
126598	11.2170000000000005	0	349579	0	0	24
126599	11.218	0	349611	0	0	24
126600	11.2189999999999994	0	349643	0	0	24
126601	11.2200000000000006	0	349673	0	0	24
126602	11.2210000000000001	0	349705	0	0	24
126603	11.2219999999999995	0	349737	0	0	24
126604	11.2230000000000008	0	349769	0	0	24
126605	11.2240000000000002	0	349801	0	0	24
126606	11.2249999999999996	0	349833	0	0	24
126607	11.2260000000000009	0	349865	0	0	24
126608	11.2270000000000003	0	349897	0	0	24
126609	11.2279999999999998	0	349929	0	0	24
126610	11.2289999999999992	0	349961	0	0	24
126611	11.2300000000000004	0	349991	0	0	24
126612	11.2309999999999999	0	350023	0	0	24
126613	11.2319999999999993	0	350055	0	0	24
126614	11.2330000000000005	0	350087	0	0	24
126615	11.234	0	350119	0	0	24
126616	11.2349999999999994	0	350151	0	0	24
126617	11.2360000000000007	0	350183	0	0	24
126618	11.2370000000000001	0	350215	0	0	24
126619	11.2379999999999995	0	350247	0	0	24
126620	11.2390000000000008	0	350279	0	0	24
126621	11.2400000000000002	0	350309	0	0	24
126622	11.2409999999999997	0	350341	0	0	24
126623	11.2420000000000009	0	350373	0	0	24
126624	11.2430000000000003	0	350405	0	0	24
126625	11.2439999999999998	0	350437	0	0	24
126626	11.2449999999999992	0	350469	0	0	24
126627	11.2460000000000004	0	350501	0	0	24
126628	11.2469999999999999	0	350533	0	0	24
126629	11.2479999999999993	0	350565	0	0	24
126630	11.2490000000000006	0	350597	0	0	24
126631	11.25	0	350627	0	0	24
126632	11.2509999999999994	0	350659	0	0	24
126633	11.2520000000000007	0	350691	0	0	24
126634	11.2530000000000001	0	350723	0	0	24
126635	11.2539999999999996	0	350755	0	0	24
126636	11.2550000000000008	0	350787	0	0	24
126637	11.2560000000000002	0	350819	0	0	24
126638	11.2569999999999997	0	350851	0	0	24
126639	11.2579999999999991	0	350883	0	0	24
126640	11.2590000000000003	0	350915	0	0	24
126641	11.2599999999999998	0	350945	0	0	24
126642	11.2609999999999992	0	350977	0	0	24
126643	11.2620000000000005	0	351009	0	0	24
126644	11.2629999999999999	0	351041	0	0	24
126645	11.2639999999999993	0	351073	0	0	24
126646	11.2650000000000006	0	351105	0	0	24
126647	11.266	0	351137	0	0	24
126648	11.2669999999999995	0	351169	0	0	24
126649	11.2680000000000007	0	351201	0	0	24
126650	11.2690000000000001	0	351233	0	0	24
126651	11.2699999999999996	0	351263	0	0	24
126652	11.2710000000000008	0	351295	0	0	24
126653	11.2720000000000002	0	351327	0	0	24
126654	11.2729999999999997	0	351359	0	0	24
126655	11.2739999999999991	0	351391	0	0	24
126656	11.2750000000000004	0	351423	0	0	24
126657	11.2759999999999998	0	351455	0	0	24
126658	11.2769999999999992	0	351487	0	0	24
126659	11.2780000000000005	0	351519	0	0	24
126660	11.2789999999999999	0	351551	0	0	24
126661	11.2799999999999994	0	351581	0	0	24
126662	11.2810000000000006	0	351613	0	0	24
126663	11.282	0	351645	0	0	24
126664	11.2829999999999995	0	351677	0	0	24
126665	11.2840000000000007	0	351709	0	0	24
126666	11.2850000000000001	0	351741	0	0	24
126667	11.2859999999999996	0	351773	0	0	24
126668	11.2870000000000008	0	351805	0	0	24
126669	11.2880000000000003	0	351837	0	0	24
126670	11.2889999999999997	0	351869	0	0	24
126671	11.2899999999999991	0	351899	0	0	24
126672	11.2910000000000004	0	351931	0	0	24
126673	11.2919999999999998	0	351963	0	0	24
126674	11.2929999999999993	0	351995	0	0	24
126675	11.2940000000000005	0	352027	0	0	24
126676	11.2949999999999999	0	352059	0	0	24
126677	11.2959999999999994	0	352091	0	0	24
126678	11.2970000000000006	0	352123	0	0	24
126679	11.298	0	352155	0	0	24
126680	11.2989999999999995	0	352187	0	0	24
126681	11.3000000000000007	0	352217	0	0	24
126682	11.3010000000000002	0	352249	0	0	24
126683	11.3019999999999996	0	352281	0	0	24
126684	11.3030000000000008	0	352313	0	0	24
126685	11.3040000000000003	0	352345	0	0	24
126686	11.3049999999999997	0	352377	0	0	24
126687	11.3059999999999992	0	352409	0	0	24
126688	11.3070000000000004	0	352441	0	0	24
126689	11.3079999999999998	0	352473	0	0	24
126690	11.3089999999999993	0	352505	0	0	24
126691	11.3100000000000005	0	352535	0	0	24
126692	11.3109999999999999	0	352567	0	0	24
126693	11.3119999999999994	0	352599	0	0	24
126694	11.3130000000000006	0	352631	0	0	24
126695	11.3140000000000001	0	352663	0	0	24
126696	11.3149999999999995	0	352695	0	0	24
126697	11.3160000000000007	0	352727	0	0	24
126698	11.3170000000000002	0	352759	0	0	24
126699	11.3179999999999996	0	352791	0	0	24
126700	11.3190000000000008	0	352823	0	0	24
126701	11.3200000000000003	0	352853	0	0	24
126702	11.3209999999999997	0	352885	0	0	24
126703	11.3219999999999992	0	352917	0	0	24
126704	11.3230000000000004	0	352949	0	0	24
126705	11.3239999999999998	0	352981	0	0	24
126706	11.3249999999999993	0	353013	0	0	24
126707	11.3260000000000005	0	353045	0	0	24
126708	11.327	0	353077	0	0	24
126709	11.3279999999999994	0	353109	0	0	24
126710	11.3290000000000006	0	353141	0	0	24
126711	11.3300000000000001	0	353171	0	0	24
126712	11.3309999999999995	0	353203	0	0	24
126713	11.3320000000000007	0	353235	0	0	24
126714	11.3330000000000002	0	353267	0	0	24
126715	11.3339999999999996	0	353299	0	0	24
126716	11.3350000000000009	0	353331	0	0	24
126717	11.3360000000000003	0	353363	0	0	24
126718	11.3369999999999997	0	353395	0	0	24
126719	11.3379999999999992	0	353427	0	0	24
126720	11.3390000000000004	0	353459	0	0	24
126721	11.3399999999999999	0	353489	0	0	24
126722	11.3409999999999993	0	353521	0	0	24
126723	11.3420000000000005	0	353553	0	0	24
126724	11.343	0	353585	0	0	24
126725	11.3439999999999994	0	353617	0	0	24
126726	11.3450000000000006	0	353649	0	0	24
126727	11.3460000000000001	0	353681	0	0	24
126728	11.3469999999999995	0	353713	0	0	24
126729	11.3480000000000008	0	353745	0	0	24
126730	11.3490000000000002	0	353777	0	0	24
126731	11.3499999999999996	0	353807	0	0	24
126732	11.3510000000000009	0	353839	0	0	24
126733	11.3520000000000003	0	353871	0	0	24
126734	11.3529999999999998	0	353903	0	0	24
126735	11.3539999999999992	0	353935	0	0	24
126736	11.3550000000000004	0	353967	0	0	24
126737	11.3559999999999999	0	353999	0	0	24
126738	11.3569999999999993	0	354031	0	0	24
126739	11.3580000000000005	0	354063	0	0	24
126740	11.359	0	354095	0	0	24
126741	11.3599999999999994	0	354125	0	0	24
126742	11.3610000000000007	0	354157	0	0	24
126743	11.3620000000000001	0	354189	0	0	24
126744	11.3629999999999995	0	354221	0	0	24
126745	11.3640000000000008	0	354253	0	0	24
126746	11.3650000000000002	0	354285	0	0	24
126747	11.3659999999999997	0	354317	0	0	24
126748	11.3670000000000009	0	354349	0	0	24
126749	11.3680000000000003	0	354381	0	0	24
126750	11.3689999999999998	0	354413	0	0	24
126751	11.3699999999999992	0	354443	0	0	24
126752	11.3710000000000004	0	354475	0	0	24
126753	11.3719999999999999	0	354507	0	0	24
126754	11.3729999999999993	0	354539	0	0	24
126755	11.3740000000000006	0	354571	0	0	24
126756	11.375	0	354603	0	0	24
126757	11.3759999999999994	0	354635	0	0	24
126758	11.3770000000000007	0	354667	0	0	24
126759	11.3780000000000001	0	354699	0	0	24
126760	11.3789999999999996	0	354731	0	0	24
126761	11.3800000000000008	0	354761	0	0	24
126762	11.3810000000000002	0	354793	0	0	24
126763	11.3819999999999997	0	354825	0	0	24
126764	11.3829999999999991	0	354857	0	0	24
126765	11.3840000000000003	0	354889	0	0	24
126766	11.3849999999999998	0	354921	0	0	24
126767	11.3859999999999992	0	354953	0	0	24
126768	11.3870000000000005	0	354985	0	0	24
126769	11.3879999999999999	0	355017	0	0	24
126770	11.3889999999999993	0	355049	0	0	24
126771	11.3900000000000006	0	355079	0	0	24
126772	11.391	0	355111	0	0	24
126773	11.3919999999999995	0	355143	0	0	24
126774	11.3930000000000007	0	355175	0	0	24
126775	11.3940000000000001	0	355207	0	0	24
126776	11.3949999999999996	0	355239	0	0	24
126777	11.3960000000000008	0	355271	0	0	24
126778	11.3970000000000002	0	355303	0	0	24
126779	11.3979999999999997	0	355335	0	0	24
126780	11.3989999999999991	0	355367	0	0	24
126781	11.4000000000000004	0	355397	0	0	24
126782	11.4009999999999998	0	355429	0	0	24
126783	11.4019999999999992	0	355461	0	0	24
126784	11.4030000000000005	0	355493	0	0	24
126785	11.4039999999999999	0	355525	0	0	24
126786	11.4049999999999994	0	355557	0	0	24
126787	11.4060000000000006	0	355589	0	0	24
126788	11.407	0	355621	0	0	24
126789	11.4079999999999995	0	355653	0	0	24
126790	11.4090000000000007	0	355685	0	0	24
126791	11.4100000000000001	0	355715	0	0	24
126792	11.4109999999999996	0	355747	0	0	24
126793	11.4120000000000008	0	355779	0	0	24
126794	11.4130000000000003	0	355811	0	0	24
126795	11.4139999999999997	0	355843	0	0	24
126796	11.4149999999999991	0	355875	0	0	24
126797	11.4160000000000004	0	355907	0	0	24
126798	11.4169999999999998	0	355939	0	0	24
126799	11.4179999999999993	0	355971	0	0	24
126800	11.4190000000000005	0	356003	0	0	24
126801	11.4199999999999999	0	356033	0	0	24
126802	11.4209999999999994	0	356065	0	0	24
126803	11.4220000000000006	0	356097	0	0	24
126804	11.423	0	356129	0	0	24
126805	11.4239999999999995	0	356161	0	0	24
126806	11.4250000000000007	0	356193	0	0	24
126807	11.4260000000000002	0	356225	0	0	24
126808	11.4269999999999996	0	356257	0	0	24
126809	11.4280000000000008	0	356289	0	0	24
126810	11.4290000000000003	0	356321	0	0	24
126811	11.4299999999999997	0	356351	0	0	24
126812	11.4309999999999992	0	356383	0	0	24
126813	11.4320000000000004	0	356415	0	0	24
126814	11.4329999999999998	0	356447	0	0	24
126815	11.4339999999999993	0	356479	0	0	24
126816	11.4350000000000005	0	356511	0	0	24
126817	11.4359999999999999	0	356543	0	0	24
126818	11.4369999999999994	0	356575	0	0	24
126819	11.4380000000000006	0	356607	0	0	24
126820	11.4390000000000001	0	356639	0	0	24
126821	11.4399999999999995	0	356669	0	0	24
126822	11.4410000000000007	0	356701	0	0	24
126823	11.4420000000000002	0	356733	0	0	24
126824	11.4429999999999996	0	356765	0	0	24
126825	11.4440000000000008	0	356797	0	0	24
126826	11.4450000000000003	0	356829	0	0	24
126827	11.4459999999999997	0	356861	0	0	24
126828	11.4469999999999992	0	356893	0	0	24
126829	11.4480000000000004	0	356925	0	0	24
126830	11.4489999999999998	0	356957	0	0	24
126831	11.4499999999999993	0	356987	0	0	24
126832	11.4510000000000005	0	357019	0	0	24
126833	11.452	0	357051	0	0	24
126834	11.4529999999999994	0	357083	0	0	24
126835	11.4540000000000006	0	357115	0	0	24
126836	11.4550000000000001	0	357147	0	0	24
126837	11.4559999999999995	0	357179	0	0	24
126838	11.4570000000000007	0	357211	0	0	24
126839	11.4580000000000002	0	357243	0	0	24
126840	11.4589999999999996	0	357275	0	0	24
126841	11.4600000000000009	0	357305	0	0	24
126842	11.4610000000000003	0	357337	0	0	24
126843	11.4619999999999997	0	357369	0	0	24
126844	11.4629999999999992	0	357401	0	0	24
126845	11.4640000000000004	0	357433	0	0	24
126846	11.4649999999999999	0	357465	0	0	24
126847	11.4659999999999993	0	357497	0	0	24
126848	11.4670000000000005	0	357529	0	0	24
126849	11.468	0	357561	0	0	24
126850	11.4689999999999994	0	357593	0	0	24
126851	11.4700000000000006	0	357623	0	0	24
126852	11.4710000000000001	0	357655	0	0	24
126853	11.4719999999999995	0	357687	0	0	24
126854	11.4730000000000008	0	357719	0	0	24
126855	11.4740000000000002	0	357751	0	0	24
126856	11.4749999999999996	0	357783	0	0	24
126857	11.4760000000000009	0	357815	0	0	24
126858	11.4770000000000003	0	357847	0	0	24
126859	11.4779999999999998	0	357879	0	0	24
126860	11.4789999999999992	0	357911	0	0	24
126861	11.4800000000000004	0	357941	0	0	24
126862	11.4809999999999999	0	357973	0	0	24
126863	11.4819999999999993	0	358005	0	0	24
126864	11.4830000000000005	0	358037	0	0	24
126865	11.484	0	358069	0	0	24
126866	11.4849999999999994	0	358101	0	0	24
126867	11.4860000000000007	0	358133	0	0	24
126868	11.4870000000000001	0	358165	0	0	24
126869	11.4879999999999995	0	358197	0	0	24
126870	11.4890000000000008	0	358229	0	0	24
126871	11.4900000000000002	0	358259	0	0	24
126872	11.4909999999999997	0	358291	0	0	24
126873	11.4920000000000009	0	358323	0	0	24
126874	11.4930000000000003	0	358355	0	0	24
126875	11.4939999999999998	0	358387	0	0	24
126876	11.4949999999999992	0	358419	0	0	24
126877	11.4960000000000004	0	358451	0	0	24
126878	11.4969999999999999	0	358483	0	0	24
126879	11.4979999999999993	0	358515	0	0	24
126880	11.4990000000000006	0	358547	0	0	24
126881	11.5	0	358577	0	0	24
126882	11.5009999999999994	0	358609	0	0	24
126883	11.5020000000000007	0	358641	0	0	24
126884	11.5030000000000001	0	358673	0	0	24
126885	11.5039999999999996	0	358705	0	0	24
126886	11.5050000000000008	0	358737	0	0	24
126887	11.5060000000000002	0	358769	0	0	24
126888	11.5069999999999997	0	358801	0	0	24
126889	11.5079999999999991	0	358833	0	0	24
126890	11.5090000000000003	0	358865	0	0	24
126891	11.5099999999999998	0	358895	0	0	24
126892	11.5109999999999992	0	358927	0	0	24
126893	11.5120000000000005	0	358959	0	0	24
126894	11.5129999999999999	0	358991	0	0	24
126895	11.5139999999999993	0	359023	0	0	24
126896	11.5150000000000006	0	359055	0	0	24
126897	11.516	0	359087	0	0	24
126898	11.5169999999999995	0	359119	0	0	24
126899	11.5180000000000007	0	359151	0	0	24
126900	11.5190000000000001	0	359183	0	0	24
126901	11.5199999999999996	0	359213	0	0	24
126902	11.5210000000000008	0	359245	0	0	24
126903	11.5220000000000002	0	359277	0	0	24
126904	11.5229999999999997	0	359309	0	0	24
126905	11.5239999999999991	0	359341	0	0	24
126906	11.5250000000000004	0	359373	0	0	24
126907	11.5259999999999998	0	359405	0	0	24
126908	11.5269999999999992	0	359437	0	0	24
126909	11.5280000000000005	0	359469	0	0	24
126910	11.5289999999999999	0	359501	0	0	24
126911	11.5299999999999994	0	359531	0	0	24
126912	11.5310000000000006	0	359563	0	0	24
126913	11.532	0	359595	0	0	24
126914	11.5329999999999995	0	359627	0	0	24
126915	11.5340000000000007	0	359659	0	0	24
126916	11.5350000000000001	0	359691	0	0	24
126917	11.5359999999999996	0	359723	0	0	24
126918	11.5370000000000008	0	359755	0	0	24
126919	11.5380000000000003	0	359787	0	0	24
126920	11.5389999999999997	0	359819	0	0	24
126921	11.5399999999999991	0	359849	0	0	24
126922	11.5410000000000004	0	359881	0	0	24
126923	11.5419999999999998	0	359913	0	0	24
126924	11.5429999999999993	0	359945	0	0	24
126925	11.5440000000000005	0	359977	0	0	24
126926	11.5449999999999999	0	360009	0	0	24
126927	11.5459999999999994	0	360041	0	0	24
126928	11.5470000000000006	0	360073	0	0	24
126929	11.548	0	360105	0	0	24
126930	11.5489999999999995	0	360137	0	0	24
126931	11.5500000000000007	0	360167	0	0	24
126932	11.5510000000000002	0	360199	0	0	24
126933	11.5519999999999996	0	360231	0	0	24
126934	11.5530000000000008	0	360263	0	0	24
126935	11.5540000000000003	0	360295	0	0	24
126936	11.5549999999999997	0	360327	0	0	24
126937	11.5559999999999992	0	360359	0	0	24
126938	11.5570000000000004	0	360391	0	0	24
126939	11.5579999999999998	0	360423	0	0	24
126940	11.5589999999999993	0	360455	0	0	24
126941	11.5600000000000005	0	360485	0	0	24
126942	11.5609999999999999	0	360517	0	0	24
126943	11.5619999999999994	0	360549	0	0	24
126944	11.5630000000000006	0	360581	0	0	24
126945	11.5640000000000001	0	360613	0	0	24
126946	11.5649999999999995	0	360645	0	0	24
126947	11.5660000000000007	0	360677	0	0	24
126948	11.5670000000000002	0	360709	0	0	24
126949	11.5679999999999996	0	360741	0	0	24
126950	11.5690000000000008	0	360773	0	0	24
126951	11.5700000000000003	0	360803	0	0	24
126952	11.5709999999999997	0	360835	0	0	24
126953	11.5719999999999992	0	360867	0	0	24
126954	11.5730000000000004	0	360899	0	0	24
126955	11.5739999999999998	0	360931	0	0	24
126956	11.5749999999999993	0	360963	0	0	24
126957	11.5760000000000005	0	360995	0	0	24
126958	11.577	0	361027	0	0	24
126959	11.5779999999999994	0	361059	0	0	24
126960	11.5790000000000006	0	361091	0	0	24
126961	11.5800000000000001	0	361121	0	0	24
126962	11.5809999999999995	0	361153	0	0	24
126963	11.5820000000000007	0	361185	0	0	24
126964	11.5830000000000002	0	361217	0	0	24
126965	11.5839999999999996	0	361249	0	0	24
126966	11.5850000000000009	0	361281	0	0	24
126967	11.5860000000000003	0	361313	0	0	24
126968	11.5869999999999997	0	361345	0	0	24
126969	11.5879999999999992	0	361377	0	0	24
126970	11.5890000000000004	0	361409	0	0	24
126971	11.5899999999999999	0	361439	0	0	24
126972	11.5909999999999993	0	361471	0	0	24
126973	11.5920000000000005	0	361503	0	0	24
126974	11.593	0	361535	0	0	24
126975	11.5939999999999994	0	361567	0	0	24
126976	11.5950000000000006	0	361599	0	0	24
126977	11.5960000000000001	0	361631	0	0	24
126978	11.5969999999999995	0	361663	0	0	24
126979	11.5980000000000008	0	361695	0	0	24
126980	11.5990000000000002	0	361727	0	0	24
126981	11.5999999999999996	0	361757	0	0	24
126982	11.6010000000000009	0	361789	0	0	24
126983	11.6020000000000003	0	361821	0	0	24
126984	11.6029999999999998	0	361853	0	0	24
126985	11.6039999999999992	0	361885	0	0	24
126986	11.6050000000000004	0	361917	0	0	24
126987	11.6059999999999999	0	361949	0	0	24
126988	11.6069999999999993	0	361981	0	0	24
126989	11.6080000000000005	0	362013	0	0	24
126990	11.609	0	362045	0	0	24
126991	11.6099999999999994	0	362075	0	0	24
126992	11.6110000000000007	0	362107	0	0	24
126993	11.6120000000000001	0	362139	0	0	24
126994	11.6129999999999995	0	362171	0	0	24
126995	11.6140000000000008	0	362203	0	0	24
126996	11.6150000000000002	0	362235	0	0	24
126997	11.6159999999999997	0	362267	0	0	24
126998	11.6170000000000009	0	362299	0	0	24
126999	11.6180000000000003	0	362331	0	0	24
127000	11.6189999999999998	0	362363	0	0	24
127001	11.6199999999999992	0	362393	0	0	24
127002	11.6210000000000004	0	362425	0	0	24
127003	11.6219999999999999	0	362457	0	0	24
127004	11.6229999999999993	0	362489	0	0	24
127005	11.6240000000000006	0	362521	0	0	24
127006	11.625	0	362553	0	0	24
127007	11.6259999999999994	0	362585	0	0	24
127008	11.6270000000000007	0	362617	0	0	24
127009	11.6280000000000001	0	362649	0	0	24
127010	11.6289999999999996	0	362681	0	0	24
127011	11.6300000000000008	0	362711	0	0	24
127012	11.6310000000000002	0	362743	0	0	24
127013	11.6319999999999997	0	362775	0	0	24
127014	11.6329999999999991	0	362807	0	0	24
127015	11.6340000000000003	0	362839	0	0	24
127016	11.6349999999999998	0	362871	0	0	24
127017	11.6359999999999992	0	362903	0	0	24
127018	11.6370000000000005	0	362935	0	0	24
127019	11.6379999999999999	0	362967	0	0	24
127020	11.6389999999999993	0	362999	0	0	24
127021	11.6400000000000006	0	363029	0	0	24
127022	11.641	0	363061	0	0	24
127023	11.6419999999999995	0	363093	0	0	24
127024	11.6430000000000007	0	363125	0	0	24
127025	11.6440000000000001	0	363157	0	0	24
127026	11.6449999999999996	0	363189	0	0	24
127027	11.6460000000000008	0	363221	0	0	24
127028	11.6470000000000002	0	363253	0	0	24
127029	11.6479999999999997	0	363285	0	0	24
127030	11.6489999999999991	0	363317	0	0	24
127031	11.6500000000000004	0	363347	0	0	24
127032	11.6509999999999998	0	363379	0	0	24
127033	11.6519999999999992	0	363411	0	0	24
127034	11.6530000000000005	0	363443	0	0	24
127035	11.6539999999999999	0	363475	0	0	24
127036	11.6549999999999994	0	363507	0	0	24
127037	11.6560000000000006	0	363539	0	0	24
127038	11.657	0	363571	0	0	24
127039	11.6579999999999995	0	363603	0	0	24
127040	11.6590000000000007	0	363635	0	0	24
127041	11.6600000000000001	0	363665	0	0	24
127042	11.6609999999999996	0	363697	0	0	24
127043	11.6620000000000008	0	363729	0	0	24
127044	11.6630000000000003	0	363761	0	0	24
127045	11.6639999999999997	0	363793	0	0	24
127046	11.6649999999999991	0	363825	0	0	24
127047	11.6660000000000004	0	363857	0	0	24
127048	11.6669999999999998	0	363889	0	0	24
127049	11.6679999999999993	0	363921	0	0	24
127050	11.6690000000000005	0	363953	0	0	24
127051	11.6699999999999999	0	363983	0	0	24
127052	11.6709999999999994	0	364015	0	0	24
127053	11.6720000000000006	0	364047	0	0	24
127054	11.673	0	364079	0	0	24
127055	11.6739999999999995	0	364111	0	0	24
127056	11.6750000000000007	0	364143	0	0	24
127057	11.6760000000000002	0	364175	0	0	24
127058	11.6769999999999996	0	364207	0	0	24
127059	11.6780000000000008	0	364239	0	0	24
127060	11.6790000000000003	0	364271	0	0	24
127061	11.6799999999999997	0	364301	0	0	24
127062	11.6809999999999992	0	364333	0	0	24
127063	11.6820000000000004	0	364365	0	0	24
127064	11.6829999999999998	0	364397	0	0	24
127065	11.6839999999999993	0	364429	0	0	24
127066	11.6850000000000005	0	364461	0	0	24
127067	11.6859999999999999	0	364493	0	0	24
127068	11.6869999999999994	0	364525	0	0	24
127069	11.6880000000000006	0	364557	0	0	24
127070	11.6890000000000001	0	364589	0	0	24
127071	11.6899999999999995	0	364619	0	0	24
127072	11.6910000000000007	0	364651	0	0	24
127073	11.6920000000000002	0	364683	0	0	24
127074	11.6929999999999996	0	364715	0	0	24
127075	11.6940000000000008	0	364747	0	0	24
127076	11.6950000000000003	0	364779	0	0	24
127077	11.6959999999999997	0	364811	0	0	24
127078	11.6969999999999992	0	364843	0	0	24
127079	11.6980000000000004	0	364875	0	0	24
127080	11.6989999999999998	0	364907	0	0	24
127081	11.6999999999999993	0	364937	0	0	24
127082	11.7010000000000005	0	364969	0	0	24
127083	11.702	0	365001	0	0	24
127084	11.7029999999999994	0	365033	0	0	24
127085	11.7040000000000006	0	365065	0	0	24
127086	11.7050000000000001	0	365097	0	0	24
127087	11.7059999999999995	0	365129	0	0	24
127088	11.7070000000000007	0	365161	0	0	24
127089	11.7080000000000002	0	365193	0	0	24
127090	11.7089999999999996	0	365225	0	0	24
127091	11.7100000000000009	0	365255	0	0	24
127092	11.7110000000000003	0	365287	0	0	24
127093	11.7119999999999997	0	365319	0	0	24
127094	11.7129999999999992	0	365351	0	0	24
127095	11.7140000000000004	0	365383	0	0	24
127096	11.7149999999999999	0	365415	0	0	24
127097	11.7159999999999993	0	365447	0	0	24
127098	11.7170000000000005	0	365479	0	0	24
127099	11.718	0	365511	0	0	24
127100	11.7189999999999994	0	365543	0	0	24
127101	11.7200000000000006	0	365573	0	0	24
127102	11.7210000000000001	0	365605	0	0	24
127103	11.7219999999999995	0	365637	0	0	24
127104	11.7230000000000008	0	365669	0	0	24
127105	11.7240000000000002	0	365701	0	0	24
127106	11.7249999999999996	0	365733	0	0	24
127107	11.7260000000000009	0	365765	0	0	24
127108	11.7270000000000003	0	365797	0	0	24
127109	11.7279999999999998	0	365829	0	0	24
127110	11.7289999999999992	0	365861	0	0	24
127111	11.7300000000000004	0	365891	0	0	24
127112	11.7309999999999999	0	365923	0	0	24
127113	11.7319999999999993	0	365955	0	0	24
127114	11.7330000000000005	0	365987	0	0	24
127115	11.734	0	366019	0	0	24
127116	11.7349999999999994	0	366051	0	0	24
127117	11.7360000000000007	0	366083	0	0	24
127118	11.7370000000000001	0	366115	0	0	24
127119	11.7379999999999995	0	366147	0	0	24
127120	11.7390000000000008	0	366179	0	0	24
127121	11.7400000000000002	0	366209	0	0	24
127122	11.7409999999999997	0	366241	0	0	24
127123	11.7420000000000009	0	366273	0	0	24
127124	11.7430000000000003	0	366305	0	0	24
127125	11.7439999999999998	0	366337	0	0	24
127126	11.7449999999999992	0	366369	0	0	24
127127	11.7460000000000004	0	366401	0	0	24
127128	11.7469999999999999	0	366433	0	0	24
127129	11.7479999999999993	0	366465	0	0	24
127130	11.7490000000000006	0	366497	0	0	24
127131	11.75	0	366527	0	0	24
127132	11.7509999999999994	0	366559	0	0	24
127133	11.7520000000000007	0	366591	0	0	24
127134	11.7530000000000001	0	366623	0	0	24
127135	11.7539999999999996	0	366655	0	0	24
127136	11.7550000000000008	0	366687	0	0	24
127137	11.7560000000000002	0	366719	0	0	24
127138	11.7569999999999997	0	366751	0	0	24
127139	11.7579999999999991	0	366783	0	0	24
127140	11.7590000000000003	0	366815	0	0	24
127141	11.7599999999999998	0	366845	0	0	24
127142	11.7609999999999992	0	366877	0	0	24
127143	11.7620000000000005	0	366909	0	0	24
127144	11.7629999999999999	0	366941	0	0	24
127145	11.7639999999999993	0	366973	0	0	24
127146	11.7650000000000006	0	367005	0	0	24
127147	11.766	0	367037	0	0	24
127148	11.7669999999999995	0	367069	0	0	24
127149	11.7680000000000007	0	367101	0	0	24
127150	11.7690000000000001	0	367133	0	0	24
127151	11.7699999999999996	0	367163	0	0	24
127152	11.7710000000000008	0	367195	0	0	24
127153	11.7720000000000002	0	367227	0	0	24
127154	11.7729999999999997	0	367259	0	0	24
127155	11.7739999999999991	0	367291	0	0	24
127156	11.7750000000000004	0	367323	0	0	24
127157	11.7759999999999998	0	367355	0	0	24
127158	11.7769999999999992	0	367387	0	0	24
127159	11.7780000000000005	0	367419	0	0	24
127160	11.7789999999999999	0	367451	0	0	24
127161	11.7799999999999994	0	367481	0	0	24
127162	11.7810000000000006	0	367513	0	0	24
127163	11.782	0	367545	0	0	24
127164	11.7829999999999995	0	367577	0	0	24
127165	11.7840000000000007	0	367609	0	0	24
127166	11.7850000000000001	0	367641	0	0	24
127167	11.7859999999999996	0	367673	0	0	24
127168	11.7870000000000008	0	367705	0	0	24
127169	11.7880000000000003	0	367737	0	0	24
127170	11.7889999999999997	0	367769	0	0	24
127171	11.7899999999999991	0	367799	0	0	24
127172	11.7910000000000004	0	367831	0	0	24
127173	11.7919999999999998	0	367863	0	0	24
127174	11.7929999999999993	0	367895	0	0	24
127175	11.7940000000000005	0	367927	0	0	24
127176	11.7949999999999999	0	367959	0	0	24
127177	11.7959999999999994	0	367991	0	0	24
127178	11.7970000000000006	0	368023	0	0	24
127179	11.798	0	368055	0	0	24
127180	11.7989999999999995	0	368087	0	0	24
127181	11.8000000000000007	0	368117	0	0	24
127182	11.8010000000000002	0	368149	0	0	24
127183	11.8019999999999996	0	368181	0	0	24
127184	11.8030000000000008	0	368213	0	0	24
127185	11.8040000000000003	0	368245	0	0	24
127186	11.8049999999999997	0	368277	0	0	24
127187	11.8059999999999992	0	368309	0	0	24
127188	11.8070000000000004	0	368341	0	0	24
127189	11.8079999999999998	0	368373	0	0	24
127190	11.8089999999999993	0	368405	0	0	24
127191	11.8100000000000005	0	368435	0	0	24
127192	11.8109999999999999	0	368467	0	0	24
127193	11.8119999999999994	0	368499	0	0	24
127194	11.8130000000000006	0	368531	0	0	24
127195	11.8140000000000001	0	368563	0	0	24
127196	11.8149999999999995	0	368595	0	0	24
127197	11.8160000000000007	0	368627	0	0	24
127198	11.8170000000000002	0	368659	0	0	24
127199	11.8179999999999996	0	368691	0	0	24
127200	11.8190000000000008	0	368723	0	0	24
127201	11.8200000000000003	0	368753	0	0	24
127202	11.8209999999999997	0	368785	0	0	24
127203	11.8219999999999992	0	368817	0	0	24
127204	11.8230000000000004	0	368849	0	0	24
127205	11.8239999999999998	0	368881	0	0	24
127206	11.8249999999999993	0	368913	0	0	24
127207	11.8260000000000005	0	368945	0	0	24
127208	11.827	0	368977	0	0	24
127209	11.8279999999999994	0	369009	0	0	24
127210	11.8290000000000006	0	369041	0	0	24
127211	11.8300000000000001	0	369071	0	0	24
127212	11.8309999999999995	0	369103	0	0	24
127213	11.8320000000000007	0	369135	0	0	24
127214	11.8330000000000002	0	369167	0	0	24
127215	11.8339999999999996	0	369199	0	0	24
127216	11.8350000000000009	0	369231	0	0	24
127217	11.8360000000000003	0	369263	0	0	24
127218	11.8369999999999997	0	369295	0	0	24
127219	11.8379999999999992	0	369327	0	0	24
127220	11.8390000000000004	0	369359	0	0	24
127221	11.8399999999999999	0	369389	0	0	24
127222	11.8409999999999993	0	369421	0	0	24
127223	11.8420000000000005	0	369453	0	0	24
127224	11.843	0	369485	0	0	24
127225	11.8439999999999994	0	369517	0	0	24
127226	11.8450000000000006	0	369549	0	0	24
127227	11.8460000000000001	0	369581	0	0	24
127228	11.8469999999999995	0	369613	0	0	24
127229	11.8480000000000008	0	369645	0	0	24
127230	11.8490000000000002	0	369677	0	0	24
127231	11.8499999999999996	0	369707	0	0	24
127232	11.8510000000000009	0	369739	0	0	24
127233	11.8520000000000003	0	369771	0	0	24
127234	11.8529999999999998	0	369803	0	0	24
127235	11.8539999999999992	0	369835	0	0	24
127236	11.8550000000000004	0	369867	0	0	24
127237	11.8559999999999999	0	369899	0	0	24
127238	11.8569999999999993	0	369931	0	0	24
127239	11.8580000000000005	0	369963	0	0	24
127240	11.859	0	369995	0	0	24
127241	11.8599999999999994	0	370025	0	0	24
127242	11.8610000000000007	0	370057	0	0	24
127243	11.8620000000000001	0	370089	0	0	24
127244	11.8629999999999995	0	370121	0	0	24
127245	11.8640000000000008	0	370153	0	0	24
127246	11.8650000000000002	0	370185	0	0	24
127247	11.8659999999999997	0	370217	0	0	24
127248	11.8670000000000009	0	370249	0	0	24
127249	11.8680000000000003	0	370281	0	0	24
127250	11.8689999999999998	0	370313	0	0	24
127251	11.8699999999999992	0	370343	0	0	24
127252	11.8710000000000004	0	370375	0	0	24
127253	11.8719999999999999	0	370407	0	0	24
127254	11.8729999999999993	0	370439	0	0	24
127255	11.8740000000000006	0	370471	0	0	24
127256	11.875	0	370503	0	0	24
127257	11.8759999999999994	0	370535	0	0	24
127258	11.8770000000000007	0	370567	0	0	24
127259	11.8780000000000001	0	370599	0	0	24
127260	11.8789999999999996	0	370631	0	0	24
127261	11.8800000000000008	0	370661	0	0	24
127262	11.8810000000000002	0	370693	0	0	24
127263	11.8819999999999997	0	370725	0	0	24
127264	11.8829999999999991	0	370757	0	0	24
127265	11.8840000000000003	0	370789	0	0	24
127266	11.8849999999999998	0	370821	0	0	24
127267	11.8859999999999992	0	370853	0	0	24
127268	11.8870000000000005	0	370885	0	0	24
127269	11.8879999999999999	0	370917	0	0	24
127270	11.8889999999999993	0	370949	0	0	24
127271	11.8900000000000006	0	370979	0	0	24
127272	11.891	0	371011	0	0	24
127273	11.8919999999999995	0	371043	0	0	24
127274	11.8930000000000007	0	371075	0	0	24
127275	11.8940000000000001	0	371107	0	0	24
127276	11.8949999999999996	0	371139	0	0	24
127277	11.8960000000000008	0	371171	0	0	24
127278	11.8970000000000002	0	371203	0	0	24
127279	11.8979999999999997	0	371235	0	0	24
127280	11.8989999999999991	0	371267	0	0	24
127281	11.9000000000000004	0	371297	0	0	24
127282	11.9009999999999998	0	371329	0	0	24
127283	11.9019999999999992	0	371361	0	0	24
127284	11.9030000000000005	0	371393	0	0	24
127285	11.9039999999999999	0	371425	0	0	24
127286	11.9049999999999994	0	371457	0	0	24
127287	11.9060000000000006	0	371489	0	0	24
127288	11.907	0	371521	0	0	24
127289	11.9079999999999995	0	371553	0	0	24
127290	11.9090000000000007	0	371585	0	0	24
127291	11.9100000000000001	0	371615	0	0	24
127292	11.9109999999999996	0	371647	0	0	24
127293	11.9120000000000008	0	371679	0	0	24
127294	11.9130000000000003	0	371711	0	0	24
127295	11.9139999999999997	0	371743	0	0	24
127296	11.9149999999999991	0	371775	0	0	24
127297	11.9160000000000004	0	371807	0	0	24
127298	11.9169999999999998	0	371839	0	0	24
127299	11.9179999999999993	0	371871	0	0	24
127300	11.9190000000000005	0	371903	0	0	24
127301	11.9199999999999999	0	371933	0	0	24
127302	11.9209999999999994	0	371965	0	0	24
127303	11.9220000000000006	0	371997	0	0	24
127304	11.923	0	372029	0	0	24
127305	11.9239999999999995	0	372061	0	0	24
127306	11.9250000000000007	0	372093	0	0	24
127307	11.9260000000000002	0	372125	0	0	24
127308	11.9269999999999996	0	372157	0	0	24
127309	11.9280000000000008	0	372189	0	0	24
127310	11.9290000000000003	0	372221	0	0	24
127311	11.9299999999999997	0	372251	0	0	24
127312	11.9309999999999992	0	372283	0	0	24
127313	11.9320000000000004	0	372315	0	0	24
127314	11.9329999999999998	0	372347	0	0	24
127315	11.9339999999999993	0	372379	0	0	24
127316	11.9350000000000005	0	372411	0	0	24
127317	11.9359999999999999	0	372443	0	0	24
127318	11.9369999999999994	0	372475	0	0	24
127319	11.9380000000000006	0	372507	0	0	24
127320	11.9390000000000001	0	372539	0	0	24
127321	11.9399999999999995	0	372569	0	0	24
127322	11.9410000000000007	0	372601	0	0	24
127323	11.9420000000000002	0	372633	0	0	24
127324	11.9429999999999996	0	372665	0	0	24
127325	11.9440000000000008	0	372697	0	0	24
127326	11.9450000000000003	0	372729	0	0	24
127327	11.9459999999999997	0	372761	0	0	24
127328	11.9469999999999992	0	372793	0	0	24
127329	11.9480000000000004	0	372825	0	0	24
127330	11.9489999999999998	0	372857	0	0	24
127331	11.9499999999999993	0	372887	0	0	24
127332	11.9510000000000005	0	372919	0	0	24
127333	11.952	0	372951	0	0	24
127334	11.9529999999999994	0	372983	0	0	24
127335	11.9540000000000006	0	373015	0	0	24
127336	11.9550000000000001	0	373047	0	0	24
127337	11.9559999999999995	0	373079	0	0	24
127338	11.9570000000000007	0	373111	0	0	24
127339	11.9580000000000002	0	373143	0	0	24
127340	11.9589999999999996	0	373175	0	0	24
127341	11.9600000000000009	0	373205	0	0	24
127342	11.9610000000000003	0	373237	0	0	24
127343	11.9619999999999997	0	373269	0	0	24
127344	11.9629999999999992	0	373301	0	0	24
127345	11.9640000000000004	0	373333	0	0	24
127346	11.9649999999999999	0	373365	0	0	24
127347	11.9659999999999993	0	373397	0	0	24
127348	11.9670000000000005	0	373429	0	0	24
127349	11.968	0	373461	0	0	24
127350	11.9689999999999994	0	373493	0	0	24
127351	11.9700000000000006	0	373523	0	0	24
127352	11.9710000000000001	0	373555	0	0	24
127353	11.9719999999999995	0	373587	0	0	24
127354	11.9730000000000008	0	373619	0	0	24
127355	11.9740000000000002	0	373651	0	0	24
127356	11.9749999999999996	0	373683	0	0	24
127357	11.9760000000000009	0	373715	0	0	24
127358	11.9770000000000003	0	373747	0	0	24
127359	11.9779999999999998	0	373779	0	0	24
127360	11.9789999999999992	0	373811	0	0	24
127361	11.9800000000000004	0	373841	0	0	24
127362	11.9809999999999999	0	373873	0	0	24
127363	11.9819999999999993	0	373905	0	0	24
127364	11.9830000000000005	0	373937	0	0	24
127365	11.984	0	373969	0	0	24
127366	11.9849999999999994	0	374001	0	0	24
127367	11.9860000000000007	0	374033	0	0	24
127368	11.9870000000000001	0	374065	0	0	24
127369	11.9879999999999995	0	374097	0	0	24
127370	11.9890000000000008	0	374129	0	0	24
127371	11.9900000000000002	0	374159	0	0	24
127372	11.9909999999999997	0	374191	0	0	24
127373	11.9920000000000009	0	374223	0	0	24
127374	11.9930000000000003	0	374255	0	0	24
127375	11.9939999999999998	0	374287	0	0	24
127376	11.9949999999999992	0	374319	0	0	24
127377	11.9960000000000004	0	374351	0	0	24
127378	11.9969999999999999	0	374383	0	0	24
127379	11.9979999999999993	0	374415	0	0	24
127380	11.9990000000000006	0	374447	0	0	24
127381	12	0	374477	0	0	24
127382	12.0009999999999994	0	374509	0	0	24
127383	12.0020000000000007	0	374541	0	0	24
127384	12.0030000000000001	0	374573	0	0	24
127385	12.0039999999999996	0	374605	0	0	24
127386	12.0050000000000008	0	374637	0	0	24
127387	12.0060000000000002	0	374669	0	0	24
127388	12.0069999999999997	0	374701	0	0	24
127389	12.0079999999999991	0	374733	0	0	24
127390	12.0090000000000003	0	374765	0	0	24
127391	12.0099999999999998	0	374795	0	0	24
127392	12.0109999999999992	0	374827	0	0	24
127393	12.0120000000000005	0	374859	0	0	24
127394	12.0129999999999999	0	374891	0	0	24
127395	12.0139999999999993	0	374923	0	0	24
127396	12.0150000000000006	0	374955	0	0	24
127397	12.016	0	374987	0	0	24
127398	12.0169999999999995	0	375019	0	0	24
127399	12.0180000000000007	0	375051	0	0	24
127400	12.0190000000000001	0	375083	0	0	24
127401	12.0199999999999996	0	375113	0	0	24
127402	12.0210000000000008	0	375145	0	0	24
127403	12.0220000000000002	0	375177	0	0	24
127404	12.0229999999999997	0	375209	0	0	24
127405	12.0239999999999991	0	375241	0	0	24
127406	12.0250000000000004	0	375273	0	0	24
127407	12.0259999999999998	0	375305	0	0	24
127408	12.0269999999999992	0	375337	0	0	24
127409	12.0280000000000005	0	375369	0	0	24
127410	12.0289999999999999	0	375401	0	0	24
127411	12.0299999999999994	0	375431	0	0	24
127412	12.0310000000000006	0	375463	0	0	24
127413	12.032	0	375495	0	0	24
127414	12.0329999999999995	0	375527	0	0	24
127415	12.0340000000000007	0	375559	0	0	24
127416	12.0350000000000001	0	375591	0	0	24
127417	12.0359999999999996	0	375623	0	0	24
127418	12.0370000000000008	0	375655	0	0	24
127419	12.0380000000000003	0	375687	0	0	24
127420	12.0389999999999997	0	375719	0	0	24
127421	12.0399999999999991	0	375749	0	0	24
127422	12.0410000000000004	0	375781	0	0	24
127423	12.0419999999999998	0	375813	0	0	24
127424	12.0429999999999993	0	375845	0	0	24
127425	12.0440000000000005	0	375877	0	0	24
127426	12.0449999999999999	0	375909	0	0	24
127427	12.0459999999999994	0	375941	0	0	24
127428	12.0470000000000006	0	375973	0	0	24
127429	12.048	0	376005	0	0	24
127430	12.0489999999999995	0	376037	0	0	24
127431	12.0500000000000007	0	376067	0	0	24
127432	12.0510000000000002	0	376099	0	0	24
127433	12.0519999999999996	0	376131	0	0	24
127434	12.0530000000000008	0	376163	0	0	24
127435	12.0540000000000003	0	376195	0	0	24
127436	12.0549999999999997	0	376227	0	0	24
127437	12.0559999999999992	0	376259	0	0	24
127438	12.0570000000000004	0	376291	0	0	24
127439	12.0579999999999998	0	376323	0	0	24
127440	12.0589999999999993	0	376355	0	0	24
127441	12.0600000000000005	0	376385	0	0	24
127442	12.0609999999999999	0	376417	0	0	24
127443	12.0619999999999994	0	376449	0	0	24
127444	12.0630000000000006	0	376481	0	0	24
127445	12.0640000000000001	0	376513	0	0	24
127446	12.0649999999999995	0	376545	0	0	24
127447	12.0660000000000007	0	376577	0	0	24
127448	12.0670000000000002	0	376609	0	0	24
127449	12.0679999999999996	0	376641	0	0	24
127450	12.0690000000000008	0	376673	0	0	24
127451	12.0700000000000003	0	376703	0	0	24
127452	12.0709999999999997	0	376735	0	0	24
127453	12.0719999999999992	0	376767	0	0	24
127454	12.0730000000000004	0	376799	0	0	24
127455	12.0739999999999998	0	376831	0	0	24
127456	12.0749999999999993	0	376863	0	0	24
127457	12.0760000000000005	0	376895	0	0	24
127458	12.077	0	376927	0	0	24
127459	12.0779999999999994	0	376959	0	0	24
127460	12.0790000000000006	0	376991	0	0	24
127461	12.0800000000000001	0	377021	0	0	24
127462	12.0809999999999995	0	377053	0	0	24
127463	12.0820000000000007	0	377085	0	0	24
127464	12.0830000000000002	0	377117	0	0	24
127465	12.0839999999999996	0	377149	0	0	24
127466	12.0850000000000009	0	377181	0	0	24
127467	12.0860000000000003	0	377213	0	0	24
127468	12.0869999999999997	0	377245	0	0	24
127469	12.0879999999999992	0	377277	0	0	24
127470	12.0890000000000004	0	377309	0	0	24
127471	12.0899999999999999	0	377339	0	0	24
127472	12.0909999999999993	0	377371	0	0	24
127473	12.0920000000000005	0	377403	0	0	24
127474	12.093	0	377435	0	0	24
127475	12.0939999999999994	0	377467	0	0	24
127476	12.0950000000000006	0	377499	0	0	24
127477	12.0960000000000001	0	377531	0	0	24
127478	12.0969999999999995	0	377563	0	0	24
127479	12.0980000000000008	0	377595	0	0	24
127480	12.0990000000000002	0	377627	0	0	24
127481	12.0999999999999996	0	377657	0	0	24
127482	12.1010000000000009	0	377689	0	0	24
127483	12.1020000000000003	0	377721	0	0	24
127484	12.1029999999999998	0	377753	0	0	24
127485	12.1039999999999992	0	377785	0	0	24
127486	12.1050000000000004	0	377817	0	0	24
127487	12.1059999999999999	0	377849	0	0	24
127488	12.1069999999999993	0	377881	0	0	24
127489	12.1080000000000005	0	377913	0	0	24
127490	12.109	0	377945	0	0	24
127491	12.1099999999999994	0	377975	0	0	24
127492	12.1110000000000007	0	378007	0	0	24
127493	12.1120000000000001	0	378039	0	0	24
127494	12.1129999999999995	0	378071	0	0	24
127495	12.1140000000000008	0	378103	0	0	24
127496	12.1150000000000002	0	378135	0	0	24
127497	12.1159999999999997	0	378167	0	0	24
127498	12.1170000000000009	0	378199	0	0	24
127499	12.1180000000000003	0	378231	0	0	24
127500	12.1189999999999998	0	378263	0	0	24
127501	12.1199999999999992	0	378293	0	0	24
127502	12.1210000000000004	0	378325	0	0	24
127503	12.1219999999999999	0	378357	0	0	24
127504	12.1229999999999993	0	378389	0	0	24
127505	12.1240000000000006	0	378421	0	0	24
127506	12.125	0	378453	0	0	24
127507	12.1259999999999994	0	378485	0	0	24
127508	12.1270000000000007	0	378517	0	0	24
127509	12.1280000000000001	0	378549	0	0	24
127510	12.1289999999999996	0	378581	0	0	24
127511	12.1300000000000008	0	378611	0	0	24
127512	12.1310000000000002	0	378643	0	0	24
127513	12.1319999999999997	0	378675	0	0	24
127514	12.1329999999999991	0	378707	0	0	24
127515	12.1340000000000003	0	378739	0	0	24
127516	12.1349999999999998	0	378771	0	0	24
127517	12.1359999999999992	0	378803	0	0	24
127518	12.1370000000000005	0	378835	0	0	24
127519	12.1379999999999999	0	378867	0	0	24
127520	12.1389999999999993	0	378899	0	0	24
127521	12.1400000000000006	0	378929	0	0	24
127522	12.141	0	378961	0	0	24
127523	12.1419999999999995	0	378993	0	0	24
127524	12.1430000000000007	0	379025	0	0	24
127525	12.1440000000000001	0	379057	0	0	24
127526	12.1449999999999996	0	379089	0	0	24
127527	12.1460000000000008	0	379121	0	0	24
127528	12.1470000000000002	0	379153	0	0	24
127529	12.1479999999999997	0	379185	0	0	24
127530	12.1489999999999991	0	379217	0	0	24
127531	12.1500000000000004	0	379247	0	0	24
127532	12.1509999999999998	0	379279	0	0	24
127533	12.1519999999999992	0	379311	0	0	24
127534	12.1530000000000005	0	379343	0	0	24
127535	12.1539999999999999	0	379375	0	0	24
127536	12.1549999999999994	0	379407	0	0	24
127537	12.1560000000000006	0	379439	0	0	24
127538	12.157	0	379471	0	0	24
127539	12.1579999999999995	0	379503	0	0	24
127540	12.1590000000000007	0	379535	0	0	24
127541	12.1600000000000001	0	379565	0	0	24
127542	12.1609999999999996	0	379597	0	0	24
127543	12.1620000000000008	0	379629	0	0	24
127544	12.1630000000000003	0	379661	0	0	24
127545	12.1639999999999997	0	379693	0	0	24
127546	12.1649999999999991	0	379725	0	0	24
127547	12.1660000000000004	0	379757	0	0	24
127548	12.1669999999999998	0	379789	0	0	24
127549	12.1679999999999993	0	379821	0	0	24
127550	12.1690000000000005	0	379853	0	0	24
127551	12.1699999999999999	0	379883	0	0	24
127552	12.1709999999999994	0	379915	0	0	24
127553	12.1720000000000006	0	379947	0	0	24
127554	12.173	0	379979	0	0	24
127555	12.1739999999999995	0	380011	0	0	24
127556	12.1750000000000007	0	380043	0	0	24
127557	12.1760000000000002	0	380075	0	0	24
127558	12.1769999999999996	0	380107	0	0	24
127559	12.1780000000000008	0	380139	0	0	24
127560	12.1790000000000003	0	380171	0	0	24
127561	12.1799999999999997	0	380201	0	0	24
127562	12.1809999999999992	0	380233	0	0	24
127563	12.1820000000000004	0	380265	0	0	24
127564	12.1829999999999998	0	380297	0	0	24
127565	12.1839999999999993	0	380329	0	0	24
127566	12.1850000000000005	0	380361	0	0	24
127567	12.1859999999999999	0	380393	0	0	24
127568	12.1869999999999994	0	380425	0	0	24
127569	12.1880000000000006	0	380457	0	0	24
127570	12.1890000000000001	0	380489	0	0	24
127571	12.1899999999999995	0	380519	0	0	24
127572	12.1910000000000007	0	380551	0	0	24
127573	12.1920000000000002	0	380583	0	0	24
127574	12.1929999999999996	0	380615	0	0	24
127575	12.1940000000000008	0	380647	0	0	24
127576	12.1950000000000003	0	380679	0	0	24
127577	12.1959999999999997	0	380711	0	0	24
127578	12.1969999999999992	0	380743	0	0	24
127579	12.1980000000000004	0	380775	0	0	24
127580	12.1989999999999998	0	380807	0	0	24
127581	12.1999999999999993	0	380837	0	0	24
127582	12.2010000000000005	0	380869	0	0	24
127583	12.202	0	380901	0	0	24
127584	12.2029999999999994	0	380933	0	0	24
127585	12.2040000000000006	0	380965	0	0	24
127586	12.2050000000000001	0	380997	0	0	24
127587	12.2059999999999995	0	381029	0	0	24
127588	12.2070000000000007	0	381061	0	0	24
127589	12.2080000000000002	0	381093	0	0	24
127590	12.2089999999999996	0	381125	0	0	24
127591	12.2100000000000009	0	381155	0	0	24
127592	12.2110000000000003	0	381187	0	0	24
127593	12.2119999999999997	0	381219	0	0	24
127594	12.2129999999999992	0	381251	0	0	24
127595	12.2140000000000004	0	381283	0	0	24
127596	12.2149999999999999	0	381315	0	0	24
127597	12.2159999999999993	0	381347	0	0	24
127598	12.2170000000000005	0	381379	0	0	24
127599	12.218	0	381411	0	0	24
127600	12.2189999999999994	0	381443	0	0	24
127601	12.2200000000000006	0	381473	0	0	24
127602	12.2210000000000001	0	381505	0	0	24
127603	12.2219999999999995	0	381537	0	0	24
127604	12.2230000000000008	0	381569	0	0	24
127605	12.2240000000000002	0	381601	0	0	24
127606	12.2249999999999996	0	381633	0	0	24
127607	12.2260000000000009	0	381665	0	0	24
127608	12.2270000000000003	0	381697	0	0	24
127609	12.2279999999999998	0	381729	0	0	24
127610	12.2289999999999992	0	381761	0	0	24
127611	12.2300000000000004	0	381791	0	0	24
127612	12.2309999999999999	0	381823	0	0	24
127613	12.2319999999999993	0	381855	0	0	24
127614	12.2330000000000005	0	381887	0	0	24
127615	12.234	0	381919	0	0	24
127616	12.2349999999999994	0	381951	0	0	24
127617	12.2360000000000007	0	381983	0	0	24
127618	12.2370000000000001	0	382015	0	0	24
127619	12.2379999999999995	0	382047	0	0	24
127620	12.2390000000000008	0	382079	0	0	24
127621	12.2400000000000002	0	382109	0	0	24
127622	12.2409999999999997	0	382141	0	0	24
127623	12.2420000000000009	0	382173	0	0	24
127624	12.2430000000000003	0	382205	0	0	24
127625	12.2439999999999998	0	382237	0	0	24
127626	12.2449999999999992	0	382269	0	0	24
127627	12.2460000000000004	0	382301	0	0	24
127628	12.2469999999999999	0	382333	0	0	24
127629	12.2479999999999993	0	382365	0	0	24
127630	12.2490000000000006	0	382397	0	0	24
127631	12.25	0	382427	0	0	24
127632	12.2509999999999994	0	382459	0	0	24
127633	12.2520000000000007	0	382491	0	0	24
127634	12.2530000000000001	0	382523	0	0	24
127635	12.2539999999999996	0	382555	0	0	24
127636	12.2550000000000008	0	382587	0	0	24
127637	12.2560000000000002	0	382619	0	0	24
127638	12.2569999999999997	0	382651	0	0	24
127639	12.2579999999999991	0	382683	0	0	24
127640	12.2590000000000003	0	382715	0	0	24
127641	12.2599999999999998	0	382745	0	0	24
127642	12.2609999999999992	0	382777	0	0	24
127643	12.2620000000000005	0	382809	0	0	24
127644	12.2629999999999999	0	382841	0	0	24
127645	12.2639999999999993	0	382873	0	0	24
127646	12.2650000000000006	0	382905	0	0	24
127647	12.266	0	382937	0	0	24
127648	12.2669999999999995	0	382969	0	0	24
127649	12.2680000000000007	0	383001	0	0	24
127650	12.2690000000000001	0	383033	0	0	24
127651	12.2699999999999996	0	383063	0	0	24
127652	12.2710000000000008	0	383095	0	0	24
127653	12.2720000000000002	0	383127	0	0	24
127654	12.2729999999999997	0	383159	0	0	24
127655	12.2739999999999991	0	383191	0	0	24
127656	12.2750000000000004	0	383223	0	0	24
127657	12.2759999999999998	0	383255	0	0	24
127658	12.2769999999999992	0	383287	0	0	24
127659	12.2780000000000005	0	383319	0	0	24
127660	12.2789999999999999	0	383351	0	0	24
127661	12.2799999999999994	0	383381	0	0	24
127662	12.2810000000000006	0	383413	0	0	24
127663	12.282	0	383445	0	0	24
127664	12.2829999999999995	0	383477	0	0	24
127665	12.2840000000000007	0	383509	0	0	24
127666	12.2850000000000001	0	383541	0	0	24
127667	12.2859999999999996	0	383573	0	0	24
127668	12.2870000000000008	0	383605	0	0	24
127669	12.2880000000000003	0	383637	0	0	24
127670	12.2889999999999997	0	383669	0	0	24
127671	12.2899999999999991	0	383699	0	0	24
127672	12.2910000000000004	0	383731	0	0	24
127673	12.2919999999999998	0	383763	0	0	24
127674	12.2929999999999993	0	383795	0	0	24
127675	12.2940000000000005	0	383827	0	0	24
127676	12.2949999999999999	0	383859	0	0	24
127677	12.2959999999999994	0	383891	0	0	24
127678	12.2970000000000006	0	383923	0	0	24
127679	12.298	0	383955	0	0	24
127680	12.2989999999999995	0	383987	0	0	24
127681	12.3000000000000007	0	384017	0	0	24
127682	12.3010000000000002	0	384049	0	0	24
127683	12.3019999999999996	0	384081	0	0	24
127684	12.3030000000000008	0	384113	0	0	24
127685	12.3040000000000003	0	384145	0	0	24
127686	12.3049999999999997	0	384177	0	0	24
127687	12.3059999999999992	0	384209	0	0	24
127688	12.3070000000000004	0	384241	0	0	24
127689	12.3079999999999998	0	384273	0	0	24
127690	12.3089999999999993	0	384305	0	0	24
127691	12.3100000000000005	0	384335	0	0	24
127692	12.3109999999999999	0	384367	0	0	24
127693	12.3119999999999994	0	384399	0	0	24
127694	12.3130000000000006	0	384431	0	0	24
127695	12.3140000000000001	0	384463	0	0	24
127696	12.3149999999999995	0	384495	0	0	24
127697	12.3160000000000007	0	384527	0	0	24
127698	12.3170000000000002	0	384559	0	0	24
127699	12.3179999999999996	0	384591	0	0	24
127700	12.3190000000000008	0	384623	0	0	24
127701	12.3200000000000003	0	384653	0	0	24
127702	12.3209999999999997	0	384685	0	0	24
127703	12.3219999999999992	0	384717	0	0	24
127704	12.3230000000000004	0	384749	0	0	24
127705	12.3239999999999998	0	384781	0	0	24
127706	12.3249999999999993	0	384813	0	0	24
127707	12.3260000000000005	0	384845	0	0	24
127708	12.327	0	384877	0	0	24
127709	12.3279999999999994	0	384909	0	0	24
127710	12.3290000000000006	0	384941	0	0	24
127711	12.3300000000000001	0	384971	0	0	24
127712	12.3309999999999995	0	385003	0	0	24
127713	12.3320000000000007	0	385035	0	0	24
127714	12.3330000000000002	0	385067	0	0	24
127715	12.3339999999999996	0	385099	0	0	24
127716	12.3350000000000009	0	385131	0	0	24
127717	12.3360000000000003	0	385163	0	0	24
127718	12.3369999999999997	0	385195	0	0	24
127719	12.3379999999999992	0	385227	0	0	24
127720	12.3390000000000004	0	385259	0	0	24
127721	12.3399999999999999	0	385289	0	0	24
127722	12.3409999999999993	0	385321	0	0	24
127723	12.3420000000000005	0	385353	0	0	24
127724	12.343	0	385385	0	0	24
127725	12.3439999999999994	0	385417	0	0	24
127726	12.3450000000000006	0	385449	0	0	24
127727	12.3460000000000001	0	385481	0	0	24
127728	12.3469999999999995	0	385513	0	0	24
127729	12.3480000000000008	0	385545	0	0	24
127730	12.3490000000000002	0	385577	0	0	24
127731	12.3499999999999996	0	385607	0	0	24
127732	12.3510000000000009	0	385639	0	0	24
127733	12.3520000000000003	0	385671	0	0	24
127734	12.3529999999999998	0	385703	0	0	24
127735	12.3539999999999992	0	385735	0	0	24
127736	12.3550000000000004	0	385767	0	0	24
127737	12.3559999999999999	0	385799	0	0	24
127738	12.3569999999999993	0	385831	0	0	24
127739	12.3580000000000005	0	385863	0	0	24
127740	12.359	0	385895	0	0	24
127741	12.3599999999999994	0	385925	0	0	24
127742	12.3610000000000007	0	385957	0	0	24
127743	12.3620000000000001	0	385989	0	0	24
127744	12.3629999999999995	0	386021	0	0	24
127745	12.3640000000000008	0	386053	0	0	24
127746	12.3650000000000002	0	386085	0	0	24
127747	12.3659999999999997	0	386117	0	0	24
127748	12.3670000000000009	0	386149	0	0	24
127749	12.3680000000000003	0	386181	0	0	24
127750	12.3689999999999998	0	386213	0	0	24
127751	12.3699999999999992	0	386243	0	0	24
127752	12.3710000000000004	0	386275	0	0	24
127753	12.3719999999999999	0	386307	0	0	24
127754	12.3729999999999993	0	386339	0	0	24
127755	12.3740000000000006	0	386371	0	0	24
127756	12.375	0	386403	0	0	24
127757	12.3759999999999994	0	386435	0	0	24
127758	12.3770000000000007	0	386467	0	0	24
127759	12.3780000000000001	0	386499	0	0	24
127760	12.3789999999999996	0	386531	0	0	24
127761	12.3800000000000008	0	386561	0	0	24
127762	12.3810000000000002	0	386593	0	0	24
127763	12.3819999999999997	0	386625	0	0	24
127764	12.3829999999999991	0	386657	0	0	24
127765	12.3840000000000003	0	386689	0	0	24
127766	12.3849999999999998	0	386721	0	0	24
127767	12.3859999999999992	0	386753	0	0	24
127768	12.3870000000000005	0	386785	0	0	24
127769	12.3879999999999999	0	386817	0	0	24
127770	12.3889999999999993	0	386849	0	0	24
127771	12.3900000000000006	0	386879	0	0	24
127772	12.391	0	386911	0	0	24
127773	12.3919999999999995	0	386943	0	0	24
127774	12.3930000000000007	0	386975	0	0	24
127775	12.3940000000000001	0	387007	0	0	24
127776	12.3949999999999996	0	387039	0	0	24
127777	12.3960000000000008	0	387071	0	0	24
127778	12.3970000000000002	0	387103	0	0	24
127779	12.3979999999999997	0	387135	0	0	24
127780	12.3989999999999991	0	387167	0	0	24
127781	12.4000000000000004	0	387197	0	0	24
127782	12.4009999999999998	0	387229	0	0	24
127783	12.4019999999999992	0	387261	0	0	24
127784	12.4030000000000005	0	387293	0	0	24
127785	12.4039999999999999	0	387325	0	0	24
127786	12.4049999999999994	0	387357	0	0	24
127787	12.4060000000000006	0	387389	0	0	24
127788	12.407	0	387421	0	0	24
127789	12.4079999999999995	0	387453	0	0	24
127790	12.4090000000000007	0	387485	0	0	24
127791	12.4100000000000001	0	387515	0	0	24
127792	12.4109999999999996	0	387547	0	0	24
127793	12.4120000000000008	0	387579	0	0	24
127794	12.4130000000000003	0	387611	0	0	24
127795	12.4139999999999997	0	387643	0	0	24
127796	12.4149999999999991	0	387675	0	0	24
127797	12.4160000000000004	0	387707	0	0	24
127798	12.4169999999999998	0	387739	0	0	24
127799	12.4179999999999993	0	387771	0	0	24
127800	12.4190000000000005	0	387803	0	0	24
127801	12.4199999999999999	0	387833	0	0	24
127802	12.4209999999999994	0	387865	0	0	24
127803	12.4220000000000006	0	387897	0	0	24
127804	12.423	0	387929	0	0	24
127805	12.4239999999999995	0	387961	0	0	24
127806	12.4250000000000007	0	387993	0	0	24
127807	12.4260000000000002	0	388025	0	0	24
127808	12.4269999999999996	0	388057	0	0	24
127809	12.4280000000000008	0	388089	0	0	24
127810	12.4290000000000003	0	388121	0	0	24
127811	12.4299999999999997	0	388151	0	0	24
127812	12.4309999999999992	0	388183	0	0	24
127813	12.4320000000000004	0	388215	0	0	24
127814	12.4329999999999998	0	388247	0	0	24
127815	12.4339999999999993	0	388279	0	0	24
127816	12.4350000000000005	0	388311	0	0	24
127817	12.4359999999999999	0	388343	0	0	24
127818	12.4369999999999994	0	388375	0	0	24
127819	12.4380000000000006	0	388407	0	0	24
127820	12.4390000000000001	0	388439	0	0	24
127821	12.4399999999999995	0	388469	0	0	24
127822	12.4410000000000007	0	388501	0	0	24
127823	12.4420000000000002	0	388533	0	0	24
127824	12.4429999999999996	0	388565	0	0	24
127825	12.4440000000000008	0	388597	0	0	24
127826	12.4450000000000003	0	388629	0	0	24
127827	12.4459999999999997	0	388661	0	0	24
127828	12.4469999999999992	0	388693	0	0	24
127829	12.4480000000000004	0	388725	0	0	24
127830	12.4489999999999998	0	388757	0	0	24
127831	12.4499999999999993	0	388787	0	0	24
127832	12.4510000000000005	0	388819	0	0	24
127833	12.452	0	388851	0	0	24
127834	12.4529999999999994	0	388883	0	0	24
127835	12.4540000000000006	0	388915	0	0	24
127836	12.4550000000000001	0	388947	0	0	24
127837	12.4559999999999995	0	388979	0	0	24
127838	12.4570000000000007	0	389011	0	0	24
127839	12.4580000000000002	0	389043	0	0	24
127840	12.4589999999999996	0	389075	0	0	24
127841	12.4600000000000009	0	389105	0	0	24
127842	12.4610000000000003	0	389137	0	0	24
127843	12.4619999999999997	0	389169	0	0	24
127844	12.4629999999999992	0	389201	0	0	24
127845	12.4640000000000004	0	389233	0	0	24
127846	12.4649999999999999	0	389265	0	0	24
127847	12.4659999999999993	0	389297	0	0	24
127848	12.4670000000000005	0	389329	0	0	24
127849	12.468	0	389361	0	0	24
127850	12.4689999999999994	0	389393	0	0	24
127851	12.4700000000000006	0	389423	0	0	24
127852	12.4710000000000001	0	389455	0	0	24
127853	12.4719999999999995	0	389487	0	0	24
127854	12.4730000000000008	0	389519	0	0	24
127855	12.4740000000000002	0	389551	0	0	24
127856	12.4749999999999996	0	389583	0	0	24
127857	12.4760000000000009	0	389615	0	0	24
127858	12.4770000000000003	0	389647	0	0	24
127859	12.4779999999999998	0	389679	0	0	24
127860	12.4789999999999992	0	389711	0	0	24
127861	12.4800000000000004	0	389741	0	0	24
127862	12.4809999999999999	0	389773	0	0	24
127863	12.4819999999999993	0	389805	0	0	24
127864	12.4830000000000005	0	389837	0	0	24
127865	12.484	0	389869	0	0	24
127866	12.4849999999999994	0	389901	0	0	24
127867	12.4860000000000007	0	389933	0	0	24
127868	12.4870000000000001	0	389965	0	0	24
127869	12.4879999999999995	0	389997	0	0	24
127870	12.4890000000000008	0	390029	0	0	24
127871	12.4900000000000002	0	390059	0	0	24
127872	12.4909999999999997	0	390091	0	0	24
127873	12.4920000000000009	0	390123	0	0	24
127874	12.4930000000000003	0	390155	0	0	24
127875	12.4939999999999998	0	390187	0	0	24
127876	12.4949999999999992	0	390219	0	0	24
127877	12.4960000000000004	0	390251	0	0	24
127878	12.4969999999999999	0	390283	0	0	24
127879	12.4979999999999993	0	390315	0	0	24
127880	12.4990000000000006	0	390347	0	0	24
127881	12.5	0	390377	0	0	24
127882	12.5009999999999994	0	390409	0	0	24
127883	12.5020000000000007	0	390441	0	0	24
127884	12.5030000000000001	0	390473	0	0	24
127885	12.5039999999999996	0	390505	0	0	24
127886	12.5050000000000008	0	390537	0	0	24
127887	12.5060000000000002	0	390569	0	0	24
127888	12.5069999999999997	0	390601	0	0	24
127889	12.5079999999999991	0	390633	0	0	24
127890	12.5090000000000003	0	390665	0	0	24
127891	12.5099999999999998	0	390695	0	0	24
127892	12.5109999999999992	0	390727	0	0	24
127893	12.5120000000000005	0	390759	0	0	24
127894	12.5129999999999999	0	390791	0	0	24
127895	12.5139999999999993	0	390823	0	0	24
127896	12.5150000000000006	0	390855	0	0	24
127897	12.516	0	390887	0	0	24
127898	12.5169999999999995	0	390919	0	0	24
127899	12.5180000000000007	0	390951	0	0	24
127900	12.5190000000000001	0	390983	0	0	24
127901	12.5199999999999996	0	391013	0	0	24
127902	12.5210000000000008	0	391045	0	0	24
127903	12.5220000000000002	0	391077	0	0	24
127904	12.5229999999999997	0	391109	0	0	24
127905	12.5239999999999991	0	391141	0	0	24
127906	12.5250000000000004	0	391173	0	0	24
127907	12.5259999999999998	0	391205	0	0	24
127908	12.5269999999999992	0	391237	0	0	24
127909	12.5280000000000005	0	391269	0	0	24
127910	12.5289999999999999	0	391301	0	0	24
127911	12.5299999999999994	0	391331	0	0	24
127912	12.5310000000000006	0	391363	0	0	24
127913	12.532	0	391395	0	0	24
127914	12.5329999999999995	0	391427	0	0	24
127915	12.5340000000000007	0	391459	0	0	24
127916	12.5350000000000001	0	391491	0	0	24
127917	12.5359999999999996	0	391523	0	0	24
127918	12.5370000000000008	0	391555	0	0	24
127919	12.5380000000000003	0	391587	0	0	24
127920	12.5389999999999997	0	391619	0	0	24
127921	12.5399999999999991	0	391649	0	0	24
127922	12.5410000000000004	0	391681	0	0	24
127923	12.5419999999999998	0	391713	0	0	24
127924	12.5429999999999993	0	391745	0	0	24
127925	12.5440000000000005	0	391777	0	0	24
127926	12.5449999999999999	0	391809	0	0	24
127927	12.5459999999999994	0	391841	0	0	24
127928	12.5470000000000006	0	391873	0	0	24
127929	12.548	0	391905	0	0	24
127930	12.5489999999999995	0	391937	0	0	24
127931	12.5500000000000007	0	391967	0	0	24
127932	12.5510000000000002	0	391999	0	0	24
127933	12.5519999999999996	0	392031	0	0	24
127934	12.5530000000000008	0	392063	0	0	24
127935	12.5540000000000003	0	392095	0	0	24
127936	12.5549999999999997	0	392127	0	0	24
127937	12.5559999999999992	0	392159	0	0	24
127938	12.5570000000000004	0	392191	0	0	24
127939	12.5579999999999998	0	392223	0	0	24
127940	12.5589999999999993	0	392255	0	0	24
127941	12.5600000000000005	0	392285	0	0	24
127942	12.5609999999999999	0	392317	0	0	24
127943	12.5619999999999994	0	392349	0	0	24
127944	12.5630000000000006	0	392381	0	0	24
127945	12.5640000000000001	0	392413	0	0	24
127946	12.5649999999999995	0	392445	0	0	24
127947	12.5660000000000007	0	392477	0	0	24
127948	12.5670000000000002	0	392509	0	0	24
127949	12.5679999999999996	0	392541	0	0	24
127950	12.5690000000000008	0	392573	0	0	24
127951	12.5700000000000003	0	392603	0	0	24
127952	12.5709999999999997	0	392635	0	0	24
127953	12.5719999999999992	0	392667	0	0	24
127954	12.5730000000000004	0	392699	0	0	24
127955	12.5739999999999998	0	392731	0	0	24
127956	12.5749999999999993	0	392763	0	0	24
127957	12.5760000000000005	0	392795	0	0	24
127958	12.577	0	392827	0	0	24
127959	12.5779999999999994	0	392859	0	0	24
127960	12.5790000000000006	0	392891	0	0	24
127961	12.5800000000000001	0	392921	0	0	24
127962	12.5809999999999995	0	392953	0	0	24
127963	12.5820000000000007	0	392985	0	0	24
127964	12.5830000000000002	0	393017	0	0	24
127965	12.5839999999999996	0	393049	0	0	24
127966	12.5850000000000009	0	393081	0	0	24
127967	12.5860000000000003	0	393113	0	0	24
127968	12.5869999999999997	0	393145	0	0	24
127969	12.5879999999999992	0	393177	0	0	24
127970	12.5890000000000004	0	393209	0	0	24
127971	12.5899999999999999	0	393239	0	0	24
127972	12.5909999999999993	0	393271	0	0	24
127973	12.5920000000000005	0	393303	0	0	24
127974	12.593	0	393335	0	0	24
127975	12.5939999999999994	0	393367	0	0	24
127976	12.5950000000000006	0	393399	0	0	24
127977	12.5960000000000001	0	393431	0	0	24
127978	12.5969999999999995	0	393463	0	0	24
127979	12.5980000000000008	0	393495	0	0	24
127980	12.5990000000000002	0	393527	0	0	24
127981	12.5999999999999996	0	393557	0	0	24
127982	12.6010000000000009	0	393589	0	0	24
127983	12.6020000000000003	0	393621	0	0	24
127984	12.6029999999999998	0	393653	0	0	24
127985	12.6039999999999992	0	393685	0	0	24
127986	12.6050000000000004	0	393717	0	0	24
127987	12.6059999999999999	0	393749	0	0	24
127988	12.6069999999999993	0	393781	0	0	24
127989	12.6080000000000005	0	393813	0	0	24
127990	12.609	0	393845	0	0	24
127991	12.6099999999999994	0	393875	0	0	24
127992	12.6110000000000007	0	393907	0	0	24
127993	12.6120000000000001	0	393939	0	0	24
127994	12.6129999999999995	0	393971	0	0	24
127995	12.6140000000000008	0	394003	0	0	24
127996	12.6150000000000002	0	394035	0	0	24
127997	12.6159999999999997	0	394067	0	0	24
127998	12.6170000000000009	0	394099	0	0	24
127999	12.6180000000000003	0	394131	0	0	24
128000	12.6189999999999998	0	394163	0	0	24
128001	12.6199999999999992	0	394193	0	0	24
128002	12.6210000000000004	0	394225	0	0	24
128003	12.6219999999999999	0	394257	0	0	24
128004	12.6229999999999993	0	394289	0	0	24
128005	12.6240000000000006	0	394321	0	0	24
128006	12.625	0	394353	0	0	24
128007	12.6259999999999994	0	394385	0	0	24
128008	12.6270000000000007	0	394417	0	0	24
128009	12.6280000000000001	0	394449	0	0	24
128010	12.6289999999999996	0	394481	0	0	24
128011	12.6300000000000008	0	394511	0	0	24
128012	12.6310000000000002	0	394543	0	0	24
128013	12.6319999999999997	0	394575	0	0	24
128014	12.6329999999999991	0	394607	0	0	24
128015	12.6340000000000003	0	394639	0	0	24
128016	12.6349999999999998	0	394671	0	0	24
128017	12.6359999999999992	0	394703	0	0	24
128018	12.6370000000000005	0	394735	0	0	24
128019	12.6379999999999999	0	394767	0	0	24
128020	12.6389999999999993	0	394799	0	0	24
128021	12.6400000000000006	0	394829	0	0	24
128022	12.641	0	394861	0	0	24
128023	12.6419999999999995	0	394893	0	0	24
128024	12.6430000000000007	0	394925	0	0	24
128025	12.6440000000000001	0	394957	0	0	24
128026	12.6449999999999996	0	394989	0	0	24
128027	12.6460000000000008	0	395021	0	0	24
128028	12.6470000000000002	0	395053	0	0	24
128029	12.6479999999999997	0	395085	0	0	24
128030	12.6489999999999991	0	395117	0	0	24
128031	12.6500000000000004	0	395147	0	0	24
128032	12.6509999999999998	0	395179	0	0	24
128033	12.6519999999999992	0	395211	0	0	24
128034	12.6530000000000005	0	395243	0	0	24
128035	12.6539999999999999	0	395275	0	0	24
128036	12.6549999999999994	0	395307	0	0	24
128037	12.6560000000000006	0	395339	0	0	24
128038	12.657	0	395371	0	0	24
128039	12.6579999999999995	0	395403	0	0	24
128040	12.6590000000000007	0	395435	0	0	24
128041	12.6600000000000001	0	395465	0	0	24
128042	12.6609999999999996	0	395497	0	0	24
128043	12.6620000000000008	0	395529	0	0	24
128044	12.6630000000000003	0	395561	0	0	24
128045	12.6639999999999997	0	395593	0	0	24
128046	12.6649999999999991	0	395625	0	0	24
128047	12.6660000000000004	0	395657	0	0	24
128048	12.6669999999999998	0	395689	0	0	24
128049	12.6679999999999993	0	395721	0	0	24
128050	12.6690000000000005	0	395753	0	0	24
128051	12.6699999999999999	0	395783	0	0	24
128052	12.6709999999999994	0	395815	0	0	24
128053	12.6720000000000006	0	395847	0	0	24
128054	12.673	0	395879	0	0	24
128055	12.6739999999999995	0	395911	0	0	24
128056	12.6750000000000007	0	395943	0	0	24
128057	12.6760000000000002	0	395975	0	0	24
128058	12.6769999999999996	0	396007	0	0	24
128059	12.6780000000000008	0	396039	0	0	24
128060	12.6790000000000003	0	396071	0	0	24
128061	12.6799999999999997	0	396101	0	0	24
128062	12.6809999999999992	0	396133	0	0	24
128063	12.6820000000000004	0	396165	0	0	24
128064	12.6829999999999998	0	396197	0	0	24
128065	12.6839999999999993	0	396229	0	0	24
128066	12.6850000000000005	0	396261	0	0	24
128067	12.6859999999999999	0	396293	0	0	24
128068	12.6869999999999994	0	396325	0	0	24
128069	12.6880000000000006	0	396357	0	0	24
128070	12.6890000000000001	0	396389	0	0	24
128071	12.6899999999999995	0	396419	0	0	24
128072	12.6910000000000007	0	396451	0	0	24
128073	12.6920000000000002	0	396483	0	0	24
128074	12.6929999999999996	0	396515	0	0	24
128075	12.6940000000000008	0	396547	0	0	24
128076	12.6950000000000003	0	396579	0	0	24
128077	12.6959999999999997	0	396611	0	0	24
128078	12.6969999999999992	0	396643	0	0	24
128079	12.6980000000000004	0	396675	0	0	24
128080	12.6989999999999998	0	396707	0	0	24
128081	12.6999999999999993	0	396737	0	0	24
128082	12.7010000000000005	0	396769	0	0	24
128083	12.702	0	396801	0	0	24
128084	12.7029999999999994	0	396833	0	0	24
128085	12.7040000000000006	0	396865	0	0	24
128086	12.7050000000000001	0	396897	0	0	24
128087	12.7059999999999995	0	396929	0	0	24
128088	12.7070000000000007	0	396961	0	0	24
128089	12.7080000000000002	0	396993	0	0	24
128090	12.7089999999999996	0	397025	0	0	24
128091	12.7100000000000009	0	397055	0	0	24
128092	12.7110000000000003	0	397087	0	0	24
128093	12.7119999999999997	0	397119	0	0	24
128094	12.7129999999999992	0	397151	0	0	24
128095	12.7140000000000004	0	397183	0	0	24
128096	12.7149999999999999	0	397215	0	0	24
128097	12.7159999999999993	0	397247	0	0	24
128098	12.7170000000000005	0	397279	0	0	24
128099	12.718	0	397311	0	0	24
128100	12.7189999999999994	0	397343	0	0	24
128101	12.7200000000000006	0	397373	0	0	24
128102	12.7210000000000001	0	397405	0	0	24
128103	12.7219999999999995	0	397437	0	0	24
128104	12.7230000000000008	0	397469	0	0	24
128105	12.7240000000000002	0	397501	0	0	24
128106	12.7249999999999996	0	397533	0	0	24
128107	12.7260000000000009	0	397565	0	0	24
128108	12.7270000000000003	0	397597	0	0	24
128109	12.7279999999999998	0	397629	0	0	24
128110	12.7289999999999992	0	397661	0	0	24
128111	12.7300000000000004	0	397691	0	0	24
128112	12.7309999999999999	0	397723	0	0	24
128113	12.7319999999999993	0	397755	0	0	24
128114	12.7330000000000005	0	397787	0	0	24
128115	12.734	0	397819	0	0	24
128116	12.7349999999999994	0	397851	0	0	24
128117	12.7360000000000007	0	397883	0	0	24
128118	12.7370000000000001	0	397915	0	0	24
128119	12.7379999999999995	0	397947	0	0	24
128120	12.7390000000000008	0	397979	0	0	24
128121	12.7400000000000002	0	398009	0	0	24
128122	12.7409999999999997	0	398041	0	0	24
128123	12.7420000000000009	0	398073	0	0	24
128124	12.7430000000000003	0	398105	0	0	24
128125	12.7439999999999998	0	398137	0	0	24
128126	12.7449999999999992	0	398169	0	0	24
128127	12.7460000000000004	0	398201	0	0	24
128128	12.7469999999999999	0	398233	0	0	24
128129	12.7479999999999993	0	398265	0	0	24
128130	12.7490000000000006	0	398297	0	0	24
128131	12.75	0	398327	0	0	24
128132	12.7509999999999994	0	398359	0	0	24
128133	12.7520000000000007	0	398391	0	0	24
128134	12.7530000000000001	0	398423	0	0	24
128135	12.7539999999999996	0	398455	0	0	24
128136	12.7550000000000008	0	398487	0	0	24
128137	12.7560000000000002	0	398519	0	0	24
128138	12.7569999999999997	0	398551	0	0	24
128139	12.7579999999999991	0	398583	0	0	24
128140	12.7590000000000003	0	398615	0	0	24
128141	12.7599999999999998	0	398645	0	0	24
128142	12.7609999999999992	0	398677	0	0	24
128143	12.7620000000000005	0	398709	0	0	24
128144	12.7629999999999999	0	398741	0	0	24
128145	12.7639999999999993	0	398773	0	0	24
128146	12.7650000000000006	0	398805	0	0	24
128147	12.766	0	398837	0	0	24
128148	12.7669999999999995	0	398869	0	0	24
128149	12.7680000000000007	0	398901	0	0	24
128150	12.7690000000000001	0	398933	0	0	24
128151	12.7699999999999996	0	398963	0	0	24
128152	12.7710000000000008	0	398995	0	0	24
128153	12.7720000000000002	0	399027	0	0	24
128154	12.7729999999999997	0	399059	0	0	24
128155	12.7739999999999991	0	399091	0	0	24
128156	12.7750000000000004	0	399123	0	0	24
128157	12.7759999999999998	0	399155	0	0	24
128158	12.7769999999999992	0	399187	0	0	24
128159	12.7780000000000005	0	399219	0	0	24
128160	12.7789999999999999	0	399251	0	0	24
128161	12.7799999999999994	0	399281	0	0	24
128162	12.7810000000000006	0	399313	0	0	24
128163	12.782	0	399345	0	0	24
128164	12.7829999999999995	0	399377	0	0	24
128165	12.7840000000000007	0	399409	0	0	24
128166	12.7850000000000001	0	399441	0	0	24
128167	12.7859999999999996	0	399473	0	0	24
128168	12.7870000000000008	0	399505	0	0	24
128169	12.7880000000000003	0	399537	0	0	24
128170	12.7889999999999997	0	399569	0	0	24
128171	12.7899999999999991	0	399599	0	0	24
128172	12.7910000000000004	0	399631	0	0	24
128173	12.7919999999999998	0	399663	0	0	24
128174	12.7929999999999993	0	399695	0	0	24
128175	12.7940000000000005	0	399727	0	0	24
128176	12.7949999999999999	0	399759	0	0	24
128177	12.7959999999999994	0	399791	0	0	24
128178	12.7970000000000006	0	399823	0	0	24
128179	12.798	0	399855	0	0	24
128180	12.7989999999999995	0	399887	0	0	24
128181	12.8000000000000007	0	399917	0	0	24
128182	12.8010000000000002	0	399949	0	0	24
128183	12.8019999999999996	0	399981	0	0	24
128184	12.8030000000000008	0	400013	0	0	24
128185	12.8040000000000003	0	400045	0	0	24
128186	12.8049999999999997	0	400077	0	0	24
128187	12.8059999999999992	0	400109	0	0	24
128188	12.8070000000000004	0	400141	0	0	24
128189	12.8079999999999998	0	400173	0	0	24
128190	12.8089999999999993	0	400205	0	0	24
128191	12.8100000000000005	0	400235	0	0	24
128192	12.8109999999999999	0	400267	0	0	24
128193	12.8119999999999994	0	400299	0	0	24
128194	12.8130000000000006	0	400331	0	0	24
128195	12.8140000000000001	0	400363	0	0	24
128196	12.8149999999999995	0	400395	0	0	24
128197	12.8160000000000007	0	400427	0	0	24
128198	12.8170000000000002	0	400459	0	0	24
128199	12.8179999999999996	0	400491	0	0	24
128200	12.8190000000000008	0	400523	0	0	24
128201	12.8200000000000003	0	400553	0	0	24
128202	12.8209999999999997	0	400585	0	0	24
128203	12.8219999999999992	0	400617	0	0	24
128204	12.8230000000000004	0	400649	0	0	24
128205	12.8239999999999998	0	400681	0	0	24
128206	12.8249999999999993	0	400713	0	0	24
128207	12.8260000000000005	0	400745	0	0	24
128208	12.827	0	400777	0	0	24
128209	12.8279999999999994	0	400809	0	0	24
128210	12.8290000000000006	0	400841	0	0	24
128211	12.8300000000000001	0	400871	0	0	24
128212	12.8309999999999995	0	400903	0	0	24
128213	12.8320000000000007	0	400935	0	0	24
128214	12.8330000000000002	0	400967	0	0	24
128215	12.8339999999999996	0	400999	0	0	24
128216	12.8350000000000009	0	401031	0	0	24
128217	12.8360000000000003	0	401063	0	0	24
128218	12.8369999999999997	0	401095	0	0	24
128219	12.8379999999999992	0	401127	0	0	24
128220	12.8390000000000004	0	401159	0	0	24
128221	12.8399999999999999	0	401189	0	0	24
128222	12.8409999999999993	0	401221	0	0	24
128223	12.8420000000000005	0	401253	0	0	24
128224	12.843	0	401285	0	0	24
128225	12.8439999999999994	0	401317	0	0	24
128226	12.8450000000000006	0	401349	0	0	24
128227	12.8460000000000001	0	401381	0	0	24
128228	12.8469999999999995	0	401413	0	0	24
128229	12.8480000000000008	0	401445	0	0	24
128230	12.8490000000000002	0	401477	0	0	24
128231	12.8499999999999996	0	401507	0	0	24
128232	12.8510000000000009	0	401539	0	0	24
128233	12.8520000000000003	0	401571	0	0	24
128234	12.8529999999999998	0	401603	0	0	24
128235	12.8539999999999992	0	401635	0	0	24
128236	12.8550000000000004	0	401667	0	0	24
128237	12.8559999999999999	0	401699	0	0	24
128238	12.8569999999999993	0	401731	0	0	24
128239	12.8580000000000005	0	401763	0	0	24
128240	12.859	0	401795	0	0	24
128241	12.8599999999999994	0	401825	0	0	24
128242	12.8610000000000007	0	401857	0	0	24
128243	12.8620000000000001	0	401889	0	0	24
128244	12.8629999999999995	0	401921	0	0	24
128245	12.8640000000000008	0	401953	0	0	24
128246	12.8650000000000002	0	401985	0	0	24
128247	12.8659999999999997	0	402017	0	0	24
128248	12.8670000000000009	0	402049	0	0	24
128249	12.8680000000000003	0	402081	0	0	24
128250	12.8689999999999998	0	402113	0	0	24
128251	12.8699999999999992	0	402143	0	0	24
128252	12.8710000000000004	0	402175	0	0	24
128253	12.8719999999999999	0	402207	0	0	24
128254	12.8729999999999993	0	402239	0	0	24
128255	12.8740000000000006	0	402271	0	0	24
128256	12.875	0	402303	0	0	24
128257	12.8759999999999994	0	402335	0	0	24
128258	12.8770000000000007	0	402367	0	0	24
128259	12.8780000000000001	0	402399	0	0	24
128260	12.8789999999999996	0	402431	0	0	24
128261	12.8800000000000008	0	402461	0	0	24
128262	12.8810000000000002	0	402493	0	0	24
128263	12.8819999999999997	0	402525	0	0	24
128264	12.8829999999999991	0	402557	0	0	24
128265	12.8840000000000003	0	402589	0	0	24
128266	12.8849999999999998	0	402621	0	0	24
128267	12.8859999999999992	0	402653	0	0	24
128268	12.8870000000000005	0	402685	0	0	24
128269	12.8879999999999999	0	402717	0	0	24
128270	12.8889999999999993	0	402749	0	0	24
128271	12.8900000000000006	0	402779	0	0	24
128272	12.891	0	402811	0	0	24
128273	12.8919999999999995	0	402843	0	0	24
128274	12.8930000000000007	0	402875	0	0	24
128275	12.8940000000000001	0	402907	0	0	24
128276	12.8949999999999996	0	402939	0	0	24
128277	12.8960000000000008	0	402971	0	0	24
128278	12.8970000000000002	0	403003	0	0	24
128279	12.8979999999999997	0	403035	0	0	24
128280	12.8989999999999991	0	403067	0	0	24
128281	12.9000000000000004	0	403097	0	0	24
128282	12.9009999999999998	0	403129	0	0	24
128283	12.9019999999999992	0	403161	0	0	24
128284	12.9030000000000005	0	403193	0	0	24
128285	12.9039999999999999	0	403225	0	0	24
128286	12.9049999999999994	0	403257	0	0	24
128287	12.9060000000000006	0	403289	0	0	24
128288	12.907	0	403321	0	0	24
128289	12.9079999999999995	0	403353	0	0	24
128290	12.9090000000000007	0	403385	0	0	24
128291	12.9100000000000001	0	403415	0	0	24
128292	12.9109999999999996	0	403447	0	0	24
128293	12.9120000000000008	0	403479	0	0	24
128294	12.9130000000000003	0	403511	0	0	24
128295	12.9139999999999997	0	403543	0	0	24
128296	12.9149999999999991	0	403575	0	0	24
128297	12.9160000000000004	0	403607	0	0	24
128298	12.9169999999999998	0	403639	0	0	24
128299	12.9179999999999993	0	403671	0	0	24
128300	12.9190000000000005	0	403703	0	0	24
128301	12.9199999999999999	0	403733	0	0	24
128302	12.9209999999999994	0	403765	0	0	24
128303	12.9220000000000006	0	403797	0	0	24
128304	12.923	0	403829	0	0	24
128305	12.9239999999999995	0	403861	0	0	24
128306	12.9250000000000007	0	403893	0	0	24
128307	12.9260000000000002	0	403925	0	0	24
128308	12.9269999999999996	0	403957	0	0	24
128309	12.9280000000000008	0	403989	0	0	24
128310	12.9290000000000003	0	404021	0	0	24
128311	12.9299999999999997	0	404051	0	0	24
128312	12.9309999999999992	0	404083	0	0	24
128313	12.9320000000000004	0	404115	0	0	24
128314	12.9329999999999998	0	404147	0	0	24
128315	12.9339999999999993	0	404179	0	0	24
128316	12.9350000000000005	0	404211	0	0	24
128317	12.9359999999999999	0	404243	0	0	24
128318	12.9369999999999994	0	404275	0	0	24
128319	12.9380000000000006	0	404307	0	0	24
128320	12.9390000000000001	0	404339	0	0	24
128321	12.9399999999999995	0	404369	0	0	24
128322	12.9410000000000007	0	404401	0	0	24
128323	12.9420000000000002	0	404433	0	0	24
128324	12.9429999999999996	0	404465	0	0	24
128325	12.9440000000000008	0	404497	0	0	24
128326	12.9450000000000003	0	404529	0	0	24
128327	12.9459999999999997	0	404561	0	0	24
128328	12.9469999999999992	0	404593	0	0	24
128329	12.9480000000000004	0	404625	0	0	24
128330	12.9489999999999998	0	404657	0	0	24
128331	12.9499999999999993	0	404687	0	0	24
128332	12.9510000000000005	0	404719	0	0	24
128333	12.952	0	404751	0	0	24
128334	12.9529999999999994	0	404783	0	0	24
128335	12.9540000000000006	0	404815	0	0	24
128336	12.9550000000000001	0	404847	0	0	24
128337	12.9559999999999995	0	404879	0	0	24
128338	12.9570000000000007	0	404911	0	0	24
128339	12.9580000000000002	0	404943	0	0	24
128340	12.9589999999999996	0	404975	0	0	24
128341	12.9600000000000009	0	405005	0	0	24
128342	12.9610000000000003	0	405037	0	0	24
128343	12.9619999999999997	0	405069	0	0	24
128344	12.9629999999999992	0	405101	0	0	24
128345	12.9640000000000004	0	405133	0	0	24
128346	12.9649999999999999	0	405165	0	0	24
128347	12.9659999999999993	0	405197	0	0	24
128348	12.9670000000000005	0	405229	0	0	24
128349	12.968	0	405261	0	0	24
128350	12.9689999999999994	0	405293	0	0	24
128351	12.9700000000000006	0	405323	0	0	24
128352	12.9710000000000001	0	405355	0	0	24
128353	12.9719999999999995	0	405387	0	0	24
128354	12.9730000000000008	0	405419	0	0	24
128355	12.9740000000000002	0	405451	0	0	24
128356	12.9749999999999996	0	405483	0	0	24
128357	12.9760000000000009	0	405515	0	0	24
128358	12.9770000000000003	0	405547	0	0	24
128359	12.9779999999999998	0	405579	0	0	24
128360	12.9789999999999992	0	405611	0	0	24
128361	12.9800000000000004	0	405641	0	0	24
128362	12.9809999999999999	0	405673	0	0	24
128363	12.9819999999999993	0	405705	0	0	24
128364	12.9830000000000005	0	405737	0	0	24
128365	12.984	0	405769	0	0	24
128366	12.9849999999999994	0	405801	0	0	24
128367	12.9860000000000007	0	405833	0	0	24
128368	12.9870000000000001	0	405865	0	0	24
128369	12.9879999999999995	0	405897	0	0	24
128370	12.9890000000000008	0	405929	0	0	24
128371	12.9900000000000002	0	405959	0	0	24
128372	12.9909999999999997	0	405991	0	0	24
128373	12.9920000000000009	0	406023	0	0	24
128374	12.9930000000000003	0	406055	0	0	24
128375	12.9939999999999998	0	406087	0	0	24
128376	12.9949999999999992	0	406119	0	0	24
128377	12.9960000000000004	0	406151	0	0	24
128378	12.9969999999999999	0	406183	0	0	24
128379	12.9979999999999993	0	406215	0	0	24
128380	12.9990000000000006	0	406247	0	0	24
128381	13	0	406277	0	0	24
128382	13.0009999999999994	0	406309	0	0	24
128383	13.0020000000000007	0	406341	0	0	24
128384	13.0030000000000001	0	406373	0	0	24
128385	13.0039999999999996	0	406405	0	0	24
128386	13.0050000000000008	0	406437	0	0	24
128387	13.0060000000000002	0	406469	0	0	24
128388	13.0069999999999997	0	406501	0	0	24
128389	13.0079999999999991	0	406533	0	0	24
128390	13.0090000000000003	0	406565	0	0	24
128391	13.0099999999999998	0	406595	0	0	24
128392	13.0109999999999992	0	406627	0	0	24
128393	13.0120000000000005	0	406659	0	0	24
128394	13.0129999999999999	0	406691	0	0	24
128395	13.0139999999999993	0	406723	0	0	24
128396	13.0150000000000006	0	406755	0	0	24
128397	13.016	0	406787	0	0	24
128398	13.0169999999999995	0	406819	0	0	24
128399	13.0180000000000007	0	406851	0	0	24
128400	13.0190000000000001	0	406883	0	0	24
128401	13.0199999999999996	0	406913	0	0	24
128402	13.0210000000000008	0	406945	0	0	24
128403	13.0220000000000002	0	406977	0	0	24
128404	13.0229999999999997	0	407009	0	0	24
128405	13.0239999999999991	0	407041	0	0	24
128406	13.0250000000000004	0	407073	0	0	24
128407	13.0259999999999998	0	407105	0	0	24
128408	13.0269999999999992	0	407137	0	0	24
128409	13.0280000000000005	0	407169	0	0	24
128410	13.0289999999999999	0	407201	0	0	24
128411	13.0299999999999994	0	407231	0	0	24
128412	13.0310000000000006	0	407263	0	0	24
128413	13.032	0	407295	0	0	24
128414	13.0329999999999995	0	407327	0	0	24
128415	13.0340000000000007	0	407359	0	0	24
128416	13.0350000000000001	0	407391	0	0	24
128417	13.0359999999999996	0	407423	0	0	24
128418	13.0370000000000008	0	407455	0	0	24
128419	13.0380000000000003	0	407487	0	0	24
128420	13.0389999999999997	0	407519	0	0	24
128421	13.0399999999999991	0	407549	0	0	24
128422	13.0410000000000004	0	407581	0	0	24
128423	13.0419999999999998	0	407613	0	0	24
128424	13.0429999999999993	0	407645	0	0	24
128425	13.0440000000000005	0	407677	0	0	24
128426	13.0449999999999999	0	407709	0	0	24
128427	13.0459999999999994	0	407741	0	0	24
128428	13.0470000000000006	0	407773	0	0	24
128429	13.048	0	407805	0	0	24
128430	13.0489999999999995	0	407837	0	0	24
128431	13.0500000000000007	0	407867	0	0	24
128432	13.0510000000000002	0	407899	0	0	24
128433	13.0519999999999996	0	407931	0	0	24
128434	13.0530000000000008	0	407963	0	0	24
128435	13.0540000000000003	0	407995	0	0	24
128436	13.0549999999999997	0	408027	0	0	24
128437	13.0559999999999992	0	408059	0	0	24
128438	13.0570000000000004	0	408091	0	0	24
128439	13.0579999999999998	0	408123	0	0	24
128440	13.0589999999999993	0	408155	0	0	24
128441	13.0600000000000005	0	408185	0	0	24
128442	13.0609999999999999	0	408217	0	0	24
128443	13.0619999999999994	0	408249	0	0	24
128444	13.0630000000000006	0	408281	0	0	24
128445	13.0640000000000001	0	408313	0	0	24
128446	13.0649999999999995	0	408345	0	0	24
128447	13.0660000000000007	0	408377	0	0	24
128448	13.0670000000000002	0	408409	0	0	24
128449	13.0679999999999996	0	408441	0	0	24
128450	13.0690000000000008	0	408473	0	0	24
128451	13.0700000000000003	0	408503	0	0	24
128452	13.0709999999999997	0	408535	0	0	24
128453	13.0719999999999992	0	408567	0	0	24
128454	13.0730000000000004	0	408599	0	0	24
128455	13.0739999999999998	0	408631	0	0	24
128456	13.0749999999999993	0	408663	0	0	24
128457	13.0760000000000005	0	408695	0	0	24
128458	13.077	0	408727	0	0	24
128459	13.0779999999999994	0	408759	0	0	24
128460	13.0790000000000006	0	408791	0	0	24
128461	13.0800000000000001	0	408821	0	0	24
128462	13.0809999999999995	0	408853	0	0	24
128463	13.0820000000000007	0	408885	0	0	24
128464	13.0830000000000002	0	408917	0	0	24
128465	13.0839999999999996	0	408949	0	0	24
128466	13.0850000000000009	0	408981	0	0	24
128467	13.0860000000000003	0	409013	0	0	24
128468	13.0869999999999997	0	409045	0	0	24
128469	13.0879999999999992	0	409077	0	0	24
128470	13.0890000000000004	0	409109	0	0	24
128471	13.0899999999999999	0	409139	0	0	24
128472	13.0909999999999993	0	409171	0	0	24
128473	13.0920000000000005	0	409203	0	0	24
128474	13.093	0	409235	0	0	24
128475	13.0939999999999994	0	409267	0	0	24
128476	13.0950000000000006	0	409299	0	0	24
128477	13.0960000000000001	0	409331	0	0	24
128478	13.0969999999999995	0	409363	0	0	24
128479	13.0980000000000008	0	409395	0	0	24
128480	13.0990000000000002	0	409427	0	0	24
128481	13.0999999999999996	0	409457	0	0	24
128482	13.1010000000000009	0	409489	0	0	24
128483	13.1020000000000003	0	409521	0	0	24
128484	13.1029999999999998	0	409553	0	0	24
128485	13.1039999999999992	0	409585	0	0	24
128486	13.1050000000000004	0	409617	0	0	24
128487	13.1059999999999999	0	409649	0	0	24
128488	13.1069999999999993	0	409681	0	0	24
128489	13.1080000000000005	0	409713	0	0	24
128490	13.109	0	409745	0	0	24
128491	13.1099999999999994	0	409775	0	0	24
128492	13.1110000000000007	0	409807	0	0	24
128493	13.1120000000000001	0	409839	0	0	24
128494	13.1129999999999995	0	409871	0	0	24
128495	13.1140000000000008	0	409903	0	0	24
128496	13.1150000000000002	0	409935	0	0	24
128497	13.1159999999999997	0	409967	0	0	24
128498	13.1170000000000009	0	409999	0	0	24
128499	13.1180000000000003	0	410031	0	0	24
128500	13.1189999999999998	0	410063	0	0	24
128501	13.1199999999999992	0	410093	0	0	24
128502	13.1210000000000004	0	410125	0	0	24
128503	13.1219999999999999	0	410157	0	0	24
128504	13.1229999999999993	0	410189	0	0	24
128505	13.1240000000000006	0	410221	0	0	24
128506	13.125	0	410253	0	0	24
128507	13.1259999999999994	0	410285	0	0	24
128508	13.1270000000000007	0	410317	0	0	24
128509	13.1280000000000001	0	410349	0	0	24
128510	13.1289999999999996	0	410381	0	0	24
128511	13.1300000000000008	0	410411	0	0	24
128512	13.1310000000000002	0	410443	0	0	24
128513	13.1319999999999997	0	410475	0	0	24
128514	13.1329999999999991	0	410507	0	0	24
128515	13.1340000000000003	0	410539	0	0	24
128516	13.1349999999999998	0	410571	0	0	24
128517	13.1359999999999992	0	410603	0	0	24
128518	13.1370000000000005	0	410635	0	0	24
128519	13.1379999999999999	0	410667	0	0	24
128520	13.1389999999999993	0	410699	0	0	24
128521	13.1400000000000006	0	410729	0	0	24
128522	13.141	0	410761	0	0	24
128523	13.1419999999999995	0	410793	0	0	24
128524	13.1430000000000007	0	410825	0	0	24
128525	13.1440000000000001	0	410857	0	0	24
128526	13.1449999999999996	0	410889	0	0	24
128527	13.1460000000000008	0	410921	0	0	24
128528	13.1470000000000002	0	410953	0	0	24
128529	13.1479999999999997	0	410985	0	0	24
128530	13.1489999999999991	0	411017	0	0	24
128531	13.1500000000000004	0	411047	0	0	24
128532	13.1509999999999998	0	411079	0	0	24
128533	13.1519999999999992	0	411111	0	0	24
128534	13.1530000000000005	0	411143	0	0	24
128535	13.1539999999999999	0	411175	0	0	24
128536	13.1549999999999994	0	411207	0	0	24
128537	13.1560000000000006	0	411239	0	0	24
128538	13.157	0	411271	0	0	24
128539	13.1579999999999995	0	411303	0	0	24
128540	13.1590000000000007	0	411335	0	0	24
128541	13.1600000000000001	0	411365	0	0	24
128542	13.1609999999999996	0	411397	0	0	24
128543	13.1620000000000008	0	411429	0	0	24
128544	13.1630000000000003	0	411461	0	0	24
128545	13.1639999999999997	0	411493	0	0	24
128546	13.1649999999999991	0	411525	0	0	24
128547	13.1660000000000004	0	411557	0	0	24
128548	13.1669999999999998	0	411589	0	0	24
128549	13.1679999999999993	0	411621	0	0	24
128550	13.1690000000000005	0	411653	0	0	24
128551	13.1699999999999999	0	411683	0	0	24
128552	13.1709999999999994	0	411715	0	0	24
128553	13.1720000000000006	0	411747	0	0	24
128554	13.173	0	411779	0	0	24
128555	13.1739999999999995	0	411811	0	0	24
128556	13.1750000000000007	0	411843	0	0	24
128557	13.1760000000000002	0	411875	0	0	24
128558	13.1769999999999996	0	411907	0	0	24
128559	13.1780000000000008	0	411939	0	0	24
128560	13.1790000000000003	0	411971	0	0	24
128561	13.1799999999999997	0	412001	0	0	24
128562	13.1809999999999992	0	412033	0	0	24
128563	13.1820000000000004	0	412065	0	0	24
128564	13.1829999999999998	0	412097	0	0	24
128565	13.1839999999999993	0	412129	0	0	24
128566	13.1850000000000005	0	412161	0	0	24
128567	13.1859999999999999	0	412193	0	0	24
128568	13.1869999999999994	0	412225	0	0	24
128569	13.1880000000000006	0	412257	0	0	24
128570	13.1890000000000001	0	412289	0	0	24
128571	13.1899999999999995	0	412319	0	0	24
128572	13.1910000000000007	0	412351	0	0	24
128573	13.1920000000000002	0	412383	0	0	24
128574	13.1929999999999996	0	412415	0	0	24
128575	13.1940000000000008	0	412447	0	0	24
128576	13.1950000000000003	0	412479	0	0	24
128577	13.1959999999999997	0	412511	0	0	24
128578	13.1969999999999992	0	412543	0	0	24
128579	13.1980000000000004	0	412575	0	0	24
128580	13.1989999999999998	0	412607	0	0	24
128581	13.1999999999999993	0	412637	0	0	24
128582	13.2010000000000005	0	412669	0	0	24
128583	13.202	0	412701	0	0	24
128584	13.2029999999999994	0	412733	0	0	24
128585	13.2040000000000006	0	412765	0	0	24
128586	13.2050000000000001	0	412797	0	0	24
128587	13.2059999999999995	0	412829	0	0	24
128588	13.2070000000000007	0	412861	0	0	24
128589	13.2080000000000002	0	412893	0	0	24
128590	13.2089999999999996	0	412925	0	0	24
128591	13.2100000000000009	0	412955	0	0	24
128592	13.2110000000000003	0	412987	0	0	24
128593	13.2119999999999997	0	413019	0	0	24
128594	13.2129999999999992	0	413051	0	0	24
128595	13.2140000000000004	0	413083	0	0	24
128596	13.2149999999999999	0	413115	0	0	24
128597	13.2159999999999993	0	413147	0	0	24
128598	13.2170000000000005	0	413179	0	0	24
128599	13.218	0	413211	0	0	24
128600	13.2189999999999994	0	413243	0	0	24
128601	13.2200000000000006	0	413273	0	0	24
128602	13.2210000000000001	0	413305	0	0	24
128603	13.2219999999999995	0	413337	0	0	24
128604	13.2230000000000008	0	413369	0	0	24
128605	13.2240000000000002	0	413401	0	0	24
128606	13.2249999999999996	0	413433	0	0	24
128607	13.2260000000000009	0	413465	0	0	24
128608	13.2270000000000003	0	413497	0	0	24
128609	13.2279999999999998	0	413529	0	0	24
128610	13.2289999999999992	0	413561	0	0	24
128611	13.2300000000000004	0	413591	0	0	24
128612	13.2309999999999999	0	413623	0	0	24
128613	13.2319999999999993	0	413655	0	0	24
128614	13.2330000000000005	0	413687	0	0	24
128615	13.234	0	413719	0	0	24
128616	13.2349999999999994	0	413751	0	0	24
128617	13.2360000000000007	0	413783	0	0	24
128618	13.2370000000000001	0	413815	0	0	24
128619	13.2379999999999995	0	413847	0	0	24
128620	13.2390000000000008	0	413879	0	0	24
128621	13.2400000000000002	0	413909	0	0	24
128622	13.2409999999999997	0	413941	0	0	24
128623	13.2420000000000009	0	413973	0	0	24
128624	13.2430000000000003	0	414005	0	0	24
128625	13.2439999999999998	0	414037	0	0	24
128626	13.2449999999999992	0	414069	0	0	24
128627	13.2460000000000004	0	414101	0	0	24
128628	13.2469999999999999	0	414133	0	0	24
128629	13.2479999999999993	0	414165	0	0	24
128630	13.2490000000000006	0	414197	0	0	24
128631	13.25	0	414227	0	0	24
128632	13.2509999999999994	0	414259	0	0	24
128633	13.2520000000000007	0	414291	0	0	24
128634	13.2530000000000001	0	414323	0	0	24
128635	13.2539999999999996	0	414355	0	0	24
128636	13.2550000000000008	0	414387	0	0	24
128637	13.2560000000000002	0	414419	0	0	24
128638	13.2569999999999997	0	414451	0	0	24
128639	13.2579999999999991	0	414483	0	0	24
128640	13.2590000000000003	0	414515	0	0	24
128641	13.2599999999999998	0	414545	0	0	24
128642	13.2609999999999992	0	414577	0	0	24
128643	13.2620000000000005	0	414609	0	0	24
128644	13.2629999999999999	0	414641	0	0	24
128645	13.2639999999999993	0	414673	0	0	24
128646	13.2650000000000006	0	414705	0	0	24
128647	13.266	0	414737	0	0	24
128648	13.2669999999999995	0	414769	0	0	24
128649	13.2680000000000007	0	414801	0	0	24
128650	13.2690000000000001	0	414833	0	0	24
128651	13.2699999999999996	0	414863	0	0	24
128652	13.2710000000000008	0	414895	0	0	24
128653	13.2720000000000002	0	414927	0	0	24
128654	13.2729999999999997	0	414959	0	0	24
128655	13.2739999999999991	0	414991	0	0	24
128656	13.2750000000000004	0	415023	0	0	24
128657	13.2759999999999998	0	415055	0	0	24
128658	13.2769999999999992	0	415087	0	0	24
128659	13.2780000000000005	0	415119	0	0	24
128660	13.2789999999999999	0	415151	0	0	24
128661	13.2799999999999994	0	415181	0	0	24
128662	13.2810000000000006	0	415213	0	0	24
128663	13.282	0	415245	0	0	24
128664	13.2829999999999995	0	415277	0	0	24
128665	13.2840000000000007	0	415309	0	0	24
128666	13.2850000000000001	0	415341	0	0	24
128667	13.2859999999999996	0	415373	0	0	24
128668	13.2870000000000008	0	415405	0	0	24
128669	13.2880000000000003	0	415437	0	0	24
128670	13.2889999999999997	0	415469	0	0	24
128671	13.2899999999999991	0	415499	0	0	24
128672	13.2910000000000004	0	415531	0	0	24
128673	13.2919999999999998	0	415563	0	0	24
128674	13.2929999999999993	0	415595	0	0	24
128675	13.2940000000000005	0	415627	0	0	24
128676	13.2949999999999999	0	415659	0	0	24
128677	13.2959999999999994	0	415691	0	0	24
128678	13.2970000000000006	0	415723	0	0	24
128679	13.298	0	415755	0	0	24
128680	13.2989999999999995	0	415787	0	0	24
128681	13.3000000000000007	0	415817	0	0	24
128682	13.3010000000000002	0	415849	0	0	24
128683	13.3019999999999996	0	415881	0	0	24
128684	13.3030000000000008	0	415913	0	0	24
128685	13.3040000000000003	0	415945	0	0	24
128686	13.3049999999999997	0	415977	0	0	24
128687	13.3059999999999992	0	416009	0	0	24
128688	13.3070000000000004	0	416041	0	0	24
128689	13.3079999999999998	0	416073	0	0	24
128690	13.3089999999999993	0	416105	0	0	24
128691	13.3100000000000005	0	416135	0	0	24
128692	13.3109999999999999	0	416167	0	0	24
128693	13.3119999999999994	0	416199	0	0	24
128694	13.3130000000000006	0	416231	0	0	24
128695	13.3140000000000001	0	416263	0	0	24
128696	13.3149999999999995	0	416295	0	0	24
128697	13.3160000000000007	0	416327	0	0	24
128698	13.3170000000000002	0	416359	0	0	24
128699	13.3179999999999996	0	416391	0	0	24
128700	13.3190000000000008	0	416423	0	0	24
128701	13.3200000000000003	0	416453	0	0	24
128702	13.3209999999999997	0	416485	0	0	24
128703	13.3219999999999992	0	416517	0	0	24
128704	13.3230000000000004	0	416549	0	0	24
128705	13.3239999999999998	0	416581	0	0	24
128706	13.3249999999999993	0	416613	0	0	24
128707	13.3260000000000005	0	416645	0	0	24
128708	13.327	0	416677	0	0	24
128709	13.3279999999999994	0	416709	0	0	24
128710	13.3290000000000006	0	416741	0	0	24
128711	13.3300000000000001	0	416771	0	0	24
128712	13.3309999999999995	0	416803	0	0	24
128713	13.3320000000000007	0	416835	0	0	24
128714	13.3330000000000002	0	416867	0	0	24
128715	13.3339999999999996	0	416899	0	0	24
128716	13.3350000000000009	0	416931	0	0	24
128717	13.3360000000000003	0	416963	0	0	24
128718	13.3369999999999997	0	416995	0	0	24
128719	13.3379999999999992	0	417027	0	0	24
128720	13.3390000000000004	0	417059	0	0	24
128721	13.3399999999999999	0	417089	0	0	24
128722	13.3409999999999993	0	417121	0	0	24
128723	13.3420000000000005	0	417153	0	0	24
128724	13.343	0	417185	0	0	24
128725	13.3439999999999994	0	417217	0	0	24
128726	13.3450000000000006	0	417249	0	0	24
128727	13.3460000000000001	0	417281	0	0	24
128728	13.3469999999999995	0	417313	0	0	24
128729	13.3480000000000008	0	417345	0	0	24
128730	13.3490000000000002	0	417377	0	0	24
128731	13.3499999999999996	0	417407	0	0	24
128732	13.3510000000000009	0	417439	0	0	24
128733	13.3520000000000003	0	417471	0	0	24
128734	13.3529999999999998	0	417503	0	0	24
128735	13.3539999999999992	0	417535	0	0	24
128736	13.3550000000000004	0	417567	0	0	24
128737	13.3559999999999999	0	417599	0	0	24
128738	13.3569999999999993	0	417631	0	0	24
128739	13.3580000000000005	0	417663	0	0	24
128740	13.359	0	417695	0	0	24
128741	13.3599999999999994	0	417725	0	0	24
128742	13.3610000000000007	0	417757	0	0	24
128743	13.3620000000000001	0	417789	0	0	24
128744	13.3629999999999995	0	417821	0	0	24
128745	13.3640000000000008	0	417853	0	0	24
128746	13.3650000000000002	0	417885	0	0	24
128747	13.3659999999999997	0	417917	0	0	24
128748	13.3670000000000009	0	417949	0	0	24
128749	13.3680000000000003	0	417981	0	0	24
128750	13.3689999999999998	0	418013	0	0	24
128751	13.3699999999999992	0	418043	0	0	24
128752	13.3710000000000004	0	418075	0	0	24
128753	13.3719999999999999	0	418107	0	0	24
128754	13.3729999999999993	0	418139	0	0	24
128755	13.3740000000000006	0	418171	0	0	24
128756	13.375	0	418203	0	0	24
128757	13.3759999999999994	0	418235	0	0	24
128758	13.3770000000000007	0	418267	0	0	24
128759	13.3780000000000001	0	418299	0	0	24
128760	13.3789999999999996	0	418331	0	0	24
128761	13.3800000000000008	0	418361	0	0	24
128762	13.3810000000000002	0	418393	0	0	24
128763	13.3819999999999997	0	418425	0	0	24
128764	13.3829999999999991	0	418457	0	0	24
128765	13.3840000000000003	0	418489	0	0	24
128766	13.3849999999999998	0	418521	0	0	24
128767	13.3859999999999992	0	418553	0	0	24
128768	13.3870000000000005	0	418585	0	0	24
128769	13.3879999999999999	0	418617	0	0	24
128770	13.3889999999999993	0	418649	0	0	24
128771	13.3900000000000006	0	418679	0	0	24
128772	13.391	0	418711	0	0	24
128773	13.3919999999999995	0	418743	0	0	24
128774	13.3930000000000007	0	418775	0	0	24
128775	13.3940000000000001	0	418807	0	0	24
128776	13.3949999999999996	0	418839	0	0	24
128777	13.3960000000000008	0	418871	0	0	24
128778	13.3970000000000002	0	418903	0	0	24
128779	13.3979999999999997	0	418935	0	0	24
128780	13.3989999999999991	0	418967	0	0	24
128781	13.4000000000000004	0	418997	0	0	24
128782	13.4009999999999998	0	419029	0	0	24
128783	13.4019999999999992	0	419061	0	0	24
128784	13.4030000000000005	0	419093	0	0	24
128785	13.4039999999999999	0	419125	0	0	24
128786	13.4049999999999994	0	419157	0	0	24
128787	13.4060000000000006	0	419189	0	0	24
128788	13.407	0	419221	0	0	24
128789	13.4079999999999995	0	419253	0	0	24
128790	13.4090000000000007	0	419285	0	0	24
128791	13.4100000000000001	0	419315	0	0	24
128792	13.4109999999999996	0	419347	0	0	24
128793	13.4120000000000008	0	419379	0	0	24
128794	13.4130000000000003	0	419411	0	0	24
128795	13.4139999999999997	0	419443	0	0	24
128796	13.4149999999999991	0	419475	0	0	24
128797	13.4160000000000004	0	419507	0	0	24
128798	13.4169999999999998	0	419539	0	0	24
128799	13.4179999999999993	0	419571	0	0	24
128800	13.4190000000000005	0	419603	0	0	24
128801	13.4199999999999999	0	419633	0	0	24
128802	13.4209999999999994	0	419665	0	0	24
128803	13.4220000000000006	0	419697	0	0	24
128804	13.423	0	419729	0	0	24
128805	13.4239999999999995	0	419761	0	0	24
128806	13.4250000000000007	0	419793	0	0	24
128807	13.4260000000000002	0	419825	0	0	24
128808	13.4269999999999996	0	419857	0	0	24
128809	13.4280000000000008	0	419889	0	0	24
128810	13.4290000000000003	0	419921	0	0	24
128811	13.4299999999999997	0	419951	0	0	24
128812	13.4309999999999992	0	419983	0	0	24
128813	13.4320000000000004	0	420015	0	0	24
128814	13.4329999999999998	0	420047	0	0	24
128815	13.4339999999999993	0	420079	0	0	24
128816	13.4350000000000005	0	420111	0	0	24
128817	13.4359999999999999	0	420143	0	0	24
128818	13.4369999999999994	0	420175	0	0	24
128819	13.4380000000000006	0	420207	0	0	24
128820	13.4390000000000001	0	420239	0	0	24
128821	13.4399999999999995	0	420269	0	0	24
128822	13.4410000000000007	0	420301	0	0	24
128823	13.4420000000000002	0	420333	0	0	24
128824	13.4429999999999996	0	420365	0	0	24
128825	13.4440000000000008	0	420397	0	0	24
128826	13.4450000000000003	0	420429	0	0	24
128827	13.4459999999999997	0	420461	0	0	24
128828	13.4469999999999992	0	420493	0	0	24
128829	13.4480000000000004	0	420525	0	0	24
128830	13.4489999999999998	0	420557	0	0	24
128831	13.4499999999999993	0	420587	0	0	24
128832	13.4510000000000005	0	420619	0	0	24
128833	13.452	0	420651	0	0	24
128834	13.4529999999999994	0	420683	0	0	24
128835	13.4540000000000006	0	420715	0	0	24
128836	13.4550000000000001	0	420747	0	0	24
128837	13.4559999999999995	0	420779	0	0	24
128838	13.4570000000000007	0	420811	0	0	24
128839	13.4580000000000002	0	420843	0	0	24
128840	13.4589999999999996	0	420875	0	0	24
128841	13.4600000000000009	0	420905	0	0	24
128842	13.4610000000000003	0	420937	0	0	24
128843	13.4619999999999997	0	420969	0	0	24
128844	13.4629999999999992	0	421001	0	0	24
128845	13.4640000000000004	0	421033	0	0	24
128846	13.4649999999999999	0	421065	0	0	24
128847	13.4659999999999993	0	421097	0	0	24
128848	13.4670000000000005	0	421129	0	0	24
128849	13.468	0	421161	0	0	24
128850	13.4689999999999994	0	421193	0	0	24
128851	13.4700000000000006	0	421223	0	0	24
128852	13.4710000000000001	0	421255	0	0	24
128853	13.4719999999999995	0	421287	0	0	24
128854	13.4730000000000008	0	421319	0	0	24
128855	13.4740000000000002	0	421351	0	0	24
128856	13.4749999999999996	0	421383	0	0	24
128857	13.4760000000000009	0	421415	0	0	24
128858	13.4770000000000003	0	421447	0	0	24
128859	13.4779999999999998	0	421479	0	0	24
128860	13.4789999999999992	0	421511	0	0	24
128861	13.4800000000000004	0	421541	0	0	24
128862	13.4809999999999999	0	421573	0	0	24
128863	13.4819999999999993	0	421605	0	0	24
128864	13.4830000000000005	0	421637	0	0	24
128865	13.484	0	421669	0	0	24
128866	13.4849999999999994	0	421701	0	0	24
128867	13.4860000000000007	0	421733	0	0	24
128868	13.4870000000000001	0	421765	0	0	24
128869	13.4879999999999995	0	421797	0	0	24
128870	13.4890000000000008	0	421829	0	0	24
128871	13.4900000000000002	0	421859	0	0	24
128872	13.4909999999999997	0	421891	0	0	24
128873	13.4920000000000009	0	421923	0	0	24
128874	13.4930000000000003	0	421955	0	0	24
128875	13.4939999999999998	0	421987	0	0	24
128876	13.4949999999999992	0	422019	0	0	24
128877	13.4960000000000004	0	422051	0	0	24
128878	13.4969999999999999	0	422083	0	0	24
128879	13.4979999999999993	0	422115	0	0	24
128880	13.4990000000000006	0	422147	0	0	24
128881	13.5	0	422177	0	0	24
128882	13.5009999999999994	0	422209	0	0	24
128883	13.5020000000000007	0	422241	0	0	24
128884	13.5030000000000001	0	422273	0	0	24
128885	13.5039999999999996	0	422305	0	0	24
128886	13.5050000000000008	0	422337	0	0	24
128887	13.5060000000000002	0	422369	0	0	24
128888	13.5069999999999997	0	422401	0	0	24
128889	13.5079999999999991	0	422433	0	0	24
128890	13.5090000000000003	0	422465	0	0	24
128891	13.5099999999999998	0	422495	0	0	24
128892	13.5109999999999992	0	422527	0	0	24
128893	13.5120000000000005	0	422559	0	0	24
128894	13.5129999999999999	0	422591	0	0	24
128895	13.5139999999999993	0	422623	0	0	24
128896	13.5150000000000006	0	422655	0	0	24
128897	13.516	0	422687	0	0	24
128898	13.5169999999999995	0	422719	0	0	24
128899	13.5180000000000007	0	422751	0	0	24
128900	13.5190000000000001	0	422783	0	0	24
128901	13.5199999999999996	0	422813	0	0	24
128902	13.5210000000000008	0	422845	0	0	24
128903	13.5220000000000002	0	422877	0	0	24
128904	13.5229999999999997	0	422909	0	0	24
128905	13.5239999999999991	0	422941	0	0	24
128906	13.5250000000000004	0	422973	0	0	24
128907	13.5259999999999998	0	423005	0	0	24
128908	13.5269999999999992	0	423037	0	0	24
128909	13.5280000000000005	0	423069	0	0	24
128910	13.5289999999999999	0	423101	0	0	24
128911	13.5299999999999994	0	423131	0	0	24
128912	13.5310000000000006	0	423163	0	0	24
128913	13.532	0	423195	0	0	24
128914	13.5329999999999995	0	423227	0	0	24
128915	13.5340000000000007	0	423259	0	0	24
128916	13.5350000000000001	0	423291	0	0	24
128917	13.5359999999999996	0	423323	0	0	24
128918	13.5370000000000008	0	423355	0	0	24
128919	13.5380000000000003	0	423387	0	0	24
128920	13.5389999999999997	0	423419	0	0	24
128921	13.5399999999999991	0	423449	0	0	24
128922	13.5410000000000004	0	423481	0	0	24
128923	13.5419999999999998	0	423513	0	0	24
128924	13.5429999999999993	0	423545	0	0	24
128925	13.5440000000000005	0	423577	0	0	24
128926	13.5449999999999999	0	423609	0	0	24
128927	13.5459999999999994	0	423641	0	0	24
128928	13.5470000000000006	0	423673	0	0	24
128929	13.548	0	423705	0	0	24
128930	13.5489999999999995	0	423737	0	0	24
128931	13.5500000000000007	0	423767	0	0	24
128932	13.5510000000000002	0	423799	0	0	24
128933	13.5519999999999996	0	423831	0	0	24
128934	13.5530000000000008	0	423863	0	0	24
128935	13.5540000000000003	0	423895	0	0	24
128936	13.5549999999999997	0	423927	0	0	24
128937	13.5559999999999992	0	423959	0	0	24
128938	13.5570000000000004	0	423991	0	0	24
128939	13.5579999999999998	0	424023	0	0	24
128940	13.5589999999999993	0	424055	0	0	24
128941	13.5600000000000005	0	424085	0	0	24
128942	13.5609999999999999	0	424117	0	0	24
128943	13.5619999999999994	0	424149	0	0	24
128944	13.5630000000000006	0	424181	0	0	24
128945	13.5640000000000001	0	424213	0	0	24
128946	13.5649999999999995	0	424245	0	0	24
128947	13.5660000000000007	0	424277	0	0	24
128948	13.5670000000000002	0	424309	0	0	24
128949	13.5679999999999996	0	424341	0	0	24
128950	13.5690000000000008	0	424373	0	0	24
128951	13.5700000000000003	0	424403	0	0	24
128952	13.5709999999999997	0	424435	0	0	24
128953	13.5719999999999992	0	424467	0	0	24
128954	13.5730000000000004	0	424499	0	0	24
128955	13.5739999999999998	0	424531	0	0	24
128956	13.5749999999999993	0	424563	0	0	24
128957	13.5760000000000005	0	424595	0	0	24
128958	13.577	0	424627	0	0	24
128959	13.5779999999999994	0	424659	0	0	24
128960	13.5790000000000006	0	424691	0	0	24
128961	13.5800000000000001	0	424721	0	0	24
128962	13.5809999999999995	0	424753	0	0	24
128963	13.5820000000000007	0	424785	0	0	24
128964	13.5830000000000002	0	424817	0	0	24
128965	13.5839999999999996	0	424849	0	0	24
128966	13.5850000000000009	0	424881	0	0	24
128967	13.5860000000000003	0	424913	0	0	24
128968	13.5869999999999997	0	424945	0	0	24
128969	13.5879999999999992	0	424977	0	0	24
128970	13.5890000000000004	0	425009	0	0	24
128971	13.5899999999999999	0	425039	0	0	24
128972	13.5909999999999993	0	425071	0	0	24
128973	13.5920000000000005	0	425103	0	0	24
128974	13.593	0	425135	0	0	24
128975	13.5939999999999994	0	425167	0	0	24
128976	13.5950000000000006	0	425199	0	0	24
128977	13.5960000000000001	0	425231	0	0	24
128978	13.5969999999999995	0	425263	0	0	24
128979	13.5980000000000008	0	425295	0	0	24
128980	13.5990000000000002	0	425327	0	0	24
128981	13.5999999999999996	0	425357	0	0	24
128982	13.6010000000000009	0	425389	0	0	24
128983	13.6020000000000003	0	425421	0	0	24
128984	13.6029999999999998	0	425453	0	0	24
128985	13.6039999999999992	0	425485	0	0	24
128986	13.6050000000000004	0	425517	0	0	24
128987	13.6059999999999999	0	425549	0	0	24
128988	13.6069999999999993	0	425581	0	0	24
128989	13.6080000000000005	0	425613	0	0	24
128990	13.609	0	425645	0	0	24
128991	13.6099999999999994	0	425675	0	0	24
128992	13.6110000000000007	0	425707	0	0	24
128993	13.6120000000000001	0	425739	0	0	24
128994	13.6129999999999995	0	425771	0	0	24
128995	13.6140000000000008	0	425803	0	0	24
128996	13.6150000000000002	0	425835	0	0	24
128997	13.6159999999999997	0	425867	0	0	24
128998	13.6170000000000009	0	425899	0	0	24
128999	13.6180000000000003	0	425931	0	0	24
129000	13.6189999999999998	0	425963	0	0	24
129001	13.6199999999999992	0	425993	0	0	24
129002	13.6210000000000004	0	426025	0	0	24
129003	13.6219999999999999	0	426057	0	0	24
129004	13.6229999999999993	0	426089	0	0	24
129005	13.6240000000000006	0	426121	0	0	24
129006	13.625	0	426153	0	0	24
129007	13.6259999999999994	0	426185	0	0	24
129008	13.6270000000000007	0	426217	0	0	24
129009	13.6280000000000001	0	426249	0	0	24
129010	13.6289999999999996	0	426281	0	0	24
129011	13.6300000000000008	0	426311	0	0	24
129012	13.6310000000000002	0	426343	0	0	24
129013	13.6319999999999997	0	426375	0	0	24
129014	13.6329999999999991	0	426407	0	0	24
129015	13.6340000000000003	0	426439	0	0	24
129016	13.6349999999999998	0	426471	0	0	24
129017	13.6359999999999992	0	426503	0	0	24
129018	13.6370000000000005	0	426535	0	0	24
129019	13.6379999999999999	0	426567	0	0	24
129020	13.6389999999999993	0	426599	0	0	24
129021	13.6400000000000006	0	426629	0	0	24
129022	13.641	0	426661	0	0	24
129023	13.6419999999999995	0	426693	0	0	24
129024	13.6430000000000007	0	426725	0	0	24
129025	13.6440000000000001	0	426757	0	0	24
129026	13.6449999999999996	0	426789	0	0	24
129027	13.6460000000000008	0	426821	0	0	24
129028	13.6470000000000002	0	426853	0	0	24
129029	13.6479999999999997	0	426885	0	0	24
129030	13.6489999999999991	0	426917	0	0	24
129031	13.6500000000000004	0	426947	0	0	24
129032	13.6509999999999998	0	426979	0	0	24
129033	13.6519999999999992	0	427011	0	0	24
129034	13.6530000000000005	0	427043	0	0	24
129035	13.6539999999999999	0	427075	0	0	24
129036	13.6549999999999994	0	427107	0	0	24
129037	13.6560000000000006	0	427139	0	0	24
129038	13.657	0	427171	0	0	24
129039	13.6579999999999995	0	427203	0	0	24
129040	13.6590000000000007	0	427235	0	0	24
129041	13.6600000000000001	0	427265	0	0	24
129042	13.6609999999999996	0	427297	0	0	24
129043	13.6620000000000008	0	427329	0	0	24
129044	13.6630000000000003	0	427361	0	0	24
129045	13.6639999999999997	0	427393	0	0	24
129046	13.6649999999999991	0	427425	0	0	24
129047	13.6660000000000004	0	427457	0	0	24
129048	13.6669999999999998	0	427489	0	0	24
129049	13.6679999999999993	0	427521	0	0	24
129050	13.6690000000000005	0	427553	0	0	24
129051	13.6699999999999999	0	427583	0	0	24
129052	13.6709999999999994	0	427615	0	0	24
129053	13.6720000000000006	0	427647	0	0	24
129054	13.673	0	427679	0	0	24
129055	13.6739999999999995	0	427711	0	0	24
129056	13.6750000000000007	0	427743	0	0	24
129057	13.6760000000000002	0	427775	0	0	24
129058	13.6769999999999996	0	427807	0	0	24
129059	13.6780000000000008	0	427839	0	0	24
129060	13.6790000000000003	0	427871	0	0	24
129061	13.6799999999999997	0	427901	0	0	24
129062	13.6809999999999992	0	427933	0	0	24
129063	13.6820000000000004	0	427965	0	0	24
129064	13.6829999999999998	0	427997	0	0	24
129065	13.6839999999999993	0	428029	0	0	24
129066	13.6850000000000005	0	428061	0	0	24
129067	13.6859999999999999	0	428093	0	0	24
129068	13.6869999999999994	0	428125	0	0	24
129069	13.6880000000000006	0	428157	0	0	24
129070	13.6890000000000001	0	428189	0	0	24
129071	13.6899999999999995	0	428219	0	0	24
129072	13.6910000000000007	0	428251	0	0	24
129073	13.6920000000000002	0	428283	0	0	24
129074	13.6929999999999996	0	428315	0	0	24
129075	13.6940000000000008	0	428347	0	0	24
129076	13.6950000000000003	0	428379	0	0	24
129077	13.6959999999999997	0	428411	0	0	24
129078	13.6969999999999992	0	428443	0	0	24
129079	13.6980000000000004	0	428475	0	0	24
129080	13.6989999999999998	0	428507	0	0	24
129081	13.6999999999999993	0	428537	0	0	24
129082	13.7010000000000005	0	428569	0	0	24
129083	13.702	0	428601	0	0	24
129084	13.7029999999999994	0	428633	0	0	24
129085	13.7040000000000006	0	428665	0	0	24
129086	13.7050000000000001	0	428697	0	0	24
129087	13.7059999999999995	0	428729	0	0	24
129088	13.7070000000000007	0	428761	0	0	24
129089	13.7080000000000002	0	428793	0	0	24
129090	13.7089999999999996	0	428825	0	0	24
129091	13.7100000000000009	0	428855	0	0	24
129092	13.7110000000000003	0	428887	0	0	24
129093	13.7119999999999997	0	428919	0	0	24
129094	13.7129999999999992	0	428951	0	0	24
129095	13.7140000000000004	0	428983	0	0	24
129096	13.7149999999999999	0	429015	0	0	24
129097	13.7159999999999993	0	429047	0	0	24
129098	13.7170000000000005	0	429079	0	0	24
129099	13.718	0	429111	0	0	24
129100	13.7189999999999994	0	429143	0	0	24
129101	13.7200000000000006	0	429173	0	0	24
129102	13.7210000000000001	0	429205	0	0	24
129103	13.7219999999999995	0	429237	0	0	24
129104	13.7230000000000008	0	429269	0	0	24
129105	13.7240000000000002	0	429301	0	0	24
129106	13.7249999999999996	0	429333	0	0	24
129107	13.7260000000000009	0	429365	0	0	24
129108	13.7270000000000003	0	429397	0	0	24
129109	13.7279999999999998	0	429429	0	0	24
129110	13.7289999999999992	0	429461	0	0	24
129111	13.7300000000000004	0	429491	0	0	24
129112	13.7309999999999999	0	429523	0	0	24
129113	13.7319999999999993	0	429555	0	0	24
129114	13.7330000000000005	0	429587	0	0	24
129115	13.734	0	429619	0	0	24
129116	13.7349999999999994	0	429651	0	0	24
129117	13.7360000000000007	0	429683	0	0	24
129118	13.7370000000000001	0	429715	0	0	24
129119	13.7379999999999995	0	429747	0	0	24
129120	13.7390000000000008	0	429779	0	0	24
129121	13.7400000000000002	0	429809	0	0	24
129122	13.7409999999999997	0	429841	0	0	24
129123	13.7420000000000009	0	429873	0	0	24
129124	13.7430000000000003	0	429905	0	0	24
129125	13.7439999999999998	0	429937	0	0	24
129126	13.7449999999999992	0	429969	0	0	24
129127	13.7460000000000004	0	430001	0	0	24
129128	13.7469999999999999	0	430033	0	0	24
129129	13.7479999999999993	0	430065	0	0	24
129130	13.7490000000000006	0	430097	0	0	24
129131	13.75	0	430127	0	0	24
129132	13.7509999999999994	0	430159	0	0	24
129133	13.7520000000000007	0	430191	0	0	24
129134	13.7530000000000001	0	430223	0	0	24
129135	13.7539999999999996	0	430255	0	0	24
129136	13.7550000000000008	0	430287	0	0	24
129137	13.7560000000000002	0	430319	0	0	24
129138	13.7569999999999997	0	430351	0	0	24
129139	13.7579999999999991	0	430383	0	0	24
129140	13.7590000000000003	0	430415	0	0	24
129141	13.7599999999999998	0	430445	0	0	24
129142	13.7609999999999992	0	430477	0	0	24
129143	13.7620000000000005	0	430509	0	0	24
129144	13.7629999999999999	0	430541	0	0	24
129145	13.7639999999999993	0	430573	0	0	24
129146	13.7650000000000006	0	430605	0	0	24
129147	13.766	0	430637	0	0	24
129148	13.7669999999999995	0	430669	0	0	24
129149	13.7680000000000007	0	430701	0	0	24
129150	13.7690000000000001	0	430733	0	0	24
129151	13.7699999999999996	0	430763	0	0	24
129152	13.7710000000000008	0	430795	0	0	24
129153	13.7720000000000002	0	430827	0	0	24
129154	13.7729999999999997	0	430859	0	0	24
129155	13.7739999999999991	0	430891	0	0	24
129156	13.7750000000000004	0	430923	0	0	24
129157	13.7759999999999998	0	430955	0	0	24
129158	13.7769999999999992	0	430987	0	0	24
129159	13.7780000000000005	0	431019	0	0	24
129160	13.7789999999999999	0	431051	0	0	24
129161	13.7799999999999994	0	431081	0	0	24
129162	13.7810000000000006	0	431113	0	0	24
129163	13.782	0	431145	0	0	24
129164	13.7829999999999995	0	431177	0	0	24
129165	13.7840000000000007	0	431209	0	0	24
129166	13.7850000000000001	0	431241	0	0	24
129167	13.7859999999999996	0	431273	0	0	24
129168	13.7870000000000008	0	431305	0	0	24
129169	13.7880000000000003	0	431337	0	0	24
129170	13.7889999999999997	0	431369	0	0	24
129171	13.7899999999999991	0	431399	0	0	24
129172	13.7910000000000004	0	431431	0	0	24
129173	13.7919999999999998	0	431463	0	0	24
129174	13.7929999999999993	0	431495	0	0	24
129175	13.7940000000000005	0	431527	0	0	24
129176	13.7949999999999999	0	431559	0	0	24
129177	13.7959999999999994	0	431591	0	0	24
129178	13.7970000000000006	0	431623	0	0	24
129179	13.798	0	431655	0	0	24
129180	13.7989999999999995	0	431687	0	0	24
129181	13.8000000000000007	0	431717	0	0	24
129182	13.8010000000000002	0	431749	0	0	24
129183	13.8019999999999996	0	431781	0	0	24
129184	13.8030000000000008	0	431813	0	0	24
129185	13.8040000000000003	0	431845	0	0	24
129186	13.8049999999999997	0	431877	0	0	24
129187	13.8059999999999992	0	431909	0	0	24
129188	13.8070000000000004	0	431941	0	0	24
129189	13.8079999999999998	0	431973	0	0	24
129190	13.8089999999999993	0	432005	0	0	24
129191	13.8100000000000005	0	432035	0	0	24
129192	13.8109999999999999	0	432067	0	0	24
129193	13.8119999999999994	0	432099	0	0	24
129194	13.8130000000000006	0	432131	0	0	24
129195	13.8140000000000001	0	432163	0	0	24
129196	13.8149999999999995	0	432195	0	0	24
129197	13.8160000000000007	0	432227	0	0	24
129198	13.8170000000000002	0	432259	0	0	24
129199	13.8179999999999996	0	432291	0	0	24
129200	13.8190000000000008	0	432323	0	0	24
129201	13.8200000000000003	0	432353	0	0	24
129202	13.8209999999999997	0	432385	0	0	24
129203	13.8219999999999992	0	432417	0	0	24
129204	13.8230000000000004	0	432449	0	0	24
129205	13.8239999999999998	0	432481	0	0	24
129206	13.8249999999999993	0	432513	0	0	24
129207	13.8260000000000005	0	432545	0	0	24
129208	13.827	0	432577	0	0	24
129209	13.8279999999999994	0	432609	0	0	24
129210	13.8290000000000006	0	432641	0	0	24
129211	13.8300000000000001	0	432671	0	0	24
129212	13.8309999999999995	0	432703	0	0	24
129213	13.8320000000000007	0	432735	0	0	24
129214	13.8330000000000002	0	432767	0	0	24
129215	13.8339999999999996	0	432799	0	0	24
129216	13.8350000000000009	0	432831	0	0	24
129217	13.8360000000000003	0	432863	0	0	24
129218	13.8369999999999997	0	432895	0	0	24
129219	13.8379999999999992	0	432927	0	0	24
129220	13.8390000000000004	0	432959	0	0	24
129221	13.8399999999999999	0	432989	0	0	24
129222	13.8409999999999993	0	433021	0	0	24
129223	13.8420000000000005	0	433053	0	0	24
129224	13.843	0	433085	0	0	24
129225	13.8439999999999994	0	433117	0	0	24
129226	13.8450000000000006	0	433149	0	0	24
129227	13.8460000000000001	0	433181	0	0	24
129228	13.8469999999999995	0	433213	0	0	24
129229	13.8480000000000008	0	433245	0	0	24
129230	13.8490000000000002	0	433277	0	0	24
129231	13.8499999999999996	0	433307	0	0	24
129232	13.8510000000000009	0	433339	0	0	24
129233	13.8520000000000003	0	433371	0	0	24
129234	13.8529999999999998	0	433403	0	0	24
129235	13.8539999999999992	0	433435	0	0	24
129236	13.8550000000000004	0	433467	0	0	24
129237	13.8559999999999999	0	433499	0	0	24
129238	13.8569999999999993	0	433531	0	0	24
129239	13.8580000000000005	0	433563	0	0	24
129240	13.859	0	433595	0	0	24
129241	13.8599999999999994	0	433625	0	0	24
129242	13.8610000000000007	0	433657	0	0	24
129243	13.8620000000000001	0	433689	0	0	24
129244	13.8629999999999995	0	433721	0	0	24
129245	13.8640000000000008	0	433753	0	0	24
129246	13.8650000000000002	0	433785	0	0	24
129247	13.8659999999999997	0	433817	0	0	24
129248	13.8670000000000009	0	433849	0	0	24
129249	13.8680000000000003	0	433881	0	0	24
129250	13.8689999999999998	0	433913	0	0	24
129251	13.8699999999999992	0	433943	0	0	24
129252	13.8710000000000004	0	433975	0	0	24
129253	13.8719999999999999	0	434007	0	0	24
129254	13.8729999999999993	0	434039	0	0	24
129255	13.8740000000000006	0	434071	0	0	24
129256	13.875	0	434103	0	0	24
129257	13.8759999999999994	0	434135	0	0	24
129258	13.8770000000000007	0	434167	0	0	24
129259	13.8780000000000001	0	434199	0	0	24
129260	13.8789999999999996	0	434231	0	0	24
129261	13.8800000000000008	0	434261	0	0	24
129262	13.8810000000000002	0	434293	0	0	24
129263	13.8819999999999997	0	434325	0	0	24
129264	13.8829999999999991	0	434357	0	0	24
129265	13.8840000000000003	0	434389	0	0	24
129266	13.8849999999999998	0	434421	0	0	24
129267	13.8859999999999992	0	434453	0	0	24
129268	13.8870000000000005	0	434485	0	0	24
129269	13.8879999999999999	0	434517	0	0	24
129270	13.8889999999999993	0	434549	0	0	24
129271	13.8900000000000006	0	434579	0	0	24
129272	13.891	0	434611	0	0	24
129273	13.8919999999999995	0	434643	0	0	24
129274	13.8930000000000007	0	434675	0	0	24
129275	13.8940000000000001	0	434707	0	0	24
129276	13.8949999999999996	0	434739	0	0	24
129277	13.8960000000000008	0	434771	0	0	24
129278	13.8970000000000002	0	434803	0	0	24
129279	13.8979999999999997	0	434835	0	0	24
129280	13.8989999999999991	0	434867	0	0	24
129281	13.9000000000000004	0	434897	0	0	24
129282	13.9009999999999998	0	434929	0	0	24
129283	13.9019999999999992	0	434961	0	0	24
129284	13.9030000000000005	0	434993	0	0	24
129285	13.9039999999999999	0	435025	0	0	24
129286	13.9049999999999994	0	435057	0	0	24
129287	13.9060000000000006	0	435089	0	0	24
129288	13.907	0	435121	0	0	24
129289	13.9079999999999995	0	435153	0	0	24
129290	13.9090000000000007	0	435185	0	0	24
129291	13.9100000000000001	0	435215	0	0	24
129292	13.9109999999999996	0	435247	0	0	24
129293	13.9120000000000008	0	435279	0	0	24
129294	13.9130000000000003	0	435311	0	0	24
129295	13.9139999999999997	0	435343	0	0	24
129296	13.9149999999999991	0	435375	0	0	24
129297	13.9160000000000004	0	435407	0	0	24
129298	13.9169999999999998	0	435439	0	0	24
129299	13.9179999999999993	0	435471	0	0	24
129300	13.9190000000000005	0	435503	0	0	24
129301	13.9199999999999999	0	435533	0	0	24
129302	13.9209999999999994	0	435565	0	0	24
129303	13.9220000000000006	0	435597	0	0	24
129304	13.923	0	435629	0	0	24
129305	13.9239999999999995	0	435661	0	0	24
129306	13.9250000000000007	0	435693	0	0	24
129307	13.9260000000000002	0	435725	0	0	24
129308	13.9269999999999996	0	435757	0	0	24
129309	13.9280000000000008	0	435789	0	0	24
129310	13.9290000000000003	0	435821	0	0	24
129311	13.9299999999999997	0	435851	0	0	24
129312	13.9309999999999992	0	435883	0	0	24
129313	13.9320000000000004	0	435915	0	0	24
129314	13.9329999999999998	0	435947	0	0	24
129315	13.9339999999999993	0	435979	0	0	24
129316	13.9350000000000005	0	436011	0	0	24
129317	13.9359999999999999	0	436043	0	0	24
129318	13.9369999999999994	0	436075	0	0	24
129319	13.9380000000000006	0	436107	0	0	24
129320	13.9390000000000001	0	436139	0	0	24
129321	13.9399999999999995	0	436169	0	0	24
129322	13.9410000000000007	0	436201	0	0	24
129323	13.9420000000000002	0	436233	0	0	24
129324	13.9429999999999996	0	436265	0	0	24
129325	13.9440000000000008	0	436297	0	0	24
129326	13.9450000000000003	0	436329	0	0	24
129327	13.9459999999999997	0	436361	0	0	24
129328	13.9469999999999992	0	436393	0	0	24
129329	13.9480000000000004	0	436425	0	0	24
129330	13.9489999999999998	0	436457	0	0	24
129331	13.9499999999999993	0	436487	0	0	24
129332	13.9510000000000005	0	436519	0	0	24
129333	13.952	0	436551	0	0	24
129334	13.9529999999999994	0	436583	0	0	24
129335	13.9540000000000006	0	436615	0	0	24
129336	13.9550000000000001	0	436647	0	0	24
129337	13.9559999999999995	0	436679	0	0	24
129338	13.9570000000000007	0	436711	0	0	24
129339	13.9580000000000002	0	436743	0	0	24
129340	13.9589999999999996	0	436775	0	0	24
129341	13.9600000000000009	0	436805	0	0	24
129342	13.9610000000000003	0	436837	0	0	24
129343	13.9619999999999997	0	436869	0	0	24
129344	13.9629999999999992	0	436901	0	0	24
129345	13.9640000000000004	0	436933	0	0	24
129346	13.9649999999999999	0	436965	0	0	24
129347	13.9659999999999993	0	436997	0	0	24
129348	13.9670000000000005	0	437029	0	0	24
129349	13.968	0	437061	0	0	24
129350	13.9689999999999994	0	437093	0	0	24
129351	13.9700000000000006	0	437123	0	0	24
129352	13.9710000000000001	0	437155	0	0	24
129353	13.9719999999999995	0	437187	0	0	24
129354	13.9730000000000008	0	437219	0	0	24
129355	13.9740000000000002	0	437251	0	0	24
129356	13.9749999999999996	0	437283	0	0	24
129357	13.9760000000000009	0	437315	0	0	24
129358	13.9770000000000003	0	437347	0	0	24
129359	13.9779999999999998	0	437379	0	0	24
129360	13.9789999999999992	0	437411	0	0	24
129361	13.9800000000000004	0	437441	0	0	24
129362	13.9809999999999999	0	437473	0	0	24
129363	13.9819999999999993	0	437505	0	0	24
129364	13.9830000000000005	0	437537	0	0	24
129365	13.984	0	437569	0	0	24
129366	13.9849999999999994	0	437601	0	0	24
129367	13.9860000000000007	0	437633	0	0	24
129368	13.9870000000000001	0	437665	0	0	24
129369	13.9879999999999995	0	437697	0	0	24
129370	13.9890000000000008	0	437729	0	0	24
129371	13.9900000000000002	0	437759	0	0	24
129372	13.9909999999999997	0	437791	0	0	24
129373	13.9920000000000009	0	437823	0	0	24
129374	13.9930000000000003	0	437855	0	0	24
129375	13.9939999999999998	0	437887	0	0	24
129376	13.9949999999999992	0	437919	0	0	24
129377	13.9960000000000004	0	437951	0	0	24
129378	13.9969999999999999	0	437983	0	0	24
129379	13.9979999999999993	0	438015	0	0	24
129380	13.9990000000000006	0	438047	0	0	24
129381	14	0	438077	0	0	24
129382	14.0009999999999994	0	438109	0	0	24
129383	14.0020000000000007	0	438141	0	0	24
129384	14.0030000000000001	0	438173	0	0	24
129385	14.0039999999999996	0	438205	0	0	24
129386	14.0050000000000008	0	438237	0	0	24
129387	14.0060000000000002	0	438269	0	0	24
129388	14.0069999999999997	0	438301	0	0	24
129389	14.0079999999999991	0	438333	0	0	24
129390	14.0090000000000003	0	438365	0	0	24
129391	14.0099999999999998	0	438395	0	0	24
129392	14.0109999999999992	0	438427	0	0	24
129393	14.0120000000000005	0	438459	0	0	24
129394	14.0129999999999999	0	438491	0	0	24
129395	14.0139999999999993	0	438523	0	0	24
129396	14.0150000000000006	0	438555	0	0	24
129397	14.016	0	438587	0	0	24
129398	14.0169999999999995	0	438619	0	0	24
129399	14.0180000000000007	0	438651	0	0	24
129400	14.0190000000000001	0	438683	0	0	24
129401	14.0199999999999996	0	438713	0	0	24
129402	14.0210000000000008	0	438745	0	0	24
129403	14.0220000000000002	0	438777	0	0	24
129404	14.0229999999999997	0	438809	0	0	24
129405	14.0239999999999991	0	438841	0	0	24
129406	14.0250000000000004	0	438873	0	0	24
129407	14.0259999999999998	0	438905	0	0	24
129408	14.0269999999999992	0	438937	0	0	24
129409	14.0280000000000005	0	438969	0	0	24
129410	14.0289999999999999	0	439001	0	0	24
129411	14.0299999999999994	0	439031	0	0	24
129412	14.0310000000000006	0	439063	0	0	24
129413	14.032	0	439095	0	0	24
129414	14.0329999999999995	0	439127	0	0	24
129415	14.0340000000000007	0	439159	0	0	24
129416	14.0350000000000001	0	439191	0	0	24
129417	14.0359999999999996	0	439223	0	0	24
129418	14.0370000000000008	0	439255	0	0	24
129419	14.0380000000000003	0	439287	0	0	24
129420	14.0389999999999997	0	439319	0	0	24
129421	14.0399999999999991	0	439349	0	0	24
129422	14.0410000000000004	0	439381	0	0	24
129423	14.0419999999999998	0	439413	0	0	24
129424	14.0429999999999993	0	439445	0	0	24
129425	14.0440000000000005	0	439477	0	0	24
129426	14.0449999999999999	0	439509	0	0	24
129427	14.0459999999999994	0	439541	0	0	24
129428	14.0470000000000006	0	439573	0	0	24
129429	14.048	0	439605	0	0	24
129430	14.0489999999999995	0	439637	0	0	24
129431	14.0500000000000007	0	439667	0	0	24
129432	14.0510000000000002	0	439699	0	0	24
129433	14.0519999999999996	0	439731	0	0	24
129434	14.0530000000000008	0	439763	0	0	24
129435	14.0540000000000003	0	439795	0	0	24
129436	14.0549999999999997	0	439827	0	0	24
129437	14.0559999999999992	0	439859	0	0	24
129438	14.0570000000000004	0	439891	0	0	24
129439	14.0579999999999998	0	439923	0	0	24
129440	14.0589999999999993	0	439955	0	0	24
129441	14.0600000000000005	0	439985	0	0	24
129442	14.0609999999999999	0	440017	0	0	24
129443	14.0619999999999994	0	440049	0	0	24
129444	14.0630000000000006	0	440081	0	0	24
129445	14.0640000000000001	0	440113	0	0	24
129446	14.0649999999999995	0	440145	0	0	24
129447	14.0660000000000007	0	440177	0	0	24
129448	14.0670000000000002	0	440209	0	0	24
129449	14.0679999999999996	0	440241	0	0	24
129450	14.0690000000000008	0	440273	0	0	24
129451	14.0700000000000003	0	440303	0	0	24
129452	14.0709999999999997	0	440335	0	0	24
129453	14.0719999999999992	0	440367	0	0	24
129454	14.0730000000000004	0	440399	0	0	24
129455	14.0739999999999998	0	440431	0	0	24
129456	14.0749999999999993	0	440463	0	0	24
129457	14.0760000000000005	0	440495	0	0	24
129458	14.077	0	440527	0	0	24
129459	14.0779999999999994	0	440559	0	0	24
129460	14.0790000000000006	0	440591	0	0	24
129461	14.0800000000000001	0	440621	0	0	24
129462	14.0809999999999995	0	440653	0	0	24
129463	14.0820000000000007	0	440685	0	0	24
129464	14.0830000000000002	0	440717	0	0	24
129465	14.0839999999999996	0	440749	0	0	24
129466	14.0850000000000009	0	440781	0	0	24
129467	14.0860000000000003	0	440813	0	0	24
129468	14.0869999999999997	0	440845	0	0	24
129469	14.0879999999999992	0	440877	0	0	24
129470	14.0890000000000004	0	440909	0	0	24
129471	14.0899999999999999	0	440939	0	0	24
129472	14.0909999999999993	0	440971	0	0	24
129473	14.0920000000000005	0	441003	0	0	24
129474	14.093	0	441035	0	0	24
129475	14.0939999999999994	0	441067	0	0	24
129476	14.0950000000000006	0	441099	0	0	24
129477	14.0960000000000001	0	441131	0	0	24
129478	14.0969999999999995	0	441163	0	0	24
129479	14.0980000000000008	0	441195	0	0	24
129480	14.0990000000000002	0	441227	0	0	24
129481	14.0999999999999996	0	441257	0	0	24
129482	14.1010000000000009	0	441289	0	0	24
129483	14.1020000000000003	0	441321	0	0	24
129484	14.1029999999999998	0	441353	0	0	24
129485	14.1039999999999992	0	441385	0	0	24
129486	14.1050000000000004	0	441417	0	0	24
129487	14.1059999999999999	0	441449	0	0	24
129488	14.1069999999999993	0	441481	0	0	24
129489	14.1080000000000005	0	441513	0	0	24
129490	14.109	0	441545	0	0	24
129491	14.1099999999999994	0	441575	0	0	24
129492	14.1110000000000007	0	441607	0	0	24
129493	14.1120000000000001	0	441639	0	0	24
129494	14.1129999999999995	0	441671	0	0	24
129495	14.1140000000000008	0	441703	0	0	24
129496	14.1150000000000002	0	441735	0	0	24
129497	14.1159999999999997	0	441767	0	0	24
129498	14.1170000000000009	0	441799	0	0	24
129499	14.1180000000000003	0	441831	0	0	24
129500	14.1189999999999998	0	441863	0	0	24
129501	14.1199999999999992	0	441893	0	0	24
129502	14.1210000000000004	0	441925	0	0	24
129503	14.1219999999999999	0	441957	0	0	24
129504	14.1229999999999993	0	441989	0	0	24
129505	14.1240000000000006	0	442021	0	0	24
129506	14.125	0	442053	0	0	24
129507	14.1259999999999994	0	442085	0	0	24
129508	14.1270000000000007	0	442117	0	0	24
129509	14.1280000000000001	0	442149	0	0	24
129510	14.1289999999999996	0	442181	0	0	24
129511	14.1300000000000008	0	442211	0	0	24
129512	14.1310000000000002	0	442243	0	0	24
129513	14.1319999999999997	0	442275	0	0	24
129514	14.1329999999999991	0	442307	0	0	24
129515	14.1340000000000003	0	442339	0	0	24
129516	14.1349999999999998	0	442371	0	0	24
129517	14.1359999999999992	0	442403	0	0	24
129518	14.1370000000000005	0	442435	0	0	24
129519	14.1379999999999999	0	442467	0	0	24
129520	14.1389999999999993	0	442499	0	0	24
129521	14.1400000000000006	0	442529	0	0	24
129522	14.141	0	442561	0	0	24
129523	14.1419999999999995	0	442593	0	0	24
129524	14.1430000000000007	0	442625	0	0	24
129525	14.1440000000000001	0	442657	0	0	24
129526	14.1449999999999996	0	442689	0	0	24
129527	14.1460000000000008	0	442721	0	0	24
129528	14.1470000000000002	0	442753	0	0	24
129529	14.1479999999999997	0	442785	0	0	24
129530	14.1489999999999991	0	442817	0	0	24
129531	14.1500000000000004	0	442847	0	0	24
129532	14.1509999999999998	0	442879	0	0	24
129533	14.1519999999999992	0	442911	0	0	24
129534	14.1530000000000005	0	442943	0	0	24
129535	14.1539999999999999	0	442975	0	0	24
129536	14.1549999999999994	0	443007	0	0	24
129537	14.1560000000000006	0	443039	0	0	24
129538	14.157	0	443071	0	0	24
129539	14.1579999999999995	0	443103	0	0	24
129540	14.1590000000000007	0	443135	0	0	24
129541	14.1600000000000001	0	443165	0	0	24
129542	14.1609999999999996	0	443197	0	0	24
129543	14.1620000000000008	0	443229	0	0	24
129544	14.1630000000000003	0	443261	0	0	24
129545	14.1639999999999997	0	443293	0	0	24
129546	14.1649999999999991	0	443325	0	0	24
129547	14.1660000000000004	0	443357	0	0	24
129548	14.1669999999999998	0	443389	0	0	24
129549	14.1679999999999993	0	443421	0	0	24
129550	14.1690000000000005	0	443453	0	0	24
129551	14.1699999999999999	0	443483	0	0	24
129552	14.1709999999999994	0	443515	0	0	24
129553	14.1720000000000006	0	443547	0	0	24
129554	14.173	0	443579	0	0	24
129555	14.1739999999999995	0	443611	0	0	24
129556	14.1750000000000007	0	443643	0	0	24
129557	14.1760000000000002	0	443675	0	0	24
129558	14.1769999999999996	0	443707	0	0	24
129559	14.1780000000000008	0	443739	0	0	24
129560	14.1790000000000003	0	443771	0	0	24
129561	14.1799999999999997	0	443801	0	0	24
129562	14.1809999999999992	0	443833	0	0	24
129563	14.1820000000000004	0	443865	0	0	24
129564	14.1829999999999998	0	443897	0	0	24
129565	14.1839999999999993	0	443929	0	0	24
129566	14.1850000000000005	0	443961	0	0	24
129567	14.1859999999999999	0	443993	0	0	24
129568	14.1869999999999994	0	444025	0	0	24
129569	14.1880000000000006	0	444057	0	0	24
129570	14.1890000000000001	0	444089	0	0	24
129571	14.1899999999999995	0	444119	0	0	24
129572	14.1910000000000007	0	444151	0	0	24
129573	14.1920000000000002	0	444183	0	0	24
129574	14.1929999999999996	0	444215	0	0	24
129575	14.1940000000000008	0	444247	0	0	24
129576	14.1950000000000003	0	444279	0	0	24
129577	14.1959999999999997	0	444311	0	0	24
129578	14.1969999999999992	0	444343	0	0	24
129579	14.1980000000000004	0	444375	0	0	24
129580	14.1989999999999998	0	444407	0	0	24
129581	14.1999999999999993	0	444437	0	0	24
129582	14.2010000000000005	0	444469	0	0	24
129583	14.202	0	444501	0	0	24
129584	14.2029999999999994	0	444533	0	0	24
129585	14.2040000000000006	0	444565	0	0	24
129586	14.2050000000000001	0	444597	0	0	24
129587	14.2059999999999995	0	444629	0	0	24
129588	14.2070000000000007	0	444661	0	0	24
129589	14.2080000000000002	0	444693	0	0	24
129590	14.2089999999999996	0	444725	0	0	24
129591	14.2100000000000009	0	444755	0	0	24
129592	14.2110000000000003	0	444787	0	0	24
129593	14.2119999999999997	0	444819	0	0	24
129594	14.2129999999999992	0	444851	0	0	24
129595	14.2140000000000004	0	444883	0	0	24
129596	14.2149999999999999	0	444915	0	0	24
129597	14.2159999999999993	0	444947	0	0	24
129598	14.2170000000000005	0	444979	0	0	24
129599	14.218	0	445011	0	0	24
129600	14.2189999999999994	0	445043	0	0	24
129601	14.2200000000000006	0	445073	0	0	24
129602	14.2210000000000001	0	445105	0	0	24
129603	14.2219999999999995	0	445137	0	0	24
129604	14.2230000000000008	0	445169	0	0	24
129605	14.2240000000000002	0	445201	0	0	24
129606	14.2249999999999996	0	445233	0	0	24
129607	14.2260000000000009	0	445265	0	0	24
129608	14.2270000000000003	0	445297	0	0	24
129609	14.2279999999999998	0	445329	0	0	24
129610	14.2289999999999992	0	445361	0	0	24
129611	14.2300000000000004	0	445391	0	0	24
129612	14.2309999999999999	0	445423	0	0	24
129613	14.2319999999999993	0	445455	0	0	24
129614	14.2330000000000005	0	445487	0	0	24
129615	14.234	0	445519	0	0	24
129616	14.2349999999999994	0	445551	0	0	24
129617	14.2360000000000007	0	445583	0	0	24
129618	14.2370000000000001	0	445615	0	0	24
129619	14.2379999999999995	0	445647	0	0	24
129620	14.2390000000000008	0	445679	0	0	24
129621	14.2400000000000002	0	445709	0	0	24
129622	14.2409999999999997	0	445741	0	0	24
129623	14.2420000000000009	0	445773	0	0	24
129624	14.2430000000000003	0	445805	0	0	24
129625	14.2439999999999998	0	445837	0	0	24
129626	14.2449999999999992	0	445869	0	0	24
129627	14.2460000000000004	0	445901	0	0	24
129628	14.2469999999999999	0	445933	0	0	24
129629	14.2479999999999993	0	445965	0	0	24
129630	14.2490000000000006	0	445997	0	0	24
129631	14.25	0	446027	0	0	24
129632	14.2509999999999994	0	446059	0	0	24
129633	14.2520000000000007	0	446091	0	0	24
129634	14.2530000000000001	0	446123	0	0	24
129635	14.2539999999999996	0	446155	0	0	24
129636	14.2550000000000008	0	446187	0	0	24
129637	14.2560000000000002	0	446219	0	0	24
129638	14.2569999999999997	0	446251	0	0	24
129639	14.2579999999999991	0	446283	0	0	24
129640	14.2590000000000003	0	446315	0	0	24
129641	14.2599999999999998	0	446345	0	0	24
129642	14.2609999999999992	0	446377	0	0	24
129643	14.2620000000000005	0	446409	0	0	24
129644	14.2629999999999999	0	446441	0	0	24
129645	14.2639999999999993	0	446473	0	0	24
129646	14.2650000000000006	0	446505	0	0	24
129647	14.266	0	446537	0	0	24
129648	14.2669999999999995	0	446569	0	0	24
129649	14.2680000000000007	0	446601	0	0	24
129650	14.2690000000000001	0	446633	0	0	24
129651	14.2699999999999996	0	446663	0	0	24
129652	14.2710000000000008	0	446695	0	0	24
129653	14.2720000000000002	0	446727	0	0	24
129654	14.2729999999999997	0	446759	0	0	24
129655	14.2739999999999991	0	446791	0	0	24
129656	14.2750000000000004	0	446823	0	0	24
129657	14.2759999999999998	0	446855	0	0	24
129658	14.2769999999999992	0	446887	0	0	24
129659	14.2780000000000005	0	446919	0	0	24
129660	14.2789999999999999	0	446951	0	0	24
129661	14.2799999999999994	0	446981	0	0	24
129662	14.2810000000000006	0	447013	0	0	24
129663	14.282	0	447045	0	0	24
129664	14.2829999999999995	0	447077	0	0	24
129665	14.2840000000000007	0	447109	0	0	24
129666	14.2850000000000001	0	447141	0	0	24
129667	14.2859999999999996	0	447173	0	0	24
129668	14.2870000000000008	0	447205	0	0	24
129669	14.2880000000000003	0	447237	0	0	24
129670	14.2889999999999997	0	447269	0	0	24
129671	14.2899999999999991	0	447299	0	0	24
129672	14.2910000000000004	0	447331	0	0	24
129673	14.2919999999999998	0	447363	0	0	24
129674	14.2929999999999993	0	447395	0	0	24
129675	14.2940000000000005	0	447427	0	0	24
129676	14.2949999999999999	0	447459	0	0	24
129677	14.2959999999999994	0	447491	0	0	24
129678	14.2970000000000006	0	447523	0	0	24
129679	14.298	0	447555	0	0	24
129680	14.2989999999999995	0	447587	0	0	24
129681	14.3000000000000007	0	447617	0	0	24
129682	14.3010000000000002	0	447649	0	0	24
129683	14.3019999999999996	0	447681	0	0	24
129684	14.3030000000000008	0	447713	0	0	24
129685	14.3040000000000003	0	447745	0	0	24
129686	14.3049999999999997	0	447777	0	0	24
129687	14.3059999999999992	0	447809	0	0	24
129688	14.3070000000000004	0	447841	0	0	24
129689	14.3079999999999998	0	447873	0	0	24
129690	14.3089999999999993	0	447905	0	0	24
129691	14.3100000000000005	0	447935	0	0	24
129692	14.3109999999999999	0	447967	0	0	24
129693	14.3119999999999994	0	447999	0	0	24
129694	14.3130000000000006	0	448031	0	0	24
129695	14.3140000000000001	0	448063	0	0	24
129696	14.3149999999999995	0	448095	0	0	24
129697	14.3160000000000007	0	448127	0	0	24
129698	14.3170000000000002	0	448159	0	0	24
129699	14.3179999999999996	0	448191	0	0	24
129700	14.3190000000000008	0	448223	0	0	24
129701	14.3200000000000003	0	448253	0	0	24
129702	14.3209999999999997	0	448285	0	0	24
129703	14.3219999999999992	0	448317	0	0	24
129704	14.3230000000000004	0	448349	0	0	24
129705	14.3239999999999998	0	448381	0	0	24
129706	14.3249999999999993	0	448413	0	0	24
129707	14.3260000000000005	0	448445	0	0	24
129708	14.327	0	448477	0	0	24
129709	14.3279999999999994	0	448509	0	0	24
129710	14.3290000000000006	0	448541	0	0	24
129711	14.3300000000000001	0	448571	0	0	24
129712	14.3309999999999995	0	448603	0	0	24
129713	14.3320000000000007	0	448635	0	0	24
129714	14.3330000000000002	0	448667	0	0	24
129715	14.3339999999999996	0	448699	0	0	24
129716	14.3350000000000009	0	448731	0	0	24
129717	14.3360000000000003	0	448763	0	0	24
129718	14.3369999999999997	0	448795	0	0	24
129719	14.3379999999999992	0	448827	0	0	24
129720	14.3390000000000004	0	448859	0	0	24
129721	14.3399999999999999	0	448889	0	0	24
129722	14.3409999999999993	0	448921	0	0	24
129723	14.3420000000000005	0	448953	0	0	24
129724	14.343	0	448985	0	0	24
129725	14.3439999999999994	0	449017	0	0	24
129726	14.3450000000000006	0	449049	0	0	24
129727	14.3460000000000001	0	449081	0	0	24
129728	14.3469999999999995	0	449113	0	0	24
129729	14.3480000000000008	0	449145	0	0	24
129730	14.3490000000000002	0	449177	0	0	24
129731	14.3499999999999996	0	449207	0	0	24
129732	14.3510000000000009	0	449239	0	0	24
129733	14.3520000000000003	0	449271	0	0	24
129734	14.3529999999999998	0	449303	0	0	24
129735	14.3539999999999992	0	449335	0	0	24
129736	14.3550000000000004	0	449367	0	0	24
129737	14.3559999999999999	0	449399	0	0	24
129738	14.3569999999999993	0	449431	0	0	24
129739	14.3580000000000005	0	449463	0	0	24
129740	14.359	0	449495	0	0	24
129741	14.3599999999999994	0	449525	0	0	24
129742	14.3610000000000007	0	449557	0	0	24
129743	14.3620000000000001	0	449589	0	0	24
129744	14.3629999999999995	0	449621	0	0	24
129745	14.3640000000000008	0	449653	0	0	24
129746	14.3650000000000002	0	449685	0	0	24
129747	14.3659999999999997	0	449717	0	0	24
129748	14.3670000000000009	0	449749	0	0	24
129749	14.3680000000000003	0	449781	0	0	24
129750	14.3689999999999998	0	449813	0	0	24
129751	14.3699999999999992	0	449843	0	0	24
129752	14.3710000000000004	0	449875	0	0	24
129753	14.3719999999999999	0	449907	0	0	24
129754	14.3729999999999993	0	449939	0	0	24
129755	14.3740000000000006	0	449971	0	0	24
129756	14.375	0	450003	0	0	24
129757	14.3759999999999994	0	450035	0	0	24
129758	14.3770000000000007	0	450067	0	0	24
129759	14.3780000000000001	0	450099	0	0	24
129760	14.3789999999999996	0	450131	0	0	24
129761	14.3800000000000008	0	450161	0	0	24
129762	14.3810000000000002	0	450193	0	0	24
129763	14.3819999999999997	0	450225	0	0	24
129764	14.3829999999999991	0	450257	0	0	24
129765	14.3840000000000003	0	450289	0	0	24
129766	14.3849999999999998	0	450321	0	0	24
129767	14.3859999999999992	0	450353	0	0	24
129768	14.3870000000000005	0	450385	0	0	24
129769	14.3879999999999999	0	450417	0	0	24
129770	14.3889999999999993	0	450449	0	0	24
129771	14.3900000000000006	0	450479	0	0	24
129772	14.391	0	450511	0	0	24
129773	14.3919999999999995	0	450543	0	0	24
129774	14.3930000000000007	0	450575	0	0	24
129775	14.3940000000000001	0	450607	0	0	24
129776	14.3949999999999996	0	450639	0	0	24
129777	14.3960000000000008	0	450671	0	0	24
129778	14.3970000000000002	0	450703	0	0	24
129779	14.3979999999999997	0	450735	0	0	24
129780	14.3989999999999991	0	450767	0	0	24
129781	14.4000000000000004	0	450797	0	0	24
129782	14.4009999999999998	0	450829	0	0	24
129783	14.4019999999999992	0	450861	0	0	24
129784	14.4030000000000005	0	450893	0	0	24
129785	14.4039999999999999	0	450925	0	0	24
129786	14.4049999999999994	0	450957	0	0	24
129787	14.4060000000000006	0	450989	0	0	24
129788	14.407	0	451021	0	0	24
129789	14.4079999999999995	0	451053	0	0	24
129790	14.4090000000000007	0	451085	0	0	24
129791	14.4100000000000001	0	451115	0	0	24
129792	14.4109999999999996	0	451147	0	0	24
129793	14.4120000000000008	0	451179	0	0	24
129794	14.4130000000000003	0	451211	0	0	24
129795	14.4139999999999997	0	451243	0	0	24
129796	14.4149999999999991	0	451275	0	0	24
129797	14.4160000000000004	0	451307	0	0	24
129798	14.4169999999999998	0	451339	0	0	24
129799	14.4179999999999993	0	451371	0	0	24
129800	14.4190000000000005	0	451403	0	0	24
129801	14.4199999999999999	0	451433	0	0	24
129802	14.4209999999999994	0	451465	0	0	24
129803	14.4220000000000006	0	451497	0	0	24
129804	14.423	0	451529	0	0	24
129805	14.4239999999999995	0	451561	0	0	24
129806	14.4250000000000007	0	451593	0	0	24
129807	14.4260000000000002	0	451625	0	0	24
129808	14.4269999999999996	0	451657	0	0	24
129809	14.4280000000000008	0	451689	0	0	24
129810	14.4290000000000003	0	451721	0	0	24
129811	14.4299999999999997	0	451751	0	0	24
129812	14.4309999999999992	0	451783	0	0	24
129813	14.4320000000000004	0	451815	0	0	24
129814	14.4329999999999998	0	451847	0	0	24
129815	14.4339999999999993	0	451879	0	0	24
129816	14.4350000000000005	0	451911	0	0	24
129817	14.4359999999999999	0	451943	0	0	24
129818	14.4369999999999994	0	451975	0	0	24
129819	14.4380000000000006	0	452007	0	0	24
129820	14.4390000000000001	0	452039	0	0	24
129821	14.4399999999999995	0	452069	0	0	24
129822	14.4410000000000007	0	452101	0	0	24
129823	14.4420000000000002	0	452133	0	0	24
129824	14.4429999999999996	0	452165	0	0	24
129825	14.4440000000000008	0	452197	0	0	24
129826	14.4450000000000003	0	452229	0	0	24
129827	14.4459999999999997	0	452261	0	0	24
129828	14.4469999999999992	0	452293	0	0	24
129829	14.4480000000000004	0	452325	0	0	24
129830	14.4489999999999998	0	452357	0	0	24
129831	14.4499999999999993	0	452387	0	0	24
129832	14.4510000000000005	0	452419	0	0	24
129833	14.452	0	452451	0	0	24
129834	14.4529999999999994	0	452483	0	0	24
129835	14.4540000000000006	0	452515	0	0	24
129836	14.4550000000000001	0	452547	0	0	24
129837	14.4559999999999995	0	452579	0	0	24
129838	14.4570000000000007	0	452611	0	0	24
129839	14.4580000000000002	0	452643	0	0	24
129840	14.4589999999999996	0	452675	0	0	24
129841	14.4600000000000009	0	452705	0	0	24
129842	14.4610000000000003	0	452737	0	0	24
129843	14.4619999999999997	0	452769	0	0	24
129844	14.4629999999999992	0	452801	0	0	24
129845	14.4640000000000004	0	452833	0	0	24
129846	14.4649999999999999	0	452865	0	0	24
129847	14.4659999999999993	0	452897	0	0	24
129848	14.4670000000000005	0	452929	0	0	24
129849	14.468	0	452961	0	0	24
129850	14.4689999999999994	0	452993	0	0	24
129851	14.4700000000000006	0	453023	0	0	24
129852	14.4710000000000001	0	453055	0	0	24
129853	14.4719999999999995	0	453087	0	0	24
129854	14.4730000000000008	0	453119	0	0	24
129855	14.4740000000000002	0	453151	0	0	24
129856	14.4749999999999996	0	453183	0	0	24
129857	14.4760000000000009	0	453215	0	0	24
129858	14.4770000000000003	0	453247	0	0	24
129859	14.4779999999999998	0	453279	0	0	24
129860	14.4789999999999992	0	453311	0	0	24
129861	14.4800000000000004	0	453341	0	0	24
129862	14.4809999999999999	0	453373	0	0	24
129863	14.4819999999999993	0	453405	0	0	24
129864	14.4830000000000005	0	453437	0	0	24
129865	14.484	0	453469	0	0	24
129866	14.4849999999999994	0	453501	0	0	24
129867	14.4860000000000007	0	453533	0	0	24
129868	14.4870000000000001	0	453565	0	0	24
129869	14.4879999999999995	0	453597	0	0	24
129870	14.4890000000000008	0	453629	0	0	24
129871	14.4900000000000002	0	453659	0	0	24
129872	14.4909999999999997	0	453691	0	0	24
129873	14.4920000000000009	0	453723	0	0	24
129874	14.4930000000000003	0	453755	0	0	24
129875	14.4939999999999998	0	453787	0	0	24
129876	14.4949999999999992	0	453819	0	0	24
129877	14.4960000000000004	0	453851	0	0	24
129878	14.4969999999999999	0	453883	0	0	24
129879	14.4979999999999993	0	453915	0	0	24
129880	14.4990000000000006	0	453947	0	0	24
129881	14.5	0	453977	0	0	24
129882	14.5009999999999994	0	454009	0	0	24
129883	14.5020000000000007	0	454041	0	0	24
129884	14.5030000000000001	0	454073	0	0	24
129885	14.5039999999999996	0	454105	0	0	24
129886	14.5050000000000008	0	454137	0	0	24
129887	14.5060000000000002	0	454169	0	0	24
129888	14.5069999999999997	0	454201	0	0	24
129889	14.5079999999999991	0	454233	0	0	24
129890	14.5090000000000003	0	454265	0	0	24
129891	14.5099999999999998	0	454295	0	0	24
129892	14.5109999999999992	0	454327	0	0	24
129893	14.5120000000000005	0	454359	0	0	24
129894	14.5129999999999999	0	454391	0	0	24
129895	14.5139999999999993	0	454423	0	0	24
129896	14.5150000000000006	0	454455	0	0	24
129897	14.516	0	454487	0	0	24
129898	14.5169999999999995	0	454519	0	0	24
129899	14.5180000000000007	0	454551	0	0	24
129900	14.5190000000000001	0	454583	0	0	24
129901	14.5199999999999996	0	454613	0	0	24
129902	14.5210000000000008	0	454645	0	0	24
129903	14.5220000000000002	0	454677	0	0	24
129904	14.5229999999999997	0	454709	0	0	24
129905	14.5239999999999991	0	454741	0	0	24
129906	14.5250000000000004	0	454773	0	0	24
129907	14.5259999999999998	0	454805	0	0	24
129908	14.5269999999999992	0	454837	0	0	24
129909	14.5280000000000005	0	454869	0	0	24
129910	14.5289999999999999	0	454901	0	0	24
129911	14.5299999999999994	0	454931	0	0	24
129912	14.5310000000000006	0	454963	0	0	24
129913	14.532	0	454995	0	0	24
129914	14.5329999999999995	0	455027	0	0	24
129915	14.5340000000000007	0	455059	0	0	24
129916	14.5350000000000001	0	455091	0	0	24
129917	14.5359999999999996	0	455123	0	0	24
129918	14.5370000000000008	0	455155	0	0	24
129919	14.5380000000000003	0	455187	0	0	24
129920	14.5389999999999997	0	455219	0	0	24
129921	14.5399999999999991	0	455249	0	0	24
129922	14.5410000000000004	0	455281	0	0	24
129923	14.5419999999999998	0	455313	0	0	24
129924	14.5429999999999993	0	455345	0	0	24
129925	14.5440000000000005	0	455377	0	0	24
129926	14.5449999999999999	0	455409	0	0	24
129927	14.5459999999999994	0	455441	0	0	24
129928	14.5470000000000006	0	455473	0	0	24
129929	14.548	0	455505	0	0	24
129930	14.5489999999999995	0	455537	0	0	24
129931	14.5500000000000007	0	455567	0	0	24
129932	14.5510000000000002	0	455599	0	0	24
129933	14.5519999999999996	0	455631	0	0	24
129934	14.5530000000000008	0	455663	0	0	24
129935	14.5540000000000003	0	455695	0	0	24
129936	14.5549999999999997	0	455727	0	0	24
129937	14.5559999999999992	0	455759	0	0	24
129938	14.5570000000000004	0	455791	0	0	24
129939	14.5579999999999998	0	455823	0	0	24
129940	14.5589999999999993	0	455855	0	0	24
129941	14.5600000000000005	0	455885	0	0	24
129942	14.5609999999999999	0	455917	0	0	24
129943	14.5619999999999994	0	455949	0	0	24
129944	14.5630000000000006	0	455981	0	0	24
129945	14.5640000000000001	0	456013	0	0	24
129946	14.5649999999999995	0	456045	0	0	24
129947	14.5660000000000007	0	456077	0	0	24
129948	14.5670000000000002	0	456109	0	0	24
129949	14.5679999999999996	0	456141	0	0	24
129950	14.5690000000000008	0	456173	0	0	24
129951	14.5700000000000003	0	456203	0	0	24
129952	14.5709999999999997	0	456235	0	0	24
129953	14.5719999999999992	0	456267	0	0	24
129954	14.5730000000000004	0	456299	0	0	24
129955	14.5739999999999998	0	456331	0	0	24
129956	14.5749999999999993	0	456363	0	0	24
129957	14.5760000000000005	0	456395	0	0	24
129958	14.577	0	456427	0	0	24
129959	14.5779999999999994	0	456459	0	0	24
129960	14.5790000000000006	0	456491	0	0	24
129961	14.5800000000000001	0	456521	0	0	24
129962	14.5809999999999995	0	456553	0	0	24
129963	14.5820000000000007	0	456585	0	0	24
129964	14.5830000000000002	0	456617	0	0	24
129965	14.5839999999999996	0	456649	0	0	24
129966	14.5850000000000009	0	456681	0	0	24
129967	14.5860000000000003	0	456713	0	0	24
129968	14.5869999999999997	0	456745	0	0	24
129969	14.5879999999999992	0	456777	0	0	24
129970	14.5890000000000004	0	456809	0	0	24
129971	14.5899999999999999	0	456839	0	0	24
129972	14.5909999999999993	0	456871	0	0	24
129973	14.5920000000000005	0	456903	0	0	24
129974	14.593	0	456935	0	0	24
129975	14.5939999999999994	0	456967	0	0	24
129976	14.5950000000000006	0	456999	0	0	24
129977	14.5960000000000001	0	457031	0	0	24
129978	14.5969999999999995	0	457063	0	0	24
129979	14.5980000000000008	0	457095	0	0	24
129980	14.5990000000000002	0	457127	0	0	24
129981	14.5999999999999996	0	457157	0	0	24
129982	14.6010000000000009	0	457189	0	0	24
129983	14.6020000000000003	0	457221	0	0	24
129984	14.6029999999999998	0	457253	0	0	24
129985	14.6039999999999992	0	457285	0	0	24
129986	14.6050000000000004	0	457317	0	0	24
129987	14.6059999999999999	0	457349	0	0	24
129988	14.6069999999999993	0	457381	0	0	24
129989	14.6080000000000005	0	457413	0	0	24
129990	14.609	0	457445	0	0	24
129991	14.6099999999999994	0	457475	0	0	24
129992	14.6110000000000007	0	457507	0	0	24
129993	14.6120000000000001	0	457539	0	0	24
129994	14.6129999999999995	0	457571	0	0	24
129995	14.6140000000000008	0	457603	0	0	24
129996	14.6150000000000002	0	457635	0	0	24
129997	14.6159999999999997	0	457667	0	0	24
129998	14.6170000000000009	0	457699	0	0	24
129999	14.6180000000000003	0	457731	0	0	24
130000	14.6189999999999998	0	457763	0	0	24
130001	14.6199999999999992	0	457793	0	0	24
130002	14.6210000000000004	0	457825	0	0	24
130003	14.6219999999999999	0	457857	0	0	24
130004	14.6229999999999993	0	457889	0	0	24
130005	14.6240000000000006	0	457921	0	0	24
130006	14.625	0	457953	0	0	24
130007	14.6259999999999994	0	457985	0	0	24
130008	14.6270000000000007	0	458017	0	0	24
130009	14.6280000000000001	0	458049	0	0	24
130010	14.6289999999999996	0	458081	0	0	24
130011	14.6300000000000008	0	458111	0	0	24
130012	14.6310000000000002	0	458143	0	0	24
130013	14.6319999999999997	0	458175	0	0	24
130014	14.6329999999999991	0	458207	0	0	24
130015	14.6340000000000003	0	458239	0	0	24
130016	14.6349999999999998	0	458271	0	0	24
130017	14.6359999999999992	0	458303	0	0	24
130018	14.6370000000000005	0	458335	0	0	24
130019	14.6379999999999999	0	458367	0	0	24
130020	14.6389999999999993	0	458399	0	0	24
130021	14.6400000000000006	0	458429	0	0	24
130022	14.641	0	458461	0	0	24
130023	14.6419999999999995	0	458493	0	0	24
130024	14.6430000000000007	0	458525	0	0	24
130025	14.6440000000000001	0	458557	0	0	24
130026	14.6449999999999996	0	458589	0	0	24
133217	17.8359999999999985	0	560063	0	0	24
133218	17.8369999999999997	0	560095	0	0	24
133219	17.838000000000001	0	560127	0	0	24
133220	17.8389999999999986	0	560159	0	0	24
133221	17.8399999999999999	0	560189	0	0	24
133222	17.8410000000000011	0	560221	0	0	24
133223	17.8419999999999987	0	560253	0	0	24
133224	17.843	0	560285	0	0	24
133225	17.8440000000000012	0	560317	0	0	24
133226	17.8449999999999989	0	560349	0	0	24
133227	17.8460000000000001	0	560381	0	0	24
133228	17.8470000000000013	0	560413	0	0	24
133229	17.847999999999999	0	560445	0	0	24
133230	17.8490000000000002	0	560477	0	0	24
133231	17.8500000000000014	0	560507	0	0	24
133232	17.8509999999999991	0	560539	0	0	24
133233	17.8520000000000003	0	560571	0	0	24
133234	17.8530000000000015	0	560603	0	0	24
133235	17.8539999999999992	0	560635	0	0	24
133236	17.8550000000000004	0	560667	0	0	24
133237	17.8560000000000016	0	560699	0	0	24
133238	17.8569999999999993	0	560731	0	0	24
133239	17.8580000000000005	0	560763	0	0	24
133240	17.8590000000000018	0	560795	0	0	24
133241	17.8599999999999994	0	560825	0	0	24
133242	17.8610000000000007	0	560857	0	0	24
133243	17.8619999999999983	0	560889	0	0	24
133244	17.8629999999999995	0	560921	0	0	24
133245	17.8640000000000008	0	560953	0	0	24
133246	17.8649999999999984	0	560985	0	0	24
133247	17.8659999999999997	0	561017	0	0	24
133248	17.8670000000000009	0	561049	0	0	24
133249	17.8679999999999986	0	561081	0	0	24
130027	14.6460000000000008	0	458621	0	0	24
130028	14.6470000000000002	0	458653	0	0	24
130029	14.6479999999999997	0	458685	0	0	24
130030	14.6489999999999991	0	458717	0	0	24
130031	14.6500000000000004	0	458747	0	0	24
130032	14.6509999999999998	0	458779	0	0	24
130033	14.6519999999999992	0	458811	0	0	24
130034	14.6530000000000005	0	458843	0	0	24
130035	14.6539999999999999	0	458875	0	0	24
130036	14.6549999999999994	0	458907	0	0	24
130037	14.6560000000000006	0	458939	0	0	24
130038	14.657	0	458971	0	0	24
130039	14.6579999999999995	0	459003	0	0	24
130040	14.6590000000000007	0	459035	0	0	24
130041	14.6600000000000001	0	459065	0	0	24
130042	14.6609999999999996	0	459097	0	0	24
130043	14.6620000000000008	0	459129	0	0	24
130044	14.6630000000000003	0	459161	0	0	24
130045	14.6639999999999997	0	459193	0	0	24
130046	14.6649999999999991	0	459225	0	0	24
130047	14.6660000000000004	0	459257	0	0	24
130048	14.6669999999999998	0	459289	0	0	24
130049	14.6679999999999993	0	459321	0	0	24
130050	14.6690000000000005	0	459353	0	0	24
130051	14.6699999999999999	0	459383	0	0	24
130052	14.6709999999999994	0	459415	0	0	24
130053	14.6720000000000006	0	459447	0	0	24
130054	14.673	0	459479	0	0	24
130055	14.6739999999999995	0	459511	0	0	24
130056	14.6750000000000007	0	459543	0	0	24
130057	14.6760000000000002	0	459575	0	0	24
130058	14.6769999999999996	0	459607	0	0	24
130059	14.6780000000000008	0	459639	0	0	24
130060	14.6790000000000003	0	459671	0	0	24
130061	14.6799999999999997	0	459701	0	0	24
130062	14.6809999999999992	0	459733	0	0	24
130063	14.6820000000000004	0	459765	0	0	24
130064	14.6829999999999998	0	459797	0	0	24
130065	14.6839999999999993	0	459829	0	0	24
130066	14.6850000000000005	0	459861	0	0	24
130067	14.6859999999999999	0	459893	0	0	24
130068	14.6869999999999994	0	459925	0	0	24
130069	14.6880000000000006	0	459957	0	0	24
130070	14.6890000000000001	0	459989	0	0	24
130071	14.6899999999999995	0	460019	0	0	24
130072	14.6910000000000007	0	460051	0	0	24
130073	14.6920000000000002	0	460083	0	0	24
130074	14.6929999999999996	0	460115	0	0	24
130075	14.6940000000000008	0	460147	0	0	24
130076	14.6950000000000003	0	460179	0	0	24
130077	14.6959999999999997	0	460211	0	0	24
130078	14.6969999999999992	0	460243	0	0	24
130079	14.6980000000000004	0	460275	0	0	24
130080	14.6989999999999998	0	460307	0	0	24
130081	14.6999999999999993	0	460337	0	0	24
130082	14.7010000000000005	0	460369	0	0	24
130083	14.702	0	460401	0	0	24
130084	14.7029999999999994	0	460433	0	0	24
130085	14.7040000000000006	0	460465	0	0	24
130086	14.7050000000000001	0	460497	0	0	24
130087	14.7059999999999995	0	460529	0	0	24
130088	14.7070000000000007	0	460561	0	0	24
130089	14.7080000000000002	0	460593	0	0	24
130090	14.7089999999999996	0	460625	0	0	24
130091	14.7100000000000009	0	460655	0	0	24
130092	14.7110000000000003	0	460687	0	0	24
130093	14.7119999999999997	0	460719	0	0	24
130094	14.7129999999999992	0	460751	0	0	24
130095	14.7140000000000004	0	460783	0	0	24
130096	14.7149999999999999	0	460815	0	0	24
130097	14.7159999999999993	0	460847	0	0	24
130098	14.7170000000000005	0	460879	0	0	24
130099	14.718	0	460911	0	0	24
130100	14.7189999999999994	0	460943	0	0	24
130101	14.7200000000000006	0	460973	0	0	24
130102	14.7210000000000001	0	461005	0	0	24
130103	14.7219999999999995	0	461037	0	0	24
130104	14.7230000000000008	0	461069	0	0	24
130105	14.7240000000000002	0	461101	0	0	24
130106	14.7249999999999996	0	461133	0	0	24
130107	14.7260000000000009	0	461165	0	0	24
130108	14.7270000000000003	0	461197	0	0	24
130109	14.7279999999999998	0	461229	0	0	24
130110	14.7289999999999992	0	461261	0	0	24
130111	14.7300000000000004	0	461291	0	0	24
130112	14.7309999999999999	0	461323	0	0	24
130113	14.7319999999999993	0	461355	0	0	24
130114	14.7330000000000005	0	461387	0	0	24
130115	14.734	0	461419	0	0	24
130116	14.7349999999999994	0	461451	0	0	24
130117	14.7360000000000007	0	461483	0	0	24
130118	14.7370000000000001	0	461515	0	0	24
130119	14.7379999999999995	0	461547	0	0	24
130120	14.7390000000000008	0	461579	0	0	24
130121	14.7400000000000002	0	461609	0	0	24
130122	14.7409999999999997	0	461641	0	0	24
130123	14.7420000000000009	0	461673	0	0	24
130124	14.7430000000000003	0	461705	0	0	24
130125	14.7439999999999998	0	461737	0	0	24
130126	14.7449999999999992	0	461769	0	0	24
130127	14.7460000000000004	0	461801	0	0	24
130128	14.7469999999999999	0	461833	0	0	24
130129	14.7479999999999993	0	461865	0	0	24
130130	14.7490000000000006	0	461897	0	0	24
130131	14.75	0	461927	0	0	24
130132	14.7509999999999994	0	461959	0	0	24
130133	14.7520000000000007	0	461991	0	0	24
130134	14.7530000000000001	0	462023	0	0	24
130135	14.7539999999999996	0	462055	0	0	24
130136	14.7550000000000008	0	462087	0	0	24
130137	14.7560000000000002	0	462119	0	0	24
130138	14.7569999999999997	0	462151	0	0	24
130139	14.7579999999999991	0	462183	0	0	24
130140	14.7590000000000003	0	462215	0	0	24
130141	14.7599999999999998	0	462245	0	0	24
130142	14.7609999999999992	0	462277	0	0	24
130143	14.7620000000000005	0	462309	0	0	24
130144	14.7629999999999999	0	462341	0	0	24
130145	14.7639999999999993	0	462373	0	0	24
130146	14.7650000000000006	0	462405	0	0	24
130147	14.766	0	462437	0	0	24
130148	14.7669999999999995	0	462469	0	0	24
130149	14.7680000000000007	0	462501	0	0	24
130150	14.7690000000000001	0	462533	0	0	24
130151	14.7699999999999996	0	462563	0	0	24
130152	14.7710000000000008	0	462595	0	0	24
130153	14.7720000000000002	0	462627	0	0	24
130154	14.7729999999999997	0	462659	0	0	24
130155	14.7739999999999991	0	462691	0	0	24
130156	14.7750000000000004	0	462723	0	0	24
130157	14.7759999999999998	0	462755	0	0	24
130158	14.7769999999999992	0	462787	0	0	24
130159	14.7780000000000005	0	462819	0	0	24
130160	14.7789999999999999	0	462851	0	0	24
130161	14.7799999999999994	0	462881	0	0	24
130162	14.7810000000000006	0	462913	0	0	24
130163	14.782	0	462945	0	0	24
130164	14.7829999999999995	0	462977	0	0	24
130165	14.7840000000000007	0	463009	0	0	24
130166	14.7850000000000001	0	463041	0	0	24
130167	14.7859999999999996	0	463073	0	0	24
130168	14.7870000000000008	0	463105	0	0	24
130169	14.7880000000000003	0	463137	0	0	24
130170	14.7889999999999997	0	463169	0	0	24
130171	14.7899999999999991	0	463199	0	0	24
130172	14.7910000000000004	0	463231	0	0	24
130173	14.7919999999999998	0	463263	0	0	24
130174	14.7929999999999993	0	463295	0	0	24
130175	14.7940000000000005	0	463327	0	0	24
130176	14.7949999999999999	0	463359	0	0	24
130177	14.7959999999999994	0	463391	0	0	24
130178	14.7970000000000006	0	463423	0	0	24
130179	14.798	0	463455	0	0	24
130180	14.7989999999999995	0	463487	0	0	24
130181	14.8000000000000007	0	463517	0	0	24
130182	14.8010000000000002	0	463549	0	0	24
130183	14.8019999999999996	0	463581	0	0	24
130184	14.8030000000000008	0	463613	0	0	24
130185	14.8040000000000003	0	463645	0	0	24
130186	14.8049999999999997	0	463677	0	0	24
130187	14.8059999999999992	0	463709	0	0	24
130188	14.8070000000000004	0	463741	0	0	24
130189	14.8079999999999998	0	463773	0	0	24
130190	14.8089999999999993	0	463805	0	0	24
130191	14.8100000000000005	0	463835	0	0	24
130192	14.8109999999999999	0	463867	0	0	24
130193	14.8119999999999994	0	463899	0	0	24
130194	14.8130000000000006	0	463931	0	0	24
130195	14.8140000000000001	0	463963	0	0	24
130196	14.8149999999999995	0	463995	0	0	24
130197	14.8160000000000007	0	464027	0	0	24
130198	14.8170000000000002	0	464059	0	0	24
130199	14.8179999999999996	0	464091	0	0	24
130200	14.8190000000000008	0	464123	0	0	24
130201	14.8200000000000003	0	464153	0	0	24
130202	14.8209999999999997	0	464185	0	0	24
130203	14.8219999999999992	0	464217	0	0	24
130204	14.8230000000000004	0	464249	0	0	24
130205	14.8239999999999998	0	464281	0	0	24
130206	14.8249999999999993	0	464313	0	0	24
130207	14.8260000000000005	0	464345	0	0	24
130208	14.827	0	464377	0	0	24
130209	14.8279999999999994	0	464409	0	0	24
130210	14.8290000000000006	0	464441	0	0	24
130211	14.8300000000000001	0	464471	0	0	24
130212	14.8309999999999995	0	464503	0	0	24
130213	14.8320000000000007	0	464535	0	0	24
130214	14.8330000000000002	0	464567	0	0	24
130215	14.8339999999999996	0	464599	0	0	24
130216	14.8350000000000009	0	464631	0	0	24
130217	14.8360000000000003	0	464663	0	0	24
130218	14.8369999999999997	0	464695	0	0	24
130219	14.8379999999999992	0	464727	0	0	24
130220	14.8390000000000004	0	464759	0	0	24
130221	14.8399999999999999	0	464789	0	0	24
130222	14.8409999999999993	0	464821	0	0	24
130223	14.8420000000000005	0	464853	0	0	24
130224	14.843	0	464885	0	0	24
130225	14.8439999999999994	0	464917	0	0	24
130226	14.8450000000000006	0	464949	0	0	24
130227	14.8460000000000001	0	464981	0	0	24
130228	14.8469999999999995	0	465013	0	0	24
130229	14.8480000000000008	0	465045	0	0	24
130230	14.8490000000000002	0	465077	0	0	24
130231	14.8499999999999996	0	465107	0	0	24
130232	14.8510000000000009	0	465139	0	0	24
130233	14.8520000000000003	0	465171	0	0	24
130234	14.8529999999999998	0	465203	0	0	24
130235	14.8539999999999992	0	465235	0	0	24
130236	14.8550000000000004	0	465267	0	0	24
130237	14.8559999999999999	0	465299	0	0	24
130238	14.8569999999999993	0	465331	0	0	24
130239	14.8580000000000005	0	465363	0	0	24
130240	14.859	0	465395	0	0	24
130241	14.8599999999999994	0	465425	0	0	24
130242	14.8610000000000007	0	465457	0	0	24
130243	14.8620000000000001	0	465489	0	0	24
130244	14.8629999999999995	0	465521	0	0	24
130245	14.8640000000000008	0	465553	0	0	24
130246	14.8650000000000002	0	465585	0	0	24
130247	14.8659999999999997	0	465617	0	0	24
130248	14.8670000000000009	0	465649	0	0	24
130249	14.8680000000000003	0	465681	0	0	24
130250	14.8689999999999998	0	465713	0	0	24
130251	14.8699999999999992	0	465743	0	0	24
130252	14.8710000000000004	0	465775	0	0	24
130253	14.8719999999999999	0	465807	0	0	24
130254	14.8729999999999993	0	465839	0	0	24
130255	14.8740000000000006	0	465871	0	0	24
130256	14.875	0	465903	0	0	24
130257	14.8759999999999994	0	465935	0	0	24
130258	14.8770000000000007	0	465967	0	0	24
130259	14.8780000000000001	0	465999	0	0	24
130260	14.8789999999999996	0	466031	0	0	24
130261	14.8800000000000008	0	466061	0	0	24
130262	14.8810000000000002	0	466093	0	0	24
130263	14.8819999999999997	0	466125	0	0	24
130264	14.8829999999999991	0	466157	0	0	24
130265	14.8840000000000003	0	466189	0	0	24
130266	14.8849999999999998	0	466221	0	0	24
130267	14.8859999999999992	0	466253	0	0	24
130268	14.8870000000000005	0	466285	0	0	24
130269	14.8879999999999999	0	466317	0	0	24
130270	14.8889999999999993	0	466349	0	0	24
130271	14.8900000000000006	0	466379	0	0	24
130272	14.891	0	466411	0	0	24
130273	14.8919999999999995	0	466443	0	0	24
130274	14.8930000000000007	0	466475	0	0	24
130275	14.8940000000000001	0	466507	0	0	24
130276	14.8949999999999996	0	466539	0	0	24
130277	14.8960000000000008	0	466571	0	0	24
130278	14.8970000000000002	0	466603	0	0	24
130279	14.8979999999999997	0	466635	0	0	24
130280	14.8989999999999991	0	466667	0	0	24
130281	14.9000000000000004	0	466697	0	0	24
130282	14.9009999999999998	0	466729	0	0	24
130283	14.9019999999999992	0	466761	0	0	24
130284	14.9030000000000005	0	466793	0	0	24
130285	14.9039999999999999	0	466825	0	0	24
130286	14.9049999999999994	0	466857	0	0	24
130287	14.9060000000000006	0	466889	0	0	24
130288	14.907	0	466921	0	0	24
130289	14.9079999999999995	0	466953	0	0	24
130290	14.9090000000000007	0	466985	0	0	24
130291	14.9100000000000001	0	467015	0	0	24
130292	14.9109999999999996	0	467047	0	0	24
130293	14.9120000000000008	0	467079	0	0	24
130294	14.9130000000000003	0	467111	0	0	24
130295	14.9139999999999997	0	467143	0	0	24
130296	14.9149999999999991	0	467175	0	0	24
130297	14.9160000000000004	0	467207	0	0	24
130298	14.9169999999999998	0	467239	0	0	24
130299	14.9179999999999993	0	467271	0	0	24
130300	14.9190000000000005	0	467303	0	0	24
130301	14.9199999999999999	0	467333	0	0	24
130302	14.9209999999999994	0	467365	0	0	24
130303	14.9220000000000006	0	467397	0	0	24
130304	14.923	0	467429	0	0	24
130305	14.9239999999999995	0	467461	0	0	24
130306	14.9250000000000007	0	467493	0	0	24
130307	14.9260000000000002	0	467525	0	0	24
130308	14.9269999999999996	0	467557	0	0	24
130309	14.9280000000000008	0	467589	0	0	24
130310	14.9290000000000003	0	467621	0	0	24
130311	14.9299999999999997	0	467651	0	0	24
130312	14.9309999999999992	0	467683	0	0	24
130313	14.9320000000000004	0	467715	0	0	24
130314	14.9329999999999998	0	467747	0	0	24
130315	14.9339999999999993	0	467779	0	0	24
130316	14.9350000000000005	0	467811	0	0	24
130317	14.9359999999999999	0	467843	0	0	24
130318	14.9369999999999994	0	467875	0	0	24
130319	14.9380000000000006	0	467907	0	0	24
130320	14.9390000000000001	0	467939	0	0	24
130321	14.9399999999999995	0	467969	0	0	24
130322	14.9410000000000007	0	468001	0	0	24
130323	14.9420000000000002	0	468033	0	0	24
130324	14.9429999999999996	0	468065	0	0	24
130325	14.9440000000000008	0	468097	0	0	24
130326	14.9450000000000003	0	468129	0	0	24
130327	14.9459999999999997	0	468161	0	0	24
130328	14.9469999999999992	0	468193	0	0	24
130329	14.9480000000000004	0	468225	0	0	24
130330	14.9489999999999998	0	468257	0	0	24
130331	14.9499999999999993	0	468287	0	0	24
130332	14.9510000000000005	0	468319	0	0	24
130333	14.952	0	468351	0	0	24
130334	14.9529999999999994	0	468383	0	0	24
130335	14.9540000000000006	0	468415	0	0	24
130336	14.9550000000000001	0	468447	0	0	24
130337	14.9559999999999995	0	468479	0	0	24
130338	14.9570000000000007	0	468511	0	0	24
130339	14.9580000000000002	0	468543	0	0	24
130340	14.9589999999999996	0	468575	0	0	24
130341	14.9600000000000009	0	468605	0	0	24
130342	14.9610000000000003	0	468637	0	0	24
130343	14.9619999999999997	0	468669	0	0	24
130344	14.9629999999999992	0	468701	0	0	24
130345	14.9640000000000004	0	468733	0	0	24
130346	14.9649999999999999	0	468765	0	0	24
130347	14.9659999999999993	0	468797	0	0	24
130348	14.9670000000000005	0	468829	0	0	24
130349	14.968	0	468861	0	0	24
130350	14.9689999999999994	0	468893	0	0	24
130351	14.9700000000000006	0	468923	0	0	24
130352	14.9710000000000001	0	468955	0	0	24
130353	14.9719999999999995	0	468987	0	0	24
130354	14.9730000000000008	0	469019	0	0	24
130355	14.9740000000000002	0	469051	0	0	24
130356	14.9749999999999996	0	469083	0	0	24
130357	14.9760000000000009	0	469115	0	0	24
130358	14.9770000000000003	0	469147	0	0	24
130359	14.9779999999999998	0	469179	0	0	24
130360	14.9789999999999992	0	469211	0	0	24
130361	14.9800000000000004	0	469241	0	0	24
130362	14.9809999999999999	0	469273	0	0	24
130363	14.9819999999999993	0	469305	0	0	24
130364	14.9830000000000005	0	469337	0	0	24
130365	14.984	0	469369	0	0	24
130366	14.9849999999999994	0	469401	0	0	24
130367	14.9860000000000007	0	469433	0	0	24
130368	14.9870000000000001	0	469465	0	0	24
130369	14.9879999999999995	0	469497	0	0	24
130370	14.9890000000000008	0	469529	0	0	24
130371	14.9900000000000002	0	469559	0	0	24
130372	14.9909999999999997	0	469591	0	0	24
130373	14.9920000000000009	0	469623	0	0	24
130374	14.9930000000000003	0	469655	0	0	24
130375	14.9939999999999998	0	469687	0	0	24
130376	14.9949999999999992	0	469719	0	0	24
130377	14.9960000000000004	0	469751	0	0	24
130378	14.9969999999999999	0	469783	0	0	24
130379	14.9979999999999993	0	469815	0	0	24
130380	14.9990000000000006	0	469847	0	0	24
130381	15	0	469877	0	0	24
130382	15.0009999999999994	0	469909	0	0	24
130383	15.0020000000000007	0	469941	0	0	24
130384	15.0030000000000001	0	469973	0	0	24
130385	15.0039999999999996	0	470005	0	0	24
130386	15.0050000000000008	0	470037	0	0	24
130387	15.0060000000000002	0	470069	0	0	24
130388	15.0069999999999997	0	470101	0	0	24
130389	15.0079999999999991	0	470133	0	0	24
130390	15.0090000000000003	0	470165	0	0	24
130391	15.0099999999999998	0	470195	0	0	24
130392	15.0109999999999992	0	470227	0	0	24
130393	15.0120000000000005	0	470259	0	0	24
130394	15.0129999999999999	0	470291	0	0	24
130395	15.0139999999999993	0	470323	0	0	24
130396	15.0150000000000006	0	470355	0	0	24
130397	15.016	0	470387	0	0	24
130398	15.0169999999999995	0	470419	0	0	24
130399	15.0180000000000007	0	470451	0	0	24
130400	15.0190000000000001	0	470483	0	0	24
130401	15.0199999999999996	0	470513	0	0	24
130402	15.0210000000000008	0	470545	0	0	24
130403	15.0220000000000002	0	470577	0	0	24
130404	15.0229999999999997	0	470609	0	0	24
130405	15.0239999999999991	0	470641	0	0	24
130406	15.0250000000000004	0	470673	0	0	24
130407	15.0259999999999998	0	470705	0	0	24
130408	15.0269999999999992	0	470737	0	0	24
130409	15.0280000000000005	0	470769	0	0	24
130410	15.0289999999999999	0	470801	0	0	24
130411	15.0299999999999994	0	470831	0	0	24
130412	15.0310000000000006	0	470863	0	0	24
130413	15.032	0	470895	0	0	24
130414	15.0329999999999995	0	470927	0	0	24
130415	15.0340000000000007	0	470959	0	0	24
130416	15.0350000000000001	0	470991	0	0	24
130417	15.0359999999999996	0	471023	0	0	24
130418	15.0370000000000008	0	471055	0	0	24
130419	15.0380000000000003	0	471087	0	0	24
130420	15.0389999999999997	0	471119	0	0	24
130421	15.0399999999999991	0	471149	0	0	24
130422	15.0410000000000004	0	471181	0	0	24
130423	15.0419999999999998	0	471213	0	0	24
130424	15.0429999999999993	0	471245	0	0	24
130425	15.0440000000000005	0	471277	0	0	24
130426	15.0449999999999999	0	471309	0	0	24
130427	15.0459999999999994	0	471341	0	0	24
130428	15.0470000000000006	0	471373	0	0	24
130429	15.048	0	471405	0	0	24
130430	15.0489999999999995	0	471437	0	0	24
130431	15.0500000000000007	0	471467	0	0	24
130432	15.0510000000000002	0	471499	0	0	24
130433	15.0519999999999996	0	471531	0	0	24
130434	15.0530000000000008	0	471563	0	0	24
130435	15.0540000000000003	0	471595	0	0	24
130436	15.0549999999999997	0	471627	0	0	24
130437	15.0559999999999992	0	471659	0	0	24
130438	15.0570000000000004	0	471691	0	0	24
130439	15.0579999999999998	0	471723	0	0	24
130440	15.0589999999999993	0	471755	0	0	24
130441	15.0600000000000005	0	471785	0	0	24
130442	15.0609999999999999	0	471817	0	0	24
130443	15.0619999999999994	0	471849	0	0	24
130444	15.0630000000000006	0	471881	0	0	24
130445	15.0640000000000001	0	471913	0	0	24
130446	15.0649999999999995	0	471945	0	0	24
130447	15.0660000000000007	0	471977	0	0	24
130448	15.0670000000000002	0	472009	0	0	24
130449	15.0679999999999996	0	472041	0	0	24
130450	15.0690000000000008	0	472073	0	0	24
130451	15.0700000000000003	0	472103	0	0	24
130452	15.0709999999999997	0	472135	0	0	24
130453	15.0719999999999992	0	472167	0	0	24
130454	15.0730000000000004	0	472199	0	0	24
130455	15.0739999999999998	0	472231	0	0	24
130456	15.0749999999999993	0	472263	0	0	24
130457	15.0760000000000005	0	472295	0	0	24
130458	15.077	0	472327	0	0	24
130459	15.0779999999999994	0	472359	0	0	24
130460	15.0790000000000006	0	472391	0	0	24
130461	15.0800000000000001	0	472421	0	0	24
130462	15.0809999999999995	0	472453	0	0	24
130463	15.0820000000000007	0	472485	0	0	24
130464	15.0830000000000002	0	472517	0	0	24
130465	15.0839999999999996	0	472549	0	0	24
130466	15.0850000000000009	0	472581	0	0	24
130467	15.0860000000000003	0	472613	0	0	24
130468	15.0869999999999997	0	472645	0	0	24
130469	15.0879999999999992	0	472677	0	0	24
130470	15.0890000000000004	0	472709	0	0	24
130471	15.0899999999999999	0	472739	0	0	24
130472	15.0909999999999993	0	472771	0	0	24
130473	15.0920000000000005	0	472803	0	0	24
130474	15.093	0	472835	0	0	24
130475	15.0939999999999994	0	472867	0	0	24
130476	15.0950000000000006	0	472899	0	0	24
130477	15.0960000000000001	0	472931	0	0	24
130478	15.0969999999999995	0	472963	0	0	24
130479	15.0980000000000008	0	472995	0	0	24
130480	15.0990000000000002	0	473027	0	0	24
130481	15.0999999999999996	0	473057	0	0	24
130482	15.1010000000000009	0	473089	0	0	24
130483	15.1020000000000003	0	473121	0	0	24
130484	15.1029999999999998	0	473153	0	0	24
130485	15.1039999999999992	0	473185	0	0	24
130486	15.1050000000000004	0	473217	0	0	24
130487	15.1059999999999999	0	473249	0	0	24
130488	15.1069999999999993	0	473281	0	0	24
130489	15.1080000000000005	0	473313	0	0	24
130490	15.109	0	473345	0	0	24
130491	15.1099999999999994	0	473375	0	0	24
130492	15.1110000000000007	0	473407	0	0	24
130493	15.1120000000000001	0	473439	0	0	24
130494	15.1129999999999995	0	473471	0	0	24
130495	15.1140000000000008	0	473503	0	0	24
130496	15.1150000000000002	0	473535	0	0	24
130497	15.1159999999999997	0	473567	0	0	24
130498	15.1170000000000009	0	473599	0	0	24
130499	15.1180000000000003	0	473631	0	0	24
130500	15.1189999999999998	0	473663	0	0	24
130501	15.1199999999999992	0	473693	0	0	24
130502	15.1210000000000004	0	473725	0	0	24
130503	15.1219999999999999	0	473757	0	0	24
130504	15.1229999999999993	0	473789	0	0	24
130505	15.1240000000000006	0	473821	0	0	24
130506	15.125	0	473853	0	0	24
130507	15.1259999999999994	0	473885	0	0	24
130508	15.1270000000000007	0	473917	0	0	24
130509	15.1280000000000001	0	473949	0	0	24
130510	15.1289999999999996	0	473981	0	0	24
130511	15.1300000000000008	0	474011	0	0	24
130512	15.1310000000000002	0	474043	0	0	24
130513	15.1319999999999997	0	474075	0	0	24
130514	15.1329999999999991	0	474107	0	0	24
130515	15.1340000000000003	0	474139	0	0	24
130516	15.1349999999999998	0	474171	0	0	24
130517	15.1359999999999992	0	474203	0	0	24
130518	15.1370000000000005	0	474235	0	0	24
130519	15.1379999999999999	0	474267	0	0	24
130520	15.1389999999999993	0	474299	0	0	24
130521	15.1400000000000006	0	474329	0	0	24
130522	15.141	0	474361	0	0	24
130523	15.1419999999999995	0	474393	0	0	24
130524	15.1430000000000007	0	474425	0	0	24
130525	15.1440000000000001	0	474457	0	0	24
130526	15.1449999999999996	0	474489	0	0	24
130527	15.1460000000000008	0	474521	0	0	24
130528	15.1470000000000002	0	474553	0	0	24
130529	15.1479999999999997	0	474585	0	0	24
130530	15.1489999999999991	0	474617	0	0	24
130531	15.1500000000000004	0	474647	0	0	24
130532	15.1509999999999998	0	474679	0	0	24
130533	15.1519999999999992	0	474711	0	0	24
130534	15.1530000000000005	0	474743	0	0	24
130535	15.1539999999999999	0	474775	0	0	24
130536	15.1549999999999994	0	474807	0	0	24
130537	15.1560000000000006	0	474839	0	0	24
130538	15.157	0	474871	0	0	24
130539	15.1579999999999995	0	474903	0	0	24
130540	15.1590000000000007	0	474935	0	0	24
130541	15.1600000000000001	0	474965	0	0	24
130542	15.1609999999999996	0	474997	0	0	24
130543	15.1620000000000008	0	475029	0	0	24
130544	15.1630000000000003	0	475061	0	0	24
130545	15.1639999999999997	0	475093	0	0	24
130546	15.1649999999999991	0	475125	0	0	24
130547	15.1660000000000004	0	475157	0	0	24
130548	15.1669999999999998	0	475189	0	0	24
130549	15.1679999999999993	0	475221	0	0	24
130550	15.1690000000000005	0	475253	0	0	24
130551	15.1699999999999999	0	475283	0	0	24
130552	15.1709999999999994	0	475315	0	0	24
130553	15.1720000000000006	0	475347	0	0	24
130554	15.173	0	475379	0	0	24
130555	15.1739999999999995	0	475411	0	0	24
130556	15.1750000000000007	0	475443	0	0	24
130557	15.1760000000000002	0	475475	0	0	24
130558	15.1769999999999996	0	475507	0	0	24
130559	15.1780000000000008	0	475539	0	0	24
130560	15.1790000000000003	0	475571	0	0	24
130561	15.1799999999999997	0	475601	0	0	24
130562	15.1809999999999992	0	475633	0	0	24
130563	15.1820000000000004	0	475665	0	0	24
130564	15.1829999999999998	0	475697	0	0	24
130565	15.1839999999999993	0	475729	0	0	24
130566	15.1850000000000005	0	475761	0	0	24
130567	15.1859999999999999	0	475793	0	0	24
130568	15.1869999999999994	0	475825	0	0	24
130569	15.1880000000000006	0	475857	0	0	24
130570	15.1890000000000001	0	475889	0	0	24
130571	15.1899999999999995	0	475919	0	0	24
130572	15.1910000000000007	0	475951	0	0	24
130573	15.1920000000000002	0	475983	0	0	24
130574	15.1929999999999996	0	476015	0	0	24
130575	15.1940000000000008	0	476047	0	0	24
130576	15.1950000000000003	0	476079	0	0	24
130577	15.1959999999999997	0	476111	0	0	24
130578	15.1969999999999992	0	476143	0	0	24
130579	15.1980000000000004	0	476175	0	0	24
130580	15.1989999999999998	0	476207	0	0	24
130581	15.1999999999999993	0	476237	0	0	24
130582	15.2010000000000005	0	476269	0	0	24
130583	15.202	0	476301	0	0	24
130584	15.2029999999999994	0	476333	0	0	24
130585	15.2040000000000006	0	476365	0	0	24
130586	15.2050000000000001	0	476397	0	0	24
130587	15.2059999999999995	0	476429	0	0	24
130588	15.2070000000000007	0	476461	0	0	24
130589	15.2080000000000002	0	476493	0	0	24
130590	15.2089999999999996	0	476525	0	0	24
130591	15.2100000000000009	0	476555	0	0	24
130592	15.2110000000000003	0	476587	0	0	24
130593	15.2119999999999997	0	476619	0	0	24
130594	15.2129999999999992	0	476651	0	0	24
130595	15.2140000000000004	0	476683	0	0	24
130596	15.2149999999999999	0	476715	0	0	24
130597	15.2159999999999993	0	476747	0	0	24
130598	15.2170000000000005	0	476779	0	0	24
130599	15.218	0	476811	0	0	24
130600	15.2189999999999994	0	476843	0	0	24
130601	15.2200000000000006	0	476873	0	0	24
130602	15.2210000000000001	0	476905	0	0	24
130603	15.2219999999999995	0	476937	0	0	24
130604	15.2230000000000008	0	476969	0	0	24
130605	15.2240000000000002	0	477001	0	0	24
130606	15.2249999999999996	0	477033	0	0	24
130607	15.2260000000000009	0	477065	0	0	24
130608	15.2270000000000003	0	477097	0	0	24
130609	15.2279999999999998	0	477129	0	0	24
130610	15.2289999999999992	0	477161	0	0	24
130611	15.2300000000000004	0	477191	0	0	24
130612	15.2309999999999999	0	477223	0	0	24
130613	15.2319999999999993	0	477255	0	0	24
130614	15.2330000000000005	0	477287	0	0	24
130615	15.234	0	477319	0	0	24
130616	15.2349999999999994	0	477351	0	0	24
130617	15.2360000000000007	0	477383	0	0	24
130618	15.2370000000000001	0	477415	0	0	24
130619	15.2379999999999995	0	477447	0	0	24
130620	15.2390000000000008	0	477479	0	0	24
130621	15.2400000000000002	0	477509	0	0	24
130622	15.2409999999999997	0	477541	0	0	24
130623	15.2420000000000009	0	477573	0	0	24
130624	15.2430000000000003	0	477605	0	0	24
130625	15.2439999999999998	0	477637	0	0	24
130626	15.2449999999999992	0	477669	0	0	24
130627	15.2460000000000004	0	477701	0	0	24
130628	15.2469999999999999	0	477733	0	0	24
130629	15.2479999999999993	0	477765	0	0	24
130630	15.2490000000000006	0	477797	0	0	24
130631	15.25	0	477827	0	0	24
130632	15.2509999999999994	0	477859	0	0	24
130633	15.2520000000000007	0	477891	0	0	24
130634	15.2530000000000001	0	477923	0	0	24
130635	15.2539999999999996	0	477955	0	0	24
130636	15.2550000000000008	0	477987	0	0	24
130637	15.2560000000000002	0	478019	0	0	24
130638	15.2569999999999997	0	478051	0	0	24
130639	15.2579999999999991	0	478083	0	0	24
130640	15.2590000000000003	0	478115	0	0	24
130641	15.2599999999999998	0	478145	0	0	24
130642	15.2609999999999992	0	478177	0	0	24
130643	15.2620000000000005	0	478209	0	0	24
130644	15.2629999999999999	0	478241	0	0	24
130645	15.2639999999999993	0	478273	0	0	24
130646	15.2650000000000006	0	478305	0	0	24
130647	15.266	0	478337	0	0	24
130648	15.2669999999999995	0	478369	0	0	24
130649	15.2680000000000007	0	478401	0	0	24
130650	15.2690000000000001	0	478433	0	0	24
130651	15.2699999999999996	0	478463	0	0	24
130652	15.2710000000000008	0	478495	0	0	24
130653	15.2720000000000002	0	478527	0	0	24
130654	15.2729999999999997	0	478559	0	0	24
130655	15.2739999999999991	0	478591	0	0	24
130656	15.2750000000000004	0	478623	0	0	24
130657	15.2759999999999998	0	478655	0	0	24
130658	15.2769999999999992	0	478687	0	0	24
130659	15.2780000000000005	0	478719	0	0	24
130660	15.2789999999999999	0	478751	0	0	24
130661	15.2799999999999994	0	478781	0	0	24
130662	15.2810000000000006	0	478813	0	0	24
130663	15.282	0	478845	0	0	24
130664	15.2829999999999995	0	478877	0	0	24
130665	15.2840000000000007	0	478909	0	0	24
130666	15.2850000000000001	0	478941	0	0	24
130667	15.2859999999999996	0	478973	0	0	24
130668	15.2870000000000008	0	479005	0	0	24
130669	15.2880000000000003	0	479037	0	0	24
130670	15.2889999999999997	0	479069	0	0	24
130671	15.2899999999999991	0	479099	0	0	24
130672	15.2910000000000004	0	479131	0	0	24
130673	15.2919999999999998	0	479163	0	0	24
130674	15.2929999999999993	0	479195	0	0	24
130675	15.2940000000000005	0	479227	0	0	24
130676	15.2949999999999999	0	479259	0	0	24
130677	15.2959999999999994	0	479291	0	0	24
130678	15.2970000000000006	0	479323	0	0	24
130679	15.298	0	479355	0	0	24
130680	15.2989999999999995	0	479387	0	0	24
130681	15.3000000000000007	0	479417	0	0	24
130682	15.3010000000000002	0	479449	0	0	24
130683	15.3019999999999996	0	479481	0	0	24
130684	15.3030000000000008	0	479513	0	0	24
130685	15.3040000000000003	0	479545	0	0	24
130686	15.3049999999999997	0	479577	0	0	24
130687	15.3059999999999992	0	479609	0	0	24
130688	15.3070000000000004	0	479641	0	0	24
130689	15.3079999999999998	0	479673	0	0	24
130690	15.3089999999999993	0	479705	0	0	24
130691	15.3100000000000005	0	479735	0	0	24
130692	15.3109999999999999	0	479767	0	0	24
130693	15.3119999999999994	0	479799	0	0	24
130694	15.3130000000000006	0	479831	0	0	24
130695	15.3140000000000001	0	479863	0	0	24
130696	15.3149999999999995	0	479895	0	0	24
130697	15.3160000000000007	0	479927	0	0	24
130698	15.3170000000000002	0	479959	0	0	24
130699	15.3179999999999996	0	479991	0	0	24
130700	15.3190000000000008	0	480023	0	0	24
130701	15.3200000000000003	0	480053	0	0	24
130702	15.3209999999999997	0	480085	0	0	24
130703	15.3219999999999992	0	480117	0	0	24
130704	15.3230000000000004	0	480149	0	0	24
130705	15.3239999999999998	0	480181	0	0	24
130706	15.3249999999999993	0	480213	0	0	24
130707	15.3260000000000005	0	480245	0	0	24
130708	15.327	0	480277	0	0	24
130709	15.3279999999999994	0	480309	0	0	24
130710	15.3290000000000006	0	480341	0	0	24
130711	15.3300000000000001	0	480371	0	0	24
130712	15.3309999999999995	0	480403	0	0	24
130713	15.3320000000000007	0	480435	0	0	24
130714	15.3330000000000002	0	480467	0	0	24
130715	15.3339999999999996	0	480499	0	0	24
130716	15.3350000000000009	0	480531	0	0	24
130717	15.3360000000000003	0	480563	0	0	24
130718	15.3369999999999997	0	480595	0	0	24
130719	15.3379999999999992	0	480627	0	0	24
130720	15.3390000000000004	0	480659	0	0	24
130721	15.3399999999999999	0	480689	0	0	24
130722	15.3409999999999993	0	480721	0	0	24
130723	15.3420000000000005	0	480753	0	0	24
130724	15.343	0	480785	0	0	24
130725	15.3439999999999994	0	480817	0	0	24
130726	15.3450000000000006	0	480849	0	0	24
130727	15.3460000000000001	0	480881	0	0	24
130728	15.3469999999999995	0	480913	0	0	24
130729	15.3480000000000008	0	480945	0	0	24
130730	15.3490000000000002	0	480977	0	0	24
130731	15.3499999999999996	0	481007	0	0	24
130732	15.3510000000000009	0	481039	0	0	24
130733	15.3520000000000003	0	481071	0	0	24
130734	15.3529999999999998	0	481103	0	0	24
130735	15.3539999999999992	0	481135	0	0	24
130736	15.3550000000000004	0	481167	0	0	24
130737	15.3559999999999999	0	481199	0	0	24
130738	15.3569999999999993	0	481231	0	0	24
130739	15.3580000000000005	0	481263	0	0	24
130740	15.359	0	481295	0	0	24
130741	15.3599999999999994	0	481325	0	0	24
130742	15.3610000000000007	0	481357	0	0	24
130743	15.3620000000000001	0	481389	0	0	24
130744	15.3629999999999995	0	481421	0	0	24
130745	15.3640000000000008	0	481453	0	0	24
130746	15.3650000000000002	0	481485	0	0	24
130747	15.3659999999999997	0	481517	0	0	24
130748	15.3670000000000009	0	481549	0	0	24
130749	15.3680000000000003	0	481581	0	0	24
130750	15.3689999999999998	0	481613	0	0	24
130751	15.3699999999999992	0	481643	0	0	24
130752	15.3710000000000004	0	481675	0	0	24
130753	15.3719999999999999	0	481707	0	0	24
130754	15.3729999999999993	0	481739	0	0	24
130755	15.3740000000000006	0	481771	0	0	24
130756	15.375	0	481803	0	0	24
130757	15.3759999999999994	0	481835	0	0	24
130758	15.3770000000000007	0	481867	0	0	24
130759	15.3780000000000001	0	481899	0	0	24
130760	15.3789999999999996	0	481931	0	0	24
130761	15.3800000000000008	0	481961	0	0	24
130762	15.3810000000000002	0	481993	0	0	24
130763	15.3819999999999997	0	482025	0	0	24
130764	15.3829999999999991	0	482057	0	0	24
130765	15.3840000000000003	0	482089	0	0	24
130766	15.3849999999999998	0	482121	0	0	24
130767	15.3859999999999992	0	482153	0	0	24
130768	15.3870000000000005	0	482185	0	0	24
130769	15.3879999999999999	0	482217	0	0	24
130770	15.3889999999999993	0	482249	0	0	24
130771	15.3900000000000006	0	482279	0	0	24
130772	15.391	0	482311	0	0	24
130773	15.3919999999999995	0	482343	0	0	24
130774	15.3930000000000007	0	482375	0	0	24
130775	15.3940000000000001	0	482407	0	0	24
130776	15.3949999999999996	0	482439	0	0	24
130777	15.3960000000000008	0	482471	0	0	24
130778	15.3970000000000002	0	482503	0	0	24
130779	15.3979999999999997	0	482535	0	0	24
130780	15.3989999999999991	0	482567	0	0	24
130781	15.4000000000000004	0	482597	0	0	24
130782	15.4009999999999998	0	482629	0	0	24
130783	15.4019999999999992	0	482661	0	0	24
130784	15.4030000000000005	0	482693	0	0	24
130785	15.4039999999999999	0	482725	0	0	24
130786	15.4049999999999994	0	482757	0	0	24
130787	15.4060000000000006	0	482789	0	0	24
130788	15.407	0	482821	0	0	24
130789	15.4079999999999995	0	482853	0	0	24
130790	15.4090000000000007	0	482885	0	0	24
130791	15.4100000000000001	0	482915	0	0	24
130792	15.4109999999999996	0	482947	0	0	24
130793	15.4120000000000008	0	482979	0	0	24
130794	15.4130000000000003	0	483011	0	0	24
130795	15.4139999999999997	0	483043	0	0	24
130796	15.4149999999999991	0	483075	0	0	24
130797	15.4160000000000004	0	483107	0	0	24
130798	15.4169999999999998	0	483139	0	0	24
130799	15.4179999999999993	0	483171	0	0	24
130800	15.4190000000000005	0	483203	0	0	24
130801	15.4199999999999999	0	483233	0	0	24
130802	15.4209999999999994	0	483265	0	0	24
130803	15.4220000000000006	0	483297	0	0	24
130804	15.423	0	483329	0	0	24
130805	15.4239999999999995	0	483361	0	0	24
130806	15.4250000000000007	0	483393	0	0	24
130807	15.4260000000000002	0	483425	0	0	24
130808	15.4269999999999996	0	483457	0	0	24
130809	15.4280000000000008	0	483489	0	0	24
130810	15.4290000000000003	0	483521	0	0	24
130811	15.4299999999999997	0	483551	0	0	24
130812	15.4309999999999992	0	483583	0	0	24
130813	15.4320000000000004	0	483615	0	0	24
130814	15.4329999999999998	0	483647	0	0	24
130815	15.4339999999999993	0	483679	0	0	24
130816	15.4350000000000005	0	483711	0	0	24
130817	15.4359999999999999	0	483743	0	0	24
130818	15.4369999999999994	0	483775	0	0	24
130819	15.4380000000000006	0	483807	0	0	24
130820	15.4390000000000001	0	483839	0	0	24
130821	15.4399999999999995	0	483869	0	0	24
130822	15.4410000000000007	0	483901	0	0	24
130823	15.4420000000000002	0	483933	0	0	24
130824	15.4429999999999996	0	483965	0	0	24
130825	15.4440000000000008	0	483997	0	0	24
130826	15.4450000000000003	0	484029	0	0	24
130827	15.4459999999999997	0	484061	0	0	24
130828	15.4469999999999992	0	484093	0	0	24
130829	15.4480000000000004	0	484125	0	0	24
130830	15.4489999999999998	0	484157	0	0	24
130831	15.4499999999999993	0	484187	0	0	24
130832	15.4510000000000005	0	484219	0	0	24
130833	15.452	0	484251	0	0	24
130834	15.4529999999999994	0	484283	0	0	24
130835	15.4540000000000006	0	484315	0	0	24
130836	15.4550000000000001	0	484347	0	0	24
130837	15.4559999999999995	0	484379	0	0	24
130838	15.4570000000000007	0	484411	0	0	24
130839	15.4580000000000002	0	484443	0	0	24
130840	15.4589999999999996	0	484475	0	0	24
130841	15.4600000000000009	0	484505	0	0	24
130842	15.4610000000000003	0	484537	0	0	24
130843	15.4619999999999997	0	484569	0	0	24
130844	15.4629999999999992	0	484601	0	0	24
130845	15.4640000000000004	0	484633	0	0	24
130846	15.4649999999999999	0	484665	0	0	24
130847	15.4659999999999993	0	484697	0	0	24
130848	15.4670000000000005	0	484729	0	0	24
130849	15.468	0	484761	0	0	24
130850	15.4689999999999994	0	484793	0	0	24
130851	15.4700000000000006	0	484823	0	0	24
130852	15.4710000000000001	0	484855	0	0	24
130853	15.4719999999999995	0	484887	0	0	24
130854	15.4730000000000008	0	484919	0	0	24
130855	15.4740000000000002	0	484951	0	0	24
130856	15.4749999999999996	0	484983	0	0	24
130857	15.4760000000000009	0	485015	0	0	24
130858	15.4770000000000003	0	485047	0	0	24
130859	15.4779999999999998	0	485079	0	0	24
130860	15.4789999999999992	0	485111	0	0	24
130861	15.4800000000000004	0	485141	0	0	24
130862	15.4809999999999999	0	485173	0	0	24
130863	15.4819999999999993	0	485205	0	0	24
130864	15.4830000000000005	0	485237	0	0	24
130865	15.484	0	485269	0	0	24
130866	15.4849999999999994	0	485301	0	0	24
130867	15.4860000000000007	0	485333	0	0	24
130868	15.4870000000000001	0	485365	0	0	24
130869	15.4879999999999995	0	485397	0	0	24
130870	15.4890000000000008	0	485429	0	0	24
130871	15.4900000000000002	0	485459	0	0	24
130872	15.4909999999999997	0	485491	0	0	24
130873	15.4920000000000009	0	485523	0	0	24
130874	15.4930000000000003	0	485555	0	0	24
130875	15.4939999999999998	0	485587	0	0	24
130876	15.4949999999999992	0	485619	0	0	24
130877	15.4960000000000004	0	485651	0	0	24
130878	15.4969999999999999	0	485683	0	0	24
130879	15.4979999999999993	0	485715	0	0	24
130880	15.4990000000000006	0	485747	0	0	24
130881	15.5	0	485777	0	0	24
130882	15.5009999999999994	0	485809	0	0	24
130883	15.5020000000000007	0	485841	0	0	24
130884	15.5030000000000001	0	485873	0	0	24
130885	15.5039999999999996	0	485905	0	0	24
130886	15.5050000000000008	0	485937	0	0	24
130887	15.5060000000000002	0	485969	0	0	24
130888	15.5069999999999997	0	486001	0	0	24
130889	15.5079999999999991	0	486033	0	0	24
130890	15.5090000000000003	0	486065	0	0	24
130891	15.5099999999999998	0	486095	0	0	24
130892	15.5109999999999992	0	486127	0	0	24
130893	15.5120000000000005	0	486159	0	0	24
130894	15.5129999999999999	0	486191	0	0	24
130895	15.5139999999999993	0	486223	0	0	24
130896	15.5150000000000006	0	486255	0	0	24
130897	15.516	0	486287	0	0	24
130898	15.5169999999999995	0	486319	0	0	24
130899	15.5180000000000007	0	486351	0	0	24
130900	15.5190000000000001	0	486383	0	0	24
130901	15.5199999999999996	0	486413	0	0	24
130902	15.5210000000000008	0	486445	0	0	24
130903	15.5220000000000002	0	486477	0	0	24
130904	15.5229999999999997	0	486509	0	0	24
130905	15.5239999999999991	0	486541	0	0	24
130906	15.5250000000000004	0	486573	0	0	24
130907	15.5259999999999998	0	486605	0	0	24
130908	15.5269999999999992	0	486637	0	0	24
130909	15.5280000000000005	0	486669	0	0	24
130910	15.5289999999999999	0	486701	0	0	24
130911	15.5299999999999994	0	486731	0	0	24
130912	15.5310000000000006	0	486763	0	0	24
130913	15.532	0	486795	0	0	24
130914	15.5329999999999995	0	486827	0	0	24
130915	15.5340000000000007	0	486859	0	0	24
130916	15.5350000000000001	0	486891	0	0	24
130917	15.5359999999999996	0	486923	0	0	24
130918	15.5370000000000008	0	486955	0	0	24
130919	15.5380000000000003	0	486987	0	0	24
130920	15.5389999999999997	0	487019	0	0	24
130921	15.5399999999999991	0	487049	0	0	24
130922	15.5410000000000004	0	487081	0	0	24
130923	15.5419999999999998	0	487113	0	0	24
130924	15.5429999999999993	0	487145	0	0	24
130925	15.5440000000000005	0	487177	0	0	24
130926	15.5449999999999999	0	487209	0	0	24
130927	15.5459999999999994	0	487241	0	0	24
130928	15.5470000000000006	0	487273	0	0	24
130929	15.548	0	487305	0	0	24
130930	15.5489999999999995	0	487337	0	0	24
130931	15.5500000000000007	0	487367	0	0	24
130932	15.5510000000000002	0	487399	0	0	24
130933	15.5519999999999996	0	487431	0	0	24
130934	15.5530000000000008	0	487463	0	0	24
130935	15.5540000000000003	0	487495	0	0	24
130936	15.5549999999999997	0	487527	0	0	24
130937	15.5559999999999992	0	487559	0	0	24
130938	15.5570000000000004	0	487591	0	0	24
130939	15.5579999999999998	0	487623	0	0	24
130940	15.5589999999999993	0	487655	0	0	24
130941	15.5600000000000005	0	487685	0	0	24
130942	15.5609999999999999	0	487717	0	0	24
130943	15.5619999999999994	0	487749	0	0	24
130944	15.5630000000000006	0	487781	0	0	24
130945	15.5640000000000001	0	487813	0	0	24
130946	15.5649999999999995	0	487845	0	0	24
130947	15.5660000000000007	0	487877	0	0	24
130948	15.5670000000000002	0	487909	0	0	24
130949	15.5679999999999996	0	487941	0	0	24
130950	15.5690000000000008	0	487973	0	0	24
130951	15.5700000000000003	0	488003	0	0	24
130952	15.5709999999999997	0	488035	0	0	24
130953	15.5719999999999992	0	488067	0	0	24
130954	15.5730000000000004	0	488099	0	0	24
130955	15.5739999999999998	0	488131	0	0	24
130956	15.5749999999999993	0	488163	0	0	24
130957	15.5760000000000005	0	488195	0	0	24
130958	15.577	0	488227	0	0	24
130959	15.5779999999999994	0	488259	0	0	24
130960	15.5790000000000006	0	488291	0	0	24
130961	15.5800000000000001	0	488321	0	0	24
130962	15.5809999999999995	0	488353	0	0	24
130963	15.5820000000000007	0	488385	0	0	24
130964	15.5830000000000002	0	488417	0	0	24
130965	15.5839999999999996	0	488449	0	0	24
130966	15.5850000000000009	0	488481	0	0	24
130967	15.5860000000000003	0	488513	0	0	24
130968	15.5869999999999997	0	488545	0	0	24
130969	15.5879999999999992	0	488577	0	0	24
130970	15.5890000000000004	0	488609	0	0	24
130971	15.5899999999999999	0	488639	0	0	24
130972	15.5909999999999993	0	488671	0	0	24
130973	15.5920000000000005	0	488703	0	0	24
130974	15.593	0	488735	0	0	24
130975	15.5939999999999994	0	488767	0	0	24
130976	15.5950000000000006	0	488799	0	0	24
130977	15.5960000000000001	0	488831	0	0	24
130978	15.5969999999999995	0	488863	0	0	24
130979	15.5980000000000008	0	488895	0	0	24
130980	15.5990000000000002	0	488927	0	0	24
130981	15.5999999999999996	0	488957	0	0	24
130982	15.6010000000000009	0	488989	0	0	24
130983	15.6020000000000003	0	489021	0	0	24
130984	15.6029999999999998	0	489053	0	0	24
130985	15.6039999999999992	0	489085	0	0	24
130986	15.6050000000000004	0	489117	0	0	24
130987	15.6059999999999999	0	489149	0	0	24
130988	15.6069999999999993	0	489181	0	0	24
130989	15.6080000000000005	0	489213	0	0	24
130990	15.609	0	489245	0	0	24
130991	15.6099999999999994	0	489275	0	0	24
130992	15.6110000000000007	0	489307	0	0	24
130993	15.6120000000000001	0	489339	0	0	24
130994	15.6129999999999995	0	489371	0	0	24
130995	15.6140000000000008	0	489403	0	0	24
130996	15.6150000000000002	0	489435	0	0	24
130997	15.6159999999999997	0	489467	0	0	24
130998	15.6170000000000009	0	489499	0	0	24
130999	15.6180000000000003	0	489531	0	0	24
131000	15.6189999999999998	0	489563	0	0	24
131001	15.6199999999999992	0	489593	0	0	24
131002	15.6210000000000004	0	489625	0	0	24
131003	15.6219999999999999	0	489657	0	0	24
131004	15.6229999999999993	0	489689	0	0	24
131005	15.6240000000000006	0	489721	0	0	24
131006	15.625	0	489753	0	0	24
131007	15.6259999999999994	0	489785	0	0	24
131008	15.6270000000000007	0	489817	0	0	24
131009	15.6280000000000001	0	489849	0	0	24
131010	15.6289999999999996	0	489881	0	0	24
131011	15.6300000000000008	0	489911	0	0	24
131012	15.6310000000000002	0	489943	0	0	24
131013	15.6319999999999997	0	489975	0	0	24
131014	15.6329999999999991	0	490007	0	0	24
131015	15.6340000000000003	0	490039	0	0	24
131016	15.6349999999999998	0	490071	0	0	24
131017	15.6359999999999992	0	490103	0	0	24
131018	15.6370000000000005	0	490135	0	0	24
131019	15.6379999999999999	0	490167	0	0	24
131020	15.6389999999999993	0	490199	0	0	24
131021	15.6400000000000006	0	490229	0	0	24
131022	15.641	0	490261	0	0	24
131023	15.6419999999999995	0	490293	0	0	24
131024	15.6430000000000007	0	490325	0	0	24
131025	15.6440000000000001	0	490357	0	0	24
131026	15.6449999999999996	0	490389	0	0	24
131027	15.6460000000000008	0	490421	0	0	24
131028	15.6470000000000002	0	490453	0	0	24
131029	15.6479999999999997	0	490485	0	0	24
131030	15.6489999999999991	0	490517	0	0	24
131031	15.6500000000000004	0	490547	0	0	24
131032	15.6509999999999998	0	490579	0	0	24
131033	15.6519999999999992	0	490611	0	0	24
131034	15.6530000000000005	0	490643	0	0	24
131035	15.6539999999999999	0	490675	0	0	24
131036	15.6549999999999994	0	490707	0	0	24
131037	15.6560000000000006	0	490739	0	0	24
131038	15.657	0	490771	0	0	24
131039	15.6579999999999995	0	490803	0	0	24
131040	15.6590000000000007	0	490835	0	0	24
131041	15.6600000000000001	0	490865	0	0	24
131042	15.6609999999999996	0	490897	0	0	24
131043	15.6620000000000008	0	490929	0	0	24
131044	15.6630000000000003	0	490961	0	0	24
131045	15.6639999999999997	0	490993	0	0	24
131046	15.6649999999999991	0	491025	0	0	24
131047	15.6660000000000004	0	491057	0	0	24
131048	15.6669999999999998	0	491089	0	0	24
131049	15.6679999999999993	0	491121	0	0	24
131050	15.6690000000000005	0	491153	0	0	24
131051	15.6699999999999999	0	491183	0	0	24
131052	15.6709999999999994	0	491215	0	0	24
131053	15.6720000000000006	0	491247	0	0	24
131054	15.673	0	491279	0	0	24
131055	15.6739999999999995	0	491311	0	0	24
131056	15.6750000000000007	0	491343	0	0	24
131057	15.6760000000000002	0	491375	0	0	24
131058	15.6769999999999996	0	491407	0	0	24
131059	15.6780000000000008	0	491439	0	0	24
131060	15.6790000000000003	0	491471	0	0	24
131061	15.6799999999999997	0	491501	0	0	24
131062	15.6809999999999992	0	491533	0	0	24
131063	15.6820000000000004	0	491565	0	0	24
131064	15.6829999999999998	0	491597	0	0	24
131065	15.6839999999999993	0	491629	0	0	24
131066	15.6850000000000005	0	491661	0	0	24
131067	15.6859999999999999	0	491693	0	0	24
131068	15.6869999999999994	0	491725	0	0	24
131069	15.6880000000000006	0	491757	0	0	24
131070	15.6890000000000001	0	491789	0	0	24
131071	15.6899999999999995	0	491819	0	0	24
131072	15.6910000000000007	0	491851	0	0	24
131073	15.6920000000000002	0	491883	0	0	24
131074	15.6929999999999996	0	491915	0	0	24
131075	15.6940000000000008	0	491947	0	0	24
131076	15.6950000000000003	0	491979	0	0	24
131077	15.6959999999999997	0	492011	0	0	24
131078	15.6969999999999992	0	492043	0	0	24
131079	15.6980000000000004	0	492075	0	0	24
131080	15.6989999999999998	0	492107	0	0	24
131081	15.6999999999999993	0	492137	0	0	24
131082	15.7010000000000005	0	492169	0	0	24
131083	15.702	0	492201	0	0	24
131084	15.7029999999999994	0	492233	0	0	24
131085	15.7040000000000006	0	492265	0	0	24
131086	15.7050000000000001	0	492297	0	0	24
131087	15.7059999999999995	0	492329	0	0	24
131088	15.7070000000000007	0	492361	0	0	24
131089	15.7080000000000002	0	492393	0	0	24
131090	15.7089999999999996	0	492425	0	0	24
131091	15.7100000000000009	0	492455	0	0	24
131092	15.7110000000000003	0	492487	0	0	24
131093	15.7119999999999997	0	492519	0	0	24
131094	15.7129999999999992	0	492551	0	0	24
131095	15.7140000000000004	0	492583	0	0	24
131096	15.7149999999999999	0	492615	0	0	24
131097	15.7159999999999993	0	492647	0	0	24
131098	15.7170000000000005	0	492679	0	0	24
131099	15.718	0	492711	0	0	24
131100	15.7189999999999994	0	492743	0	0	24
131101	15.7200000000000006	0	492773	0	0	24
131102	15.7210000000000001	0	492805	0	0	24
131103	15.7219999999999995	0	492837	0	0	24
131104	15.7230000000000008	0	492869	0	0	24
131105	15.7240000000000002	0	492901	0	0	24
131106	15.7249999999999996	0	492933	0	0	24
131107	15.7260000000000009	0	492965	0	0	24
131108	15.7270000000000003	0	492997	0	0	24
131109	15.7279999999999998	0	493029	0	0	24
131110	15.7289999999999992	0	493061	0	0	24
131111	15.7300000000000004	0	493091	0	0	24
131112	15.7309999999999999	0	493123	0	0	24
131113	15.7319999999999993	0	493155	0	0	24
131114	15.7330000000000005	0	493187	0	0	24
131115	15.734	0	493219	0	0	24
131116	15.7349999999999994	0	493251	0	0	24
131117	15.7360000000000007	0	493283	0	0	24
131118	15.7370000000000001	0	493315	0	0	24
131119	15.7379999999999995	0	493347	0	0	24
131120	15.7390000000000008	0	493379	0	0	24
131121	15.7400000000000002	0	493409	0	0	24
131122	15.7409999999999997	0	493441	0	0	24
131123	15.7420000000000009	0	493473	0	0	24
131124	15.7430000000000003	0	493505	0	0	24
131125	15.7439999999999998	0	493537	0	0	24
131126	15.7449999999999992	0	493569	0	0	24
131127	15.7460000000000004	0	493601	0	0	24
131128	15.7469999999999999	0	493633	0	0	24
131129	15.7479999999999993	0	493665	0	0	24
131130	15.7490000000000006	0	493697	0	0	24
131131	15.75	0	493727	0	0	24
131132	15.7509999999999994	0	493759	0	0	24
131133	15.7520000000000007	0	493791	0	0	24
131134	15.7530000000000001	0	493823	0	0	24
131135	15.7539999999999996	0	493855	0	0	24
131136	15.7550000000000008	0	493887	0	0	24
131137	15.7560000000000002	0	493919	0	0	24
131138	15.7569999999999997	0	493951	0	0	24
131139	15.7579999999999991	0	493983	0	0	24
131140	15.7590000000000003	0	494015	0	0	24
131141	15.7599999999999998	0	494045	0	0	24
131142	15.7609999999999992	0	494077	0	0	24
131143	15.7620000000000005	0	494109	0	0	24
131144	15.7629999999999999	0	494141	0	0	24
131145	15.7639999999999993	0	494173	0	0	24
131146	15.7650000000000006	0	494205	0	0	24
131147	15.766	0	494237	0	0	24
131148	15.7669999999999995	0	494269	0	0	24
131149	15.7680000000000007	0	494301	0	0	24
131150	15.7690000000000001	0	494333	0	0	24
131151	15.7699999999999996	0	494363	0	0	24
131152	15.7710000000000008	0	494395	0	0	24
131153	15.7720000000000002	0	494427	0	0	24
131154	15.7729999999999997	0	494459	0	0	24
131155	15.7739999999999991	0	494491	0	0	24
131156	15.7750000000000004	0	494523	0	0	24
131157	15.7759999999999998	0	494555	0	0	24
131158	15.7769999999999992	0	494587	0	0	24
131159	15.7780000000000005	0	494619	0	0	24
131160	15.7789999999999999	0	494651	0	0	24
131161	15.7799999999999994	0	494681	0	0	24
131162	15.7810000000000006	0	494713	0	0	24
131163	15.782	0	494745	0	0	24
131164	15.7829999999999995	0	494777	0	0	24
131165	15.7840000000000007	0	494809	0	0	24
131166	15.7850000000000001	0	494841	0	0	24
131167	15.7859999999999996	0	494873	0	0	24
131168	15.7870000000000008	0	494905	0	0	24
131169	15.7880000000000003	0	494937	0	0	24
131170	15.7889999999999997	0	494969	0	0	24
131171	15.7899999999999991	0	494999	0	0	24
131172	15.7910000000000004	0	495031	0	0	24
131173	15.7919999999999998	0	495063	0	0	24
131174	15.7929999999999993	0	495095	0	0	24
131175	15.7940000000000005	0	495127	0	0	24
131176	15.7949999999999999	0	495159	0	0	24
131177	15.7959999999999994	0	495191	0	0	24
131178	15.7970000000000006	0	495223	0	0	24
131179	15.798	0	495255	0	0	24
131180	15.7989999999999995	0	495287	0	0	24
131181	15.8000000000000007	0	495317	0	0	24
131182	15.8010000000000002	0	495349	0	0	24
131183	15.8019999999999996	0	495381	0	0	24
131184	15.8030000000000008	0	495413	0	0	24
131185	15.8040000000000003	0	495445	0	0	24
131186	15.8049999999999997	0	495477	0	0	24
131187	15.8059999999999992	0	495509	0	0	24
131188	15.8070000000000004	0	495541	0	0	24
131189	15.8079999999999998	0	495573	0	0	24
131190	15.8089999999999993	0	495605	0	0	24
131191	15.8100000000000005	0	495635	0	0	24
131192	15.8109999999999999	0	495667	0	0	24
131193	15.8119999999999994	0	495699	0	0	24
131194	15.8130000000000006	0	495731	0	0	24
131195	15.8140000000000001	0	495763	0	0	24
131196	15.8149999999999995	0	495795	0	0	24
131197	15.8160000000000007	0	495827	0	0	24
131198	15.8170000000000002	0	495859	0	0	24
131199	15.8179999999999996	0	495891	0	0	24
131200	15.8190000000000008	0	495923	0	0	24
131201	15.8200000000000003	0	495953	0	0	24
131202	15.8209999999999997	0	495985	0	0	24
131203	15.8219999999999992	0	496017	0	0	24
131204	15.8230000000000004	0	496049	0	0	24
131205	15.8239999999999998	0	496081	0	0	24
131206	15.8249999999999993	0	496113	0	0	24
131207	15.8260000000000005	0	496145	0	0	24
131208	15.827	0	496177	0	0	24
131209	15.8279999999999994	0	496209	0	0	24
131210	15.8290000000000006	0	496241	0	0	24
131211	15.8300000000000001	0	496271	0	0	24
131212	15.8309999999999995	0	496303	0	0	24
131213	15.8320000000000007	0	496335	0	0	24
131214	15.8330000000000002	0	496367	0	0	24
131215	15.8339999999999996	0	496399	0	0	24
131216	15.8350000000000009	0	496431	0	0	24
131217	15.8360000000000003	0	496463	0	0	24
131218	15.8369999999999997	0	496495	0	0	24
131219	15.8379999999999992	0	496527	0	0	24
131220	15.8390000000000004	0	496559	0	0	24
131221	15.8399999999999999	0	496589	0	0	24
131222	15.8409999999999993	0	496621	0	0	24
131223	15.8420000000000005	0	496653	0	0	24
131224	15.843	0	496685	0	0	24
131225	15.8439999999999994	0	496717	0	0	24
131226	15.8450000000000006	0	496749	0	0	24
131227	15.8460000000000001	0	496781	0	0	24
131228	15.8469999999999995	0	496813	0	0	24
131229	15.8480000000000008	0	496845	0	0	24
131230	15.8490000000000002	0	496877	0	0	24
131231	15.8499999999999996	0	496907	0	0	24
131232	15.8510000000000009	0	496939	0	0	24
131233	15.8520000000000003	0	496971	0	0	24
131234	15.8529999999999998	0	497003	0	0	24
131235	15.8539999999999992	0	497035	0	0	24
131236	15.8550000000000004	0	497067	0	0	24
131237	15.8559999999999999	0	497099	0	0	24
131238	15.8569999999999993	0	497131	0	0	24
131239	15.8580000000000005	0	497163	0	0	24
131240	15.859	0	497195	0	0	24
131241	15.8599999999999994	0	497225	0	0	24
131242	15.8610000000000007	0	497257	0	0	24
131243	15.8620000000000001	0	497289	0	0	24
131244	15.8629999999999995	0	497321	0	0	24
131245	15.8640000000000008	0	497353	0	0	24
131246	15.8650000000000002	0	497385	0	0	24
131247	15.8659999999999997	0	497417	0	0	24
131248	15.8670000000000009	0	497449	0	0	24
131249	15.8680000000000003	0	497481	0	0	24
131250	15.8689999999999998	0	497513	0	0	24
131251	15.8699999999999992	0	497543	0	0	24
131252	15.8710000000000004	0	497575	0	0	24
131253	15.8719999999999999	0	497607	0	0	24
131254	15.8729999999999993	0	497639	0	0	24
131255	15.8740000000000006	0	497671	0	0	24
131256	15.875	0	497703	0	0	24
131257	15.8759999999999994	0	497735	0	0	24
131258	15.8770000000000007	0	497767	0	0	24
131259	15.8780000000000001	0	497799	0	0	24
131260	15.8789999999999996	0	497831	0	0	24
131261	15.8800000000000008	0	497861	0	0	24
131262	15.8810000000000002	0	497893	0	0	24
131263	15.8819999999999997	0	497925	0	0	24
131264	15.8829999999999991	0	497957	0	0	24
131265	15.8840000000000003	0	497989	0	0	24
131266	15.8849999999999998	0	498021	0	0	24
131267	15.8859999999999992	0	498053	0	0	24
131268	15.8870000000000005	0	498085	0	0	24
131269	15.8879999999999999	0	498117	0	0	24
131270	15.8889999999999993	0	498149	0	0	24
131271	15.8900000000000006	0	498179	0	0	24
131272	15.891	0	498211	0	0	24
131273	15.8919999999999995	0	498243	0	0	24
131274	15.8930000000000007	0	498275	0	0	24
131275	15.8940000000000001	0	498307	0	0	24
131276	15.8949999999999996	0	498339	0	0	24
131277	15.8960000000000008	0	498371	0	0	24
131278	15.8970000000000002	0	498403	0	0	24
131279	15.8979999999999997	0	498435	0	0	24
131280	15.8989999999999991	0	498467	0	0	24
131281	15.9000000000000004	0	498497	0	0	24
131282	15.9009999999999998	0	498529	0	0	24
131283	15.9019999999999992	0	498561	0	0	24
131284	15.9030000000000005	0	498593	0	0	24
131285	15.9039999999999999	0	498625	0	0	24
131286	15.9049999999999994	0	498657	0	0	24
131287	15.9060000000000006	0	498689	0	0	24
131288	15.907	0	498721	0	0	24
131289	15.9079999999999995	0	498753	0	0	24
131290	15.9090000000000007	0	498785	0	0	24
131291	15.9100000000000001	0	498815	0	0	24
131292	15.9109999999999996	0	498847	0	0	24
131293	15.9120000000000008	0	498879	0	0	24
131294	15.9130000000000003	0	498911	0	0	24
131295	15.9139999999999997	0	498943	0	0	24
131296	15.9149999999999991	0	498975	0	0	24
131297	15.9160000000000004	0	499007	0	0	24
131298	15.9169999999999998	0	499039	0	0	24
131299	15.9179999999999993	0	499071	0	0	24
131300	15.9190000000000005	0	499103	0	0	24
131301	15.9199999999999999	0	499133	0	0	24
131302	15.9209999999999994	0	499165	0	0	24
131303	15.9220000000000006	0	499197	0	0	24
131304	15.923	0	499229	0	0	24
131305	15.9239999999999995	0	499261	0	0	24
131306	15.9250000000000007	0	499293	0	0	24
131307	15.9260000000000002	0	499325	0	0	24
131308	15.9269999999999996	0	499357	0	0	24
131309	15.9280000000000008	0	499389	0	0	24
131310	15.9290000000000003	0	499421	0	0	24
131311	15.9299999999999997	0	499451	0	0	24
131312	15.9309999999999992	0	499483	0	0	24
131313	15.9320000000000004	0	499515	0	0	24
131314	15.9329999999999998	0	499547	0	0	24
131315	15.9339999999999993	0	499579	0	0	24
131316	15.9350000000000005	0	499611	0	0	24
131317	15.9359999999999999	0	499643	0	0	24
131318	15.9369999999999994	0	499675	0	0	24
131319	15.9380000000000006	0	499707	0	0	24
131320	15.9390000000000001	0	499739	0	0	24
131321	15.9399999999999995	0	499769	0	0	24
131322	15.9410000000000007	0	499801	0	0	24
131323	15.9420000000000002	0	499833	0	0	24
131324	15.9429999999999996	0	499865	0	0	24
131325	15.9440000000000008	0	499897	0	0	24
131326	15.9450000000000003	0	499929	0	0	24
131327	15.9459999999999997	0	499961	0	0	24
131328	15.9469999999999992	0	499993	0	0	24
131329	15.9480000000000004	0	500025	0	0	24
131330	15.9489999999999998	0	500057	0	0	24
131331	15.9499999999999993	0	500087	0	0	24
131332	15.9510000000000005	0	500119	0	0	24
131333	15.952	0	500151	0	0	24
131334	15.9529999999999994	0	500183	0	0	24
131335	15.9540000000000006	0	500215	0	0	24
131336	15.9550000000000001	0	500247	0	0	24
131337	15.9559999999999995	0	500279	0	0	24
131338	15.9570000000000007	0	500311	0	0	24
131339	15.9580000000000002	0	500343	0	0	24
131340	15.9589999999999996	0	500375	0	0	24
131341	15.9600000000000009	0	500405	0	0	24
131342	15.9610000000000003	0	500437	0	0	24
131343	15.9619999999999997	0	500469	0	0	24
131344	15.9629999999999992	0	500501	0	0	24
131345	15.9640000000000004	0	500533	0	0	24
131346	15.9649999999999999	0	500565	0	0	24
131347	15.9659999999999993	0	500597	0	0	24
131348	15.9670000000000005	0	500629	0	0	24
131349	15.968	0	500661	0	0	24
131350	15.9689999999999994	0	500693	0	0	24
131351	15.9700000000000006	0	500723	0	0	24
131352	15.9710000000000001	0	500755	0	0	24
131353	15.9719999999999995	0	500787	0	0	24
131354	15.9730000000000008	0	500819	0	0	24
131355	15.9740000000000002	0	500851	0	0	24
131356	15.9749999999999996	0	500883	0	0	24
131357	15.9760000000000009	0	500915	0	0	24
131358	15.9770000000000003	0	500947	0	0	24
131359	15.9779999999999998	0	500979	0	0	24
131360	15.9789999999999992	0	501011	0	0	24
131361	15.9800000000000004	0	501041	0	0	24
131362	15.9809999999999999	0	501073	0	0	24
131363	15.9819999999999993	0	501105	0	0	24
131364	15.9830000000000005	0	501137	0	0	24
131365	15.984	0	501169	0	0	24
131366	15.9849999999999994	0	501201	0	0	24
131367	15.9860000000000007	0	501233	0	0	24
131368	15.9870000000000001	0	501265	0	0	24
131369	15.9879999999999995	0	501297	0	0	24
131370	15.9890000000000008	0	501329	0	0	24
131371	15.9900000000000002	0	501359	0	0	24
131372	15.9909999999999997	0	501391	0	0	24
131373	15.9920000000000009	0	501423	0	0	24
131374	15.9930000000000003	0	501455	0	0	24
131375	15.9939999999999998	0	501487	0	0	24
131376	15.9949999999999992	0	501519	0	0	24
131377	15.9960000000000004	0	501551	0	0	24
131378	15.9969999999999999	0	501583	0	0	24
131379	15.9979999999999993	0	501615	0	0	24
131380	15.9990000000000006	0	501647	0	0	24
131381	16	0	501677	0	0	24
131382	16.0010000000000012	0	501709	0	0	24
131383	16.0019999999999989	0	501741	0	0	24
131384	16.0030000000000001	0	501773	0	0	24
131385	16.0040000000000013	0	501805	0	0	24
131386	16.004999999999999	0	501837	0	0	24
131387	16.0060000000000002	0	501869	0	0	24
131388	16.0070000000000014	0	501901	0	0	24
131389	16.0079999999999991	0	501933	0	0	24
131390	16.0090000000000003	0	501965	0	0	24
131391	16.0100000000000016	0	501995	0	0	24
131392	16.0109999999999992	0	502027	0	0	24
131393	16.0120000000000005	0	502059	0	0	24
131394	16.0130000000000017	0	502091	0	0	24
131395	16.0139999999999993	0	502123	0	0	24
131396	16.0150000000000006	0	502155	0	0	24
131397	16.0159999999999982	0	502187	0	0	24
131398	16.0169999999999995	0	502219	0	0	24
131399	16.0180000000000007	0	502251	0	0	24
131400	16.0189999999999984	0	502283	0	0	24
131401	16.0199999999999996	0	502313	0	0	24
131402	16.0210000000000008	0	502345	0	0	24
131403	16.0219999999999985	0	502377	0	0	24
131404	16.0229999999999997	0	502409	0	0	24
131405	16.0240000000000009	0	502441	0	0	24
131406	16.0249999999999986	0	502473	0	0	24
131407	16.0259999999999998	0	502505	0	0	24
131408	16.027000000000001	0	502537	0	0	24
131409	16.0279999999999987	0	502569	0	0	24
131410	16.0289999999999999	0	502601	0	0	24
131411	16.0300000000000011	0	502631	0	0	24
131412	16.0309999999999988	0	502663	0	0	24
131413	16.032	0	502695	0	0	24
131414	16.0330000000000013	0	502727	0	0	24
131415	16.0339999999999989	0	502759	0	0	24
131416	16.0350000000000001	0	502791	0	0	24
131417	16.0360000000000014	0	502823	0	0	24
131418	16.036999999999999	0	502855	0	0	24
131419	16.0380000000000003	0	502887	0	0	24
131420	16.0390000000000015	0	502919	0	0	24
131421	16.0399999999999991	0	502949	0	0	24
131422	16.0410000000000004	0	502981	0	0	24
131423	16.0420000000000016	0	503013	0	0	24
131424	16.0429999999999993	0	503045	0	0	24
131425	16.0440000000000005	0	503077	0	0	24
131426	16.0450000000000017	0	503109	0	0	24
131427	16.0459999999999994	0	503141	0	0	24
131428	16.0470000000000006	0	503173	0	0	24
131429	16.0479999999999983	0	503205	0	0	24
131430	16.0489999999999995	0	503237	0	0	24
131431	16.0500000000000007	0	503267	0	0	24
131432	16.0509999999999984	0	503299	0	0	24
131433	16.0519999999999996	0	503331	0	0	24
131434	16.0530000000000008	0	503363	0	0	24
131435	16.0539999999999985	0	503395	0	0	24
131436	16.0549999999999997	0	503427	0	0	24
131437	16.0560000000000009	0	503459	0	0	24
131438	16.0569999999999986	0	503491	0	0	24
131439	16.0579999999999998	0	503523	0	0	24
131440	16.0590000000000011	0	503555	0	0	24
131441	16.0599999999999987	0	503585	0	0	24
131442	16.0609999999999999	0	503617	0	0	24
131443	16.0620000000000012	0	503649	0	0	24
131444	16.0629999999999988	0	503681	0	0	24
131445	16.0640000000000001	0	503713	0	0	24
131446	16.0650000000000013	0	503745	0	0	24
131447	16.0659999999999989	0	503777	0	0	24
131448	16.0670000000000002	0	503809	0	0	24
131449	16.0680000000000014	0	503841	0	0	24
131450	16.0689999999999991	0	503873	0	0	24
131451	16.0700000000000003	0	503903	0	0	24
131452	16.0710000000000015	0	503935	0	0	24
131453	16.0719999999999992	0	503967	0	0	24
131454	16.0730000000000004	0	503999	0	0	24
131455	16.0740000000000016	0	504031	0	0	24
131456	16.0749999999999993	0	504063	0	0	24
131457	16.0760000000000005	0	504095	0	0	24
131458	16.0770000000000017	0	504127	0	0	24
131459	16.0779999999999994	0	504159	0	0	24
131460	16.0790000000000006	0	504191	0	0	24
131461	16.0799999999999983	0	504221	0	0	24
131462	16.0809999999999995	0	504253	0	0	24
131463	16.0820000000000007	0	504285	0	0	24
131464	16.0829999999999984	0	504317	0	0	24
131465	16.0839999999999996	0	504349	0	0	24
131466	16.0850000000000009	0	504381	0	0	24
131467	16.0859999999999985	0	504413	0	0	24
131468	16.0869999999999997	0	504445	0	0	24
131469	16.088000000000001	0	504477	0	0	24
131470	16.0889999999999986	0	504509	0	0	24
131471	16.0899999999999999	0	504539	0	0	24
131472	16.0910000000000011	0	504571	0	0	24
131473	16.0919999999999987	0	504603	0	0	24
131474	16.093	0	504635	0	0	24
131475	16.0940000000000012	0	504667	0	0	24
131476	16.0949999999999989	0	504699	0	0	24
131477	16.0960000000000001	0	504731	0	0	24
131478	16.0970000000000013	0	504763	0	0	24
131479	16.097999999999999	0	504795	0	0	24
131480	16.0990000000000002	0	504827	0	0	24
131481	16.1000000000000014	0	504857	0	0	24
131482	16.1009999999999991	0	504889	0	0	24
131483	16.1020000000000003	0	504921	0	0	24
131484	16.1030000000000015	0	504953	0	0	24
131485	16.1039999999999992	0	504985	0	0	24
131486	16.1050000000000004	0	505017	0	0	24
131487	16.1060000000000016	0	505049	0	0	24
131488	16.1069999999999993	0	505081	0	0	24
131489	16.1080000000000005	0	505113	0	0	24
131490	16.1090000000000018	0	505145	0	0	24
131491	16.1099999999999994	0	505175	0	0	24
131492	16.1110000000000007	0	505207	0	0	24
131493	16.1119999999999983	0	505239	0	0	24
131494	16.1129999999999995	0	505271	0	0	24
131495	16.1140000000000008	0	505303	0	0	24
131496	16.1149999999999984	0	505335	0	0	24
131497	16.1159999999999997	0	505367	0	0	24
131498	16.1170000000000009	0	505399	0	0	24
131499	16.1179999999999986	0	505431	0	0	24
131500	16.1189999999999998	0	505463	0	0	24
131501	16.120000000000001	0	505493	0	0	24
131502	16.1209999999999987	0	505525	0	0	24
131503	16.1219999999999999	0	505557	0	0	24
131504	16.1230000000000011	0	505589	0	0	24
131505	16.1239999999999988	0	505621	0	0	24
131506	16.125	0	505653	0	0	24
131507	16.1260000000000012	0	505685	0	0	24
131508	16.1269999999999989	0	505717	0	0	24
131509	16.1280000000000001	0	505749	0	0	24
131510	16.1290000000000013	0	505781	0	0	24
131511	16.129999999999999	0	505811	0	0	24
131512	16.1310000000000002	0	505843	0	0	24
131513	16.1320000000000014	0	505875	0	0	24
131514	16.1329999999999991	0	505907	0	0	24
131515	16.1340000000000003	0	505939	0	0	24
131516	16.1350000000000016	0	505971	0	0	24
131517	16.1359999999999992	0	506003	0	0	24
131518	16.1370000000000005	0	506035	0	0	24
131519	16.1380000000000017	0	506067	0	0	24
131520	16.1389999999999993	0	506099	0	0	24
131521	16.1400000000000006	0	506129	0	0	24
131522	16.1409999999999982	0	506161	0	0	24
131523	16.1419999999999995	0	506193	0	0	24
131524	16.1430000000000007	0	506225	0	0	24
131525	16.1439999999999984	0	506257	0	0	24
131526	16.1449999999999996	0	506289	0	0	24
131527	16.1460000000000008	0	506321	0	0	24
131528	16.1469999999999985	0	506353	0	0	24
131529	16.1479999999999997	0	506385	0	0	24
131530	16.1490000000000009	0	506417	0	0	24
131531	16.1499999999999986	0	506447	0	0	24
131532	16.1509999999999998	0	506479	0	0	24
131533	16.152000000000001	0	506511	0	0	24
131534	16.1529999999999987	0	506543	0	0	24
131535	16.1539999999999999	0	506575	0	0	24
131536	16.1550000000000011	0	506607	0	0	24
131537	16.1559999999999988	0	506639	0	0	24
131538	16.157	0	506671	0	0	24
131539	16.1580000000000013	0	506703	0	0	24
131540	16.1589999999999989	0	506735	0	0	24
131541	16.1600000000000001	0	506765	0	0	24
131542	16.1610000000000014	0	506797	0	0	24
131543	16.161999999999999	0	506829	0	0	24
131544	16.1630000000000003	0	506861	0	0	24
131545	16.1640000000000015	0	506893	0	0	24
131546	16.1649999999999991	0	506925	0	0	24
131547	16.1660000000000004	0	506957	0	0	24
131548	16.1670000000000016	0	506989	0	0	24
131549	16.1679999999999993	0	507021	0	0	24
131550	16.1690000000000005	0	507053	0	0	24
131551	16.1700000000000017	0	507083	0	0	24
131552	16.1709999999999994	0	507115	0	0	24
131553	16.1720000000000006	0	507147	0	0	24
131554	16.1729999999999983	0	507179	0	0	24
131555	16.1739999999999995	0	507211	0	0	24
131556	16.1750000000000007	0	507243	0	0	24
131557	16.1759999999999984	0	507275	0	0	24
131558	16.1769999999999996	0	507307	0	0	24
131559	16.1780000000000008	0	507339	0	0	24
131560	16.1789999999999985	0	507371	0	0	24
131561	16.1799999999999997	0	507401	0	0	24
131562	16.1810000000000009	0	507433	0	0	24
131563	16.1819999999999986	0	507465	0	0	24
131564	16.1829999999999998	0	507497	0	0	24
131565	16.1840000000000011	0	507529	0	0	24
131566	16.1849999999999987	0	507561	0	0	24
131567	16.1859999999999999	0	507593	0	0	24
131568	16.1870000000000012	0	507625	0	0	24
131569	16.1879999999999988	0	507657	0	0	24
131570	16.1890000000000001	0	507689	0	0	24
131571	16.1900000000000013	0	507719	0	0	24
131572	16.1909999999999989	0	507751	0	0	24
131573	16.1920000000000002	0	507783	0	0	24
131574	16.1930000000000014	0	507815	0	0	24
131575	16.1939999999999991	0	507847	0	0	24
131576	16.1950000000000003	0	507879	0	0	24
131577	16.1960000000000015	0	507911	0	0	24
131578	16.1969999999999992	0	507943	0	0	24
131579	16.1980000000000004	0	507975	0	0	24
131580	16.1990000000000016	0	508007	0	0	24
131581	16.1999999999999993	0	508037	0	0	24
131582	16.2010000000000005	0	508069	0	0	24
131583	16.2020000000000017	0	508101	0	0	24
131584	16.2029999999999994	0	508133	0	0	24
131585	16.2040000000000006	0	508165	0	0	24
131586	16.2049999999999983	0	508197	0	0	24
131587	16.2059999999999995	0	508229	0	0	24
131588	16.2070000000000007	0	508261	0	0	24
131589	16.2079999999999984	0	508293	0	0	24
131590	16.2089999999999996	0	508325	0	0	24
131591	16.2100000000000009	0	508355	0	0	24
131592	16.2109999999999985	0	508387	0	0	24
131593	16.2119999999999997	0	508419	0	0	24
131594	16.213000000000001	0	508451	0	0	24
131595	16.2139999999999986	0	508483	0	0	24
131596	16.2149999999999999	0	508515	0	0	24
131597	16.2160000000000011	0	508547	0	0	24
131598	16.2169999999999987	0	508579	0	0	24
131599	16.218	0	508611	0	0	24
131600	16.2190000000000012	0	508643	0	0	24
131601	16.2199999999999989	0	508673	0	0	24
131602	16.2210000000000001	0	508705	0	0	24
131603	16.2220000000000013	0	508737	0	0	24
131604	16.222999999999999	0	508769	0	0	24
131605	16.2240000000000002	0	508801	0	0	24
131606	16.2250000000000014	0	508833	0	0	24
131607	16.2259999999999991	0	508865	0	0	24
131608	16.2270000000000003	0	508897	0	0	24
131609	16.2280000000000015	0	508929	0	0	24
131610	16.2289999999999992	0	508961	0	0	24
131611	16.2300000000000004	0	508991	0	0	24
131612	16.2310000000000016	0	509023	0	0	24
131613	16.2319999999999993	0	509055	0	0	24
131614	16.2330000000000005	0	509087	0	0	24
131615	16.2340000000000018	0	509119	0	0	24
131616	16.2349999999999994	0	509151	0	0	24
131617	16.2360000000000007	0	509183	0	0	24
131618	16.2369999999999983	0	509215	0	0	24
131619	16.2379999999999995	0	509247	0	0	24
131620	16.2390000000000008	0	509279	0	0	24
131621	16.2399999999999984	0	509309	0	0	24
131622	16.2409999999999997	0	509341	0	0	24
131623	16.2420000000000009	0	509373	0	0	24
131624	16.2429999999999986	0	509405	0	0	24
131625	16.2439999999999998	0	509437	0	0	24
131626	16.245000000000001	0	509469	0	0	24
131627	16.2459999999999987	0	509501	0	0	24
131628	16.2469999999999999	0	509533	0	0	24
131629	16.2480000000000011	0	509565	0	0	24
131630	16.2489999999999988	0	509597	0	0	24
131631	16.25	0	509627	0	0	24
131632	16.2510000000000012	0	509659	0	0	24
131633	16.2519999999999989	0	509691	0	0	24
131634	16.2530000000000001	0	509723	0	0	24
131635	16.2540000000000013	0	509755	0	0	24
131636	16.254999999999999	0	509787	0	0	24
131637	16.2560000000000002	0	509819	0	0	24
131638	16.2570000000000014	0	509851	0	0	24
131639	16.2579999999999991	0	509883	0	0	24
131640	16.2590000000000003	0	509915	0	0	24
131641	16.2600000000000016	0	509945	0	0	24
131642	16.2609999999999992	0	509977	0	0	24
131643	16.2620000000000005	0	510009	0	0	24
131644	16.2630000000000017	0	510041	0	0	24
131645	16.2639999999999993	0	510073	0	0	24
131646	16.2650000000000006	0	510105	0	0	24
131647	16.2659999999999982	0	510137	0	0	24
131648	16.2669999999999995	0	510169	0	0	24
131649	16.2680000000000007	0	510201	0	0	24
131650	16.2689999999999984	0	510233	0	0	24
131651	16.2699999999999996	0	510263	0	0	24
131652	16.2710000000000008	0	510295	0	0	24
131653	16.2719999999999985	0	510327	0	0	24
131654	16.2729999999999997	0	510359	0	0	24
131655	16.2740000000000009	0	510391	0	0	24
131656	16.2749999999999986	0	510423	0	0	24
131657	16.2759999999999998	0	510455	0	0	24
131658	16.277000000000001	0	510487	0	0	24
131659	16.2779999999999987	0	510519	0	0	24
131660	16.2789999999999999	0	510551	0	0	24
131661	16.2800000000000011	0	510581	0	0	24
131662	16.2809999999999988	0	510613	0	0	24
131663	16.282	0	510645	0	0	24
131664	16.2830000000000013	0	510677	0	0	24
131665	16.2839999999999989	0	510709	0	0	24
131666	16.2850000000000001	0	510741	0	0	24
131667	16.2860000000000014	0	510773	0	0	24
131668	16.286999999999999	0	510805	0	0	24
131669	16.2880000000000003	0	510837	0	0	24
131670	16.2890000000000015	0	510869	0	0	24
131671	16.2899999999999991	0	510899	0	0	24
131672	16.2910000000000004	0	510931	0	0	24
131673	16.2920000000000016	0	510963	0	0	24
131674	16.2929999999999993	0	510995	0	0	24
131675	16.2940000000000005	0	511027	0	0	24
131676	16.2950000000000017	0	511059	0	0	24
131677	16.2959999999999994	0	511091	0	0	24
131678	16.2970000000000006	0	511123	0	0	24
131679	16.2979999999999983	0	511155	0	0	24
131680	16.2989999999999995	0	511187	0	0	24
131681	16.3000000000000007	0	511217	0	0	24
131682	16.3009999999999984	0	511249	0	0	24
131683	16.3019999999999996	0	511281	0	0	24
131684	16.3030000000000008	0	511313	0	0	24
131685	16.3039999999999985	0	511345	0	0	24
131686	16.3049999999999997	0	511377	0	0	24
131687	16.3060000000000009	0	511409	0	0	24
131688	16.3069999999999986	0	511441	0	0	24
131689	16.3079999999999998	0	511473	0	0	24
131690	16.3090000000000011	0	511505	0	0	24
131691	16.3099999999999987	0	511535	0	0	24
131692	16.3109999999999999	0	511567	0	0	24
131693	16.3120000000000012	0	511599	0	0	24
131694	16.3129999999999988	0	511631	0	0	24
131695	16.3140000000000001	0	511663	0	0	24
131696	16.3150000000000013	0	511695	0	0	24
131697	16.3159999999999989	0	511727	0	0	24
131698	16.3170000000000002	0	511759	0	0	24
131699	16.3180000000000014	0	511791	0	0	24
131700	16.3189999999999991	0	511823	0	0	24
131701	16.3200000000000003	0	511853	0	0	24
131702	16.3210000000000015	0	511885	0	0	24
131703	16.3219999999999992	0	511917	0	0	24
131704	16.3230000000000004	0	511949	0	0	24
131705	16.3240000000000016	0	511981	0	0	24
131706	16.3249999999999993	0	512013	0	0	24
131707	16.3260000000000005	0	512045	0	0	24
131708	16.3270000000000017	0	512077	0	0	24
131709	16.3279999999999994	0	512109	0	0	24
131710	16.3290000000000006	0	512141	0	0	24
131711	16.3299999999999983	0	512171	0	0	24
131712	16.3309999999999995	0	512203	0	0	24
131713	16.3320000000000007	0	512235	0	0	24
131714	16.3329999999999984	0	512267	0	0	24
131715	16.3339999999999996	0	512299	0	0	24
131716	16.3350000000000009	0	512331	0	0	24
131717	16.3359999999999985	0	512363	0	0	24
131718	16.3369999999999997	0	512395	0	0	24
131719	16.338000000000001	0	512427	0	0	24
131720	16.3389999999999986	0	512459	0	0	24
131721	16.3399999999999999	0	512489	0	0	24
131722	16.3410000000000011	0	512521	0	0	24
131723	16.3419999999999987	0	512553	0	0	24
131724	16.343	0	512585	0	0	24
131725	16.3440000000000012	0	512617	0	0	24
131726	16.3449999999999989	0	512649	0	0	24
131727	16.3460000000000001	0	512681	0	0	24
131728	16.3470000000000013	0	512713	0	0	24
131729	16.347999999999999	0	512745	0	0	24
131730	16.3490000000000002	0	512777	0	0	24
131731	16.3500000000000014	0	512807	0	0	24
131732	16.3509999999999991	0	512839	0	0	24
131733	16.3520000000000003	0	512871	0	0	24
131734	16.3530000000000015	0	512903	0	0	24
131735	16.3539999999999992	0	512935	0	0	24
131736	16.3550000000000004	0	512967	0	0	24
131737	16.3560000000000016	0	512999	0	0	24
131738	16.3569999999999993	0	513031	0	0	24
131739	16.3580000000000005	0	513063	0	0	24
131740	16.3590000000000018	0	513095	0	0	24
131741	16.3599999999999994	0	513125	0	0	24
131742	16.3610000000000007	0	513157	0	0	24
131743	16.3619999999999983	0	513189	0	0	24
131744	16.3629999999999995	0	513221	0	0	24
131745	16.3640000000000008	0	513253	0	0	24
131746	16.3649999999999984	0	513285	0	0	24
131747	16.3659999999999997	0	513317	0	0	24
131748	16.3670000000000009	0	513349	0	0	24
131749	16.3679999999999986	0	513381	0	0	24
131750	16.3689999999999998	0	513413	0	0	24
131751	16.370000000000001	0	513443	0	0	24
131752	16.3709999999999987	0	513475	0	0	24
131753	16.3719999999999999	0	513507	0	0	24
131754	16.3730000000000011	0	513539	0	0	24
131755	16.3739999999999988	0	513571	0	0	24
131756	16.375	0	513603	0	0	24
131757	16.3760000000000012	0	513635	0	0	24
131758	16.3769999999999989	0	513667	0	0	24
131759	16.3780000000000001	0	513699	0	0	24
131760	16.3790000000000013	0	513731	0	0	24
131761	16.379999999999999	0	513761	0	0	24
131762	16.3810000000000002	0	513793	0	0	24
131763	16.3820000000000014	0	513825	0	0	24
131764	16.3829999999999991	0	513857	0	0	24
131765	16.3840000000000003	0	513889	0	0	24
131766	16.3850000000000016	0	513921	0	0	24
131767	16.3859999999999992	0	513953	0	0	24
131768	16.3870000000000005	0	513985	0	0	24
131769	16.3880000000000017	0	514017	0	0	24
131770	16.3889999999999993	0	514049	0	0	24
131771	16.3900000000000006	0	514079	0	0	24
131772	16.3909999999999982	0	514111	0	0	24
131773	16.3919999999999995	0	514143	0	0	24
131774	16.3930000000000007	0	514175	0	0	24
131775	16.3939999999999984	0	514207	0	0	24
131776	16.3949999999999996	0	514239	0	0	24
131777	16.3960000000000008	0	514271	0	0	24
131778	16.3969999999999985	0	514303	0	0	24
131779	16.3979999999999997	0	514335	0	0	24
131780	16.3990000000000009	0	514367	0	0	24
131781	16.3999999999999986	0	514397	0	0	24
131782	16.4009999999999998	0	514429	0	0	24
131783	16.402000000000001	0	514461	0	0	24
131784	16.4029999999999987	0	514493	0	0	24
131785	16.4039999999999999	0	514525	0	0	24
131786	16.4050000000000011	0	514557	0	0	24
131787	16.4059999999999988	0	514589	0	0	24
131788	16.407	0	514621	0	0	24
131789	16.4080000000000013	0	514653	0	0	24
131790	16.4089999999999989	0	514685	0	0	24
131791	16.4100000000000001	0	514715	0	0	24
131792	16.4110000000000014	0	514747	0	0	24
131793	16.411999999999999	0	514779	0	0	24
131794	16.4130000000000003	0	514811	0	0	24
131795	16.4140000000000015	0	514843	0	0	24
131796	16.4149999999999991	0	514875	0	0	24
131797	16.4160000000000004	0	514907	0	0	24
131798	16.4170000000000016	0	514939	0	0	24
131799	16.4179999999999993	0	514971	0	0	24
131800	16.4190000000000005	0	515003	0	0	24
131801	16.4200000000000017	0	515033	0	0	24
131802	16.4209999999999994	0	515065	0	0	24
131803	16.4220000000000006	0	515097	0	0	24
131804	16.4229999999999983	0	515129	0	0	24
131805	16.4239999999999995	0	515161	0	0	24
131806	16.4250000000000007	0	515193	0	0	24
131807	16.4259999999999984	0	515225	0	0	24
131808	16.4269999999999996	0	515257	0	0	24
131809	16.4280000000000008	0	515289	0	0	24
131810	16.4289999999999985	0	515321	0	0	24
131811	16.4299999999999997	0	515351	0	0	24
131812	16.4310000000000009	0	515383	0	0	24
131813	16.4319999999999986	0	515415	0	0	24
131814	16.4329999999999998	0	515447	0	0	24
131815	16.4340000000000011	0	515479	0	0	24
131816	16.4349999999999987	0	515511	0	0	24
131817	16.4359999999999999	0	515543	0	0	24
131818	16.4370000000000012	0	515575	0	0	24
131819	16.4379999999999988	0	515607	0	0	24
131820	16.4390000000000001	0	515639	0	0	24
131821	16.4400000000000013	0	515669	0	0	24
131822	16.4409999999999989	0	515701	0	0	24
131823	16.4420000000000002	0	515733	0	0	24
131824	16.4430000000000014	0	515765	0	0	24
131825	16.4439999999999991	0	515797	0	0	24
131826	16.4450000000000003	0	515829	0	0	24
131827	16.4460000000000015	0	515861	0	0	24
131828	16.4469999999999992	0	515893	0	0	24
131829	16.4480000000000004	0	515925	0	0	24
131830	16.4490000000000016	0	515957	0	0	24
131831	16.4499999999999993	0	515987	0	0	24
131832	16.4510000000000005	0	516019	0	0	24
131833	16.4520000000000017	0	516051	0	0	24
131834	16.4529999999999994	0	516083	0	0	24
131835	16.4540000000000006	0	516115	0	0	24
131836	16.4549999999999983	0	516147	0	0	24
131837	16.4559999999999995	0	516179	0	0	24
131838	16.4570000000000007	0	516211	0	0	24
131839	16.4579999999999984	0	516243	0	0	24
131840	16.4589999999999996	0	516275	0	0	24
131841	16.4600000000000009	0	516305	0	0	24
131842	16.4609999999999985	0	516337	0	0	24
131843	16.4619999999999997	0	516369	0	0	24
131844	16.463000000000001	0	516401	0	0	24
131845	16.4639999999999986	0	516433	0	0	24
131846	16.4649999999999999	0	516465	0	0	24
131847	16.4660000000000011	0	516497	0	0	24
131848	16.4669999999999987	0	516529	0	0	24
131849	16.468	0	516561	0	0	24
131850	16.4690000000000012	0	516593	0	0	24
131851	16.4699999999999989	0	516623	0	0	24
131852	16.4710000000000001	0	516655	0	0	24
131853	16.4720000000000013	0	516687	0	0	24
131854	16.472999999999999	0	516719	0	0	24
131855	16.4740000000000002	0	516751	0	0	24
131856	16.4750000000000014	0	516783	0	0	24
131857	16.4759999999999991	0	516815	0	0	24
131858	16.4770000000000003	0	516847	0	0	24
131859	16.4780000000000015	0	516879	0	0	24
131860	16.4789999999999992	0	516911	0	0	24
131861	16.4800000000000004	0	516941	0	0	24
131862	16.4810000000000016	0	516973	0	0	24
131863	16.4819999999999993	0	517005	0	0	24
131864	16.4830000000000005	0	517037	0	0	24
131865	16.4840000000000018	0	517069	0	0	24
131866	16.4849999999999994	0	517101	0	0	24
131867	16.4860000000000007	0	517133	0	0	24
131868	16.4869999999999983	0	517165	0	0	24
131869	16.4879999999999995	0	517197	0	0	24
131870	16.4890000000000008	0	517229	0	0	24
131871	16.4899999999999984	0	517259	0	0	24
131872	16.4909999999999997	0	517291	0	0	24
131873	16.4920000000000009	0	517323	0	0	24
131874	16.4929999999999986	0	517355	0	0	24
131875	16.4939999999999998	0	517387	0	0	24
131876	16.495000000000001	0	517419	0	0	24
131877	16.4959999999999987	0	517451	0	0	24
131878	16.4969999999999999	0	517483	0	0	24
131879	16.4980000000000011	0	517515	0	0	24
131880	16.4989999999999988	0	517547	0	0	24
131881	16.5	0	517577	0	0	24
131882	16.5010000000000012	0	517609	0	0	24
131883	16.5019999999999989	0	517641	0	0	24
131884	16.5030000000000001	0	517673	0	0	24
131885	16.5040000000000013	0	517705	0	0	24
131886	16.504999999999999	0	517737	0	0	24
131887	16.5060000000000002	0	517769	0	0	24
131888	16.5070000000000014	0	517801	0	0	24
131889	16.5079999999999991	0	517833	0	0	24
131890	16.5090000000000003	0	517865	0	0	24
131891	16.5100000000000016	0	517895	0	0	24
131892	16.5109999999999992	0	517927	0	0	24
131893	16.5120000000000005	0	517959	0	0	24
131894	16.5130000000000017	0	517991	0	0	24
131895	16.5139999999999993	0	518023	0	0	24
131896	16.5150000000000006	0	518055	0	0	24
131897	16.5159999999999982	0	518087	0	0	24
131898	16.5169999999999995	0	518119	0	0	24
131899	16.5180000000000007	0	518151	0	0	24
131900	16.5189999999999984	0	518183	0	0	24
131901	16.5199999999999996	0	518213	0	0	24
131902	16.5210000000000008	0	518245	0	0	24
131903	16.5219999999999985	0	518277	0	0	24
131904	16.5229999999999997	0	518309	0	0	24
131905	16.5240000000000009	0	518341	0	0	24
131906	16.5249999999999986	0	518373	0	0	24
131907	16.5259999999999998	0	518405	0	0	24
131908	16.527000000000001	0	518437	0	0	24
131909	16.5279999999999987	0	518469	0	0	24
131910	16.5289999999999999	0	518501	0	0	24
131911	16.5300000000000011	0	518531	0	0	24
131912	16.5309999999999988	0	518563	0	0	24
131913	16.532	0	518595	0	0	24
131914	16.5330000000000013	0	518627	0	0	24
131915	16.5339999999999989	0	518659	0	0	24
131916	16.5350000000000001	0	518691	0	0	24
131917	16.5360000000000014	0	518723	0	0	24
131918	16.536999999999999	0	518755	0	0	24
131919	16.5380000000000003	0	518787	0	0	24
131920	16.5390000000000015	0	518819	0	0	24
131921	16.5399999999999991	0	518849	0	0	24
131922	16.5410000000000004	0	518881	0	0	24
131923	16.5420000000000016	0	518913	0	0	24
131924	16.5429999999999993	0	518945	0	0	24
131925	16.5440000000000005	0	518977	0	0	24
131926	16.5450000000000017	0	519009	0	0	24
131927	16.5459999999999994	0	519041	0	0	24
131928	16.5470000000000006	0	519073	0	0	24
131929	16.5479999999999983	0	519105	0	0	24
131930	16.5489999999999995	0	519137	0	0	24
131931	16.5500000000000007	0	519167	0	0	24
131932	16.5509999999999984	0	519199	0	0	24
131933	16.5519999999999996	0	519231	0	0	24
131934	16.5530000000000008	0	519263	0	0	24
131935	16.5539999999999985	0	519295	0	0	24
131936	16.5549999999999997	0	519327	0	0	24
131937	16.5560000000000009	0	519359	0	0	24
131938	16.5569999999999986	0	519391	0	0	24
131939	16.5579999999999998	0	519423	0	0	24
131940	16.5590000000000011	0	519455	0	0	24
131941	16.5599999999999987	0	519485	0	0	24
131942	16.5609999999999999	0	519517	0	0	24
131943	16.5620000000000012	0	519549	0	0	24
131944	16.5629999999999988	0	519581	0	0	24
131945	16.5640000000000001	0	519613	0	0	24
131946	16.5650000000000013	0	519645	0	0	24
131947	16.5659999999999989	0	519677	0	0	24
131948	16.5670000000000002	0	519709	0	0	24
131949	16.5680000000000014	0	519741	0	0	24
131950	16.5689999999999991	0	519773	0	0	24
131951	16.5700000000000003	0	519803	0	0	24
131952	16.5710000000000015	0	519835	0	0	24
131953	16.5719999999999992	0	519867	0	0	24
131954	16.5730000000000004	0	519899	0	0	24
131955	16.5740000000000016	0	519931	0	0	24
131956	16.5749999999999993	0	519963	0	0	24
131957	16.5760000000000005	0	519995	0	0	24
131958	16.5770000000000017	0	520027	0	0	24
131959	16.5779999999999994	0	520059	0	0	24
131960	16.5790000000000006	0	520091	0	0	24
131961	16.5799999999999983	0	520121	0	0	24
131962	16.5809999999999995	0	520153	0	0	24
131963	16.5820000000000007	0	520185	0	0	24
131964	16.5829999999999984	0	520217	0	0	24
131965	16.5839999999999996	0	520249	0	0	24
131966	16.5850000000000009	0	520281	0	0	24
131967	16.5859999999999985	0	520313	0	0	24
131968	16.5869999999999997	0	520345	0	0	24
131969	16.588000000000001	0	520377	0	0	24
131970	16.5889999999999986	0	520409	0	0	24
131971	16.5899999999999999	0	520439	0	0	24
131972	16.5910000000000011	0	520471	0	0	24
131973	16.5919999999999987	0	520503	0	0	24
131974	16.593	0	520535	0	0	24
131975	16.5940000000000012	0	520567	0	0	24
131976	16.5949999999999989	0	520599	0	0	24
131977	16.5960000000000001	0	520631	0	0	24
131978	16.5970000000000013	0	520663	0	0	24
131979	16.597999999999999	0	520695	0	0	24
131980	16.5990000000000002	0	520727	0	0	24
131981	16.6000000000000014	0	520757	0	0	24
131982	16.6009999999999991	0	520789	0	0	24
131983	16.6020000000000003	0	520821	0	0	24
131984	16.6030000000000015	0	520853	0	0	24
131985	16.6039999999999992	0	520885	0	0	24
131986	16.6050000000000004	0	520917	0	0	24
131987	16.6060000000000016	0	520949	0	0	24
131988	16.6069999999999993	0	520981	0	0	24
131989	16.6080000000000005	0	521013	0	0	24
131990	16.6090000000000018	0	521045	0	0	24
131991	16.6099999999999994	0	521075	0	0	24
131992	16.6110000000000007	0	521107	0	0	24
131993	16.6119999999999983	0	521139	0	0	24
131994	16.6129999999999995	0	521171	0	0	24
131995	16.6140000000000008	0	521203	0	0	24
131996	16.6149999999999984	0	521235	0	0	24
131997	16.6159999999999997	0	521267	0	0	24
131998	16.6170000000000009	0	521299	0	0	24
131999	16.6179999999999986	0	521331	0	0	24
132000	16.6189999999999998	0	521363	0	0	24
132001	16.620000000000001	0	521393	0	0	24
132002	16.6209999999999987	0	521425	0	0	24
132003	16.6219999999999999	0	521457	0	0	24
132004	16.6230000000000011	0	521489	0	0	24
132005	16.6239999999999988	0	521521	0	0	24
132006	16.625	0	521553	0	0	24
132007	16.6260000000000012	0	521585	0	0	24
132008	16.6269999999999989	0	521617	0	0	24
132009	16.6280000000000001	0	521649	0	0	24
132010	16.6290000000000013	0	521681	0	0	24
132011	16.629999999999999	0	521711	0	0	24
132012	16.6310000000000002	0	521743	0	0	24
132013	16.6320000000000014	0	521775	0	0	24
132014	16.6329999999999991	0	521807	0	0	24
132015	16.6340000000000003	0	521839	0	0	24
132016	16.6350000000000016	0	521871	0	0	24
132017	16.6359999999999992	0	521903	0	0	24
132018	16.6370000000000005	0	521935	0	0	24
132019	16.6380000000000017	0	521967	0	0	24
132020	16.6389999999999993	0	521999	0	0	24
132021	16.6400000000000006	0	522029	0	0	24
132022	16.6409999999999982	0	522061	0	0	24
132023	16.6419999999999995	0	522093	0	0	24
132024	16.6430000000000007	0	522125	0	0	24
132025	16.6439999999999984	0	522157	0	0	24
132026	16.6449999999999996	0	522189	0	0	24
132027	16.6460000000000008	0	522221	0	0	24
132028	16.6469999999999985	0	522253	0	0	24
132029	16.6479999999999997	0	522285	0	0	24
132030	16.6490000000000009	0	522317	0	0	24
132031	16.6499999999999986	0	522347	0	0	24
132032	16.6509999999999998	0	522379	0	0	24
132033	16.652000000000001	0	522411	0	0	24
132034	16.6529999999999987	0	522443	0	0	24
132035	16.6539999999999999	0	522475	0	0	24
132036	16.6550000000000011	0	522507	0	0	24
132037	16.6559999999999988	0	522539	0	0	24
132038	16.657	0	522571	0	0	24
132039	16.6580000000000013	0	522603	0	0	24
132040	16.6589999999999989	0	522635	0	0	24
132041	16.6600000000000001	0	522665	0	0	24
132042	16.6610000000000014	0	522697	0	0	24
132043	16.661999999999999	0	522729	0	0	24
132044	16.6630000000000003	0	522761	0	0	24
132045	16.6640000000000015	0	522793	0	0	24
132046	16.6649999999999991	0	522825	0	0	24
132047	16.6660000000000004	0	522857	0	0	24
132048	16.6670000000000016	0	522889	0	0	24
132049	16.6679999999999993	0	522921	0	0	24
132050	16.6690000000000005	0	522953	0	0	24
132051	16.6700000000000017	0	522983	0	0	24
132052	16.6709999999999994	0	523015	0	0	24
132053	16.6720000000000006	0	523047	0	0	24
132054	16.6729999999999983	0	523079	0	0	24
132055	16.6739999999999995	0	523111	0	0	24
132056	16.6750000000000007	0	523143	0	0	24
132057	16.6759999999999984	0	523175	0	0	24
132058	16.6769999999999996	0	523207	0	0	24
132059	16.6780000000000008	0	523239	0	0	24
132060	16.6789999999999985	0	523271	0	0	24
132061	16.6799999999999997	0	523301	0	0	24
132062	16.6810000000000009	0	523333	0	0	24
132063	16.6819999999999986	0	523365	0	0	24
132064	16.6829999999999998	0	523397	0	0	24
132065	16.6840000000000011	0	523429	0	0	24
132066	16.6849999999999987	0	523461	0	0	24
132067	16.6859999999999999	0	523493	0	0	24
132068	16.6870000000000012	0	523525	0	0	24
132069	16.6879999999999988	0	523557	0	0	24
132070	16.6890000000000001	0	523589	0	0	24
132071	16.6900000000000013	0	523619	0	0	24
132072	16.6909999999999989	0	523651	0	0	24
132073	16.6920000000000002	0	523683	0	0	24
132074	16.6930000000000014	0	523715	0	0	24
132075	16.6939999999999991	0	523747	0	0	24
132076	16.6950000000000003	0	523779	0	0	24
132077	16.6960000000000015	0	523811	0	0	24
132078	16.6969999999999992	0	523843	0	0	24
132079	16.6980000000000004	0	523875	0	0	24
132080	16.6990000000000016	0	523907	0	0	24
132081	16.6999999999999993	0	523937	0	0	24
132082	16.7010000000000005	0	523969	0	0	24
132083	16.7020000000000017	0	524001	0	0	24
132084	16.7029999999999994	0	524033	0	0	24
132085	16.7040000000000006	0	524065	0	0	24
132086	16.7049999999999983	0	524097	0	0	24
132087	16.7059999999999995	0	524129	0	0	24
132088	16.7070000000000007	0	524161	0	0	24
132089	16.7079999999999984	0	524193	0	0	24
132090	16.7089999999999996	0	524225	0	0	24
132091	16.7100000000000009	0	524255	0	0	24
132092	16.7109999999999985	0	524287	0	0	24
132093	16.7119999999999997	0	524319	0	0	24
132094	16.713000000000001	0	524351	0	0	24
132095	16.7139999999999986	0	524383	0	0	24
132096	16.7149999999999999	0	524415	0	0	24
132097	16.7160000000000011	0	524447	0	0	24
132098	16.7169999999999987	0	524479	0	0	24
132099	16.718	0	524511	0	0	24
132100	16.7190000000000012	0	524543	0	0	24
132101	16.7199999999999989	0	524573	0	0	24
132102	16.7210000000000001	0	524605	0	0	24
132103	16.7220000000000013	0	524637	0	0	24
132104	16.722999999999999	0	524669	0	0	24
132105	16.7240000000000002	0	524701	0	0	24
132106	16.7250000000000014	0	524733	0	0	24
132107	16.7259999999999991	0	524765	0	0	24
132108	16.7270000000000003	0	524797	0	0	24
132109	16.7280000000000015	0	524829	0	0	24
132110	16.7289999999999992	0	524861	0	0	24
132111	16.7300000000000004	0	524891	0	0	24
132112	16.7310000000000016	0	524923	0	0	24
132113	16.7319999999999993	0	524955	0	0	24
132114	16.7330000000000005	0	524987	0	0	24
132115	16.7340000000000018	0	525019	0	0	24
132116	16.7349999999999994	0	525051	0	0	24
132117	16.7360000000000007	0	525083	0	0	24
132118	16.7369999999999983	0	525115	0	0	24
132119	16.7379999999999995	0	525147	0	0	24
132120	16.7390000000000008	0	525179	0	0	24
132121	16.7399999999999984	0	525209	0	0	24
132122	16.7409999999999997	0	525241	0	0	24
132123	16.7420000000000009	0	525273	0	0	24
132124	16.7429999999999986	0	525305	0	0	24
132125	16.7439999999999998	0	525337	0	0	24
132126	16.745000000000001	0	525369	0	0	24
132127	16.7459999999999987	0	525401	0	0	24
132128	16.7469999999999999	0	525433	0	0	24
132129	16.7480000000000011	0	525465	0	0	24
132130	16.7489999999999988	0	525497	0	0	24
132131	16.75	0	525527	0	0	24
132132	16.7510000000000012	0	525559	0	0	24
132133	16.7519999999999989	0	525591	0	0	24
132134	16.7530000000000001	0	525623	0	0	24
132135	16.7540000000000013	0	525655	0	0	24
132136	16.754999999999999	0	525687	0	0	24
132137	16.7560000000000002	0	525719	0	0	24
132138	16.7570000000000014	0	525751	0	0	24
132139	16.7579999999999991	0	525783	0	0	24
132140	16.7590000000000003	0	525815	0	0	24
132141	16.7600000000000016	0	525845	0	0	24
132142	16.7609999999999992	0	525877	0	0	24
132143	16.7620000000000005	0	525909	0	0	24
132144	16.7630000000000017	0	525941	0	0	24
132145	16.7639999999999993	0	525973	0	0	24
132146	16.7650000000000006	0	526005	0	0	24
132147	16.7659999999999982	0	526037	0	0	24
132148	16.7669999999999995	0	526069	0	0	24
132149	16.7680000000000007	0	526101	0	0	24
132150	16.7689999999999984	0	526133	0	0	24
132151	16.7699999999999996	0	526163	0	0	24
132152	16.7710000000000008	0	526195	0	0	24
132153	16.7719999999999985	0	526227	0	0	24
132154	16.7729999999999997	0	526259	0	0	24
132155	16.7740000000000009	0	526291	0	0	24
132156	16.7749999999999986	0	526323	0	0	24
132157	16.7759999999999998	0	526355	0	0	24
132158	16.777000000000001	0	526387	0	0	24
132159	16.7779999999999987	0	526419	0	0	24
132160	16.7789999999999999	0	526451	0	0	24
132161	16.7800000000000011	0	526481	0	0	24
132162	16.7809999999999988	0	526513	0	0	24
132163	16.782	0	526545	0	0	24
132164	16.7830000000000013	0	526577	0	0	24
132165	16.7839999999999989	0	526609	0	0	24
132166	16.7850000000000001	0	526641	0	0	24
132167	16.7860000000000014	0	526673	0	0	24
132168	16.786999999999999	0	526705	0	0	24
132169	16.7880000000000003	0	526737	0	0	24
132170	16.7890000000000015	0	526769	0	0	24
132171	16.7899999999999991	0	526799	0	0	24
132172	16.7910000000000004	0	526831	0	0	24
132173	16.7920000000000016	0	526863	0	0	24
132174	16.7929999999999993	0	526895	0	0	24
132175	16.7940000000000005	0	526927	0	0	24
132176	16.7950000000000017	0	526959	0	0	24
132177	16.7959999999999994	0	526991	0	0	24
132178	16.7970000000000006	0	527023	0	0	24
132179	16.7979999999999983	0	527055	0	0	24
132180	16.7989999999999995	0	527087	0	0	24
132181	16.8000000000000007	0	527117	0	0	24
132182	16.8009999999999984	0	527149	0	0	24
132183	16.8019999999999996	0	527181	0	0	24
132184	16.8030000000000008	0	527213	0	0	24
132185	16.8039999999999985	0	527245	0	0	24
132186	16.8049999999999997	0	527277	0	0	24
132187	16.8060000000000009	0	527309	0	0	24
132188	16.8069999999999986	0	527341	0	0	24
132189	16.8079999999999998	0	527373	0	0	24
132190	16.8090000000000011	0	527405	0	0	24
132191	16.8099999999999987	0	527435	0	0	24
132192	16.8109999999999999	0	527467	0	0	24
132193	16.8120000000000012	0	527499	0	0	24
132194	16.8129999999999988	0	527531	0	0	24
132195	16.8140000000000001	0	527563	0	0	24
132196	16.8150000000000013	0	527595	0	0	24
132197	16.8159999999999989	0	527627	0	0	24
132198	16.8170000000000002	0	527659	0	0	24
132199	16.8180000000000014	0	527691	0	0	24
132200	16.8189999999999991	0	527723	0	0	24
132201	16.8200000000000003	0	527753	0	0	24
132202	16.8210000000000015	0	527785	0	0	24
132203	16.8219999999999992	0	527817	0	0	24
132204	16.8230000000000004	0	527849	0	0	24
132205	16.8240000000000016	0	527881	0	0	24
132206	16.8249999999999993	0	527913	0	0	24
132207	16.8260000000000005	0	527945	0	0	24
132208	16.8270000000000017	0	527977	0	0	24
132209	16.8279999999999994	0	528009	0	0	24
132210	16.8290000000000006	0	528041	0	0	24
132211	16.8299999999999983	0	528071	0	0	24
132212	16.8309999999999995	0	528103	0	0	24
132213	16.8320000000000007	0	528135	0	0	24
132214	16.8329999999999984	0	528167	0	0	24
132215	16.8339999999999996	0	528199	0	0	24
132216	16.8350000000000009	0	528231	0	0	24
132217	16.8359999999999985	0	528263	0	0	24
132218	16.8369999999999997	0	528295	0	0	24
132219	16.838000000000001	0	528327	0	0	24
132220	16.8389999999999986	0	528359	0	0	24
132221	16.8399999999999999	0	528389	0	0	24
132222	16.8410000000000011	0	528421	0	0	24
132223	16.8419999999999987	0	528453	0	0	24
132224	16.843	0	528485	0	0	24
132225	16.8440000000000012	0	528517	0	0	24
132226	16.8449999999999989	0	528549	0	0	24
132227	16.8460000000000001	0	528581	0	0	24
132228	16.8470000000000013	0	528613	0	0	24
132229	16.847999999999999	0	528645	0	0	24
132230	16.8490000000000002	0	528677	0	0	24
132231	16.8500000000000014	0	528707	0	0	24
132232	16.8509999999999991	0	528739	0	0	24
132233	16.8520000000000003	0	528771	0	0	24
132234	16.8530000000000015	0	528803	0	0	24
132235	16.8539999999999992	0	528835	0	0	24
132236	16.8550000000000004	0	528867	0	0	24
132237	16.8560000000000016	0	528899	0	0	24
132238	16.8569999999999993	0	528931	0	0	24
132239	16.8580000000000005	0	528963	0	0	24
132240	16.8590000000000018	0	528995	0	0	24
132241	16.8599999999999994	0	529025	0	0	24
132242	16.8610000000000007	0	529057	0	0	24
132243	16.8619999999999983	0	529089	0	0	24
132244	16.8629999999999995	0	529121	0	0	24
132245	16.8640000000000008	0	529153	0	0	24
132246	16.8649999999999984	0	529185	0	0	24
132247	16.8659999999999997	0	529217	0	0	24
132248	16.8670000000000009	0	529249	0	0	24
132249	16.8679999999999986	0	529281	0	0	24
132250	16.8689999999999998	0	529313	0	0	24
132251	16.870000000000001	0	529343	0	0	24
132252	16.8709999999999987	0	529375	0	0	24
132253	16.8719999999999999	0	529407	0	0	24
132254	16.8730000000000011	0	529439	0	0	24
132255	16.8739999999999988	0	529471	0	0	24
132256	16.875	0	529503	0	0	24
132257	16.8760000000000012	0	529535	0	0	24
132258	16.8769999999999989	0	529567	0	0	24
132259	16.8780000000000001	0	529599	0	0	24
132260	16.8790000000000013	0	529631	0	0	24
132261	16.879999999999999	0	529661	0	0	24
132262	16.8810000000000002	0	529693	0	0	24
132263	16.8820000000000014	0	529725	0	0	24
132264	16.8829999999999991	0	529757	0	0	24
132265	16.8840000000000003	0	529789	0	0	24
132266	16.8850000000000016	0	529821	0	0	24
132267	16.8859999999999992	0	529853	0	0	24
132268	16.8870000000000005	0	529885	0	0	24
132269	16.8880000000000017	0	529917	0	0	24
132270	16.8889999999999993	0	529949	0	0	24
132271	16.8900000000000006	0	529979	0	0	24
132272	16.8909999999999982	0	530011	0	0	24
132273	16.8919999999999995	0	530043	0	0	24
132274	16.8930000000000007	0	530075	0	0	24
132275	16.8939999999999984	0	530107	0	0	24
132276	16.8949999999999996	0	530139	0	0	24
132277	16.8960000000000008	0	530171	0	0	24
132278	16.8969999999999985	0	530203	0	0	24
132279	16.8979999999999997	0	530235	0	0	24
132280	16.8990000000000009	0	530267	0	0	24
132281	16.8999999999999986	0	530297	0	0	24
132282	16.9009999999999998	0	530329	0	0	24
132283	16.902000000000001	0	530361	0	0	24
132284	16.9029999999999987	0	530393	0	0	24
132285	16.9039999999999999	0	530425	0	0	24
132286	16.9050000000000011	0	530457	0	0	24
132287	16.9059999999999988	0	530489	0	0	24
132288	16.907	0	530521	0	0	24
132289	16.9080000000000013	0	530553	0	0	24
132290	16.9089999999999989	0	530585	0	0	24
132291	16.9100000000000001	0	530615	0	0	24
132292	16.9110000000000014	0	530647	0	0	24
132293	16.911999999999999	0	530679	0	0	24
132294	16.9130000000000003	0	530711	0	0	24
132295	16.9140000000000015	0	530743	0	0	24
132296	16.9149999999999991	0	530775	0	0	24
132297	16.9160000000000004	0	530807	0	0	24
132298	16.9170000000000016	0	530839	0	0	24
132299	16.9179999999999993	0	530871	0	0	24
132300	16.9190000000000005	0	530903	0	0	24
132301	16.9200000000000017	0	530933	0	0	24
132302	16.9209999999999994	0	530965	0	0	24
132303	16.9220000000000006	0	530997	0	0	24
132304	16.9229999999999983	0	531029	0	0	24
132305	16.9239999999999995	0	531061	0	0	24
132306	16.9250000000000007	0	531093	0	0	24
132307	16.9259999999999984	0	531125	0	0	24
132308	16.9269999999999996	0	531157	0	0	24
132309	16.9280000000000008	0	531189	0	0	24
132310	16.9289999999999985	0	531221	0	0	24
132311	16.9299999999999997	0	531251	0	0	24
132312	16.9310000000000009	0	531283	0	0	24
132313	16.9319999999999986	0	531315	0	0	24
132314	16.9329999999999998	0	531347	0	0	24
132315	16.9340000000000011	0	531379	0	0	24
132316	16.9349999999999987	0	531411	0	0	24
132317	16.9359999999999999	0	531443	0	0	24
132318	16.9370000000000012	0	531475	0	0	24
132319	16.9379999999999988	0	531507	0	0	24
132320	16.9390000000000001	0	531539	0	0	24
132321	16.9400000000000013	0	531569	0	0	24
132322	16.9409999999999989	0	531601	0	0	24
132323	16.9420000000000002	0	531633	0	0	24
132324	16.9430000000000014	0	531665	0	0	24
132325	16.9439999999999991	0	531697	0	0	24
132326	16.9450000000000003	0	531729	0	0	24
132327	16.9460000000000015	0	531761	0	0	24
132328	16.9469999999999992	0	531793	0	0	24
132329	16.9480000000000004	0	531825	0	0	24
132330	16.9490000000000016	0	531857	0	0	24
132331	16.9499999999999993	0	531887	0	0	24
132332	16.9510000000000005	0	531919	0	0	24
132333	16.9520000000000017	0	531951	0	0	24
132334	16.9529999999999994	0	531983	0	0	24
132335	16.9540000000000006	0	532015	0	0	24
132336	16.9549999999999983	0	532047	0	0	24
132337	16.9559999999999995	0	532079	0	0	24
132338	16.9570000000000007	0	532111	0	0	24
132339	16.9579999999999984	0	532143	0	0	24
132340	16.9589999999999996	0	532175	0	0	24
132341	16.9600000000000009	0	532205	0	0	24
132342	16.9609999999999985	0	532237	0	0	24
132343	16.9619999999999997	0	532269	0	0	24
132344	16.963000000000001	0	532301	0	0	24
132345	16.9639999999999986	0	532333	0	0	24
132346	16.9649999999999999	0	532365	0	0	24
132347	16.9660000000000011	0	532397	0	0	24
132348	16.9669999999999987	0	532429	0	0	24
132349	16.968	0	532461	0	0	24
132350	16.9690000000000012	0	532493	0	0	24
132351	16.9699999999999989	0	532523	0	0	24
132352	16.9710000000000001	0	532555	0	0	24
132353	16.9720000000000013	0	532587	0	0	24
132354	16.972999999999999	0	532619	0	0	24
132355	16.9740000000000002	0	532651	0	0	24
132356	16.9750000000000014	0	532683	0	0	24
132357	16.9759999999999991	0	532715	0	0	24
132358	16.9770000000000003	0	532747	0	0	24
132359	16.9780000000000015	0	532779	0	0	24
132360	16.9789999999999992	0	532811	0	0	24
132361	16.9800000000000004	0	532841	0	0	24
132362	16.9810000000000016	0	532873	0	0	24
132363	16.9819999999999993	0	532905	0	0	24
132364	16.9830000000000005	0	532937	0	0	24
132365	16.9840000000000018	0	532969	0	0	24
132366	16.9849999999999994	0	533001	0	0	24
132367	16.9860000000000007	0	533033	0	0	24
132368	16.9869999999999983	0	533065	0	0	24
132369	16.9879999999999995	0	533097	0	0	24
132370	16.9890000000000008	0	533129	0	0	24
132371	16.9899999999999984	0	533159	0	0	24
132372	16.9909999999999997	0	533191	0	0	24
132373	16.9920000000000009	0	533223	0	0	24
132374	16.9929999999999986	0	533255	0	0	24
132375	16.9939999999999998	0	533287	0	0	24
132376	16.995000000000001	0	533319	0	0	24
132377	16.9959999999999987	0	533351	0	0	24
132378	16.9969999999999999	0	533383	0	0	24
132379	16.9980000000000011	0	533415	0	0	24
132380	16.9989999999999988	0	533447	0	0	24
132381	17	0	533477	0	0	24
132382	17.0010000000000012	0	533509	0	0	24
132383	17.0019999999999989	0	533541	0	0	24
132384	17.0030000000000001	0	533573	0	0	24
132385	17.0040000000000013	0	533605	0	0	24
132386	17.004999999999999	0	533637	0	0	24
132387	17.0060000000000002	0	533669	0	0	24
132388	17.0070000000000014	0	533701	0	0	24
132389	17.0079999999999991	0	533733	0	0	24
132390	17.0090000000000003	0	533765	0	0	24
132391	17.0100000000000016	0	533795	0	0	24
132392	17.0109999999999992	0	533827	0	0	24
132393	17.0120000000000005	0	533859	0	0	24
132394	17.0130000000000017	0	533891	0	0	24
132395	17.0139999999999993	0	533923	0	0	24
132396	17.0150000000000006	0	533955	0	0	24
132397	17.0159999999999982	0	533987	0	0	24
132398	17.0169999999999995	0	534019	0	0	24
132399	17.0180000000000007	0	534051	0	0	24
132400	17.0189999999999984	0	534083	0	0	24
132401	17.0199999999999996	0	534113	0	0	24
132402	17.0210000000000008	0	534145	0	0	24
132403	17.0219999999999985	0	534177	0	0	24
132404	17.0229999999999997	0	534209	0	0	24
132405	17.0240000000000009	0	534241	0	0	24
132406	17.0249999999999986	0	534273	0	0	24
132407	17.0259999999999998	0	534305	0	0	24
132408	17.027000000000001	0	534337	0	0	24
132409	17.0279999999999987	0	534369	0	0	24
132410	17.0289999999999999	0	534401	0	0	24
132411	17.0300000000000011	0	534431	0	0	24
132412	17.0309999999999988	0	534463	0	0	24
132413	17.032	0	534495	0	0	24
132414	17.0330000000000013	0	534527	0	0	24
132415	17.0339999999999989	0	534559	0	0	24
132416	17.0350000000000001	0	534591	0	0	24
132417	17.0360000000000014	0	534623	0	0	24
132418	17.036999999999999	0	534655	0	0	24
132419	17.0380000000000003	0	534687	0	0	24
132420	17.0390000000000015	0	534719	0	0	24
132421	17.0399999999999991	0	534749	0	0	24
132422	17.0410000000000004	0	534781	0	0	24
132423	17.0420000000000016	0	534813	0	0	24
132424	17.0429999999999993	0	534845	0	0	24
132425	17.0440000000000005	0	534877	0	0	24
132426	17.0450000000000017	0	534909	0	0	24
132427	17.0459999999999994	0	534941	0	0	24
132428	17.0470000000000006	0	534973	0	0	24
132429	17.0479999999999983	0	535005	0	0	24
132430	17.0489999999999995	0	535037	0	0	24
132431	17.0500000000000007	0	535067	0	0	24
132432	17.0509999999999984	0	535099	0	0	24
132433	17.0519999999999996	0	535131	0	0	24
132434	17.0530000000000008	0	535163	0	0	24
132435	17.0539999999999985	0	535195	0	0	24
132436	17.0549999999999997	0	535227	0	0	24
132437	17.0560000000000009	0	535259	0	0	24
132438	17.0569999999999986	0	535291	0	0	24
132439	17.0579999999999998	0	535323	0	0	24
132440	17.0590000000000011	0	535355	0	0	24
132441	17.0599999999999987	0	535385	0	0	24
132442	17.0609999999999999	0	535417	0	0	24
132443	17.0620000000000012	0	535449	0	0	24
132444	17.0629999999999988	0	535481	0	0	24
132445	17.0640000000000001	0	535513	0	0	24
132446	17.0650000000000013	0	535545	0	0	24
132447	17.0659999999999989	0	535577	0	0	24
132448	17.0670000000000002	0	535609	0	0	24
132449	17.0680000000000014	0	535641	0	0	24
132450	17.0689999999999991	0	535673	0	0	24
132451	17.0700000000000003	0	535703	0	0	24
132452	17.0710000000000015	0	535735	0	0	24
132453	17.0719999999999992	0	535767	0	0	24
132454	17.0730000000000004	0	535799	0	0	24
132455	17.0740000000000016	0	535831	0	0	24
132456	17.0749999999999993	0	535863	0	0	24
132457	17.0760000000000005	0	535895	0	0	24
132458	17.0770000000000017	0	535927	0	0	24
132459	17.0779999999999994	0	535959	0	0	24
132460	17.0790000000000006	0	535991	0	0	24
132461	17.0799999999999983	0	536021	0	0	24
132462	17.0809999999999995	0	536053	0	0	24
132463	17.0820000000000007	0	536085	0	0	24
132464	17.0829999999999984	0	536117	0	0	24
132465	17.0839999999999996	0	536149	0	0	24
132466	17.0850000000000009	0	536181	0	0	24
132467	17.0859999999999985	0	536213	0	0	24
132468	17.0869999999999997	0	536245	0	0	24
132469	17.088000000000001	0	536277	0	0	24
132470	17.0889999999999986	0	536309	0	0	24
132471	17.0899999999999999	0	536339	0	0	24
132472	17.0910000000000011	0	536371	0	0	24
132473	17.0919999999999987	0	536403	0	0	24
132474	17.093	0	536435	0	0	24
132475	17.0940000000000012	0	536467	0	0	24
132476	17.0949999999999989	0	536499	0	0	24
132477	17.0960000000000001	0	536531	0	0	24
132478	17.0970000000000013	0	536563	0	0	24
132479	17.097999999999999	0	536595	0	0	24
132480	17.0990000000000002	0	536627	0	0	24
132481	17.1000000000000014	0	536657	0	0	24
132482	17.1009999999999991	0	536689	0	0	24
132483	17.1020000000000003	0	536721	0	0	24
132484	17.1030000000000015	0	536753	0	0	24
132485	17.1039999999999992	0	536785	0	0	24
132486	17.1050000000000004	0	536817	0	0	24
132487	17.1060000000000016	0	536849	0	0	24
132488	17.1069999999999993	0	536881	0	0	24
132489	17.1080000000000005	0	536913	0	0	24
132490	17.1090000000000018	0	536945	0	0	24
132491	17.1099999999999994	0	536975	0	0	24
132492	17.1110000000000007	0	537007	0	0	24
132493	17.1119999999999983	0	537039	0	0	24
132494	17.1129999999999995	0	537071	0	0	24
132495	17.1140000000000008	0	537103	0	0	24
132496	17.1149999999999984	0	537135	0	0	24
132497	17.1159999999999997	0	537167	0	0	24
132498	17.1170000000000009	0	537199	0	0	24
132499	17.1179999999999986	0	537231	0	0	24
132500	17.1189999999999998	0	537263	0	0	24
132501	17.120000000000001	0	537293	0	0	24
132502	17.1209999999999987	0	537325	0	0	24
132503	17.1219999999999999	0	537357	0	0	24
132504	17.1230000000000011	0	537389	0	0	24
132505	17.1239999999999988	0	537421	0	0	24
132506	17.125	0	537453	0	0	24
132507	17.1260000000000012	0	537485	0	0	24
132508	17.1269999999999989	0	537517	0	0	24
132509	17.1280000000000001	0	537549	0	0	24
132510	17.1290000000000013	0	537581	0	0	24
132511	17.129999999999999	0	537611	0	0	24
132512	17.1310000000000002	0	537643	0	0	24
132513	17.1320000000000014	0	537675	0	0	24
132514	17.1329999999999991	0	537707	0	0	24
132515	17.1340000000000003	0	537739	0	0	24
132516	17.1350000000000016	0	537771	0	0	24
132517	17.1359999999999992	0	537803	0	0	24
132518	17.1370000000000005	0	537835	0	0	24
132519	17.1380000000000017	0	537867	0	0	24
132520	17.1389999999999993	0	537899	0	0	24
132521	17.1400000000000006	0	537929	0	0	24
132522	17.1409999999999982	0	537961	0	0	24
132523	17.1419999999999995	0	537993	0	0	24
132524	17.1430000000000007	0	538025	0	0	24
132525	17.1439999999999984	0	538057	0	0	24
132526	17.1449999999999996	0	538089	0	0	24
132527	17.1460000000000008	0	538121	0	0	24
132528	17.1469999999999985	0	538153	0	0	24
132529	17.1479999999999997	0	538185	0	0	24
132530	17.1490000000000009	0	538217	0	0	24
132531	17.1499999999999986	0	538247	0	0	24
132532	17.1509999999999998	0	538279	0	0	24
132533	17.152000000000001	0	538311	0	0	24
132534	17.1529999999999987	0	538343	0	0	24
132535	17.1539999999999999	0	538375	0	0	24
132536	17.1550000000000011	0	538407	0	0	24
132537	17.1559999999999988	0	538439	0	0	24
132538	17.157	0	538471	0	0	24
132539	17.1580000000000013	0	538503	0	0	24
132540	17.1589999999999989	0	538535	0	0	24
132541	17.1600000000000001	0	538565	0	0	24
132542	17.1610000000000014	0	538597	0	0	24
132543	17.161999999999999	0	538629	0	0	24
132544	17.1630000000000003	0	538661	0	0	24
132545	17.1640000000000015	0	538693	0	0	24
132546	17.1649999999999991	0	538725	0	0	24
132547	17.1660000000000004	0	538757	0	0	24
132548	17.1670000000000016	0	538789	0	0	24
132549	17.1679999999999993	0	538821	0	0	24
132550	17.1690000000000005	0	538853	0	0	24
132551	17.1700000000000017	0	538883	0	0	24
132552	17.1709999999999994	0	538915	0	0	24
132553	17.1720000000000006	0	538947	0	0	24
132554	17.1729999999999983	0	538979	0	0	24
132555	17.1739999999999995	0	539011	0	0	24
132556	17.1750000000000007	0	539043	0	0	24
132557	17.1759999999999984	0	539075	0	0	24
132558	17.1769999999999996	0	539107	0	0	24
132559	17.1780000000000008	0	539139	0	0	24
132560	17.1789999999999985	0	539171	0	0	24
132561	17.1799999999999997	0	539201	0	0	24
132562	17.1810000000000009	0	539233	0	0	24
132563	17.1819999999999986	0	539265	0	0	24
132564	17.1829999999999998	0	539297	0	0	24
132565	17.1840000000000011	0	539329	0	0	24
132566	17.1849999999999987	0	539361	0	0	24
132567	17.1859999999999999	0	539393	0	0	24
132568	17.1870000000000012	0	539425	0	0	24
132569	17.1879999999999988	0	539457	0	0	24
132570	17.1890000000000001	0	539489	0	0	24
132571	17.1900000000000013	0	539519	0	0	24
132572	17.1909999999999989	0	539551	0	0	24
132573	17.1920000000000002	0	539583	0	0	24
132574	17.1930000000000014	0	539615	0	0	24
132575	17.1939999999999991	0	539647	0	0	24
132576	17.1950000000000003	0	539679	0	0	24
132577	17.1960000000000015	0	539711	0	0	24
132578	17.1969999999999992	0	539743	0	0	24
132579	17.1980000000000004	0	539775	0	0	24
132580	17.1990000000000016	0	539807	0	0	24
132581	17.1999999999999993	0	539837	0	0	24
132582	17.2010000000000005	0	539869	0	0	24
132583	17.2020000000000017	0	539901	0	0	24
132584	17.2029999999999994	0	539933	0	0	24
132585	17.2040000000000006	0	539965	0	0	24
132586	17.2049999999999983	0	539997	0	0	24
132587	17.2059999999999995	0	540029	0	0	24
132588	17.2070000000000007	0	540061	0	0	24
132589	17.2079999999999984	0	540093	0	0	24
132590	17.2089999999999996	0	540125	0	0	24
132591	17.2100000000000009	0	540155	0	0	24
132592	17.2109999999999985	0	540187	0	0	24
132593	17.2119999999999997	0	540219	0	0	24
132594	17.213000000000001	0	540251	0	0	24
132595	17.2139999999999986	0	540283	0	0	24
132596	17.2149999999999999	0	540315	0	0	24
132597	17.2160000000000011	0	540347	0	0	24
132598	17.2169999999999987	0	540379	0	0	24
132599	17.218	0	540411	0	0	24
132600	17.2190000000000012	0	540443	0	0	24
132601	17.2199999999999989	0	540473	0	0	24
132602	17.2210000000000001	0	540505	0	0	24
132603	17.2220000000000013	0	540537	0	0	24
132604	17.222999999999999	0	540569	0	0	24
132605	17.2240000000000002	0	540601	0	0	24
132606	17.2250000000000014	0	540633	0	0	24
132607	17.2259999999999991	0	540665	0	0	24
132608	17.2270000000000003	0	540697	0	0	24
132609	17.2280000000000015	0	540729	0	0	24
132610	17.2289999999999992	0	540761	0	0	24
132611	17.2300000000000004	0	540791	0	0	24
132612	17.2310000000000016	0	540823	0	0	24
132613	17.2319999999999993	0	540855	0	0	24
132614	17.2330000000000005	0	540887	0	0	24
132615	17.2340000000000018	0	540919	0	0	24
132616	17.2349999999999994	0	540951	0	0	24
132617	17.2360000000000007	0	540983	0	0	24
132618	17.2369999999999983	0	541015	0	0	24
132619	17.2379999999999995	0	541047	0	0	24
132620	17.2390000000000008	0	541079	0	0	24
132621	17.2399999999999984	0	541109	0	0	24
132622	17.2409999999999997	0	541141	0	0	24
132623	17.2420000000000009	0	541173	0	0	24
132624	17.2429999999999986	0	541205	0	0	24
132625	17.2439999999999998	0	541237	0	0	24
132626	17.245000000000001	0	541269	0	0	24
132627	17.2459999999999987	0	541301	0	0	24
132628	17.2469999999999999	0	541333	0	0	24
132629	17.2480000000000011	0	541365	0	0	24
132630	17.2489999999999988	0	541397	0	0	24
132631	17.25	0	541427	0	0	24
132632	17.2510000000000012	0	541459	0	0	24
132633	17.2519999999999989	0	541491	0	0	24
132634	17.2530000000000001	0	541523	0	0	24
132635	17.2540000000000013	0	541555	0	0	24
132636	17.254999999999999	0	541587	0	0	24
132637	17.2560000000000002	0	541619	0	0	24
132638	17.2570000000000014	0	541651	0	0	24
132639	17.2579999999999991	0	541683	0	0	24
132640	17.2590000000000003	0	541715	0	0	24
132641	17.2600000000000016	0	541745	0	0	24
132642	17.2609999999999992	0	541777	0	0	24
132643	17.2620000000000005	0	541809	0	0	24
132644	17.2630000000000017	0	541841	0	0	24
132645	17.2639999999999993	0	541873	0	0	24
132646	17.2650000000000006	0	541905	0	0	24
132647	17.2659999999999982	0	541937	0	0	24
132648	17.2669999999999995	0	541969	0	0	24
132649	17.2680000000000007	0	542001	0	0	24
132650	17.2689999999999984	0	542033	0	0	24
132651	17.2699999999999996	0	542063	0	0	24
132652	17.2710000000000008	0	542095	0	0	24
132653	17.2719999999999985	0	542127	0	0	24
132654	17.2729999999999997	0	542159	0	0	24
132655	17.2740000000000009	0	542191	0	0	24
132656	17.2749999999999986	0	542223	0	0	24
132657	17.2759999999999998	0	542255	0	0	24
132658	17.277000000000001	0	542287	0	0	24
132659	17.2779999999999987	0	542319	0	0	24
132660	17.2789999999999999	0	542351	0	0	24
132661	17.2800000000000011	0	542381	0	0	24
132662	17.2809999999999988	0	542413	0	0	24
132663	17.282	0	542445	0	0	24
132664	17.2830000000000013	0	542477	0	0	24
132665	17.2839999999999989	0	542509	0	0	24
132666	17.2850000000000001	0	542541	0	0	24
132667	17.2860000000000014	0	542573	0	0	24
132668	17.286999999999999	0	542605	0	0	24
132669	17.2880000000000003	0	542637	0	0	24
132670	17.2890000000000015	0	542669	0	0	24
132671	17.2899999999999991	0	542699	0	0	24
132672	17.2910000000000004	0	542731	0	0	24
132673	17.2920000000000016	0	542763	0	0	24
132674	17.2929999999999993	0	542795	0	0	24
132675	17.2940000000000005	0	542827	0	0	24
132676	17.2950000000000017	0	542859	0	0	24
132677	17.2959999999999994	0	542891	0	0	24
132678	17.2970000000000006	0	542923	0	0	24
132679	17.2979999999999983	0	542955	0	0	24
132680	17.2989999999999995	0	542987	0	0	24
132681	17.3000000000000007	0	543017	0	0	24
132682	17.3009999999999984	0	543049	0	0	24
132683	17.3019999999999996	0	543081	0	0	24
132684	17.3030000000000008	0	543113	0	0	24
132685	17.3039999999999985	0	543145	0	0	24
132686	17.3049999999999997	0	543177	0	0	24
132687	17.3060000000000009	0	543209	0	0	24
132688	17.3069999999999986	0	543241	0	0	24
132689	17.3079999999999998	0	543273	0	0	24
132690	17.3090000000000011	0	543305	0	0	24
132691	17.3099999999999987	0	543335	0	0	24
132692	17.3109999999999999	0	543367	0	0	24
132693	17.3120000000000012	0	543399	0	0	24
132694	17.3129999999999988	0	543431	0	0	24
132695	17.3140000000000001	0	543463	0	0	24
132696	17.3150000000000013	0	543495	0	0	24
132697	17.3159999999999989	0	543527	0	0	24
132698	17.3170000000000002	0	543559	0	0	24
132699	17.3180000000000014	0	543591	0	0	24
132700	17.3189999999999991	0	543623	0	0	24
132701	17.3200000000000003	0	543653	0	0	24
115381	0	0	10	0	0	24
115382	0.00100000000000000002	0	42	0	0	24
115383	0.00200000000000000004	0	74	0	0	24
115384	0.00300000000000000006	0	106	0	0	24
115385	0.00400000000000000008	0	138	0	0	24
115386	0.0050000000000000001	0	170	0	0	24
115387	0.00600000000000000012	0	202	0	0	24
115388	0.00700000000000000015	0	234	0	0	24
115389	0.00800000000000000017	0	266	0	0	24
115390	0.00899999999999999932	0	298	0	0	24
115391	0.0100000000000000002	0	328	0	0	24
115392	0.0109999999999999994	0	360	0	0	24
115393	0.0120000000000000002	0	392	0	0	24
115394	0.0129999999999999994	0	424	0	0	24
115395	0.0140000000000000003	0	456	0	0	24
115396	0.0149999999999999994	0	488	0	0	24
115397	0.0160000000000000003	0	520	0	0	24
115398	0.0170000000000000012	0	552	0	0	24
115399	0.0179999999999999986	0	584	0	0	24
115400	0.0189999999999999995	0	616	0	0	24
115401	0.0200000000000000004	0	646	0	0	24
115402	0.0210000000000000013	0	678	0	0	24
115403	0.0219999999999999987	0	710	0	0	24
115404	0.0229999999999999996	0	742	0	0	24
115405	0.0240000000000000005	0	774	0	0	24
115406	0.0250000000000000014	0	806	0	0	24
115407	0.0259999999999999988	0	838	0	0	24
115408	0.0269999999999999997	0	870	0	0	24
115409	0.0280000000000000006	0	902	0	0	24
115410	0.0290000000000000015	0	934	0	0	24
115411	0.0299999999999999989	0	964	0	0	24
115412	0.0309999999999999998	0	996	0	0	24
115413	0.0320000000000000007	0	1028	0	0	24
115414	0.0330000000000000016	0	1060	0	0	24
115415	0.0340000000000000024	0	1092	0	0	24
115416	0.0350000000000000033	0	1124	0	0	24
115417	0.0359999999999999973	0	1156	0	0	24
115418	0.0369999999999999982	0	1188	0	0	24
115419	0.0379999999999999991	0	1220	0	0	24
115420	0.0389999999999999999	0	1252	0	0	24
115421	0.0400000000000000008	0	1282	0	0	24
115422	0.0410000000000000017	0	1314	0	0	24
115423	0.0420000000000000026	0	1346	0	0	24
115424	0.0429999999999999966	0	1378	0	0	24
115425	0.0439999999999999974	0	1410	0	0	24
115426	0.0449999999999999983	0	1442	0	0	24
115427	0.0459999999999999992	0	1474	0	0	24
115428	0.0470000000000000001	0	1506	0	0	24
115429	0.048000000000000001	0	1538	0	0	24
115430	0.0490000000000000019	0	1570	0	0	24
115431	0.0500000000000000028	0	406	0	0	24
115432	0.0509999999999999967	0	438	0	0	24
115433	0.0519999999999999976	0	470	0	0	24
115434	0.0529999999999999985	0	502	0	0	24
115435	0.0539999999999999994	0	534	0	0	24
115436	0.0550000000000000003	0	566	0	0	24
115437	0.0560000000000000012	0	598	0	0	24
115438	0.0570000000000000021	0	630	0	0	24
115439	0.0580000000000000029	0	662	0	0	24
115440	0.0589999999999999969	0	694	0	0	24
115441	0.0599999999999999978	0	724	0	0	24
115442	0.0609999999999999987	0	756	0	0	24
115443	0.0619999999999999996	0	788	0	0	24
115444	0.0630000000000000004	0	820	0	0	24
115445	0.0640000000000000013	0	852	0	0	24
115446	0.0650000000000000022	0	884	0	0	24
115447	0.0660000000000000031	0	916	0	0	24
115448	0.067000000000000004	0	948	0	0	24
115449	0.0680000000000000049	0	980	0	0	24
115450	0.0690000000000000058	0	1012	0	0	24
115451	0.0700000000000000067	0	1042	0	0	24
115452	0.0709999999999999937	0	1074	0	0	24
115453	0.0719999999999999946	0	1106	0	0	24
115454	0.0729999999999999954	0	1138	0	0	24
115455	0.0739999999999999963	0	1170	0	0	24
115456	0.0749999999999999972	0	1202	0	0	24
115457	0.0759999999999999981	0	1234	0	0	24
115458	0.076999999999999999	0	1266	0	0	24
115459	0.0779999999999999999	0	1298	0	0	24
115460	0.0790000000000000008	0	1330	0	0	24
115461	0.0800000000000000017	0	1360	0	0	24
115462	0.0810000000000000026	0	1392	0	0	24
115463	0.0820000000000000034	0	1424	0	0	24
115464	0.0830000000000000043	0	1456	0	0	24
115465	0.0840000000000000052	0	1488	0	0	24
115466	0.0850000000000000061	0	1520	0	0	24
115467	0.0859999999999999931	0	1552	0	0	24
115468	0.086999999999999994	0	1584	0	0	24
115469	0.0879999999999999949	0	1616	0	0	24
115470	0.0889999999999999958	0	1648	0	0	24
115471	0.0899999999999999967	0	1678	0	0	24
115472	0.0909999999999999976	0	1710	0	0	24
115473	0.0919999999999999984	0	1742	0	0	24
115474	0.0929999999999999993	0	1774	0	0	24
115475	0.0940000000000000002	0	1806	0	0	24
115476	0.0950000000000000011	0	1838	0	0	24
115477	0.096000000000000002	0	1870	0	0	24
115478	0.0970000000000000029	0	1902	0	0	24
115479	0.0980000000000000038	0	1934	0	0	24
115480	0.0990000000000000047	0	1966	0	0	24
115481	0.100000000000000006	0	1196	0	0	24
115482	0.101000000000000006	0	1228	0	0	24
115483	0.101999999999999993	0	1260	0	0	24
115484	0.102999999999999994	0	1292	0	0	24
115485	0.103999999999999995	0	1324	0	0	24
115486	0.104999999999999996	0	1356	0	0	24
115487	0.105999999999999997	0	1388	0	0	24
115488	0.106999999999999998	0	1420	0	0	24
115489	0.107999999999999999	0	1452	0	0	24
115490	0.109	0	1484	0	0	24
115491	0.110000000000000001	0	1514	0	0	24
115492	0.111000000000000001	0	1546	0	0	24
115493	0.112000000000000002	0	1578	0	0	24
115494	0.113000000000000003	0	1610	0	0	24
115495	0.114000000000000004	0	1642	0	0	24
115496	0.115000000000000005	0	1674	0	0	24
115497	0.116000000000000006	0	1706	0	0	24
115498	0.117000000000000007	0	1738	0	0	24
115499	0.117999999999999994	0	1770	0	0	24
115500	0.118999999999999995	0	1802	0	0	24
115501	0.119999999999999996	0	1832	0	0	24
115502	0.120999999999999996	0	1864	0	0	24
115503	0.121999999999999997	0	1896	0	0	24
115504	0.122999999999999998	0	1928	0	0	24
115505	0.123999999999999999	0	1960	0	0	24
115506	0.125	0	1992	0	0	24
115507	0.126000000000000001	0	2024	0	0	24
115508	0.127000000000000002	0	2056	0	0	24
115509	0.128000000000000003	0	2088	0	0	24
115510	0.129000000000000004	0	2120	0	0	24
115511	0.130000000000000004	0	2150	0	0	24
115512	0.131000000000000005	0	2182	0	0	24
115513	0.132000000000000006	0	2214	0	0	24
115514	0.133000000000000007	0	2246	0	0	24
115515	0.134000000000000008	0	2278	0	0	24
115516	0.135000000000000009	0	2310	0	0	24
115517	0.13600000000000001	0	2342	0	0	24
115518	0.137000000000000011	0	2374	0	0	24
115519	0.138000000000000012	0	2406	0	0	24
115520	0.139000000000000012	0	2438	0	0	24
115521	0.140000000000000013	0	2468	0	0	24
115522	0.140999999999999986	0	2500	0	0	24
115523	0.141999999999999987	0	2532	0	0	24
115524	0.142999999999999988	0	2564	0	0	24
115525	0.143999999999999989	0	2596	0	0	24
115526	0.14499999999999999	0	2628	0	0	24
115527	0.145999999999999991	0	2660	0	0	24
115528	0.146999999999999992	0	2692	0	0	24
115529	0.147999999999999993	0	2724	0	0	24
115530	0.148999999999999994	0	2756	0	0	24
115531	0.149999999999999994	0	2303	0	0	24
115532	0.150999999999999995	0	2335	0	0	24
115533	0.151999999999999996	0	2367	0	0	24
115534	0.152999999999999997	0	2399	0	0	24
115535	0.153999999999999998	0	2431	0	0	24
115536	0.154999999999999999	0	2463	0	0	24
115537	0.156	0	2495	0	0	24
115538	0.157000000000000001	0	2527	0	0	24
115539	0.158000000000000002	0	2559	0	0	24
115540	0.159000000000000002	0	2591	0	0	24
115541	0.160000000000000003	0	2621	0	0	24
115542	0.161000000000000004	0	2653	0	0	24
115543	0.162000000000000005	0	2685	0	0	24
115544	0.163000000000000006	0	2717	0	0	24
115545	0.164000000000000007	0	2749	0	0	24
115546	0.165000000000000008	0	2781	0	0	24
115547	0.166000000000000009	0	2813	0	0	24
115548	0.16700000000000001	0	2845	0	0	24
115549	0.16800000000000001	0	2877	0	0	24
115550	0.169000000000000011	0	2909	0	0	24
115551	0.170000000000000012	0	2939	0	0	24
115552	0.171000000000000013	0	2971	0	0	24
115553	0.171999999999999986	0	3003	0	0	24
115554	0.172999999999999987	0	3035	0	0	24
115555	0.173999999999999988	0	3067	0	0	24
115556	0.174999999999999989	0	3099	0	0	24
115557	0.17599999999999999	0	3131	0	0	24
115558	0.176999999999999991	0	3163	0	0	24
115559	0.177999999999999992	0	3195	0	0	24
115560	0.178999999999999992	0	3227	0	0	24
115561	0.179999999999999993	0	3257	0	0	24
115562	0.180999999999999994	0	3289	0	0	24
115563	0.181999999999999995	0	3321	0	0	24
115564	0.182999999999999996	0	3353	0	0	24
115565	0.183999999999999997	0	3385	0	0	24
115566	0.184999999999999998	0	3417	0	0	24
115567	0.185999999999999999	0	3449	0	0	24
115568	0.187	0	3481	0	0	24
115569	0.188	0	3513	0	0	24
115570	0.189000000000000001	0	3545	0	0	24
115571	0.190000000000000002	0	3575	0	0	24
115572	0.191000000000000003	0	3607	0	0	24
115573	0.192000000000000004	0	3639	0	0	24
115574	0.193000000000000005	0	3671	0	0	24
115575	0.194000000000000006	0	3703	0	0	24
115576	0.195000000000000007	0	3735	0	0	24
115577	0.196000000000000008	0	3767	0	0	24
115578	0.197000000000000008	0	3799	0	0	24
115579	0.198000000000000009	0	3831	0	0	24
115580	0.19900000000000001	0	3863	0	0	24
115581	0.200000000000000011	0	3646	0	0	24
115582	0.201000000000000012	0	3678	0	0	24
115583	0.202000000000000013	0	3710	0	0	24
115584	0.203000000000000014	0	3742	0	0	24
115585	0.203999999999999987	0	3774	0	0	24
115586	0.204999999999999988	0	3806	0	0	24
115587	0.205999999999999989	0	3838	0	0	24
115588	0.20699999999999999	0	3870	0	0	24
115589	0.20799999999999999	0	3902	0	0	24
115590	0.208999999999999991	0	3934	0	0	24
115591	0.209999999999999992	0	3964	0	0	24
115592	0.210999999999999993	0	3996	0	0	24
115593	0.211999999999999994	0	4028	0	0	24
115594	0.212999999999999995	0	4060	0	0	24
115595	0.213999999999999996	0	4092	0	0	24
115596	0.214999999999999997	0	4124	0	0	24
115597	0.215999999999999998	0	4156	0	0	24
115598	0.216999999999999998	0	4188	0	0	24
115599	0.217999999999999999	0	4220	0	0	24
115600	0.219	0	4252	0	0	24
115601	0.220000000000000001	0	4282	0	0	24
115602	0.221000000000000002	0	4314	0	0	24
115603	0.222000000000000003	0	4346	0	0	24
115604	0.223000000000000004	0	4378	0	0	24
115605	0.224000000000000005	0	4410	0	0	24
115606	0.225000000000000006	0	4442	0	0	24
115607	0.226000000000000006	0	4474	0	0	24
115608	0.227000000000000007	0	4506	0	0	24
115609	0.228000000000000008	0	4538	0	0	24
115610	0.229000000000000009	0	4570	0	0	24
115611	0.23000000000000001	0	4600	0	0	24
115612	0.231000000000000011	0	4632	0	0	24
115613	0.232000000000000012	0	4664	0	0	24
115614	0.233000000000000013	0	4696	0	0	24
115615	0.234000000000000014	0	4728	0	0	24
115616	0.234999999999999987	0	4760	0	0	24
115617	0.235999999999999988	0	4792	0	0	24
115618	0.236999999999999988	0	4824	0	0	24
115619	0.237999999999999989	0	4856	0	0	24
115620	0.23899999999999999	0	4888	0	0	24
115621	0.239999999999999991	0	4918	0	0	24
115622	0.240999999999999992	0	4950	0	0	24
115623	0.241999999999999993	0	4982	0	0	24
115624	0.242999999999999994	0	5014	0	0	24
115625	0.243999999999999995	0	5046	0	0	24
115626	0.244999999999999996	0	5078	0	0	24
115627	0.245999999999999996	0	5110	0	0	24
115628	0.246999999999999997	0	5142	0	0	24
115629	0.247999999999999998	0	5174	0	0	24
115630	0.248999999999999999	0	5206	0	0	24
115631	0.25	0	5235	0	0	24
115632	0.251000000000000001	0	5267	0	0	24
115633	0.252000000000000002	0	5299	0	0	24
115634	0.253000000000000003	0	5331	0	0	24
115635	0.254000000000000004	0	5363	0	0	24
115636	0.255000000000000004	0	5395	0	0	24
115637	0.256000000000000005	0	5427	0	0	24
115638	0.257000000000000006	0	5459	0	0	24
115639	0.258000000000000007	0	5491	0	0	24
115640	0.259000000000000008	0	5523	0	0	24
115641	0.260000000000000009	0	5553	0	0	24
115642	0.26100000000000001	0	5585	0	0	24
115643	0.262000000000000011	0	5617	0	0	24
115644	0.263000000000000012	0	5649	0	0	24
115645	0.264000000000000012	0	5681	0	0	24
115646	0.265000000000000013	0	5713	0	0	24
115647	0.266000000000000014	0	5745	0	0	24
115648	0.267000000000000015	0	5777	0	0	24
115649	0.268000000000000016	0	5809	0	0	24
115650	0.269000000000000017	0	5841	0	0	24
115651	0.270000000000000018	0	5871	0	0	24
115652	0.271000000000000019	0	5903	0	0	24
115653	0.27200000000000002	0	5935	0	0	24
115654	0.27300000000000002	0	5967	0	0	24
115655	0.274000000000000021	0	5999	0	0	24
115656	0.275000000000000022	0	6031	0	0	24
115657	0.276000000000000023	0	6063	0	0	24
115658	0.277000000000000024	0	6095	0	0	24
115659	0.278000000000000025	0	6127	0	0	24
115660	0.279000000000000026	0	6159	0	0	24
115661	0.280000000000000027	0	6189	0	0	24
115662	0.281000000000000028	0	6221	0	0	24
115663	0.281999999999999973	0	6253	0	0	24
115664	0.282999999999999974	0	6285	0	0	24
115665	0.283999999999999975	0	6317	0	0	24
115666	0.284999999999999976	0	6349	0	0	24
115667	0.285999999999999976	0	6381	0	0	24
115668	0.286999999999999977	0	6413	0	0	24
115669	0.287999999999999978	0	6445	0	0	24
115670	0.288999999999999979	0	6477	0	0	24
115671	0.28999999999999998	0	6507	0	0	24
115672	0.290999999999999981	0	6539	0	0	24
115673	0.291999999999999982	0	6571	0	0	24
115674	0.292999999999999983	0	6603	0	0	24
115675	0.293999999999999984	0	6635	0	0	24
115676	0.294999999999999984	0	6667	0	0	24
115677	0.295999999999999985	0	6699	0	0	24
115678	0.296999999999999986	0	6731	0	0	24
115679	0.297999999999999987	0	6763	0	0	24
115680	0.298999999999999988	0	6795	0	0	24
115681	0.299999999999999989	0	6824	0	0	24
115682	0.30099999999999999	0	6856	0	0	24
115683	0.301999999999999991	0	6888	0	0	24
115684	0.302999999999999992	0	6920	0	0	24
115685	0.303999999999999992	0	6952	0	0	24
115686	0.304999999999999993	0	6984	0	0	24
115687	0.305999999999999994	0	7016	0	0	24
115688	0.306999999999999995	0	7048	0	0	24
115689	0.307999999999999996	0	7080	0	0	24
115690	0.308999999999999997	0	7112	0	0	24
115691	0.309999999999999998	0	7142	0	0	24
115692	0.310999999999999999	0	7174	0	0	24
115693	0.312	0	7206	0	0	24
115694	0.313	0	7238	0	0	24
115695	0.314000000000000001	0	7270	0	0	24
115696	0.315000000000000002	0	7302	0	0	24
115697	0.316000000000000003	0	7334	0	0	24
115698	0.317000000000000004	0	7366	0	0	24
115699	0.318000000000000005	0	7398	0	0	24
115700	0.319000000000000006	0	7430	0	0	24
115701	0.320000000000000007	0	7460	0	0	24
115702	0.321000000000000008	0	7492	0	0	24
115703	0.322000000000000008	0	7524	0	0	24
115704	0.323000000000000009	0	7556	0	0	24
115705	0.32400000000000001	0	7588	0	0	24
115706	0.325000000000000011	0	7620	0	0	24
115707	0.326000000000000012	0	7652	0	0	24
115708	0.327000000000000013	0	7684	0	0	24
115709	0.328000000000000014	0	7716	0	0	24
115710	0.329000000000000015	0	7748	0	0	24
115711	0.330000000000000016	0	7778	0	0	24
115712	0.331000000000000016	0	7810	0	0	24
115713	0.332000000000000017	0	7842	0	0	24
115714	0.333000000000000018	0	7874	0	0	24
115715	0.334000000000000019	0	7906	0	0	24
115716	0.33500000000000002	0	7938	0	0	24
115717	0.336000000000000021	0	7970	0	0	24
115718	0.337000000000000022	0	8002	0	0	24
115719	0.338000000000000023	0	8034	0	0	24
115720	0.339000000000000024	0	8066	0	0	24
115721	0.340000000000000024	0	8096	0	0	24
115722	0.341000000000000025	0	8128	0	0	24
115723	0.342000000000000026	0	8160	0	0	24
115724	0.343000000000000027	0	8192	0	0	24
115725	0.343999999999999972	0	8224	0	0	24
115726	0.344999999999999973	0	8256	0	0	24
115727	0.345999999999999974	0	8288	0	0	24
115728	0.346999999999999975	0	8320	0	0	24
115729	0.347999999999999976	0	8352	0	0	24
115730	0.348999999999999977	0	8384	0	0	24
115731	0.349999999999999978	0	8413	0	0	24
115732	0.350999999999999979	0	8445	0	0	24
115733	0.35199999999999998	0	8477	0	0	24
115734	0.35299999999999998	0	8509	0	0	24
115735	0.353999999999999981	0	8541	0	0	24
115736	0.354999999999999982	0	8573	0	0	24
115737	0.355999999999999983	0	8605	0	0	24
115738	0.356999999999999984	0	8637	0	0	24
115739	0.357999999999999985	0	8669	0	0	24
115740	0.358999999999999986	0	8701	0	0	24
115741	0.359999999999999987	0	8731	0	0	24
115742	0.360999999999999988	0	8763	0	0	24
115743	0.361999999999999988	0	8795	0	0	24
115744	0.362999999999999989	0	8827	0	0	24
115745	0.36399999999999999	0	8859	0	0	24
115746	0.364999999999999991	0	8891	0	0	24
115747	0.365999999999999992	0	8923	0	0	24
115748	0.366999999999999993	0	8955	0	0	24
115749	0.367999999999999994	0	8987	0	0	24
115750	0.368999999999999995	0	9019	0	0	24
115751	0.369999999999999996	0	9049	0	0	24
115752	0.370999999999999996	0	9081	0	0	24
115753	0.371999999999999997	0	9113	0	0	24
115754	0.372999999999999998	0	9145	0	0	24
115755	0.373999999999999999	0	9177	0	0	24
115756	0.375	0	9209	0	0	24
115757	0.376000000000000001	0	9241	0	0	24
115758	0.377000000000000002	0	9273	0	0	24
115759	0.378000000000000003	0	9305	0	0	24
115760	0.379000000000000004	0	9337	0	0	24
115761	0.380000000000000004	0	9367	0	0	24
115762	0.381000000000000005	0	9399	0	0	24
115763	0.382000000000000006	0	9431	0	0	24
115764	0.383000000000000007	0	9463	0	0	24
115765	0.384000000000000008	0	9495	0	0	24
115766	0.385000000000000009	0	9527	0	0	24
115767	0.38600000000000001	0	9559	0	0	24
115768	0.387000000000000011	0	9591	0	0	24
115769	0.388000000000000012	0	9623	0	0	24
115770	0.389000000000000012	0	9655	0	0	24
115771	0.390000000000000013	0	9685	0	0	24
115772	0.391000000000000014	0	9717	0	0	24
115773	0.392000000000000015	0	9749	0	0	24
115774	0.393000000000000016	0	9781	0	0	24
115775	0.394000000000000017	0	9813	0	0	24
115776	0.395000000000000018	0	9845	0	0	24
115777	0.396000000000000019	0	9877	0	0	24
115778	0.39700000000000002	0	9909	0	0	24
115779	0.39800000000000002	0	9941	0	0	24
115780	0.399000000000000021	0	9973	0	0	24
115781	0.400000000000000022	0	10002	0	0	24
115782	0.401000000000000023	0	10034	0	0	24
115783	0.402000000000000024	0	10066	0	0	24
115784	0.403000000000000025	0	10098	0	0	24
115785	0.404000000000000026	0	10130	0	0	24
115786	0.405000000000000027	0	10162	0	0	24
115787	0.406000000000000028	0	10194	0	0	24
115788	0.406999999999999973	0	10226	0	0	24
115789	0.407999999999999974	0	10258	0	0	24
115790	0.408999999999999975	0	10290	0	0	24
115791	0.409999999999999976	0	10320	0	0	24
115792	0.410999999999999976	0	10352	0	0	24
115793	0.411999999999999977	0	10384	0	0	24
115794	0.412999999999999978	0	10416	0	0	24
115795	0.413999999999999979	0	10448	0	0	24
115796	0.41499999999999998	0	10480	0	0	24
115797	0.415999999999999981	0	10512	0	0	24
115798	0.416999999999999982	0	10544	0	0	24
115799	0.417999999999999983	0	10576	0	0	24
115800	0.418999999999999984	0	10608	0	0	24
115801	0.419999999999999984	0	10638	0	0	24
115802	0.420999999999999985	0	10670	0	0	24
115803	0.421999999999999986	0	10702	0	0	24
115804	0.422999999999999987	0	10734	0	0	24
115805	0.423999999999999988	0	10766	0	0	24
115806	0.424999999999999989	0	10798	0	0	24
115807	0.42599999999999999	0	10830	0	0	24
115808	0.426999999999999991	0	10862	0	0	24
115809	0.427999999999999992	0	10894	0	0	24
115810	0.428999999999999992	0	10926	0	0	24
115811	0.429999999999999993	0	10956	0	0	24
115812	0.430999999999999994	0	10988	0	0	24
115813	0.431999999999999995	0	11020	0	0	24
115814	0.432999999999999996	0	11052	0	0	24
115815	0.433999999999999997	0	11084	0	0	24
115816	0.434999999999999998	0	11116	0	0	24
115817	0.435999999999999999	0	11148	0	0	24
115818	0.437	0	11180	0	0	24
115819	0.438	0	11212	0	0	24
115820	0.439000000000000001	0	11244	0	0	24
115821	0.440000000000000002	0	11274	0	0	24
115822	0.441000000000000003	0	11306	0	0	24
115823	0.442000000000000004	0	11338	0	0	24
115824	0.443000000000000005	0	11370	0	0	24
115825	0.444000000000000006	0	11402	0	0	24
115826	0.445000000000000007	0	11434	0	0	24
115827	0.446000000000000008	0	11466	0	0	24
115828	0.447000000000000008	0	11498	0	0	24
115829	0.448000000000000009	0	11530	0	0	24
115830	0.44900000000000001	0	11562	0	0	24
115831	0.450000000000000011	0	11591	0	0	24
115832	0.451000000000000012	0	11623	0	0	24
115833	0.452000000000000013	0	11655	0	0	24
115834	0.453000000000000014	0	11687	0	0	24
115835	0.454000000000000015	0	11719	0	0	24
115836	0.455000000000000016	0	11751	0	0	24
115837	0.456000000000000016	0	11783	0	0	24
115838	0.457000000000000017	0	11815	0	0	24
115839	0.458000000000000018	0	11847	0	0	24
115840	0.459000000000000019	0	11879	0	0	24
115841	0.46000000000000002	0	11909	0	0	24
115842	0.461000000000000021	0	11941	0	0	24
115843	0.462000000000000022	0	11973	0	0	24
115844	0.463000000000000023	0	12005	0	0	24
115845	0.464000000000000024	0	12037	0	0	24
115846	0.465000000000000024	0	12069	0	0	24
115847	0.466000000000000025	0	12101	0	0	24
115848	0.467000000000000026	0	12133	0	0	24
115849	0.468000000000000027	0	12165	0	0	24
115850	0.468999999999999972	0	12197	0	0	24
115851	0.469999999999999973	0	12227	0	0	24
115852	0.470999999999999974	0	12259	0	0	24
115853	0.471999999999999975	0	12291	0	0	24
115854	0.472999999999999976	0	12323	0	0	24
115855	0.473999999999999977	0	12355	0	0	24
115856	0.474999999999999978	0	12387	0	0	24
115857	0.475999999999999979	0	12419	0	0	24
115858	0.47699999999999998	0	12451	0	0	24
115859	0.47799999999999998	0	12483	0	0	24
115860	0.478999999999999981	0	12515	0	0	24
115861	0.479999999999999982	0	12545	0	0	24
115862	0.480999999999999983	0	12577	0	0	24
115863	0.481999999999999984	0	12609	0	0	24
115864	0.482999999999999985	0	12641	0	0	24
115865	0.483999999999999986	0	12673	0	0	24
115866	0.484999999999999987	0	12705	0	0	24
115867	0.485999999999999988	0	12737	0	0	24
115868	0.486999999999999988	0	12769	0	0	24
115869	0.487999999999999989	0	12801	0	0	24
115870	0.48899999999999999	0	12833	0	0	24
115871	0.489999999999999991	0	12863	0	0	24
115872	0.490999999999999992	0	12895	0	0	24
115873	0.491999999999999993	0	12927	0	0	24
115874	0.492999999999999994	0	12959	0	0	24
115875	0.493999999999999995	0	12991	0	0	24
115876	0.494999999999999996	0	13023	0	0	24
115877	0.495999999999999996	0	13055	0	0	24
115878	0.496999999999999997	0	13087	0	0	24
115879	0.497999999999999998	0	13119	0	0	24
115880	0.498999999999999999	0	13151	0	0	24
115881	0.5	0	13180	0	0	24
115882	0.501000000000000001	0	13212	0	0	24
115883	0.502000000000000002	0	13244	0	0	24
115884	0.503000000000000003	0	13276	0	0	24
115885	0.504000000000000004	0	13308	0	0	24
115886	0.505000000000000004	0	13340	0	0	24
115887	0.506000000000000005	0	13372	0	0	24
115888	0.507000000000000006	0	13404	0	0	24
115889	0.508000000000000007	0	13436	0	0	24
115890	0.509000000000000008	0	13468	0	0	24
115891	0.510000000000000009	0	13498	0	0	24
115892	0.51100000000000001	0	13530	0	0	24
115893	0.512000000000000011	0	13562	0	0	24
115894	0.513000000000000012	0	13594	0	0	24
115895	0.514000000000000012	0	13626	0	0	24
115896	0.515000000000000013	0	13658	0	0	24
115897	0.516000000000000014	0	13690	0	0	24
115898	0.517000000000000015	0	13722	0	0	24
115899	0.518000000000000016	0	13754	0	0	24
115900	0.519000000000000017	0	13786	0	0	24
115901	0.520000000000000018	0	13816	0	0	24
115902	0.521000000000000019	0	13848	0	0	24
115903	0.52200000000000002	0	13880	0	0	24
115904	0.52300000000000002	0	13912	0	0	24
115905	0.524000000000000021	0	13944	0	0	24
115906	0.525000000000000022	0	13976	0	0	24
115907	0.526000000000000023	0	14008	0	0	24
115908	0.527000000000000024	0	14040	0	0	24
115909	0.528000000000000025	0	14072	0	0	24
115910	0.529000000000000026	0	14104	0	0	24
115911	0.530000000000000027	0	14134	0	0	24
115912	0.531000000000000028	0	14166	0	0	24
115913	0.532000000000000028	0	14198	0	0	24
115914	0.533000000000000029	0	14230	0	0	24
115915	0.53400000000000003	0	14262	0	0	24
115916	0.535000000000000031	0	14294	0	0	24
115917	0.536000000000000032	0	14326	0	0	24
115918	0.537000000000000033	0	14358	0	0	24
115919	0.538000000000000034	0	14390	0	0	24
115920	0.539000000000000035	0	14422	0	0	24
115921	0.540000000000000036	0	14452	0	0	24
115922	0.541000000000000036	0	14484	0	0	24
115923	0.542000000000000037	0	14516	0	0	24
115924	0.543000000000000038	0	14548	0	0	24
115925	0.544000000000000039	0	14580	0	0	24
115926	0.54500000000000004	0	14612	0	0	24
115927	0.546000000000000041	0	14644	0	0	24
115928	0.547000000000000042	0	14676	0	0	24
115929	0.548000000000000043	0	14708	0	0	24
115930	0.549000000000000044	0	14740	0	0	24
115931	0.550000000000000044	0	14769	0	0	24
115932	0.551000000000000045	0	14801	0	0	24
115933	0.552000000000000046	0	14833	0	0	24
115934	0.553000000000000047	0	14865	0	0	24
115935	0.554000000000000048	0	14897	0	0	24
115936	0.555000000000000049	0	14929	0	0	24
115937	0.55600000000000005	0	14961	0	0	24
115938	0.557000000000000051	0	14993	0	0	24
115939	0.558000000000000052	0	15025	0	0	24
115940	0.559000000000000052	0	15057	0	0	24
115941	0.560000000000000053	0	15087	0	0	24
115942	0.561000000000000054	0	15119	0	0	24
115943	0.562000000000000055	0	15151	0	0	24
115944	0.562999999999999945	0	15183	0	0	24
115945	0.563999999999999946	0	15215	0	0	24
115946	0.564999999999999947	0	15247	0	0	24
115947	0.565999999999999948	0	15279	0	0	24
115948	0.566999999999999948	0	15311	0	0	24
115949	0.567999999999999949	0	15343	0	0	24
115950	0.56899999999999995	0	15375	0	0	24
115951	0.569999999999999951	0	15405	0	0	24
115952	0.570999999999999952	0	15437	0	0	24
115953	0.571999999999999953	0	15469	0	0	24
115954	0.572999999999999954	0	15501	0	0	24
115955	0.573999999999999955	0	15533	0	0	24
115956	0.574999999999999956	0	15565	0	0	24
115957	0.575999999999999956	0	15597	0	0	24
115958	0.576999999999999957	0	15629	0	0	24
115959	0.577999999999999958	0	15661	0	0	24
115960	0.578999999999999959	0	15693	0	0	24
115961	0.57999999999999996	0	15723	0	0	24
115962	0.580999999999999961	0	15755	0	0	24
115963	0.581999999999999962	0	15787	0	0	24
115964	0.582999999999999963	0	15819	0	0	24
115965	0.583999999999999964	0	15851	0	0	24
115966	0.584999999999999964	0	15883	0	0	24
115967	0.585999999999999965	0	15915	0	0	24
115968	0.586999999999999966	0	15947	0	0	24
115969	0.587999999999999967	0	15979	0	0	24
115970	0.588999999999999968	0	16011	0	0	24
115971	0.589999999999999969	0	16041	0	0	24
115972	0.59099999999999997	0	16073	0	0	24
115973	0.591999999999999971	0	16105	0	0	24
115974	0.592999999999999972	0	16137	0	0	24
115975	0.593999999999999972	0	16169	0	0	24
115976	0.594999999999999973	0	16201	0	0	24
115977	0.595999999999999974	0	16233	0	0	24
115978	0.596999999999999975	0	16265	0	0	24
115979	0.597999999999999976	0	16297	0	0	24
115980	0.598999999999999977	0	16329	0	0	24
115981	0.599999999999999978	0	16358	0	0	24
115982	0.600999999999999979	0	16390	0	0	24
115983	0.60199999999999998	0	16422	0	0	24
115984	0.60299999999999998	0	16454	0	0	24
115985	0.603999999999999981	0	16486	0	0	24
115986	0.604999999999999982	0	16518	0	0	24
115987	0.605999999999999983	0	16550	0	0	24
115988	0.606999999999999984	0	16582	0	0	24
115989	0.607999999999999985	0	16614	0	0	24
115990	0.608999999999999986	0	16646	0	0	24
115991	0.609999999999999987	0	16676	0	0	24
115992	0.610999999999999988	0	16708	0	0	24
115993	0.611999999999999988	0	16740	0	0	24
115994	0.612999999999999989	0	16772	0	0	24
115995	0.61399999999999999	0	16804	0	0	24
115996	0.614999999999999991	0	16836	0	0	24
115997	0.615999999999999992	0	16868	0	0	24
115998	0.616999999999999993	0	16900	0	0	24
115999	0.617999999999999994	0	16932	0	0	24
116000	0.618999999999999995	0	16964	0	0	24
116001	0.619999999999999996	0	16994	0	0	24
116002	0.620999999999999996	0	17026	0	0	24
116003	0.621999999999999997	0	17058	0	0	24
116004	0.622999999999999998	0	17090	0	0	24
116005	0.623999999999999999	0	17122	0	0	24
116006	0.625	0	17154	0	0	24
116007	0.626000000000000001	0	17186	0	0	24
116008	0.627000000000000002	0	17218	0	0	24
116009	0.628000000000000003	0	17250	0	0	24
116010	0.629000000000000004	0	17282	0	0	24
116011	0.630000000000000004	0	17312	0	0	24
116012	0.631000000000000005	0	17344	0	0	24
116013	0.632000000000000006	0	17376	0	0	24
116014	0.633000000000000007	0	17408	0	0	24
116015	0.634000000000000008	0	17440	0	0	24
116016	0.635000000000000009	0	17472	0	0	24
116017	0.63600000000000001	0	17504	0	0	24
116018	0.637000000000000011	0	17536	0	0	24
116019	0.638000000000000012	0	17568	0	0	24
116020	0.639000000000000012	0	17600	0	0	24
116021	0.640000000000000013	0	17630	0	0	24
116022	0.641000000000000014	0	17662	0	0	24
116023	0.642000000000000015	0	17694	0	0	24
116024	0.643000000000000016	0	17726	0	0	24
116025	0.644000000000000017	0	17758	0	0	24
116026	0.645000000000000018	0	17790	0	0	24
116027	0.646000000000000019	0	17822	0	0	24
116028	0.64700000000000002	0	17854	0	0	24
116029	0.64800000000000002	0	17886	0	0	24
116030	0.649000000000000021	0	17918	0	0	24
116031	0.650000000000000022	0	17947	0	0	24
116032	0.651000000000000023	0	17979	0	0	24
116033	0.652000000000000024	0	18011	0	0	24
116034	0.653000000000000025	0	18043	0	0	24
116035	0.654000000000000026	0	18075	0	0	24
116036	0.655000000000000027	0	18107	0	0	24
116037	0.656000000000000028	0	18139	0	0	24
116038	0.657000000000000028	0	18171	0	0	24
116039	0.658000000000000029	0	18203	0	0	24
116040	0.65900000000000003	0	18235	0	0	24
116041	0.660000000000000031	0	18265	0	0	24
116042	0.661000000000000032	0	18297	0	0	24
116043	0.662000000000000033	0	18329	0	0	24
116044	0.663000000000000034	0	18361	0	0	24
116045	0.664000000000000035	0	18393	0	0	24
116046	0.665000000000000036	0	18425	0	0	24
116047	0.666000000000000036	0	18457	0	0	24
116048	0.667000000000000037	0	18489	0	0	24
116049	0.668000000000000038	0	18521	0	0	24
116050	0.669000000000000039	0	18553	0	0	24
116051	0.67000000000000004	0	18583	0	0	24
116052	0.671000000000000041	0	18615	0	0	24
116053	0.672000000000000042	0	18647	0	0	24
116054	0.673000000000000043	0	18679	0	0	24
116055	0.674000000000000044	0	18711	0	0	24
116056	0.675000000000000044	0	18743	0	0	24
116057	0.676000000000000045	0	18775	0	0	24
116058	0.677000000000000046	0	18807	0	0	24
116059	0.678000000000000047	0	18839	0	0	24
116060	0.679000000000000048	0	18871	0	0	24
116061	0.680000000000000049	0	18901	0	0	24
116062	0.68100000000000005	0	18933	0	0	24
116063	0.682000000000000051	0	18965	0	0	24
116064	0.683000000000000052	0	18997	0	0	24
116065	0.684000000000000052	0	19029	0	0	24
116066	0.685000000000000053	0	19061	0	0	24
116067	0.686000000000000054	0	19093	0	0	24
116068	0.687000000000000055	0	19125	0	0	24
116069	0.687999999999999945	0	19157	0	0	24
116070	0.688999999999999946	0	19189	0	0	24
116071	0.689999999999999947	0	19219	0	0	24
116072	0.690999999999999948	0	19251	0	0	24
116073	0.691999999999999948	0	19283	0	0	24
116074	0.692999999999999949	0	19315	0	0	24
116075	0.69399999999999995	0	19347	0	0	24
116076	0.694999999999999951	0	19379	0	0	24
116077	0.695999999999999952	0	19411	0	0	24
116078	0.696999999999999953	0	19443	0	0	24
116079	0.697999999999999954	0	19475	0	0	24
116080	0.698999999999999955	0	19507	0	0	24
116081	0.699999999999999956	0	19536	0	0	24
116082	0.700999999999999956	0	19568	0	0	24
116083	0.701999999999999957	0	19600	0	0	24
116084	0.702999999999999958	0	19632	0	0	24
116085	0.703999999999999959	0	19664	0	0	24
116086	0.70499999999999996	0	19696	0	0	24
116087	0.705999999999999961	0	19728	0	0	24
116088	0.706999999999999962	0	19760	0	0	24
116089	0.707999999999999963	0	19792	0	0	24
116090	0.708999999999999964	0	19824	0	0	24
116091	0.709999999999999964	0	19854	0	0	24
116092	0.710999999999999965	0	19886	0	0	24
116093	0.711999999999999966	0	19918	0	0	24
116094	0.712999999999999967	0	19950	0	0	24
116095	0.713999999999999968	0	19982	0	0	24
116096	0.714999999999999969	0	20014	0	0	24
116097	0.71599999999999997	0	20046	0	0	24
116098	0.716999999999999971	0	20078	0	0	24
116099	0.717999999999999972	0	20110	0	0	24
116100	0.718999999999999972	0	20142	0	0	24
116101	0.719999999999999973	0	20172	0	0	24
116102	0.720999999999999974	0	20204	0	0	24
116103	0.721999999999999975	0	20236	0	0	24
116104	0.722999999999999976	0	20268	0	0	24
116105	0.723999999999999977	0	20300	0	0	24
116106	0.724999999999999978	0	20332	0	0	24
116107	0.725999999999999979	0	20364	0	0	24
116108	0.72699999999999998	0	20396	0	0	24
116109	0.72799999999999998	0	20428	0	0	24
116110	0.728999999999999981	0	20460	0	0	24
116111	0.729999999999999982	0	20490	0	0	24
116112	0.730999999999999983	0	20522	0	0	24
116113	0.731999999999999984	0	20554	0	0	24
116114	0.732999999999999985	0	20586	0	0	24
116115	0.733999999999999986	0	20618	0	0	24
116116	0.734999999999999987	0	20650	0	0	24
116117	0.735999999999999988	0	20682	0	0	24
116118	0.736999999999999988	0	20714	0	0	24
116119	0.737999999999999989	0	20746	0	0	24
116120	0.73899999999999999	0	20778	0	0	24
116121	0.739999999999999991	0	20808	0	0	24
116122	0.740999999999999992	0	20840	0	0	24
116123	0.741999999999999993	0	20872	0	0	24
116124	0.742999999999999994	0	20904	0	0	24
116125	0.743999999999999995	0	20936	0	0	24
116126	0.744999999999999996	0	20968	0	0	24
116127	0.745999999999999996	0	21000	0	0	24
116128	0.746999999999999997	0	21032	0	0	24
116129	0.747999999999999998	0	21064	0	0	24
116130	0.748999999999999999	0	21096	0	0	24
116131	0.75	0	21125	0	0	24
116132	0.751000000000000001	0	21157	0	0	24
116133	0.752000000000000002	0	21189	0	0	24
116134	0.753000000000000003	0	21221	0	0	24
116135	0.754000000000000004	0	21253	0	0	24
116136	0.755000000000000004	0	21285	0	0	24
116137	0.756000000000000005	0	21317	0	0	24
116138	0.757000000000000006	0	21349	0	0	24
116139	0.758000000000000007	0	21381	0	0	24
116140	0.759000000000000008	0	21413	0	0	24
116141	0.760000000000000009	0	21443	0	0	24
116142	0.76100000000000001	0	21475	0	0	24
116143	0.762000000000000011	0	21507	0	0	24
116144	0.763000000000000012	0	21539	0	0	24
116145	0.764000000000000012	0	21571	0	0	24
116146	0.765000000000000013	0	21603	0	0	24
116147	0.766000000000000014	0	21635	0	0	24
116148	0.767000000000000015	0	21667	0	0	24
116149	0.768000000000000016	0	21699	0	0	24
116150	0.769000000000000017	0	21731	0	0	24
116151	0.770000000000000018	0	21761	0	0	24
116152	0.771000000000000019	0	21793	0	0	24
116153	0.77200000000000002	0	21825	0	0	24
116154	0.77300000000000002	0	21857	0	0	24
116155	0.774000000000000021	0	21889	0	0	24
116156	0.775000000000000022	0	21921	0	0	24
116157	0.776000000000000023	0	21953	0	0	24
116158	0.777000000000000024	0	21985	0	0	24
116159	0.778000000000000025	0	22017	0	0	24
116160	0.779000000000000026	0	22049	0	0	24
116161	0.780000000000000027	0	22079	0	0	24
116162	0.781000000000000028	0	22111	0	0	24
116163	0.782000000000000028	0	22143	0	0	24
116164	0.783000000000000029	0	22175	0	0	24
116165	0.78400000000000003	0	22207	0	0	24
116166	0.785000000000000031	0	22239	0	0	24
116167	0.786000000000000032	0	22271	0	0	24
116168	0.787000000000000033	0	22303	0	0	24
116169	0.788000000000000034	0	22335	0	0	24
116170	0.789000000000000035	0	22367	0	0	24
116171	0.790000000000000036	0	22397	0	0	24
116172	0.791000000000000036	0	22429	0	0	24
116173	0.792000000000000037	0	22461	0	0	24
116174	0.793000000000000038	0	22493	0	0	24
116175	0.794000000000000039	0	22525	0	0	24
116176	0.79500000000000004	0	22557	0	0	24
116177	0.796000000000000041	0	22589	0	0	24
116178	0.797000000000000042	0	22621	0	0	24
116179	0.798000000000000043	0	22653	0	0	24
116180	0.799000000000000044	0	22685	0	0	24
116181	0.800000000000000044	0	22714	0	0	24
116182	0.801000000000000045	0	22746	0	0	24
116183	0.802000000000000046	0	22778	0	0	24
116184	0.803000000000000047	0	22810	0	0	24
116185	0.804000000000000048	0	22842	0	0	24
116186	0.805000000000000049	0	22874	0	0	24
116187	0.80600000000000005	0	22906	0	0	24
116188	0.807000000000000051	0	22938	0	0	24
116189	0.808000000000000052	0	22970	0	0	24
116190	0.809000000000000052	0	23002	0	0	24
116191	0.810000000000000053	0	23032	0	0	24
116192	0.811000000000000054	0	23064	0	0	24
116193	0.812000000000000055	0	23096	0	0	24
116194	0.812999999999999945	0	23128	0	0	24
116195	0.813999999999999946	0	23160	0	0	24
116196	0.814999999999999947	0	23192	0	0	24
116197	0.815999999999999948	0	23224	0	0	24
116198	0.816999999999999948	0	23256	0	0	24
116199	0.817999999999999949	0	23288	0	0	24
116200	0.81899999999999995	0	23320	0	0	24
116201	0.819999999999999951	0	23350	0	0	24
116202	0.820999999999999952	0	23382	0	0	24
116203	0.821999999999999953	0	23414	0	0	24
116204	0.822999999999999954	0	23446	0	0	24
116205	0.823999999999999955	0	23478	0	0	24
116206	0.824999999999999956	0	23510	0	0	24
116207	0.825999999999999956	0	23542	0	0	24
116208	0.826999999999999957	0	23574	0	0	24
116209	0.827999999999999958	0	23606	0	0	24
116210	0.828999999999999959	0	23638	0	0	24
116211	0.82999999999999996	0	23668	0	0	24
116212	0.830999999999999961	0	23700	0	0	24
116213	0.831999999999999962	0	23732	0	0	24
116214	0.832999999999999963	0	23764	0	0	24
116215	0.833999999999999964	0	23796	0	0	24
116216	0.834999999999999964	0	23828	0	0	24
116217	0.835999999999999965	0	23860	0	0	24
116218	0.836999999999999966	0	23892	0	0	24
116219	0.837999999999999967	0	23924	0	0	24
116220	0.838999999999999968	0	23956	0	0	24
116221	0.839999999999999969	0	23986	0	0	24
116222	0.84099999999999997	0	24018	0	0	24
116223	0.841999999999999971	0	24050	0	0	24
116224	0.842999999999999972	0	24082	0	0	24
116225	0.843999999999999972	0	24114	0	0	24
116226	0.844999999999999973	0	24146	0	0	24
116227	0.845999999999999974	0	24178	0	0	24
116228	0.846999999999999975	0	24210	0	0	24
116229	0.847999999999999976	0	24242	0	0	24
116230	0.848999999999999977	0	24274	0	0	24
116231	0.849999999999999978	0	24303	0	0	24
116232	0.850999999999999979	0	24335	0	0	24
116233	0.85199999999999998	0	24367	0	0	24
116234	0.85299999999999998	0	24399	0	0	24
116235	0.853999999999999981	0	24431	0	0	24
116236	0.854999999999999982	0	24463	0	0	24
116237	0.855999999999999983	0	24495	0	0	24
116238	0.856999999999999984	0	24527	0	0	24
116239	0.857999999999999985	0	24559	0	0	24
116240	0.858999999999999986	0	24591	0	0	24
116241	0.859999999999999987	0	24621	0	0	24
116242	0.860999999999999988	0	24653	0	0	24
116243	0.861999999999999988	0	24685	0	0	24
116244	0.862999999999999989	0	24717	0	0	24
116245	0.86399999999999999	0	24749	0	0	24
116246	0.864999999999999991	0	24781	0	0	24
116247	0.865999999999999992	0	24813	0	0	24
116248	0.866999999999999993	0	24845	0	0	24
116249	0.867999999999999994	0	24877	0	0	24
116250	0.868999999999999995	0	24909	0	0	24
116251	0.869999999999999996	0	24939	0	0	24
116252	0.870999999999999996	0	24971	0	0	24
116253	0.871999999999999997	0	25003	0	0	24
116254	0.872999999999999998	0	25035	0	0	24
116255	0.873999999999999999	0	25067	0	0	24
116256	0.875	0	25099	0	0	24
116257	0.876000000000000001	0	25131	0	0	24
116258	0.877000000000000002	0	25163	0	0	24
116259	0.878000000000000003	0	25195	0	0	24
116260	0.879000000000000004	0	25227	0	0	24
116261	0.880000000000000004	0	25257	0	0	24
116262	0.881000000000000005	0	25289	0	0	24
116263	0.882000000000000006	0	25321	0	0	24
116264	0.883000000000000007	0	25353	0	0	24
116265	0.884000000000000008	0	25385	0	0	24
116266	0.885000000000000009	0	25417	0	0	24
116267	0.88600000000000001	0	25449	0	0	24
116268	0.887000000000000011	0	25481	0	0	24
116269	0.888000000000000012	0	25513	0	0	24
116270	0.889000000000000012	0	25545	0	0	24
116271	0.890000000000000013	0	25575	0	0	24
116272	0.891000000000000014	0	25607	0	0	24
116273	0.892000000000000015	0	25639	0	0	24
116274	0.893000000000000016	0	25671	0	0	24
116275	0.894000000000000017	0	25703	0	0	24
116276	0.895000000000000018	0	25735	0	0	24
116277	0.896000000000000019	0	25767	0	0	24
116278	0.89700000000000002	0	25799	0	0	24
116279	0.89800000000000002	0	25831	0	0	24
116280	0.899000000000000021	0	25863	0	0	24
116281	0.900000000000000022	0	25892	0	0	24
116282	0.901000000000000023	0	25924	0	0	24
116283	0.902000000000000024	0	25956	0	0	24
116284	0.903000000000000025	0	25988	0	0	24
116285	0.904000000000000026	0	26020	0	0	24
116286	0.905000000000000027	0	26052	0	0	24
116287	0.906000000000000028	0	26084	0	0	24
116288	0.907000000000000028	0	26116	0	0	24
116289	0.908000000000000029	0	26148	0	0	24
116290	0.90900000000000003	0	26180	0	0	24
116291	0.910000000000000031	0	26210	0	0	24
116292	0.911000000000000032	0	26242	0	0	24
116293	0.912000000000000033	0	26274	0	0	24
116294	0.913000000000000034	0	26306	0	0	24
116295	0.914000000000000035	0	26338	0	0	24
116296	0.915000000000000036	0	26370	0	0	24
116297	0.916000000000000036	0	26402	0	0	24
116298	0.917000000000000037	0	26434	0	0	24
116299	0.918000000000000038	0	26466	0	0	24
116300	0.919000000000000039	0	26498	0	0	24
116301	0.92000000000000004	0	26528	0	0	24
116302	0.921000000000000041	0	26560	0	0	24
116303	0.922000000000000042	0	26592	0	0	24
116304	0.923000000000000043	0	26624	0	0	24
116305	0.924000000000000044	0	26656	0	0	24
116306	0.925000000000000044	0	26688	0	0	24
116307	0.926000000000000045	0	26720	0	0	24
116308	0.927000000000000046	0	26752	0	0	24
116309	0.928000000000000047	0	26784	0	0	24
116310	0.929000000000000048	0	26816	0	0	24
116311	0.930000000000000049	0	26846	0	0	24
116312	0.93100000000000005	0	26878	0	0	24
116313	0.932000000000000051	0	26910	0	0	24
116314	0.933000000000000052	0	26942	0	0	24
116315	0.934000000000000052	0	26974	0	0	24
116316	0.935000000000000053	0	27006	0	0	24
116317	0.936000000000000054	0	27038	0	0	24
116318	0.937000000000000055	0	27070	0	0	24
116319	0.937999999999999945	0	27102	0	0	24
116320	0.938999999999999946	0	27134	0	0	24
116321	0.939999999999999947	0	27164	0	0	24
116322	0.940999999999999948	0	27196	0	0	24
116323	0.941999999999999948	0	27228	0	0	24
116324	0.942999999999999949	0	27260	0	0	24
116325	0.94399999999999995	0	27292	0	0	24
116326	0.944999999999999951	0	27324	0	0	24
116327	0.945999999999999952	0	27356	0	0	24
116328	0.946999999999999953	0	27388	0	0	24
116329	0.947999999999999954	0	27420	0	0	24
116330	0.948999999999999955	0	27452	0	0	24
116331	0.949999999999999956	0	27481	0	0	24
116332	0.950999999999999956	0	27513	0	0	24
116333	0.951999999999999957	0	27545	0	0	24
116334	0.952999999999999958	0	27577	0	0	24
116335	0.953999999999999959	0	27609	0	0	24
116336	0.95499999999999996	0	27641	0	0	24
116337	0.955999999999999961	0	27673	0	0	24
116338	0.956999999999999962	0	27705	0	0	24
116339	0.957999999999999963	0	27737	0	0	24
116340	0.958999999999999964	0	27769	0	0	24
116341	0.959999999999999964	0	27799	0	0	24
116342	0.960999999999999965	0	27831	0	0	24
116343	0.961999999999999966	0	27863	0	0	24
116344	0.962999999999999967	0	27895	0	0	24
116345	0.963999999999999968	0	27927	0	0	24
116346	0.964999999999999969	0	27959	0	0	24
116347	0.96599999999999997	0	27991	0	0	24
116348	0.966999999999999971	0	28023	0	0	24
116349	0.967999999999999972	0	28055	0	0	24
116350	0.968999999999999972	0	28087	0	0	24
116351	0.969999999999999973	0	28117	0	0	24
116352	0.970999999999999974	0	28149	0	0	24
116353	0.971999999999999975	0	28181	0	0	24
116354	0.972999999999999976	0	28213	0	0	24
116355	0.973999999999999977	0	28245	0	0	24
116356	0.974999999999999978	0	28277	0	0	24
116357	0.975999999999999979	0	28309	0	0	24
116358	0.97699999999999998	0	28341	0	0	24
116359	0.97799999999999998	0	28373	0	0	24
116360	0.978999999999999981	0	28405	0	0	24
116361	0.979999999999999982	0	28435	0	0	24
116362	0.980999999999999983	0	28467	0	0	24
116363	0.981999999999999984	0	28499	0	0	24
116364	0.982999999999999985	0	28531	0	0	24
116365	0.983999999999999986	0	28563	0	0	24
116366	0.984999999999999987	0	28595	0	0	24
116367	0.985999999999999988	0	28627	0	0	24
116368	0.986999999999999988	0	28659	0	0	24
116369	0.987999999999999989	0	28691	0	0	24
116370	0.98899999999999999	0	28723	0	0	24
116371	0.989999999999999991	0	28753	0	0	24
116372	0.990999999999999992	0	28785	0	0	24
116373	0.991999999999999993	0	28817	0	0	24
116374	0.992999999999999994	0	28849	0	0	24
116375	0.993999999999999995	0	28881	0	0	24
116376	0.994999999999999996	0	28913	0	0	24
116377	0.995999999999999996	0	28945	0	0	24
116378	0.996999999999999997	0	28977	0	0	24
116379	0.997999999999999998	0	29009	0	0	24
116380	0.998999999999999999	0	29041	0	0	24
116381	1	0	29070	0	0	24
116382	1.00099999999999989	0	29102	0	0	24
116383	1.002	0	29134	0	0	24
116384	1.00299999999999989	0	29166	0	0	24
116385	1.004	0	29198	0	0	24
116386	1.00499999999999989	0	29230	0	0	24
116387	1.00600000000000001	0	29262	0	0	24
116388	1.0069999999999999	0	29294	0	0	24
116389	1.00800000000000001	0	29326	0	0	24
116390	1.0089999999999999	0	29358	0	0	24
116391	1.01000000000000001	0	29388	0	0	24
116392	1.0109999999999999	0	29420	0	0	24
116393	1.01200000000000001	0	29452	0	0	24
116394	1.0129999999999999	0	29484	0	0	24
116395	1.01400000000000001	0	29516	0	0	24
116396	1.0149999999999999	0	29548	0	0	24
116397	1.01600000000000001	0	29580	0	0	24
116398	1.0169999999999999	0	29612	0	0	24
116399	1.01800000000000002	0	29644	0	0	24
116400	1.01899999999999991	0	29676	0	0	24
116401	1.02000000000000002	0	29706	0	0	24
116402	1.02099999999999991	0	29738	0	0	24
116403	1.02200000000000002	0	29770	0	0	24
116404	1.02299999999999991	0	29802	0	0	24
116405	1.02400000000000002	0	29834	0	0	24
116406	1.02499999999999991	0	29866	0	0	24
116407	1.02600000000000002	0	29898	0	0	24
116408	1.02699999999999991	0	29930	0	0	24
116409	1.02800000000000002	0	29962	0	0	24
116410	1.02899999999999991	0	29994	0	0	24
116411	1.03000000000000003	0	30024	0	0	24
116412	1.03099999999999992	0	30056	0	0	24
116413	1.03200000000000003	0	30088	0	0	24
116414	1.03299999999999992	0	30120	0	0	24
116415	1.03400000000000003	0	30152	0	0	24
116416	1.03499999999999992	0	30184	0	0	24
116417	1.03600000000000003	0	30216	0	0	24
116418	1.03699999999999992	0	30248	0	0	24
116419	1.03800000000000003	0	30280	0	0	24
116420	1.03899999999999992	0	30312	0	0	24
116421	1.04000000000000004	0	30342	0	0	24
116422	1.04099999999999993	0	30374	0	0	24
116423	1.04200000000000004	0	30406	0	0	24
116424	1.04299999999999993	0	30438	0	0	24
116425	1.04400000000000004	0	30470	0	0	24
116426	1.04499999999999993	0	30502	0	0	24
116427	1.04600000000000004	0	30534	0	0	24
116428	1.04699999999999993	0	30566	0	0	24
116429	1.04800000000000004	0	30598	0	0	24
116430	1.04899999999999993	0	30630	0	0	24
116431	1.05000000000000004	0	30660	0	0	24
116432	1.05099999999999993	0	30691	0	0	24
116433	1.05200000000000005	0	30723	0	0	24
116434	1.05299999999999994	0	30755	0	0	24
116435	1.05400000000000005	0	30787	0	0	24
116436	1.05499999999999994	0	30819	0	0	24
116437	1.05600000000000005	0	30851	0	0	24
116438	1.05699999999999994	0	30883	0	0	24
116439	1.05800000000000005	0	30915	0	0	24
116440	1.05899999999999994	0	30947	0	0	24
116441	1.06000000000000005	0	30977	0	0	24
116442	1.06099999999999994	0	31009	0	0	24
116443	1.06200000000000006	0	31041	0	0	24
116444	1.06299999999999994	0	31073	0	0	24
116445	1.06400000000000006	0	31105	0	0	24
116446	1.06499999999999995	0	31137	0	0	24
116447	1.06600000000000006	0	31169	0	0	24
116448	1.06699999999999995	0	31201	0	0	24
116449	1.06800000000000006	0	31233	0	0	24
116450	1.06899999999999995	0	31265	0	0	24
116451	1.07000000000000006	0	31295	0	0	24
116452	1.07099999999999995	0	31327	0	0	24
116453	1.07200000000000006	0	31359	0	0	24
116454	1.07299999999999995	0	31391	0	0	24
116455	1.07400000000000007	0	31423	0	0	24
116456	1.07499999999999996	0	31455	0	0	24
116457	1.07600000000000007	0	31487	0	0	24
116458	1.07699999999999996	0	31519	0	0	24
116459	1.07800000000000007	0	31551	0	0	24
116460	1.07899999999999996	0	31583	0	0	24
116461	1.08000000000000007	0	31613	0	0	24
116462	1.08099999999999996	0	31645	0	0	24
116463	1.08200000000000007	0	31677	0	0	24
116464	1.08299999999999996	0	31709	0	0	24
116465	1.08400000000000007	0	31741	0	0	24
116466	1.08499999999999996	0	31773	0	0	24
132702	17.3210000000000015	0	543685	0	0	24
132703	17.3219999999999992	0	543717	0	0	24
132704	17.3230000000000004	0	543749	0	0	24
132705	17.3240000000000016	0	543781	0	0	24
132706	17.3249999999999993	0	543813	0	0	24
132707	17.3260000000000005	0	543845	0	0	24
132708	17.3270000000000017	0	543877	0	0	24
132709	17.3279999999999994	0	543909	0	0	24
132710	17.3290000000000006	0	543941	0	0	24
132711	17.3299999999999983	0	543971	0	0	24
132712	17.3309999999999995	0	544003	0	0	24
132713	17.3320000000000007	0	544035	0	0	24
132714	17.3329999999999984	0	544067	0	0	24
132715	17.3339999999999996	0	544099	0	0	24
132716	17.3350000000000009	0	544131	0	0	24
132717	17.3359999999999985	0	544163	0	0	24
132718	17.3369999999999997	0	544195	0	0	24
132719	17.338000000000001	0	544227	0	0	24
132720	17.3389999999999986	0	544259	0	0	24
132721	17.3399999999999999	0	544289	0	0	24
132722	17.3410000000000011	0	544321	0	0	24
132723	17.3419999999999987	0	544353	0	0	24
132724	17.343	0	544385	0	0	24
132725	17.3440000000000012	0	544417	0	0	24
132726	17.3449999999999989	0	544449	0	0	24
132727	17.3460000000000001	0	544481	0	0	24
132728	17.3470000000000013	0	544513	0	0	24
132729	17.347999999999999	0	544545	0	0	24
132730	17.3490000000000002	0	544577	0	0	24
132731	17.3500000000000014	0	544607	0	0	24
132732	17.3509999999999991	0	544639	0	0	24
132733	17.3520000000000003	0	544671	0	0	24
132734	17.3530000000000015	0	544703	0	0	24
132735	17.3539999999999992	0	544735	0	0	24
132736	17.3550000000000004	0	544767	0	0	24
132737	17.3560000000000016	0	544799	0	0	24
132738	17.3569999999999993	0	544831	0	0	24
132739	17.3580000000000005	0	544863	0	0	24
132740	17.3590000000000018	0	544895	0	0	24
132741	17.3599999999999994	0	544925	0	0	24
132742	17.3610000000000007	0	544957	0	0	24
132743	17.3619999999999983	0	544989	0	0	24
132744	17.3629999999999995	0	545021	0	0	24
132745	17.3640000000000008	0	545053	0	0	24
132746	17.3649999999999984	0	545085	0	0	24
132747	17.3659999999999997	0	545117	0	0	24
132748	17.3670000000000009	0	545149	0	0	24
132749	17.3679999999999986	0	545181	0	0	24
132750	17.3689999999999998	0	545213	0	0	24
132751	17.370000000000001	0	545243	0	0	24
132752	17.3709999999999987	0	545275	0	0	24
132753	17.3719999999999999	0	545307	0	0	24
132754	17.3730000000000011	0	545339	0	0	24
132755	17.3739999999999988	0	545371	0	0	24
132756	17.375	0	545403	0	0	24
132757	17.3760000000000012	0	545435	0	0	24
132758	17.3769999999999989	0	545467	0	0	24
132759	17.3780000000000001	0	545499	0	0	24
132760	17.3790000000000013	0	545531	0	0	24
132761	17.379999999999999	0	545561	0	0	24
132762	17.3810000000000002	0	545593	0	0	24
132763	17.3820000000000014	0	545625	0	0	24
132764	17.3829999999999991	0	545657	0	0	24
132765	17.3840000000000003	0	545689	0	0	24
132766	17.3850000000000016	0	545721	0	0	24
132767	17.3859999999999992	0	545753	0	0	24
132768	17.3870000000000005	0	545785	0	0	24
132769	17.3880000000000017	0	545817	0	0	24
132770	17.3889999999999993	0	545849	0	0	24
132771	17.3900000000000006	0	545879	0	0	24
132772	17.3909999999999982	0	545911	0	0	24
132773	17.3919999999999995	0	545943	0	0	24
132774	17.3930000000000007	0	545975	0	0	24
132775	17.3939999999999984	0	546007	0	0	24
132776	17.3949999999999996	0	546039	0	0	24
132777	17.3960000000000008	0	546071	0	0	24
132778	17.3969999999999985	0	546103	0	0	24
132779	17.3979999999999997	0	546135	0	0	24
132780	17.3990000000000009	0	546167	0	0	24
132781	17.3999999999999986	0	546197	0	0	24
132782	17.4009999999999998	0	546229	0	0	24
132783	17.402000000000001	0	546261	0	0	24
132784	17.4029999999999987	0	546293	0	0	24
132785	17.4039999999999999	0	546325	0	0	24
132786	17.4050000000000011	0	546357	0	0	24
132787	17.4059999999999988	0	546389	0	0	24
132788	17.407	0	546421	0	0	24
132789	17.4080000000000013	0	546453	0	0	24
132790	17.4089999999999989	0	546485	0	0	24
132791	17.4100000000000001	0	546515	0	0	24
132792	17.4110000000000014	0	546547	0	0	24
133250	17.8689999999999998	0	561113	0	0	24
133251	17.870000000000001	0	561143	0	0	24
133252	17.8709999999999987	0	561175	0	0	24
133253	17.8719999999999999	0	561207	0	0	24
133254	17.8730000000000011	0	561239	0	0	24
133255	17.8739999999999988	0	561271	0	0	24
133256	17.875	0	561303	0	0	24
133257	17.8760000000000012	0	561335	0	0	24
133258	17.8769999999999989	0	561367	0	0	24
133259	17.8780000000000001	0	561399	0	0	24
133260	17.8790000000000013	0	561431	0	0	24
133261	17.879999999999999	0	561461	0	0	24
133262	17.8810000000000002	0	561493	0	0	24
133263	17.8820000000000014	0	561525	0	0	24
133264	17.8829999999999991	0	561557	0	0	24
133265	17.8840000000000003	0	561589	0	0	24
133266	17.8850000000000016	0	561621	0	0	24
133267	17.8859999999999992	0	561653	0	0	24
133268	17.8870000000000005	0	561685	0	0	24
133269	17.8880000000000017	0	561717	0	0	24
133270	17.8889999999999993	0	561749	0	0	24
133271	17.8900000000000006	0	561779	0	0	24
133272	17.8909999999999982	0	561811	0	0	24
133273	17.8919999999999995	0	561843	0	0	24
133274	17.8930000000000007	0	561875	0	0	24
133275	17.8939999999999984	0	561907	0	0	24
133276	17.8949999999999996	0	561939	0	0	24
133277	17.8960000000000008	0	561971	0	0	24
133278	17.8969999999999985	0	562003	0	0	24
133279	17.8979999999999997	0	562035	0	0	24
133280	17.8990000000000009	0	562067	0	0	24
133281	17.8999999999999986	0	562097	0	0	24
133282	17.9009999999999998	0	562129	0	0	24
133283	17.902000000000001	0	562161	0	0	24
133284	17.9029999999999987	0	562193	0	0	24
133285	17.9039999999999999	0	562225	0	0	24
133286	17.9050000000000011	0	562257	0	0	24
133287	17.9059999999999988	0	562289	0	0	24
133288	17.907	0	562321	0	0	24
133289	17.9080000000000013	0	562353	0	0	24
133290	17.9089999999999989	0	562385	0	0	24
133291	17.9100000000000001	0	562415	0	0	24
133292	17.9110000000000014	0	562447	0	0	24
133293	17.911999999999999	0	562479	0	0	24
133294	17.9130000000000003	0	562511	0	0	24
133295	17.9140000000000015	0	562543	0	0	24
133296	17.9149999999999991	0	562575	0	0	24
133297	17.9160000000000004	0	562607	0	0	24
133298	17.9170000000000016	0	562639	0	0	24
133299	17.9179999999999993	0	562671	0	0	24
133300	17.9190000000000005	0	562703	0	0	24
133301	17.9200000000000017	0	562733	0	0	24
133302	17.9209999999999994	0	562765	0	0	24
133303	17.9220000000000006	0	562797	0	0	24
133304	17.9229999999999983	0	562829	0	0	24
133305	17.9239999999999995	0	562861	0	0	24
133306	17.9250000000000007	0	562893	0	0	24
133307	17.9259999999999984	0	562925	0	0	24
133308	17.9269999999999996	0	562957	0	0	24
133309	17.9280000000000008	0	562989	0	0	24
133310	17.9289999999999985	0	563021	0	0	24
133311	17.9299999999999997	0	563051	0	0	24
133312	17.9310000000000009	0	563083	0	0	24
133313	17.9319999999999986	0	563115	0	0	24
133314	17.9329999999999998	0	563147	0	0	24
133315	17.9340000000000011	0	563179	0	0	24
133316	17.9349999999999987	0	563211	0	0	24
133317	17.9359999999999999	0	563243	0	0	24
133318	17.9370000000000012	0	563275	0	0	24
133319	17.9379999999999988	0	563307	0	0	24
133320	17.9390000000000001	0	563339	0	0	24
133321	17.9400000000000013	0	563369	0	0	24
133322	17.9409999999999989	0	563401	0	0	24
133323	17.9420000000000002	0	563433	0	0	24
133324	17.9430000000000014	0	563465	0	0	24
133325	17.9439999999999991	0	563497	0	0	24
133326	17.9450000000000003	0	563529	0	0	24
133327	17.9460000000000015	0	563561	0	0	24
133328	17.9469999999999992	0	563593	0	0	24
133329	17.9480000000000004	0	563625	0	0	24
133330	17.9490000000000016	0	563657	0	0	24
133331	17.9499999999999993	0	563687	0	0	24
133332	17.9510000000000005	0	563719	0	0	24
133333	17.9520000000000017	0	563751	0	0	24
133334	17.9529999999999994	0	563783	0	0	24
133335	17.9540000000000006	0	563815	0	0	24
133336	17.9549999999999983	0	563847	0	0	24
133337	17.9559999999999995	0	563879	0	0	24
133338	17.9570000000000007	0	563911	0	0	24
133339	17.9579999999999984	0	563943	0	0	24
133340	17.9589999999999996	0	563975	0	0	24
133341	17.9600000000000009	0	564005	0	0	24
133342	17.9609999999999985	0	564037	0	0	24
133343	17.9619999999999997	0	564069	0	0	24
133344	17.963000000000001	0	564101	0	0	24
133345	17.9639999999999986	0	564133	0	0	24
133346	17.9649999999999999	0	564165	0	0	24
133347	17.9660000000000011	0	564197	0	0	24
133348	17.9669999999999987	0	564229	0	0	24
133349	17.968	0	564261	0	0	24
133350	17.9690000000000012	0	564293	0	0	24
133351	17.9699999999999989	0	564323	0	0	24
133352	17.9710000000000001	0	564355	0	0	24
133353	17.9720000000000013	0	564387	0	0	24
133354	17.972999999999999	0	564419	0	0	24
133355	17.9740000000000002	0	564451	0	0	24
133356	17.9750000000000014	0	564483	0	0	24
133357	17.9759999999999991	0	564515	0	0	24
133358	17.9770000000000003	0	564547	0	0	24
133359	17.9780000000000015	0	564579	0	0	24
133360	17.9789999999999992	0	564611	0	0	24
133361	17.9800000000000004	0	564641	0	0	24
133362	17.9810000000000016	0	564673	0	0	24
133363	17.9819999999999993	0	564705	0	0	24
133364	17.9830000000000005	0	564737	0	0	24
133365	17.9840000000000018	0	564769	0	0	24
133366	17.9849999999999994	0	564801	0	0	24
133367	17.9860000000000007	0	564833	0	0	24
133368	17.9869999999999983	0	564865	0	0	24
133369	17.9879999999999995	0	564897	0	0	24
133370	17.9890000000000008	0	564929	0	0	24
133371	17.9899999999999984	0	564959	0	0	24
133372	17.9909999999999997	0	564991	0	0	24
133373	17.9920000000000009	0	565023	0	0	24
133374	17.9929999999999986	0	565055	0	0	24
133375	17.9939999999999998	0	565087	0	0	24
133376	17.995000000000001	0	565119	0	0	24
133377	17.9959999999999987	0	565151	0	0	24
133378	17.9969999999999999	0	565183	0	0	24
133379	17.9980000000000011	0	565215	0	0	24
133380	17.9989999999999988	0	565247	0	0	24
133381	18	0	565277	0	0	24
133382	18.0010000000000012	0	565308	0	0	24
133383	18.0019999999999989	0	565340	0	0	24
133384	18.0030000000000001	0	565372	0	0	24
133385	18.0040000000000013	0	565404	0	0	24
133386	18.004999999999999	0	565436	0	0	24
133387	18.0060000000000002	0	565468	0	0	24
133388	18.0070000000000014	0	565500	0	0	24
133389	18.0079999999999991	0	565532	0	0	24
133390	18.0090000000000003	0	565564	0	0	24
133391	18.0100000000000016	0	565594	0	0	24
133392	18.0109999999999992	0	565626	0	0	24
133393	18.0120000000000005	0	565658	0	0	24
133394	18.0130000000000017	0	565690	0	0	24
133395	18.0139999999999993	0	565722	0	0	24
133396	18.0150000000000006	0	565754	0	0	24
133397	18.0159999999999982	0	565786	0	0	24
133398	18.0169999999999995	0	565818	0	0	24
133399	18.0180000000000007	0	565850	0	0	24
133400	18.0189999999999984	0	565882	0	0	24
133401	18.0199999999999996	0	565912	0	0	24
133402	18.0210000000000008	0	565944	0	0	24
133403	18.0219999999999985	0	565976	0	0	24
133404	18.0229999999999997	0	566008	0	0	24
133405	18.0240000000000009	0	566040	0	0	24
133406	18.0249999999999986	0	566072	0	0	24
133407	18.0259999999999998	0	566104	0	0	24
133408	18.027000000000001	0	566136	0	0	24
133409	18.0279999999999987	0	566168	0	0	24
133410	18.0289999999999999	0	566200	0	0	24
133411	18.0300000000000011	0	566230	0	0	24
133412	18.0309999999999988	0	566262	0	0	24
133413	18.032	0	566294	0	0	24
133414	18.0330000000000013	0	566326	0	0	24
133415	18.0339999999999989	0	566358	0	0	24
133416	18.0350000000000001	0	566390	0	0	24
133417	18.0360000000000014	0	566422	0	0	24
133418	18.036999999999999	0	566454	0	0	24
133419	18.0380000000000003	0	566486	0	0	24
133420	18.0390000000000015	0	566518	0	0	24
133421	18.0399999999999991	0	566548	0	0	24
133422	18.0410000000000004	0	566580	0	0	24
133423	18.0420000000000016	0	566612	0	0	24
133424	18.0429999999999993	0	566644	0	0	24
133425	18.0440000000000005	0	566676	0	0	24
133426	18.0450000000000017	0	566708	0	0	24
133427	18.0459999999999994	0	566740	0	0	24
133428	18.0470000000000006	0	566772	0	0	24
133429	18.0479999999999983	0	566804	0	0	24
133430	18.0489999999999995	0	566836	0	0	24
133431	18.0500000000000007	0	566866	0	0	24
133432	18.0509999999999984	0	566898	0	0	24
133433	18.0519999999999996	0	566930	0	0	24
133434	18.0530000000000008	0	566962	0	0	24
133435	18.0539999999999985	0	566994	0	0	24
133436	18.0549999999999997	0	567026	0	0	24
133437	18.0560000000000009	0	567058	0	0	24
133438	18.0569999999999986	0	567090	0	0	24
133439	18.0579999999999998	0	567122	0	0	24
133440	18.0590000000000011	0	567154	0	0	24
133441	18.0599999999999987	0	567184	0	0	24
133442	18.0609999999999999	0	567216	0	0	24
133443	18.0620000000000012	0	567248	0	0	24
133444	18.0629999999999988	0	567280	0	0	24
133445	18.0640000000000001	0	567312	0	0	24
133446	18.0650000000000013	0	567344	0	0	24
133447	18.0659999999999989	0	567376	0	0	24
133448	18.0670000000000002	0	567408	0	0	24
133449	18.0680000000000014	0	567440	0	0	24
133450	18.0689999999999991	0	567472	0	0	24
133451	18.0700000000000003	0	567502	0	0	24
133452	18.0710000000000015	0	567534	0	0	24
133453	18.0719999999999992	0	567566	0	0	24
133454	18.0730000000000004	0	567598	0	0	24
133455	18.0740000000000016	0	567630	0	0	24
133456	18.0749999999999993	0	567662	0	0	24
133457	18.0760000000000005	0	567694	0	0	24
133458	18.0770000000000017	0	567726	0	0	24
133459	18.0779999999999994	0	567758	0	0	24
133460	18.0790000000000006	0	567790	0	0	24
133461	18.0799999999999983	0	567820	0	0	24
133462	18.0809999999999995	0	567852	0	0	24
133463	18.0820000000000007	0	567884	0	0	24
133464	18.0829999999999984	0	567916	0	0	24
133465	18.0839999999999996	0	567948	0	0	24
133466	18.0850000000000009	0	567980	0	0	24
133467	18.0859999999999985	0	568012	0	0	24
133468	18.0869999999999997	0	568044	0	0	24
133469	18.088000000000001	0	568076	0	0	24
133470	18.0889999999999986	0	568108	0	0	24
133471	18.0899999999999999	0	568138	0	0	24
133472	18.0910000000000011	0	568170	0	0	24
133473	18.0919999999999987	0	568202	0	0	24
133474	18.093	0	568234	0	0	24
133475	18.0940000000000012	0	568266	0	0	24
133476	18.0949999999999989	0	568298	0	0	24
133477	18.0960000000000001	0	568330	0	0	24
133478	18.0970000000000013	0	568362	0	0	24
133479	18.097999999999999	0	568394	0	0	24
133480	18.0990000000000002	0	568426	0	0	24
133481	18.1000000000000014	0	568456	0	0	24
133482	18.1009999999999991	0	568488	0	0	24
133483	18.1020000000000003	0	568520	0	0	24
133484	18.1030000000000015	0	568552	0	0	24
133485	18.1039999999999992	0	568584	0	0	24
133486	18.1050000000000004	0	568616	0	0	24
133487	18.1060000000000016	0	568648	0	0	24
133488	18.1069999999999993	0	568680	0	0	24
133489	18.1080000000000005	0	568712	0	0	24
133490	18.1090000000000018	0	568744	0	0	24
133491	18.1099999999999994	0	568774	0	0	24
133492	18.1110000000000007	0	568806	0	0	24
133493	18.1119999999999983	0	568838	0	0	24
133494	18.1129999999999995	0	568870	0	0	24
133495	18.1140000000000008	0	568902	0	0	24
133496	18.1149999999999984	0	568934	0	0	24
133497	18.1159999999999997	0	568966	0	0	24
133498	18.1170000000000009	0	568998	0	0	24
133499	18.1179999999999986	0	569030	0	0	24
133500	18.1189999999999998	0	569062	0	0	24
133501	18.120000000000001	0	569092	0	0	24
133502	18.1209999999999987	0	569124	0	0	24
133503	18.1219999999999999	0	569156	0	0	24
133504	18.1230000000000011	0	569188	0	0	24
133505	18.1239999999999988	0	569220	0	0	24
133506	18.125	0	569252	0	0	24
133507	18.1260000000000012	0	569284	0	0	24
133508	18.1269999999999989	0	569316	0	0	24
133509	18.1280000000000001	0	569348	0	0	24
133510	18.1290000000000013	0	569380	0	0	24
133511	18.129999999999999	0	569410	0	0	24
133512	18.1310000000000002	0	569442	0	0	24
133513	18.1320000000000014	0	569474	0	0	24
133514	18.1329999999999991	0	569506	0	0	24
133515	18.1340000000000003	0	569538	0	0	24
133516	18.1350000000000016	0	569570	0	0	24
133517	18.1359999999999992	0	569602	0	0	24
133518	18.1370000000000005	0	569634	0	0	24
133519	18.1380000000000017	0	569666	0	0	24
133520	18.1389999999999993	0	569698	0	0	24
133521	18.1400000000000006	0	569728	0	0	24
133522	18.1409999999999982	0	569760	0	0	24
133523	18.1419999999999995	0	569792	0	0	24
133524	18.1430000000000007	0	569824	0	0	24
133525	18.1439999999999984	0	569856	0	0	24
133526	18.1449999999999996	0	569888	0	0	24
133527	18.1460000000000008	0	569920	0	0	24
133528	18.1469999999999985	0	569952	0	0	24
133529	18.1479999999999997	0	569984	0	0	24
133530	18.1490000000000009	0	570016	0	0	24
133531	18.1499999999999986	0	570046	0	0	24
133532	18.1509999999999998	0	570078	0	0	24
133533	18.152000000000001	0	570110	0	0	24
133534	18.1529999999999987	0	570142	0	0	24
133535	18.1539999999999999	0	570174	0	0	24
133536	18.1550000000000011	0	570206	0	0	24
133537	18.1559999999999988	0	570238	0	0	24
133538	18.157	0	570270	0	0	24
133539	18.1580000000000013	0	570302	0	0	24
133540	18.1589999999999989	0	570334	0	0	24
133541	18.1600000000000001	0	570364	0	0	24
133542	18.1610000000000014	0	570396	0	0	24
133543	18.161999999999999	0	570428	0	0	24
133544	18.1630000000000003	0	570460	0	0	24
133545	18.1640000000000015	0	570492	0	0	24
133546	18.1649999999999991	0	570524	0	0	24
133547	18.1660000000000004	0	570556	0	0	24
133548	18.1670000000000016	0	570588	0	0	24
133549	18.1679999999999993	0	570620	0	0	24
133550	18.1690000000000005	0	570652	0	0	24
133551	18.1700000000000017	0	570682	0	0	24
133552	18.1709999999999994	0	570714	0	0	24
133553	18.1720000000000006	0	570746	0	0	24
133554	18.1729999999999983	0	570778	0	0	24
133555	18.1739999999999995	0	570810	0	0	24
133556	18.1750000000000007	0	570842	0	0	24
133557	18.1759999999999984	0	570874	0	0	24
133558	18.1769999999999996	0	570906	0	0	24
133559	18.1780000000000008	0	570938	0	0	24
133560	18.1789999999999985	0	570970	0	0	24
133561	18.1799999999999997	0	571000	0	0	24
133562	18.1810000000000009	0	571032	0	0	24
133563	18.1819999999999986	0	571064	0	0	24
133564	18.1829999999999998	0	571096	0	0	24
133565	18.1840000000000011	0	571128	0	0	24
133566	18.1849999999999987	0	571160	0	0	24
133567	18.1859999999999999	0	571192	0	0	24
133568	18.1870000000000012	0	571224	0	0	24
133569	18.1879999999999988	0	571256	0	0	24
133570	18.1890000000000001	0	571288	0	0	24
133571	18.1900000000000013	0	571318	0	0	24
133572	18.1909999999999989	0	571350	0	0	24
133573	18.1920000000000002	0	571382	0	0	24
133574	18.1930000000000014	0	571414	0	0	24
133575	18.1939999999999991	0	571446	0	0	24
133576	18.1950000000000003	0	571478	0	0	24
133577	18.1960000000000015	0	571510	0	0	24
133578	18.1969999999999992	0	571542	0	0	24
133579	18.1980000000000004	0	571574	0	0	24
133580	18.1990000000000016	0	571606	0	0	24
133581	18.1999999999999993	0	571636	0	0	24
133582	18.2010000000000005	0	571668	0	0	24
133583	18.2020000000000017	0	571700	0	0	24
133584	18.2029999999999994	0	571732	0	0	24
133585	18.2040000000000006	0	571764	0	0	24
133586	18.2049999999999983	0	571796	0	0	24
133587	18.2059999999999995	0	571828	0	0	24
133588	18.2070000000000007	0	571860	0	0	24
133589	18.2079999999999984	0	571892	0	0	24
133590	18.2089999999999996	0	571924	0	0	24
133591	18.2100000000000009	0	571954	0	0	24
133592	18.2109999999999985	0	571986	0	0	24
133593	18.2119999999999997	0	572018	0	0	24
133594	18.213000000000001	0	572050	0	0	24
133595	18.2139999999999986	0	572082	0	0	24
133596	18.2149999999999999	0	572114	0	0	24
133597	18.2160000000000011	0	572146	0	0	24
133598	18.2169999999999987	0	572178	0	0	24
133599	18.218	0	572210	0	0	24
133600	18.2190000000000012	0	572242	0	0	24
133601	18.2199999999999989	0	572272	0	0	24
133602	18.2210000000000001	0	572304	0	0	24
133603	18.2220000000000013	0	572336	0	0	24
133604	18.222999999999999	0	572368	0	0	24
133605	18.2240000000000002	0	572400	0	0	24
133606	18.2250000000000014	0	572432	0	0	24
133607	18.2259999999999991	0	572464	0	0	24
133608	18.2270000000000003	0	572496	0	0	24
133609	18.2280000000000015	0	572528	0	0	24
133610	18.2289999999999992	0	572560	0	0	24
133611	18.2300000000000004	0	572590	0	0	24
133612	18.2310000000000016	0	572622	0	0	24
133613	18.2319999999999993	0	572654	0	0	24
133614	18.2330000000000005	0	572686	0	0	24
133615	18.2340000000000018	0	572718	0	0	24
133616	18.2349999999999994	0	572750	0	0	24
133617	18.2360000000000007	0	572782	0	0	24
133618	18.2369999999999983	0	572814	0	0	24
133619	18.2379999999999995	0	572846	0	0	24
133620	18.2390000000000008	0	572878	0	0	24
133621	18.2399999999999984	0	572908	0	0	24
133622	18.2409999999999997	0	572940	0	0	24
133623	18.2420000000000009	0	572972	0	0	24
133624	18.2429999999999986	0	573004	0	0	24
133625	18.2439999999999998	0	573036	0	0	24
133626	18.245000000000001	0	573068	0	0	24
133627	18.2459999999999987	0	573100	0	0	24
133628	18.2469999999999999	0	573132	0	0	24
133629	18.2480000000000011	0	573164	0	0	24
133630	18.2489999999999988	0	573196	0	0	24
133631	18.25	0	573226	0	0	24
133632	18.2510000000000012	0	573258	0	0	24
133633	18.2519999999999989	0	573290	0	0	24
133634	18.2530000000000001	0	573322	0	0	24
133635	18.2540000000000013	0	573354	0	0	24
133636	18.254999999999999	0	573386	0	0	24
133637	18.2560000000000002	0	573418	0	0	24
133638	18.2570000000000014	0	573450	0	0	24
133639	18.2579999999999991	0	573482	0	0	24
133640	18.2590000000000003	0	573514	0	0	24
133641	18.2600000000000016	0	573544	0	0	24
133642	18.2609999999999992	0	573576	0	0	24
133643	18.2620000000000005	0	573608	0	0	24
133644	18.2630000000000017	0	573640	0	0	24
133645	18.2639999999999993	0	573672	0	0	24
133646	18.2650000000000006	0	573704	0	0	24
133647	18.2659999999999982	0	573736	0	0	24
133648	18.2669999999999995	0	573768	0	0	24
133649	18.2680000000000007	0	573800	0	0	24
133650	18.2689999999999984	0	573832	0	0	24
133651	18.2699999999999996	0	573862	0	0	24
133652	18.2710000000000008	0	573894	0	0	24
133653	18.2719999999999985	0	573926	0	0	24
133654	18.2729999999999997	0	573958	0	0	24
133655	18.2740000000000009	0	573990	0	0	24
133656	18.2749999999999986	0	574022	0	0	24
133657	18.2759999999999998	0	574054	0	0	24
133658	18.277000000000001	0	574086	0	0	24
133659	18.2779999999999987	0	574118	0	0	24
133660	18.2789999999999999	0	574150	0	0	24
133661	18.2800000000000011	0	574180	0	0	24
133662	18.2809999999999988	0	574212	0	0	24
133663	18.282	0	574244	0	0	24
133664	18.2830000000000013	0	574276	0	0	24
133665	18.2839999999999989	0	574308	0	0	24
133666	18.2850000000000001	0	574340	0	0	24
133667	18.2860000000000014	0	574372	0	0	24
133668	18.286999999999999	0	574404	0	0	24
133669	18.2880000000000003	0	574436	0	0	24
133670	18.2890000000000015	0	574468	0	0	24
133671	18.2899999999999991	0	574498	0	0	24
133672	18.2910000000000004	0	574530	0	0	24
133673	18.2920000000000016	0	574562	0	0	24
133674	18.2929999999999993	0	574594	0	0	24
133675	18.2940000000000005	0	574626	0	0	24
133676	18.2950000000000017	0	574658	0	0	24
133677	18.2959999999999994	0	574690	0	0	24
133678	18.2970000000000006	0	574722	0	0	24
133679	18.2979999999999983	0	574754	0	0	24
133680	18.2989999999999995	0	574786	0	0	24
133681	18.3000000000000007	0	574816	0	0	24
133682	18.3009999999999984	0	574848	0	0	24
133683	18.3019999999999996	0	574880	0	0	24
133684	18.3030000000000008	0	574912	0	0	24
133685	18.3039999999999985	0	574944	0	0	24
133686	18.3049999999999997	0	574976	0	0	24
133687	18.3060000000000009	0	575008	0	0	24
133688	18.3069999999999986	0	575040	0	0	24
133689	18.3079999999999998	0	575072	0	0	24
133690	18.3090000000000011	0	575104	0	0	24
133691	18.3099999999999987	0	575134	0	0	24
133692	18.3109999999999999	0	575166	0	0	24
133693	18.3120000000000012	0	575198	0	0	24
133694	18.3129999999999988	0	575230	0	0	24
133695	18.3140000000000001	0	575262	0	0	24
133696	18.3150000000000013	0	575294	0	0	24
133697	18.3159999999999989	0	575326	0	0	24
133698	18.3170000000000002	0	575358	0	0	24
133699	18.3180000000000014	0	575390	0	0	24
133700	18.3189999999999991	0	575422	0	0	24
133701	18.3200000000000003	0	575452	0	0	24
133702	18.3210000000000015	0	575484	0	0	24
133703	18.3219999999999992	0	575516	0	0	24
133704	18.3230000000000004	0	575548	0	0	24
133705	18.3240000000000016	0	575580	0	0	24
133706	18.3249999999999993	0	575612	0	0	24
133707	18.3260000000000005	0	575644	0	0	24
133708	18.3270000000000017	0	575676	0	0	24
133709	18.3279999999999994	0	575708	0	0	24
133710	18.3290000000000006	0	575740	0	0	24
133711	18.3299999999999983	0	575770	0	0	24
133712	18.3309999999999995	0	575802	0	0	24
133713	18.3320000000000007	0	575834	0	0	24
133714	18.3329999999999984	0	575866	0	0	24
133715	18.3339999999999996	0	575898	0	0	24
133716	18.3350000000000009	0	575930	0	0	24
133717	18.3359999999999985	0	575962	0	0	24
133718	18.3369999999999997	0	575994	0	0	24
133719	18.338000000000001	0	576026	0	0	24
133720	18.3389999999999986	0	576058	0	0	24
133721	18.3399999999999999	0	576088	0	0	24
133722	18.3410000000000011	0	576120	0	0	24
133723	18.3419999999999987	0	576152	0	0	24
133724	18.343	0	576184	0	0	24
133725	18.3440000000000012	0	576216	0	0	24
133726	18.3449999999999989	0	576248	0	0	24
133727	18.3460000000000001	0	576280	0	0	24
133728	18.3470000000000013	0	576312	0	0	24
133729	18.347999999999999	0	576344	0	0	24
133730	18.3490000000000002	0	576376	0	0	24
133731	18.3500000000000014	0	576406	0	0	24
133732	18.3509999999999991	0	576438	0	0	24
133733	18.3520000000000003	0	576470	0	0	24
133734	18.3530000000000015	0	576502	0	0	24
133735	18.3539999999999992	0	576534	0	0	24
133736	18.3550000000000004	0	576566	0	0	24
133737	18.3560000000000016	0	576598	0	0	24
133738	18.3569999999999993	0	576630	0	0	24
133739	18.3580000000000005	0	576662	0	0	24
133740	18.3590000000000018	0	576694	0	0	24
133741	18.3599999999999994	0	576724	0	0	24
133742	18.3610000000000007	0	576756	0	0	24
133743	18.3619999999999983	0	576788	0	0	24
133744	18.3629999999999995	0	576820	0	0	24
133745	18.3640000000000008	0	576852	0	0	24
133746	18.3649999999999984	0	576884	0	0	24
133747	18.3659999999999997	0	576916	0	0	24
133748	18.3670000000000009	0	576948	0	0	24
133749	18.3679999999999986	0	576980	0	0	24
133750	18.3689999999999998	0	577012	0	0	24
133751	18.370000000000001	0	577042	0	0	24
133752	18.3709999999999987	0	577074	0	0	24
133753	18.3719999999999999	0	577106	0	0	24
133754	18.3730000000000011	0	577138	0	0	24
133755	18.3739999999999988	0	577170	0	0	24
133756	18.375	0	577202	0	0	24
133757	18.3760000000000012	0	577234	0	0	24
133758	18.3769999999999989	0	577266	0	0	24
133759	18.3780000000000001	0	577298	0	0	24
133760	18.3790000000000013	0	577330	0	0	24
133761	18.379999999999999	0	577360	0	0	24
133762	18.3810000000000002	0	577392	0	0	24
133763	18.3820000000000014	0	577424	0	0	24
133764	18.3829999999999991	0	577456	0	0	24
133765	18.3840000000000003	0	577488	0	0	24
133766	18.3850000000000016	0	577520	0	0	24
133767	18.3859999999999992	0	577552	0	0	24
133768	18.3870000000000005	0	577584	0	0	24
133769	18.3880000000000017	0	577616	0	0	24
133770	18.3889999999999993	0	577648	0	0	24
133771	18.3900000000000006	0	577678	0	0	24
133772	18.3909999999999982	0	577710	0	0	24
133773	18.3919999999999995	0	577742	0	0	24
133774	18.3930000000000007	0	577774	0	0	24
133775	18.3939999999999984	0	577806	0	0	24
133776	18.3949999999999996	0	577838	0	0	24
133777	18.3960000000000008	0	577870	0	0	24
133778	18.3969999999999985	0	577902	0	0	24
133779	18.3979999999999997	0	577934	0	0	24
133780	18.3990000000000009	0	577966	0	0	24
133781	18.3999999999999986	0	577996	0	0	24
133782	18.4009999999999998	0	578028	0	0	24
133783	18.402000000000001	0	578060	0	0	24
133784	18.4029999999999987	0	578092	0	0	24
133785	18.4039999999999999	0	578124	0	0	24
133786	18.4050000000000011	0	578156	0	0	24
133787	18.4059999999999988	0	578188	0	0	24
133788	18.407	0	578220	0	0	24
133789	18.4080000000000013	0	578252	0	0	24
133790	18.4089999999999989	0	578284	0	0	24
133791	18.4100000000000001	0	578314	0	0	24
133792	18.4110000000000014	0	578346	0	0	24
133793	18.411999999999999	0	578378	0	0	24
133794	18.4130000000000003	0	578410	0	0	24
133795	18.4140000000000015	0	578442	0	0	24
133796	18.4149999999999991	0	578474	0	0	24
133797	18.4160000000000004	0	578506	0	0	24
133798	18.4170000000000016	0	578538	0	0	24
133799	18.4179999999999993	0	578570	0	0	24
133800	18.4190000000000005	0	578602	0	0	24
133801	18.4200000000000017	0	578632	0	0	24
133802	18.4209999999999994	0	578664	0	0	24
133803	18.4220000000000006	0	578696	0	0	24
133804	18.4229999999999983	0	578728	0	0	24
133805	18.4239999999999995	0	578760	0	0	24
133806	18.4250000000000007	0	578792	0	0	24
133807	18.4259999999999984	0	578824	0	0	24
133808	18.4269999999999996	0	578856	0	0	24
133809	18.4280000000000008	0	578888	0	0	24
133810	18.4289999999999985	0	578920	0	0	24
133811	18.4299999999999997	0	578950	0	0	24
133812	18.4310000000000009	0	578982	0	0	24
133813	18.4319999999999986	0	579014	0	0	24
133814	18.4329999999999998	0	579046	0	0	24
133815	18.4340000000000011	0	579078	0	0	24
133816	18.4349999999999987	0	579110	0	0	24
133817	18.4359999999999999	0	579142	0	0	24
133818	18.4370000000000012	0	579174	0	0	24
133819	18.4379999999999988	0	579206	0	0	24
133820	18.4390000000000001	0	579238	0	0	24
133821	18.4400000000000013	0	579268	0	0	24
133822	18.4409999999999989	0	579300	0	0	24
133823	18.4420000000000002	0	579332	0	0	24
133824	18.4430000000000014	0	579364	0	0	24
133825	18.4439999999999991	0	579396	0	0	24
133826	18.4450000000000003	0	579428	0	0	24
133827	18.4460000000000015	0	579460	0	0	24
133828	18.4469999999999992	0	579492	0	0	24
133829	18.4480000000000004	0	579524	0	0	24
133830	18.4490000000000016	0	579556	0	0	24
133831	18.4499999999999993	0	579586	0	0	24
133832	18.4510000000000005	0	579618	0	0	24
133833	18.4520000000000017	0	579650	0	0	24
133834	18.4529999999999994	0	579682	0	0	24
133835	18.4540000000000006	0	579714	0	0	24
133836	18.4549999999999983	0	579746	0	0	24
133837	18.4559999999999995	0	579778	0	0	24
133838	18.4570000000000007	0	579810	0	0	24
133839	18.4579999999999984	0	579842	0	0	24
133840	18.4589999999999996	0	579874	0	0	24
133841	18.4600000000000009	0	579904	0	0	24
133842	18.4609999999999985	0	579936	0	0	24
133843	18.4619999999999997	0	579968	0	0	24
133844	18.463000000000001	0	580000	0	0	24
133845	18.4639999999999986	0	580032	0	0	24
133846	18.4649999999999999	0	580064	0	0	24
133847	18.4660000000000011	0	580096	0	0	24
133848	18.4669999999999987	0	580128	0	0	24
133849	18.468	0	580160	0	0	24
133850	18.4690000000000012	0	580192	0	0	24
133851	18.4699999999999989	0	580222	0	0	24
133852	18.4710000000000001	0	580254	0	0	24
133853	18.4720000000000013	0	580286	0	0	24
133854	18.472999999999999	0	580318	0	0	24
133855	18.4740000000000002	0	580350	0	0	24
133856	18.4750000000000014	0	580382	0	0	24
133857	18.4759999999999991	0	580414	0	0	24
133858	18.4770000000000003	0	580446	0	0	24
133859	18.4780000000000015	0	580478	0	0	24
133860	18.4789999999999992	0	580510	0	0	24
133861	18.4800000000000004	0	580540	0	0	24
133862	18.4810000000000016	0	580572	0	0	24
133863	18.4819999999999993	0	580604	0	0	24
133864	18.4830000000000005	0	580636	0	0	24
133865	18.4840000000000018	0	580668	0	0	24
133866	18.4849999999999994	0	580700	0	0	24
133867	18.4860000000000007	0	580732	0	0	24
133868	18.4869999999999983	0	580764	0	0	24
133869	18.4879999999999995	0	580796	0	0	24
133870	18.4890000000000008	0	580828	0	0	24
133871	18.4899999999999984	0	580858	0	0	24
133872	18.4909999999999997	0	580890	0	0	24
133873	18.4920000000000009	0	580922	0	0	24
133874	18.4929999999999986	0	580954	0	0	24
133875	18.4939999999999998	0	580986	0	0	24
133876	18.495000000000001	0	581018	0	0	24
133877	18.4959999999999987	0	581050	0	0	24
133878	18.4969999999999999	0	581082	0	0	24
133879	18.4980000000000011	0	581114	0	0	24
133880	18.4989999999999988	0	581146	0	0	24
133881	18.5	0	581176	0	0	24
133882	18.5010000000000012	0	581208	0	0	24
133883	18.5019999999999989	0	581240	0	0	24
133884	18.5030000000000001	0	581272	0	0	24
133885	18.5040000000000013	0	581304	0	0	24
133886	18.504999999999999	0	581336	0	0	24
133887	18.5060000000000002	0	581368	0	0	24
133888	18.5070000000000014	0	581400	0	0	24
133889	18.5079999999999991	0	581432	0	0	24
133890	18.5090000000000003	0	581464	0	0	24
133891	18.5100000000000016	0	581494	0	0	24
133892	18.5109999999999992	0	581526	0	0	24
133893	18.5120000000000005	0	581558	0	0	24
133894	18.5130000000000017	0	581590	0	0	24
133895	18.5139999999999993	0	581622	0	0	24
133896	18.5150000000000006	0	581654	0	0	24
133897	18.5159999999999982	0	581686	0	0	24
133898	18.5169999999999995	0	581718	0	0	24
133899	18.5180000000000007	0	581750	0	0	24
133900	18.5189999999999984	0	581782	0	0	24
133901	18.5199999999999996	0	581812	0	0	24
133902	18.5210000000000008	0	581844	0	0	24
133903	18.5219999999999985	0	581876	0	0	24
133904	18.5229999999999997	0	581908	0	0	24
133905	18.5240000000000009	0	581940	0	0	24
133906	18.5249999999999986	0	581972	0	0	24
133907	18.5259999999999998	0	582004	0	0	24
133908	18.527000000000001	0	582036	0	0	24
133909	18.5279999999999987	0	582068	0	0	24
133910	18.5289999999999999	0	582100	0	0	24
133911	18.5300000000000011	0	582130	0	0	24
133912	18.5309999999999988	0	582162	0	0	24
133913	18.532	0	582194	0	0	24
133914	18.5330000000000013	0	582226	0	0	24
133915	18.5339999999999989	0	582258	0	0	24
133916	18.5350000000000001	0	582290	0	0	24
133917	18.5360000000000014	0	582322	0	0	24
133918	18.536999999999999	0	582354	0	0	24
133919	18.5380000000000003	0	582386	0	0	24
133920	18.5390000000000015	0	582418	0	0	24
133921	18.5399999999999991	0	582448	0	0	24
133922	18.5410000000000004	0	582480	0	0	24
133923	18.5420000000000016	0	582512	0	0	24
133924	18.5429999999999993	0	582544	0	0	24
133925	18.5440000000000005	0	582576	0	0	24
133926	18.5450000000000017	0	582608	0	0	24
133927	18.5459999999999994	0	582640	0	0	24
133928	18.5470000000000006	0	582672	0	0	24
133929	18.5479999999999983	0	582704	0	0	24
133930	18.5489999999999995	0	582736	0	0	24
133931	18.5500000000000007	0	582766	0	0	24
133932	18.5509999999999984	0	582798	0	0	24
133933	18.5519999999999996	0	582830	0	0	24
133934	18.5530000000000008	0	582862	0	0	24
133935	18.5539999999999985	0	582894	0	0	24
133936	18.5549999999999997	0	582926	0	0	24
133937	18.5560000000000009	0	582958	0	0	24
133938	18.5569999999999986	0	582990	0	0	24
133939	18.5579999999999998	0	583022	0	0	24
133940	18.5590000000000011	0	583054	0	0	24
133941	18.5599999999999987	0	583084	0	0	24
133942	18.5609999999999999	0	583116	0	0	24
133943	18.5620000000000012	0	583148	0	0	24
133944	18.5629999999999988	0	583180	0	0	24
133945	18.5640000000000001	0	583212	0	0	24
133946	18.5650000000000013	0	583244	0	0	24
133947	18.5659999999999989	0	583276	0	0	24
133948	18.5670000000000002	0	583308	0	0	24
133949	18.5680000000000014	0	583340	0	0	24
133950	18.5689999999999991	0	583372	0	0	24
133951	18.5700000000000003	0	583402	0	0	24
133952	18.5710000000000015	0	583434	0	0	24
133953	18.5719999999999992	0	583466	0	0	24
133954	18.5730000000000004	0	583498	0	0	24
133955	18.5740000000000016	0	583530	0	0	24
133956	18.5749999999999993	0	583562	0	0	24
133957	18.5760000000000005	0	583594	0	0	24
133958	18.5770000000000017	0	583626	0	0	24
133959	18.5779999999999994	0	583658	0	0	24
133960	18.5790000000000006	0	583690	0	0	24
133961	18.5799999999999983	0	583720	0	0	24
133962	18.5809999999999995	0	583752	0	0	24
133963	18.5820000000000007	0	583784	0	0	24
133964	18.5829999999999984	0	583816	0	0	24
133965	18.5839999999999996	0	583848	0	0	24
133966	18.5850000000000009	0	583880	0	0	24
133967	18.5859999999999985	0	583912	0	0	24
133968	18.5869999999999997	0	583944	0	0	24
133969	18.588000000000001	0	583976	0	0	24
133970	18.5889999999999986	0	584008	0	0	24
133971	18.5899999999999999	0	584038	0	0	24
133972	18.5910000000000011	0	584070	0	0	24
133973	18.5919999999999987	0	584102	0	0	24
133974	18.593	0	584134	0	0	24
133975	18.5940000000000012	0	584166	0	0	24
133976	18.5949999999999989	0	584198	0	0	24
133977	18.5960000000000001	0	584230	0	0	24
133978	18.5970000000000013	0	584262	0	0	24
133979	18.597999999999999	0	584294	0	0	24
133980	18.5990000000000002	0	584326	0	0	24
133981	18.6000000000000014	0	584356	0	0	24
133982	18.6009999999999991	0	584388	0	0	24
133983	18.6020000000000003	0	584420	0	0	24
133984	18.6030000000000015	0	584452	0	0	24
133985	18.6039999999999992	0	584484	0	0	24
133986	18.6050000000000004	0	584516	0	0	24
133987	18.6060000000000016	0	584548	0	0	24
133988	18.6069999999999993	0	584580	0	0	24
133989	18.6080000000000005	0	584612	0	0	24
133990	18.6090000000000018	0	584644	0	0	24
133991	18.6099999999999994	0	584674	0	0	24
133992	18.6110000000000007	0	584706	0	0	24
133993	18.6119999999999983	0	584738	0	0	24
133994	18.6129999999999995	0	584770	0	0	24
133995	18.6140000000000008	0	584802	0	0	24
133996	18.6149999999999984	0	584834	0	0	24
133997	18.6159999999999997	0	584866	0	0	24
133998	18.6170000000000009	0	584898	0	0	24
133999	18.6179999999999986	0	584930	0	0	24
134000	18.6189999999999998	0	584962	0	0	24
134001	18.620000000000001	0	584992	0	0	24
134002	18.6209999999999987	0	585024	0	0	24
134003	18.6219999999999999	0	585056	0	0	24
134004	18.6230000000000011	0	585088	0	0	24
134005	18.6239999999999988	0	585120	0	0	24
134006	18.625	0	585152	0	0	24
134007	18.6260000000000012	0	585184	0	0	24
134008	18.6269999999999989	0	585216	0	0	24
134009	18.6280000000000001	0	585248	0	0	24
134010	18.6290000000000013	0	585280	0	0	24
134011	18.629999999999999	0	585310	0	0	24
134012	18.6310000000000002	0	585342	0	0	24
134013	18.6320000000000014	0	585374	0	0	24
134014	18.6329999999999991	0	585406	0	0	24
134015	18.6340000000000003	0	585438	0	0	24
134016	18.6350000000000016	0	585470	0	0	24
134017	18.6359999999999992	0	585502	0	0	24
134018	18.6370000000000005	0	585534	0	0	24
134019	18.6380000000000017	0	585566	0	0	24
134020	18.6389999999999993	0	585598	0	0	24
134021	18.6400000000000006	0	585628	0	0	24
134022	18.6409999999999982	0	585660	0	0	24
134023	18.6419999999999995	0	585692	0	0	24
134024	18.6430000000000007	0	585724	0	0	24
134025	18.6439999999999984	0	585756	0	0	24
134026	18.6449999999999996	0	585788	0	0	24
134027	18.6460000000000008	0	585820	0	0	24
134028	18.6469999999999985	0	585852	0	0	24
134029	18.6479999999999997	0	585884	0	0	24
134030	18.6490000000000009	0	585916	0	0	24
134031	18.6499999999999986	0	585946	0	0	24
134032	18.6509999999999998	0	585978	0	0	24
134033	18.652000000000001	0	586010	0	0	24
134034	18.6529999999999987	0	586042	0	0	24
134035	18.6539999999999999	0	586074	0	0	24
134036	18.6550000000000011	0	586106	0	0	24
134037	18.6559999999999988	0	586138	0	0	24
134038	18.657	0	586170	0	0	24
134039	18.6580000000000013	0	586202	0	0	24
134040	18.6589999999999989	0	586234	0	0	24
134041	18.6600000000000001	0	586264	0	0	24
134042	18.6610000000000014	0	586296	0	0	24
134043	18.661999999999999	0	586328	0	0	24
134044	18.6630000000000003	0	586360	0	0	24
134045	18.6640000000000015	0	586392	0	0	24
134046	18.6649999999999991	0	586424	0	0	24
134047	18.6660000000000004	0	586456	0	0	24
134048	18.6670000000000016	0	586488	0	0	24
134049	18.6679999999999993	0	586520	0	0	24
134050	18.6690000000000005	0	586552	0	0	24
134051	18.6700000000000017	0	586582	0	0	24
134052	18.6709999999999994	0	586614	0	0	24
134053	18.6720000000000006	0	586646	0	0	24
134054	18.6729999999999983	0	586678	0	0	24
134055	18.6739999999999995	0	586710	0	0	24
134056	18.6750000000000007	0	586742	0	0	24
134057	18.6759999999999984	0	586774	0	0	24
134058	18.6769999999999996	0	586806	0	0	24
134059	18.6780000000000008	0	586838	0	0	24
134060	18.6789999999999985	0	586870	0	0	24
134061	18.6799999999999997	0	586900	0	0	24
134062	18.6810000000000009	0	586932	0	0	24
134063	18.6819999999999986	0	586964	0	0	24
134064	18.6829999999999998	0	586996	0	0	24
134065	18.6840000000000011	0	587028	0	0	24
134066	18.6849999999999987	0	587060	0	0	24
134067	18.6859999999999999	0	587092	0	0	24
134068	18.6870000000000012	0	587124	0	0	24
134069	18.6879999999999988	0	587156	0	0	24
134070	18.6890000000000001	0	587188	0	0	24
134071	18.6900000000000013	0	587218	0	0	24
134072	18.6909999999999989	0	587250	0	0	24
134073	18.6920000000000002	0	587282	0	0	24
134074	18.6930000000000014	0	587314	0	0	24
134075	18.6939999999999991	0	587346	0	0	24
134076	18.6950000000000003	0	587378	0	0	24
134077	18.6960000000000015	0	587410	0	0	24
134078	18.6969999999999992	0	587442	0	0	24
134079	18.6980000000000004	0	587474	0	0	24
134080	18.6990000000000016	0	587506	0	0	24
134081	18.6999999999999993	0	587536	0	0	24
134082	18.7010000000000005	0	587568	0	0	24
134083	18.7020000000000017	0	587600	0	0	24
134084	18.7029999999999994	0	587632	0	0	24
134085	18.7040000000000006	0	587664	0	0	24
134086	18.7049999999999983	0	587696	0	0	24
134087	18.7059999999999995	0	587728	0	0	24
134088	18.7070000000000007	0	587760	0	0	24
134089	18.7079999999999984	0	587792	0	0	24
134090	18.7089999999999996	0	587824	0	0	24
134091	18.7100000000000009	0	587854	0	0	24
134092	18.7109999999999985	0	587886	0	0	24
134093	18.7119999999999997	0	587918	0	0	24
134094	18.713000000000001	0	587950	0	0	24
134095	18.7139999999999986	0	587982	0	0	24
134096	18.7149999999999999	0	588014	0	0	24
134097	18.7160000000000011	0	588046	0	0	24
134098	18.7169999999999987	0	588078	0	0	24
134099	18.718	0	588110	0	0	24
134100	18.7190000000000012	0	588142	0	0	24
134101	18.7199999999999989	0	588172	0	0	24
134102	18.7210000000000001	0	588204	0	0	24
134103	18.7220000000000013	0	588236	0	0	24
134104	18.722999999999999	0	588268	0	0	24
134105	18.7240000000000002	0	588300	0	0	24
134106	18.7250000000000014	0	588332	0	0	24
134107	18.7259999999999991	0	588364	0	0	24
134108	18.7270000000000003	0	588396	0	0	24
134109	18.7280000000000015	0	588428	0	0	24
134110	18.7289999999999992	0	588460	0	0	24
134111	18.7300000000000004	0	588490	0	0	24
134112	18.7310000000000016	0	588522	0	0	24
134113	18.7319999999999993	0	588554	0	0	24
134114	18.7330000000000005	0	588586	0	0	24
134115	18.7340000000000018	0	588618	0	0	24
134116	18.7349999999999994	0	588650	0	0	24
134117	18.7360000000000007	0	588682	0	0	24
134118	18.7369999999999983	0	588714	0	0	24
134119	18.7379999999999995	0	588746	0	0	24
134120	18.7390000000000008	0	588778	0	0	24
134121	18.7399999999999984	0	588808	0	0	24
134122	18.7409999999999997	0	588840	0	0	24
134123	18.7420000000000009	0	588872	0	0	24
134124	18.7429999999999986	0	588904	0	0	24
134125	18.7439999999999998	0	588936	0	0	24
134126	18.745000000000001	0	588968	0	0	24
134127	18.7459999999999987	0	589000	0	0	24
134128	18.7469999999999999	0	589032	0	0	24
134129	18.7480000000000011	0	589064	0	0	24
134130	18.7489999999999988	0	589096	0	0	24
134131	18.75	0	589126	0	0	24
134132	18.7510000000000012	0	589158	0	0	24
134133	18.7519999999999989	0	589190	0	0	24
134134	18.7530000000000001	0	589222	0	0	24
134135	18.7540000000000013	0	589254	0	0	24
134136	18.754999999999999	0	589286	0	0	24
134137	18.7560000000000002	0	589318	0	0	24
134138	18.7570000000000014	0	589350	0	0	24
134139	18.7579999999999991	0	589382	0	0	24
134140	18.7590000000000003	0	589414	0	0	24
134141	18.7600000000000016	0	589444	0	0	24
134142	18.7609999999999992	0	589476	0	0	24
134143	18.7620000000000005	0	589508	0	0	24
134144	18.7630000000000017	0	589540	0	0	24
134145	18.7639999999999993	0	589572	0	0	24
134146	18.7650000000000006	0	589604	0	0	24
134147	18.7659999999999982	0	589636	0	0	24
134148	18.7669999999999995	0	589668	0	0	24
134149	18.7680000000000007	0	589700	0	0	24
134150	18.7689999999999984	0	589732	0	0	24
134151	18.7699999999999996	0	589762	0	0	24
134152	18.7710000000000008	0	589794	0	0	24
134153	18.7719999999999985	0	589826	0	0	24
134154	18.7729999999999997	0	589858	0	0	24
134155	18.7740000000000009	0	589890	0	0	24
134156	18.7749999999999986	0	589922	0	0	24
134157	18.7759999999999998	0	589954	0	0	24
134158	18.777000000000001	0	589986	0	0	24
134159	18.7779999999999987	0	590018	0	0	24
134160	18.7789999999999999	0	590050	0	0	24
134161	18.7800000000000011	0	590080	0	0	24
134162	18.7809999999999988	0	590112	0	0	24
134163	18.782	0	590144	0	0	24
134164	18.7830000000000013	0	590176	0	0	24
134165	18.7839999999999989	0	590208	0	0	24
134166	18.7850000000000001	0	590240	0	0	24
134167	18.7860000000000014	0	590272	0	0	24
134168	18.786999999999999	0	590304	0	0	24
134169	18.7880000000000003	0	590336	0	0	24
134170	18.7890000000000015	0	590368	0	0	24
134171	18.7899999999999991	0	590398	0	0	24
134172	18.7910000000000004	0	590430	0	0	24
134173	18.7920000000000016	0	590462	0	0	24
134174	18.7929999999999993	0	590494	0	0	24
134175	18.7940000000000005	0	590526	0	0	24
134176	18.7950000000000017	0	590558	0	0	24
134177	18.7959999999999994	0	590590	0	0	24
134178	18.7970000000000006	0	590622	0	0	24
134179	18.7979999999999983	0	590654	0	0	24
134180	18.7989999999999995	0	590686	0	0	24
134181	18.8000000000000007	0	589126	0	0	24
134182	18.8009999999999984	0	590748	0	0	24
134183	18.8019999999999996	0	590780	0	0	24
134184	18.8030000000000008	0	590812	0	0	24
134185	18.8039999999999985	0	590844	0	0	24
134186	18.8049999999999997	0	590876	0	0	24
134187	18.8060000000000009	0	590908	0	0	24
134188	18.8069999999999986	0	590940	0	0	24
134189	18.8079999999999998	0	590972	0	0	24
134190	18.8090000000000011	0	591004	0	0	24
134191	18.8099999999999987	0	591034	0	0	24
134192	18.8109999999999999	0	591066	0	0	24
134193	18.8120000000000012	0	591098	0	0	24
134194	18.8129999999999988	0	591130	0	0	24
134195	18.8140000000000001	0	591162	0	0	24
134196	18.8150000000000013	0	591194	0	0	24
134197	18.8159999999999989	0	591226	0	0	24
134198	18.8170000000000002	0	591258	0	0	24
134199	18.8180000000000014	0	591290	0	0	24
134200	18.8189999999999991	0	591322	0	0	24
134201	18.8200000000000003	0	591352	0	0	24
134202	18.8210000000000015	0	591384	0	0	24
134203	18.8219999999999992	0	591416	0	0	24
134204	18.8230000000000004	0	591448	0	0	24
134205	18.8240000000000016	0	591480	0	0	24
134206	18.8249999999999993	0	591512	0	0	24
134207	18.8260000000000005	0	591544	0	0	24
134208	18.8270000000000017	0	591576	0	0	24
134209	18.8279999999999994	0	591608	0	0	24
134210	18.8290000000000006	0	591640	0	0	24
134211	18.8299999999999983	0	591670	0	0	24
134212	18.8309999999999995	0	591702	0	0	24
134213	18.8320000000000007	0	591734	0	0	24
134214	18.8329999999999984	0	591766	0	0	24
134215	18.8339999999999996	0	591798	0	0	24
134216	18.8350000000000009	0	591830	0	0	24
134217	18.8359999999999985	0	591862	0	0	24
134218	18.8369999999999997	0	591894	0	0	24
134219	18.838000000000001	0	591926	0	0	24
134220	18.8389999999999986	0	591958	0	0	24
134221	18.8399999999999999	0	591988	0	0	24
134222	18.8410000000000011	0	592020	0	0	24
134223	18.8419999999999987	0	592052	0	0	24
134224	18.843	0	592084	0	0	24
134225	18.8440000000000012	0	592116	0	0	24
134226	18.8449999999999989	0	592148	0	0	24
134227	18.8460000000000001	0	592180	0	0	24
134228	18.8470000000000013	0	592212	0	0	24
134229	18.847999999999999	0	592244	0	0	24
134230	18.8490000000000002	0	592276	0	0	24
134231	18.8500000000000014	0	592306	0	0	24
134232	18.8509999999999991	0	592338	0	0	24
134233	18.8520000000000003	0	592370	0	0	24
134234	18.8530000000000015	0	592402	0	0	24
134235	18.8539999999999992	0	592434	0	0	24
134236	18.8550000000000004	0	592466	0	0	24
134237	18.8560000000000016	0	592498	0	0	24
134238	18.8569999999999993	0	592530	0	0	24
134239	18.8580000000000005	0	592562	0	0	24
134240	18.8590000000000018	0	592594	0	0	24
134241	18.8599999999999994	0	592624	0	0	24
134242	18.8610000000000007	0	592656	0	0	24
134243	18.8619999999999983	0	592688	0	0	24
134244	18.8629999999999995	0	592720	0	0	24
134245	18.8640000000000008	0	592752	0	0	24
134246	18.8649999999999984	0	592784	0	0	24
134247	18.8659999999999997	0	592816	0	0	24
134248	18.8670000000000009	0	592848	0	0	24
134249	18.8679999999999986	0	592880	0	0	24
134250	18.8689999999999998	0	592912	0	0	24
134251	18.870000000000001	0	592942	0	0	24
134252	18.8709999999999987	0	592974	0	0	24
134253	18.8719999999999999	0	593006	0	0	24
134254	18.8730000000000011	0	593038	0	0	24
134255	18.8739999999999988	0	593070	0	0	24
134256	18.875	0	593102	0	0	24
134257	18.8760000000000012	0	593134	0	0	24
134258	18.8769999999999989	0	593166	0	0	24
134259	18.8780000000000001	0	593198	0	0	24
134260	18.8790000000000013	0	593230	0	0	24
134261	18.879999999999999	0	593260	0	0	24
134262	18.8810000000000002	0	593292	0	0	24
134263	18.8820000000000014	0	593324	0	0	24
134264	18.8829999999999991	0	593356	0	0	24
134265	18.8840000000000003	0	593388	0	0	24
134266	18.8850000000000016	0	593420	0	0	24
134267	18.8859999999999992	0	593452	0	0	24
134268	18.8870000000000005	0	593484	0	0	24
134269	18.8880000000000017	0	593516	0	0	24
134270	18.8889999999999993	0	593548	0	0	24
134271	18.8900000000000006	0	593578	0	0	24
134272	18.8909999999999982	0	593610	0	0	24
134273	18.8919999999999995	0	593642	0	0	24
134274	18.8930000000000007	0	593674	0	0	24
134275	18.8939999999999984	0	593706	0	0	24
134276	18.8949999999999996	0	593738	0	0	24
134277	18.8960000000000008	0	593770	0	0	24
134278	18.8969999999999985	0	593802	0	0	24
134279	18.8979999999999997	0	593834	0	0	24
134280	18.8990000000000009	0	593866	0	0	24
134281	18.8999999999999986	0	593896	0	0	24
134282	18.9009999999999998	0	593928	0	0	24
134283	18.902000000000001	0	593960	0	0	24
134284	18.9029999999999987	0	593992	0	0	24
134285	18.9039999999999999	0	594024	0	0	24
134286	18.9050000000000011	0	594056	0	0	24
134287	18.9059999999999988	0	594088	0	0	24
134288	18.907	0	594120	0	0	24
134289	18.9080000000000013	0	594152	0	0	24
134290	18.9089999999999989	0	594184	0	0	24
134291	18.9100000000000001	0	594214	0	0	24
134292	18.9110000000000014	0	594246	0	0	24
134293	18.911999999999999	0	594278	0	0	24
134294	18.9130000000000003	0	594310	0	0	24
134295	18.9140000000000015	0	594342	0	0	24
134296	18.9149999999999991	0	594374	0	0	24
134297	18.9160000000000004	0	594406	0	0	24
134298	18.9170000000000016	0	594438	0	0	24
134299	18.9179999999999993	0	594470	0	0	24
134300	18.9190000000000005	0	594502	0	0	24
134301	18.9200000000000017	0	594532	0	0	24
134302	18.9209999999999994	0	594564	0	0	24
134303	18.9220000000000006	0	594596	0	0	24
134304	18.9229999999999983	0	594628	0	0	24
134305	18.9239999999999995	0	594660	0	0	24
134306	18.9250000000000007	0	594692	0	0	24
134307	18.9259999999999984	0	594724	0	0	24
134308	18.9269999999999996	0	594756	0	0	24
134309	18.9280000000000008	0	594788	0	0	24
134310	18.9289999999999985	0	594820	0	0	24
134311	18.9299999999999997	0	594850	0	0	24
134312	18.9310000000000009	0	594882	0	0	24
134313	18.9319999999999986	0	594914	0	0	24
134314	18.9329999999999998	0	594946	0	0	24
134315	18.9340000000000011	0	594978	0	0	24
134316	18.9349999999999987	0	595010	0	0	24
134317	18.9359999999999999	0	595042	0	0	24
134318	18.9370000000000012	0	595074	0	0	24
134319	18.9379999999999988	0	595106	0	0	24
134320	18.9390000000000001	0	595138	0	0	24
134321	18.9400000000000013	0	595168	0	0	24
134322	18.9409999999999989	0	595200	0	0	24
134323	18.9420000000000002	0	595232	0	0	24
134324	18.9430000000000014	0	595264	0	0	24
134325	18.9439999999999991	0	595296	0	0	24
134326	18.9450000000000003	0	595328	0	0	24
134327	18.9460000000000015	0	595360	0	0	24
134328	18.9469999999999992	0	595392	0	0	24
134329	18.9480000000000004	0	595424	0	0	24
134330	18.9490000000000016	0	595456	0	0	24
134331	18.9499999999999993	0	595486	0	0	24
134332	18.9510000000000005	0	595518	0	0	24
134333	18.9520000000000017	0	595550	0	0	24
134334	18.9529999999999994	0	595582	0	0	24
134335	18.9540000000000006	0	595614	0	0	24
134336	18.9549999999999983	0	595646	0	0	24
134337	18.9559999999999995	0	595678	0	0	24
134338	18.9570000000000007	0	595710	0	0	24
134339	18.9579999999999984	0	595742	0	0	24
134340	18.9589999999999996	0	595774	0	0	24
134341	18.9600000000000009	0	595804	0	0	24
134342	18.9609999999999985	0	595836	0	0	24
134343	18.9619999999999997	0	595868	0	0	24
134344	18.963000000000001	0	595900	0	0	24
134345	18.9639999999999986	0	595932	0	0	24
134346	18.9649999999999999	0	595964	0	0	24
134347	18.9660000000000011	0	595996	0	0	24
134348	18.9669999999999987	0	596028	0	0	24
134349	18.968	0	596060	0	0	24
134350	18.9690000000000012	0	596092	0	0	24
134351	18.9699999999999989	0	596122	0	0	24
134352	18.9710000000000001	0	596154	0	0	24
134353	18.9720000000000013	0	596186	0	0	24
134354	18.972999999999999	0	596218	0	0	24
134355	18.9740000000000002	0	596250	0	0	24
134356	18.9750000000000014	0	596282	0	0	24
134357	18.9759999999999991	0	596314	0	0	24
134358	18.9770000000000003	0	596346	0	0	24
134359	18.9780000000000015	0	596378	0	0	24
134360	18.9789999999999992	0	596410	0	0	24
134361	18.9800000000000004	0	596440	0	0	24
134362	18.9810000000000016	0	596472	0	0	24
134363	18.9819999999999993	0	596504	0	0	24
134364	18.9830000000000005	0	596536	0	0	24
134365	18.9840000000000018	0	596568	0	0	24
134366	18.9849999999999994	0	596600	0	0	24
134367	18.9860000000000007	0	596632	0	0	24
134368	18.9869999999999983	0	596664	0	0	24
134369	18.9879999999999995	0	596696	0	0	24
134370	18.9890000000000008	0	596728	0	0	24
134371	18.9899999999999984	0	596758	0	0	24
134372	18.9909999999999997	0	596790	0	0	24
134373	18.9920000000000009	0	596822	0	0	24
134374	18.9929999999999986	0	596854	0	0	24
134375	18.9939999999999998	0	596886	0	0	24
134376	18.995000000000001	0	596918	0	0	24
134377	18.9959999999999987	0	596950	0	0	24
134378	18.9969999999999999	0	596982	0	0	24
134379	18.9980000000000011	0	597014	0	0	24
134380	18.9989999999999988	0	597046	0	0	24
134381	19	0	597076	0	0	24
134382	19.0010000000000012	0	597108	0	0	24
134383	19.0019999999999989	0	597140	0	0	24
134384	19.0030000000000001	0	597172	0	0	24
134385	19.0040000000000013	0	597204	0	0	24
134386	19.004999999999999	0	597236	0	0	24
134387	19.0060000000000002	0	597268	0	0	24
134388	19.0070000000000014	0	597300	0	0	24
134389	19.0079999999999991	0	597332	0	0	24
134390	19.0090000000000003	0	597364	0	0	24
134391	19.0100000000000016	0	597394	0	0	24
134392	19.0109999999999992	0	597426	0	0	24
134393	19.0120000000000005	0	597458	0	0	24
134394	19.0130000000000017	0	597490	0	0	24
134395	19.0139999999999993	0	597522	0	0	24
134396	19.0150000000000006	0	597554	0	0	24
134397	19.0159999999999982	0	597586	0	0	24
134398	19.0169999999999995	0	597618	0	0	24
134399	19.0180000000000007	0	597650	0	0	24
134400	19.0189999999999984	0	597682	0	0	24
134401	19.0199999999999996	0	597712	0	0	24
134402	19.0210000000000008	0	597744	0	0	24
134403	19.0219999999999985	0	597776	0	0	24
134404	19.0229999999999997	0	597808	0	0	24
134405	19.0240000000000009	0	597840	0	0	24
134406	19.0249999999999986	0	597872	0	0	24
134407	19.0259999999999998	0	597904	0	0	24
134408	19.027000000000001	0	597936	0	0	24
134409	19.0279999999999987	0	597968	0	0	24
134410	19.0289999999999999	0	598000	0	0	24
134411	19.0300000000000011	0	598030	0	0	24
134412	19.0309999999999988	0	598062	0	0	24
134413	19.032	0	598094	0	0	24
134414	19.0330000000000013	0	598126	0	0	24
134415	19.0339999999999989	0	598158	0	0	24
134416	19.0350000000000001	0	598190	0	0	24
134417	19.0360000000000014	0	598222	0	0	24
134418	19.036999999999999	0	598254	0	0	24
134419	19.0380000000000003	0	598286	0	0	24
134420	19.0390000000000015	0	598318	0	0	24
134421	19.0399999999999991	0	598348	0	0	24
134422	19.0410000000000004	0	598380	0	0	24
134423	19.0420000000000016	0	598412	0	0	24
134424	19.0429999999999993	0	598444	0	0	24
134425	19.0440000000000005	0	598476	0	0	24
134426	19.0450000000000017	0	598508	0	0	24
134427	19.0459999999999994	0	598540	0	0	24
134428	19.0470000000000006	0	598572	0	0	24
134429	19.0479999999999983	0	598604	0	0	24
134430	19.0489999999999995	0	598636	0	0	24
134431	19.0500000000000007	0	598666	0	0	24
134432	19.0509999999999984	0	598698	0	0	24
134433	19.0519999999999996	0	598730	0	0	24
134434	19.0530000000000008	0	598762	0	0	24
134435	19.0539999999999985	0	598794	0	0	24
134436	19.0549999999999997	0	598826	0	0	24
134437	19.0560000000000009	0	598858	0	0	24
134438	19.0569999999999986	0	598890	0	0	24
134439	19.0579999999999998	0	598922	0	0	24
134440	19.0590000000000011	0	598954	0	0	24
134441	19.0599999999999987	0	598984	0	0	24
134442	19.0609999999999999	0	599016	0	0	24
134443	19.0620000000000012	0	599048	0	0	24
134444	19.0629999999999988	0	599080	0	0	24
134445	19.0640000000000001	0	599112	0	0	24
134446	19.0650000000000013	0	599144	0	0	24
134447	19.0659999999999989	0	599176	0	0	24
134448	19.0670000000000002	0	599208	0	0	24
134449	19.0680000000000014	0	599240	0	0	24
134450	19.0689999999999991	0	599272	0	0	24
134451	19.0700000000000003	0	599302	0	0	24
134452	19.0710000000000015	0	599334	0	0	24
134453	19.0719999999999992	0	599366	0	0	24
134454	19.0730000000000004	0	599398	0	0	24
134455	19.0740000000000016	0	599430	0	0	24
134456	19.0749999999999993	0	599462	0	0	24
134457	19.0760000000000005	0	599494	0	0	24
134458	19.0770000000000017	0	599526	0	0	24
134459	19.0779999999999994	0	599558	0	0	24
134460	19.0790000000000006	0	599590	0	0	24
134461	19.0799999999999983	0	599620	0	0	24
134462	19.0809999999999995	0	599652	0	0	24
134463	19.0820000000000007	0	599684	0	0	24
134464	19.0829999999999984	0	599716	0	0	24
134465	19.0839999999999996	0	599748	0	0	24
134466	19.0850000000000009	0	599780	0	0	24
134467	19.0859999999999985	0	599812	0	0	24
134468	19.0869999999999997	0	599844	0	0	24
134469	19.088000000000001	0	599876	0	0	24
134470	19.0889999999999986	0	599908	0	0	24
134471	19.0899999999999999	0	599938	0	0	24
134472	19.0910000000000011	0	599970	0	0	24
134473	19.0919999999999987	0	600002	0	0	24
134474	19.093	0	600034	0	0	24
134475	19.0940000000000012	0	600066	0	0	24
134476	19.0949999999999989	0	600098	0	0	24
134477	19.0960000000000001	0	600130	0	0	24
134478	19.0970000000000013	0	600162	0	0	24
134479	19.097999999999999	0	600194	0	0	24
134480	19.0990000000000002	0	600226	0	0	24
134481	19.1000000000000014	0	600256	0	0	24
134482	19.1009999999999991	0	600288	0	0	24
134483	19.1020000000000003	0	600320	0	0	24
134484	19.1030000000000015	0	600352	0	0	24
134485	19.1039999999999992	0	600384	0	0	24
134486	19.1050000000000004	0	600416	0	0	24
134487	19.1060000000000016	0	600448	0	0	24
134488	19.1069999999999993	0	600480	0	0	24
134489	19.1080000000000005	0	600512	0	0	24
134490	19.1090000000000018	0	600544	0	0	24
134491	19.1099999999999994	0	600574	0	0	24
134492	19.1110000000000007	0	600606	0	0	24
134493	19.1119999999999983	0	600638	0	0	24
134494	19.1129999999999995	0	600670	0	0	24
134495	19.1140000000000008	0	600702	0	0	24
134496	19.1149999999999984	0	600734	0	0	24
134497	19.1159999999999997	0	600766	0	0	24
134498	19.1170000000000009	0	600798	0	0	24
134499	19.1179999999999986	0	600830	0	0	24
134500	19.1189999999999998	0	600862	0	0	24
134501	19.120000000000001	0	600892	0	0	24
134502	19.1209999999999987	0	600924	0	0	24
134503	19.1219999999999999	0	600956	0	0	24
134504	19.1230000000000011	0	600988	0	0	24
134505	19.1239999999999988	0	601020	0	0	24
134506	19.125	0	601052	0	0	24
134507	19.1260000000000012	0	601084	0	0	24
134508	19.1269999999999989	0	601116	0	0	24
134509	19.1280000000000001	0	601148	0	0	24
134510	19.1290000000000013	0	601180	0	0	24
134511	19.129999999999999	0	601210	0	0	24
134512	19.1310000000000002	0	601242	0	0	24
134513	19.1320000000000014	0	601274	0	0	24
134514	19.1329999999999991	0	601306	0	0	24
134515	19.1340000000000003	0	601338	0	0	24
134516	19.1350000000000016	0	601370	0	0	24
134517	19.1359999999999992	0	601402	0	0	24
134518	19.1370000000000005	0	601434	0	0	24
134519	19.1380000000000017	0	601466	0	0	24
134520	19.1389999999999993	0	601498	0	0	24
134521	19.1400000000000006	0	601528	0	0	24
134522	19.1409999999999982	0	601560	0	0	24
134523	19.1419999999999995	0	601592	0	0	24
134524	19.1430000000000007	0	601624	0	0	24
134525	19.1439999999999984	0	601656	0	0	24
134526	19.1449999999999996	0	601688	0	0	24
134527	19.1460000000000008	0	601720	0	0	24
134528	19.1469999999999985	0	601752	0	0	24
134529	19.1479999999999997	0	601784	0	0	24
134530	19.1490000000000009	0	601816	0	0	24
134531	19.1499999999999986	0	601846	0	0	24
134532	19.1509999999999998	0	601878	0	0	24
134533	19.152000000000001	0	601910	0	0	24
134534	19.1529999999999987	0	601942	0	0	24
134535	19.1539999999999999	0	601974	0	0	24
134536	19.1550000000000011	0	602006	0	0	24
134537	19.1559999999999988	0	602038	0	0	24
134538	19.157	0	602070	0	0	24
134539	19.1580000000000013	0	602102	0	0	24
134540	19.1589999999999989	0	602134	0	0	24
134541	19.1600000000000001	0	602164	0	0	24
134542	19.1610000000000014	0	602196	0	0	24
134543	19.161999999999999	0	602228	0	0	24
134544	19.1630000000000003	0	602260	0	0	24
134545	19.1640000000000015	0	602292	0	0	24
134546	19.1649999999999991	0	602324	0	0	24
134547	19.1660000000000004	0	602356	0	0	24
134548	19.1670000000000016	0	602388	0	0	24
134549	19.1679999999999993	0	602420	0	0	24
134550	19.1690000000000005	0	602452	0	0	24
134551	19.1700000000000017	0	602482	0	0	24
134552	19.1709999999999994	0	602514	0	0	24
134553	19.1720000000000006	0	602546	0	0	24
134554	19.1729999999999983	0	602578	0	0	24
134555	19.1739999999999995	0	602610	0	0	24
134556	19.1750000000000007	0	602642	0	0	24
134557	19.1759999999999984	0	602674	0	0	24
134558	19.1769999999999996	0	602706	0	0	24
134559	19.1780000000000008	0	602738	0	0	24
134560	19.1789999999999985	0	602770	0	0	24
134561	19.1799999999999997	0	602800	0	0	24
134562	19.1810000000000009	0	602832	0	0	24
134563	19.1819999999999986	0	602864	0	0	24
134564	19.1829999999999998	0	602896	0	0	24
134565	19.1840000000000011	0	602928	0	0	24
134566	19.1849999999999987	0	602960	0	0	24
134567	19.1859999999999999	0	602992	0	0	24
134568	19.1870000000000012	0	603024	0	0	24
134569	19.1879999999999988	0	603056	0	0	24
134570	19.1890000000000001	0	603088	0	0	24
134571	19.1900000000000013	0	603118	0	0	24
134572	19.1909999999999989	0	603150	0	0	24
134573	19.1920000000000002	0	603182	0	0	24
134574	19.1930000000000014	0	603214	0	0	24
134575	19.1939999999999991	0	603246	0	0	24
134576	19.1950000000000003	0	603278	0	0	24
134577	19.1960000000000015	0	603310	0	0	24
134578	19.1969999999999992	0	603342	0	0	24
134579	19.1980000000000004	0	603374	0	0	24
134580	19.1990000000000016	0	603406	0	0	24
134581	19.1999999999999993	0	603436	0	0	24
134582	19.2010000000000005	0	603468	0	0	24
134583	19.2020000000000017	0	603500	0	0	24
134584	19.2029999999999994	0	603532	0	0	24
134585	19.2040000000000006	0	603564	0	0	24
134586	19.2049999999999983	0	603596	0	0	24
134587	19.2059999999999995	0	603628	0	0	24
134588	19.2070000000000007	0	603660	0	0	24
134589	19.2079999999999984	0	603692	0	0	24
134590	19.2089999999999996	0	603724	0	0	24
134591	19.2100000000000009	0	603754	0	0	24
134592	19.2109999999999985	0	603786	0	0	24
134593	19.2119999999999997	0	603818	0	0	24
134594	19.213000000000001	0	603850	0	0	24
134595	19.2139999999999986	0	603882	0	0	24
134596	19.2149999999999999	0	603914	0	0	24
134597	19.2160000000000011	0	603946	0	0	24
134598	19.2169999999999987	0	603978	0	0	24
134599	19.218	0	604010	0	0	24
134600	19.2190000000000012	0	604042	0	0	24
134601	19.2199999999999989	0	604072	0	0	24
134602	19.2210000000000001	0	604104	0	0	24
134603	19.2220000000000013	0	604136	0	0	24
134604	19.222999999999999	0	604168	0	0	24
134605	19.2240000000000002	0	604200	0	0	24
134606	19.2250000000000014	0	604232	0	0	24
134607	19.2259999999999991	0	604264	0	0	24
134608	19.2270000000000003	0	604296	0	0	24
134609	19.2280000000000015	0	604328	0	0	24
134610	19.2289999999999992	0	604360	0	0	24
\.


--
-- TOC entry 3330 (class 0 OID 125565)
-- Dependencies: 242
-- Data for Name: acq_tk; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_tk (id, "Nombre", "Descriptor", tct_archivo, "Descriptor_tct", fecha_subida_tct, tctvalido, current_data, tipo_de_tk, id_aor_id, "id_patioTanque_id") FROM stdin;
20	tk_dinamics_01	PRUEBAS	tct/csv_sacv02_eS66FZP.csv	LOLO	\N	t	{"LT": "7.0", "PT": "7.0", "TT": "9.0", "AYS": "11.0", "GSV": "104316.0", "LTA": "15.0", "NSV": "104305.0", "TOV": "104327.0", "IDLT": 69, "IDPT": 70, "IDTT": 71, "IDAYS": 73, "IDGSV": 91, "IDLTA": 72, "IDNSV": 92, "IDTOV": 90, "TANQUE": 20, "INDEXADO": 0, "TIMESTAMP_lt": "", "TIMESTAMP_pt": "", "TIMESTAMP_tt": "", "TIMESTAMP_GSV": "2021-06-28 17:12:37", "TIMESTAMP_NSV": "2021-06-28 17:12:37", "TIMESTAMP_TOV": "2021-06-28 17:12:37", "TIMESTAMP_ays": "", "TIMESTAMP_lta": ""}	TF	11	4
22	tk_dinamics_02	TANQUE PRUEBAS DINAMICAS 02	tct/csv_sacv02_vr7MyNk.csv	PRUEBAS DINAMICAS 23-06-2021	\N	t	{"LT": "3.5", "PT": "12.0", "TT": "18.0", "AYS": "17.0", "GSV": "104316.0", "LTA": "14.0", "NSV": "104305.0", "TOV": "104327.0", "IDLT": 85, "IDPT": 86, "IDTT": 87, "IDAYS": 89, "IDGSV": 91, "IDLTA": 88, "IDNSV": 92, "IDTOV": 90, "TANQUE": 22, "INDEXADO": 0, "TIMESTAMP_lt": "", "TIMESTAMP_pt": "", "TIMESTAMP_tt": "", "TIMESTAMP_GSV": "2021-06-28 17:12:37", "TIMESTAMP_NSV": "2021-06-28 17:12:37", "TIMESTAMP_TOV": "2021-06-28 17:12:37", "TIMESTAMP_ays": "", "TIMESTAMP_lta": ""}	TF	11	4
24	tk_dinamics_03	PRUBAS DINAMICAS	tct/csv_sacv02_6S0bKMb.csv	vfvfvvf	\N	t	{"LT": "8.0", "PT": "1.6", "TT": "14.0", "AYS": "0.0", "GSV": "247325.0", "LTA": "0.0", "NSV": "247314.0", "TOV": "247336.0", "IDLT": 109, "IDPT": 110, "IDTT": 111, "IDAYS": 113, "IDGSV": 115, "IDLTA": 112, "IDNSV": 116, "IDTOV": 114, "TANQUE": 24, "INDEXADO": 0, "TIMESTAMP_lt": "", "TIMESTAMP_pt": "", "TIMESTAMP_tt": "", "TIMESTAMP_GSV": "2021-06-28 17:12:41", "TIMESTAMP_NSV": "2021-06-28 17:12:41", "TIMESTAMP_TOV": "2021-06-28 17:12:41", "TIMESTAMP_ays": "", "TIMESTAMP_lta": ""}	TF	11	4
\.


--
-- TOC entry 3326 (class 0 OID 125550)
-- Dependencies: 238
-- Data for Name: acq_userprofile; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_userprofile (user_id) FROM stdin;
1
2
3
4
\.


--
-- TOC entry 3339 (class 0 OID 125702)
-- Dependencies: 251
-- Data for Name: acq_userprofile_aor; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_userprofile_aor (id, userprofile_id, aor_id) FROM stdin;
17	2	11
\.


--
-- TOC entry 3328 (class 0 OID 125557)
-- Dependencies: 240
-- Data for Name: acq_userprofile_patios; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.acq_userprofile_patios (id, userprofile_id, patiotanque_id) FROM stdin;
5	2	4
\.


--
-- TOC entry 3291 (class 0 OID 125316)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_group (id, name) FROM stdin;
1	operativos
2	supervisores
\.


--
-- TOC entry 3293 (class 0 OID 125326)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3289 (class 0 OID 125308)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add analogico_ hs	7	add_analogico_hs
26	Can change analogico_ hs	7	change_analogico_hs
27	Can delete analogico_ hs	7	delete_analogico_hs
28	Can view analogico_ hs	7	view_analogico_hs
29	Can add analogico_ hs0	8	add_analogico_hs0
30	Can change analogico_ hs0	8	change_analogico_hs0
31	Can delete analogico_ hs0	8	delete_analogico_hs0
32	Can view analogico_ hs0	8	view_analogico_hs0
33	Can add analogico_ hs1	9	add_analogico_hs1
34	Can change analogico_ hs1	9	change_analogico_hs1
35	Can delete analogico_ hs1	9	delete_analogico_hs1
36	Can view analogico_ hs1	9	view_analogico_hs1
37	Can add analogico_ hs2	10	add_analogico_hs2
38	Can change analogico_ hs2	10	change_analogico_hs2
39	Can delete analogico_ hs2	10	delete_analogico_hs2
40	Can view analogico_ hs2	10	view_analogico_hs2
41	Can add analogico_ hs3	11	add_analogico_hs3
42	Can change analogico_ hs3	11	change_analogico_hs3
43	Can delete analogico_ hs3	11	delete_analogico_hs3
44	Can view analogico_ hs3	11	view_analogico_hs3
45	Can add analogico_ hs4	12	add_analogico_hs4
46	Can change analogico_ hs4	12	change_analogico_hs4
47	Can delete analogico_ hs4	12	delete_analogico_hs4
48	Can view analogico_ hs4	12	view_analogico_hs4
49	Can add analogico_ hs5	13	add_analogico_hs5
50	Can change analogico_ hs5	13	change_analogico_hs5
51	Can delete analogico_ hs5	13	delete_analogico_hs5
52	Can view analogico_ hs5	13	view_analogico_hs5
53	Can add aor	14	add_aor
54	Can change aor	14	change_aor
55	Can delete aor	14	delete_aor
56	Can view aor	14	view_aor
57	Can add mb esclavo	15	add_mbesclavo
58	Can change mb esclavo	15	change_mbesclavo
59	Can delete mb esclavo	15	delete_mbesclavo
60	Can view mb esclavo	15	view_mbesclavo
61	Can add mb maestro	16	add_mbmaestro
62	Can change mb maestro	16	change_mbmaestro
63	Can delete mb maestro	16	delete_mbmaestro
64	Can view mb maestro	16	view_mbmaestro
65	Can add patio tanque	17	add_patiotanque
66	Can change patio tanque	17	change_patiotanque
67	Can delete patio tanque	17	delete_patiotanque
68	Can view patio tanque	17	view_patiotanque
69	Can add tag	18	add_tag
70	Can change tag	18	change_tag
71	Can delete tag	18	delete_tag
72	Can view tag	18	view_tag
73	Can add analogico	19	add_analogico
74	Can change analogico	19	change_analogico
75	Can delete analogico	19	delete_analogico
76	Can view analogico	19	view_analogico
77	Can add digital	20	add_digital
78	Can change digital	20	change_digital
79	Can delete digital	20	delete_digital
80	Can view digital	20	view_digital
81	Can add user profile	21	add_userprofile
82	Can change user profile	21	change_userprofile
83	Can delete user profile	21	delete_userprofile
84	Can view user profile	21	view_userprofile
85	Can add tk	22	add_tk
86	Can change tk	22	change_tk
87	Can delete tk	22	delete_tk
88	Can view tk	22	view_tk
89	Can add tct	23	add_tct
90	Can change tct	23	change_tct
91	Can delete tct	23	delete_tct
92	Can view tct	23	view_tct
93	Can add factor	24	add_factor
94	Can change factor	24	change_factor
95	Can delete factor	24	delete_factor
96	Can view factor	24	view_factor
\.


--
-- TOC entry 3295 (class 0 OID 125334)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$216000$KJ31IDLPyjQt$b5mZG0fI4NLusCblzC16AHmeCVQmD+911jJxIhJSjxc=	2021-06-23 14:03:36.481284+02	t	admin	ADMINISTRADOR	DEL SISTEMA	admin@sacvc.com	t	t	2021-05-14 12:15:09+02
4	pbkdf2_sha256$216000$kSMB7pJAtdsF$bhw1rdQ7pZ6hum/jUXhU9rjvVNlI14EyIpSeO/5Ueos=	2021-06-24 12:49:29.531605+02	f	jcotelo	JOSE	GONZALEZ	jcotelo@sacvc.com	f	t	2021-05-14 12:18:28.042503+02
2	pbkdf2_sha256$216000$4cY1EaYiDKRc$JodGedQ8n7T8wjOoYIsBQtbLfbU57XdJiPWI1MbY+2E=	2021-06-25 12:28:28.803107+02	f	tester1	carlos	perez	tester@gmail.com	f	t	2021-05-12 13:35:36.165994+02
1	pbkdf2_sha256$216000$IvRHGVCE65hj$BvHcD2hQWQnPEfeGcjeurmLuE8gsiLMzwWk3TUMzSKU=	2021-06-25 13:16:48.698193+02	t	morenomx	MIGUEL	MORENO PÉREZ	morenomx@sacvc.com	t	t	2021-05-12 13:31:49+02
\.


--
-- TOC entry 3297 (class 0 OID 125344)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	2
2	2	1
3	4	2
\.


--
-- TOC entry 3299 (class 0 OID 125352)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3336 (class 0 OID 125662)
-- Dependencies: 248
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-12 13:34:03.627862+02	1	operativos	1	[{"added": {}}]	3	1
2	2021-05-12 13:34:14.63551+02	2	supervisores	1	[{"added": {}}]	3	1
3	2021-05-12 13:34:41.472298+02	1	morenomx	2	[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]	4	1
4	2021-05-12 13:38:16.77423+02	1	1	1	[{"added": {}}]	14	1
5	2021-05-12 13:38:33.279965+02	2	2	1	[{"added": {}}]	14	1
6	2021-05-12 13:40:13.49466+02	3	AAAA, AAAA	1	[{"added": {}}]	22	1
7	2021-05-12 13:46:24.843869+02	2	PLANTA B	1	[{"added": {}}]	17	1
8	2021-05-12 13:46:43.153352+02	3	TK1, PLANTA A	2	[{"changed": {"fields": ["Nombre", "Descriptor"]}}]	22	1
9	2021-05-12 13:47:08.880581+02	9	TK2, PLANTA B	2	[{"changed": {"fields": ["Patio de Tanques", "Nombre", "Descriptor", "AREA"]}}]	22	1
10	2021-05-12 13:47:16.518146+02	3	TK1, PLANTA A	2	[]	22	1
11	2021-05-12 13:49:44.214617+02	1	AREA 1,PLANTA B	2	[{"changed": {"fields": ["Patio de Tanques"]}}]	14	1
12	2021-05-14 12:15:10.302767+02	3	admin	1	[{"added": {}}]	4	1
13	2021-05-14 12:15:25.462145+02	3	admin	2	[{"changed": {"fields": ["Staff status", "Superuser status"]}}]	4	1
14	2021-05-15 10:27:14.566492+02	2	DESTILACION,PLANT A	2	[{"changed": {"fields": ["Nombre", "Descriptor"]}}]	14	1
15	2021-05-15 10:27:38.290957+02	1	alquilacion,PLANTA B	2	[{"changed": {"fields": ["Nombre", "Descriptor"]}}]	14	1
16	2021-05-15 10:27:47.473584+02	1	ALQUILACION,PLANTA B	2	[{"changed": {"fields": ["Nombre"]}}]	14	1
17	2021-05-21 22:25:54.602356+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	1
18	2021-05-21 22:29:18.490905+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	1
19	2021-05-21 23:42:08.954212+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	1
20	2021-05-21 23:43:12.776493+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	1
21	2021-05-21 23:43:50.633823+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	1
22	2021-05-22 18:21:46.091627+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	3
23	2021-05-22 18:22:48.406056+02	2	tester1	2	[{"changed": {"fields": ["Aor"]}}]	21	3
24	2021-05-28 16:01:14.667141+02	16	TKT001, TANQUE 001	2	[{"changed": {"fields": ["Area", "Tct archivo", "Descriptor tct"]}}]	22	1
25	2021-06-01 19:18:02.468092+02	77	tk_dinamics_02_lt	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
26	2021-06-01 19:18:19.784334+02	78	tk_dinamics_02_pt	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
27	2021-06-01 19:18:42.577832+02	79	tk_dinamics_02_tt	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
28	2021-06-01 19:19:01.937486+02	80	tk_dinamics_02_lta	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
29	2021-06-01 19:19:24.710065+02	81	tk_dinamics_02_ays	2	[{"changed": {"fields": ["Direccion", "Direccion campo", "Etiqueta1"]}}]	19	1
30	2021-06-01 19:19:45.183059+02	82	tk_dinamics_02_TOV	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
31	2021-06-01 19:20:07.093168+02	83	tk_dinamics_02_GSV	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
32	2021-06-01 19:20:18.036078+02	84	tk_dinamics_02_NSV	2	[{"changed": {"fields": ["Direccion", "Direccion campo"]}}]	19	1
33	2021-06-04 10:29:04.797974+02	69	tk_dinamics_01_lt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
34	2021-06-04 11:28:04.516633+02	69	tk_dinamics_01_lt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
35	2021-06-04 13:18:54.252308+02	69	tk_dinamics_01_lt	2	[{"changed": {"fields": ["ValorMaximo", "Unidad"]}}]	19	1
36	2021-06-04 13:19:11.127586+02	70	tk_dinamics_01_pt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
37	2021-06-04 13:19:30.384378+02	71	tk_dinamics_01_tt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
38	2021-06-04 13:19:47.996605+02	72	tk_dinamics_01_lta	2	[{"changed": {"fields": ["ValorMaximo", "Unidad"]}}]	19	1
39	2021-06-04 13:20:14.537523+02	73	tk_dinamics_01_ays	2	[{"changed": {"fields": ["Etiqueta1", "ValorMaximo"]}}]	19	1
40	2021-06-04 13:20:28.403562+02	73	tk_dinamics_01_ays	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
41	2021-06-04 13:20:53.889106+02	74	tk_dinamics_01_TOV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
42	2021-06-04 13:21:04.97402+02	75	tk_dinamics_01_GSV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
43	2021-06-04 13:21:19.131997+02	76	tk_dinamics_01_NSV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
44	2021-06-07 21:48:34.723235+02	73	tk_dinamics_01_ays	2	[{"changed": {"fields": ["Tipo de Variable", "Etiqueta1"]}}]	19	1
45	2021-06-09 17:53:08.272327+02	72	tk_dinamics_01_lta	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
46	2021-06-23 12:13:19.829702+02	85	tk_dinamics_02_lt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
47	2021-06-23 12:13:33.753052+02	86	tk_dinamics_02_pt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
48	2021-06-23 12:13:48.1988+02	87	tk_dinamics_02_tt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
49	2021-06-23 12:13:59.075746+02	88	tk_dinamics_02_lta	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
50	2021-06-23 12:14:13.299542+02	89	tk_dinamics_02_ays	2	[{"changed": {"fields": ["Direccion campo", "Etiqueta1"]}}]	19	1
51	2021-06-23 12:14:25.696125+02	90	tk_dinamics_02_TOV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
52	2021-06-23 12:14:43.314508+02	91	tk_dinamics_02_GSV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
53	2021-06-23 12:14:57.176461+02	92	tk_dinamics_02_NSV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
54	2021-06-23 12:19:21.236209+02	85	tk_dinamics_02_lt	2	[{"changed": {"fields": ["ValorMaximo", "Unidad"]}}]	19	1
55	2021-06-23 12:20:43.336229+02	87	tk_dinamics_02_tt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
56	2021-06-23 12:21:28.199626+02	86	tk_dinamics_02_pt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
57	2021-06-23 12:22:39.28101+02	87	tk_dinamics_02_tt	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
58	2021-06-23 12:22:57.356332+02	88	tk_dinamics_02_lta	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
59	2021-06-23 12:23:13.863236+02	89	tk_dinamics_02_ays	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
60	2021-06-23 12:23:33.069812+02	90	tk_dinamics_02_TOV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
61	2021-06-23 12:23:47.211688+02	91	tk_dinamics_02_GSV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
62	2021-06-23 12:23:59.345735+02	92	tk_dinamics_02_NSV	2	[{"changed": {"fields": ["ValorMaximo"]}}]	19	1
63	2021-06-23 13:45:42.620683+02	89	tk_dinamics_02_ays	2	[{"changed": {"fields": ["Etiqueta1"]}}]	19	1
64	2021-06-24 13:19:57.473552+02	109	tk_dinamics_03_lt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
65	2021-06-24 13:20:12.128592+02	110	tk_dinamics_03_pt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
66	2021-06-24 13:20:27.100128+02	111	tk_dinamics_03_tt	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
67	2021-06-24 13:21:25.585177+02	112	tk_dinamics_03_lta	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
68	2021-06-24 13:21:58.096923+02	113	tk_dinamics_03_ays	2	[{"changed": {"fields": ["Direccion campo", "Etiqueta1"]}}]	19	1
69	2021-06-24 13:22:08.986125+02	114	tk_dinamics_03_TOV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
70	2021-06-24 13:22:30.630634+02	115	tk_dinamics_03_GSV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
71	2021-06-24 13:22:46.245729+02	116	tk_dinamics_03_NSV	2	[{"changed": {"fields": ["Direccion campo"]}}]	19	1
\.


--
-- TOC entry 3287 (class 0 OID 125298)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	acq	analogico_hs
8	acq	analogico_hs0
9	acq	analogico_hs1
10	acq	analogico_hs2
11	acq	analogico_hs3
12	acq	analogico_hs4
13	acq	analogico_hs5
14	acq	aor
15	acq	mbesclavo
16	acq	mbmaestro
17	acq	patiotanque
18	acq	tag
19	acq	analogico
20	acq	digital
21	acq	userprofile
22	acq	tk
23	acq	tct
24	acq	factor
\.


--
-- TOC entry 3285 (class 0 OID 125287)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-12 13:29:12.137551+02
2	contenttypes	0002_remove_content_type_name	2021-05-12 13:29:12.171832+02
3	auth	0001_initial	2021-05-12 13:29:12.818972+02
4	auth	0002_alter_permission_name_max_length	2021-05-12 13:29:13.799086+02
5	auth	0003_alter_user_email_max_length	2021-05-12 13:29:13.828072+02
6	auth	0004_alter_user_username_opts	2021-05-12 13:29:13.854541+02
7	auth	0005_alter_user_last_login_null	2021-05-12 13:29:13.881114+02
8	auth	0006_require_contenttypes_0002	2021-05-12 13:29:13.899821+02
9	auth	0007_alter_validators_add_error_messages	2021-05-12 13:29:13.923851+02
10	auth	0008_alter_user_username_max_length	2021-05-12 13:29:14.046603+02
11	auth	0009_alter_user_last_name_max_length	2021-05-12 13:29:14.081263+02
12	auth	0010_alter_group_name_max_length	2021-05-12 13:29:14.119507+02
13	auth	0011_update_proxy_permissions	2021-05-12 13:29:14.139268+02
14	auth	0012_alter_user_first_name_max_length	2021-05-12 13:29:14.171293+02
15	acq	0001_initial	2021-05-12 13:29:16.734866+02
16	admin	0001_initial	2021-05-12 13:29:18.356593+02
17	admin	0002_logentry_remove_auto_add	2021-05-12 13:29:18.586355+02
18	admin	0003_logentry_add_action_flag_choices	2021-05-12 13:29:18.614132+02
19	sessions	0001_initial	2021-05-12 13:29:18.788654+02
20	acq	0002_auto_20210512_1344	2021-05-12 13:44:17.912334+02
21	acq	0003_userprofile_aor	2021-05-14 12:34:08.086973+02
22	acq	0003_alter_tk_id_aor	2021-05-18 15:58:19.943127+02
23	acq	0004_merge_0003_alter_tk_id_aor_0003_userprofile_aor	2021-05-18 15:58:20.049342+02
24	acq	0005_alter_tag_etiqueta1	2021-06-02 15:46:50.366027+02
25	acq	0006_auto_20210602_1546	2021-06-02 15:46:50.715608+02
\.


--
-- TOC entry 3337 (class 0 OID 125684)
-- Dependencies: 249
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: morenomx
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4mzs67zo6jmtyttx7ba2w37whhxendsb	.eJxVjEEOwiAQRe_C2hAIwwAu3XsGMjAgVUOT0q6Md9cmXej2v_f-S0Ta1ha3UZY4sTgLLU6_W6L8KH0HfKd-m2We-7pMSe6KPOiQ15nL83K4fweNRvvWoajCGtCDDtqCI2sxYKmhGqdVVcl5Ax48QiXFGVCbkFwFH9gjoRLvD7VMNqk:1llSoG:sXDRrUHtzexgbAKpmhU6go1ub4jRkhlSRfUrx6Fxt-U	2021-06-08 10:53:08.836644+02
je03gvwd1dm93nd0ejapo13k5vhvbgvr	.eJxVjEEOwiAQRe_C2hAIwwAu3XsGMjAgVUOT0q6Md9cmXej2v_f-S0Ta1ha3UZY4sTgLLU6_W6L8KH0HfKd-m2We-7pMSe6KPOiQ15nL83K4fweNRvvWoajCGtCDDtqCI2sxYKmhGqdVVcl5Ax48QiXFGVCbkFwFH9gjoRLvD7VMNqk:1lwjpI:GNJgSt5tm4bqSKInM7WhbTYwmetbd5HB9rB1w4abd_k	2021-07-09 13:16:48.752027+02
cg85ytj9zsq3iidox8ponvpyivczk1qf	.eJxVjEEOwiAQRe_C2pBhgMa6dO8ZyDADUjWQlHZlvLtt0oVu_3v_vVWgdSlh7WkOk6iLQnX63SLxM9UdyIPqvWludZmnqHdFH7TrW5P0uh7uX6BQL9ubLQuODNliyuQhCqAAGR_NWXhAylbEkRkEhHJGdoBuy2cYxdvI6vMFEXc5Sg:1lkYT2:yU876eC_ZTnnIOpKEcNTZwEKq99SjHHgYWvMv4lMMFo	2021-06-05 22:43:28.766719+02
\.


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 214
-- Name: acq_analogico_hs0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs0_id_seq', 1, false);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 216
-- Name: acq_analogico_hs1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs1_id_seq', 1, false);


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 218
-- Name: acq_analogico_hs2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs2_id_seq', 1, false);


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 220
-- Name: acq_analogico_hs3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs3_id_seq', 1, false);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 222
-- Name: acq_analogico_hs4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs4_id_seq', 1, false);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 224
-- Name: acq_analogico_hs5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs5_id_seq', 1, false);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 212
-- Name: acq_analogico_hs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_analogico_hs_id_seq', 1, false);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 226
-- Name: acq_aor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_aor_id_seq', 11, true);


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 245
-- Name: acq_factor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_factor_id_seq', 1, false);


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 228
-- Name: acq_mbesclavo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_mbesclavo_id_seq', 1, false);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 230
-- Name: acq_mbmaestro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_mbmaestro_id_seq', 1, false);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 232
-- Name: acq_patiotanque_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_patiotanque_id_seq', 4, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 234
-- Name: acq_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_tag_id_seq', 116, true);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 243
-- Name: acq_tct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_tct_id_seq', 134610, true);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 241
-- Name: acq_tk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_tk_id_seq', 24, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 250
-- Name: acq_userprofile_aor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_userprofile_aor_id_seq', 17, true);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 239
-- Name: acq_userprofile_patios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.acq_userprofile_patios_id_seq', 5, true);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 247
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 71, true);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morenomx
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- TOC entry 3073 (class 2606 OID 125440)
-- Name: acq_analogico_hs0 acq_analogico_hs0_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs0
    ADD CONSTRAINT acq_analogico_hs0_pkey PRIMARY KEY (id);


--
-- TOC entry 3075 (class 2606 OID 125451)
-- Name: acq_analogico_hs1 acq_analogico_hs1_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs1
    ADD CONSTRAINT acq_analogico_hs1_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 125462)
-- Name: acq_analogico_hs2 acq_analogico_hs2_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs2
    ADD CONSTRAINT acq_analogico_hs2_pkey PRIMARY KEY (id);


--
-- TOC entry 3079 (class 2606 OID 125473)
-- Name: acq_analogico_hs3 acq_analogico_hs3_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs3
    ADD CONSTRAINT acq_analogico_hs3_pkey PRIMARY KEY (id);


--
-- TOC entry 3081 (class 2606 OID 125484)
-- Name: acq_analogico_hs4 acq_analogico_hs4_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs4
    ADD CONSTRAINT acq_analogico_hs4_pkey PRIMARY KEY (id);


--
-- TOC entry 3083 (class 2606 OID 125495)
-- Name: acq_analogico_hs5 acq_analogico_hs5_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs5
    ADD CONSTRAINT acq_analogico_hs5_pkey PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 125429)
-- Name: acq_analogico_hs acq_analogico_hs_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico_hs
    ADD CONSTRAINT acq_analogico_hs_pkey PRIMARY KEY (id);


--
-- TOC entry 3103 (class 2606 OID 125544)
-- Name: acq_analogico acq_analogico_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico
    ADD CONSTRAINT acq_analogico_pkey PRIMARY KEY (tag_ptr_id);


--
-- TOC entry 3086 (class 2606 OID 125505)
-- Name: acq_aor acq_aor_Nombre_key; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_aor
    ADD CONSTRAINT "acq_aor_Nombre_key" UNIQUE ("Nombre");


--
-- TOC entry 3089 (class 2606 OID 125503)
-- Name: acq_aor acq_aor_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_aor
    ADD CONSTRAINT acq_aor_pkey PRIMARY KEY (id);


--
-- TOC entry 3105 (class 2606 OID 125549)
-- Name: acq_digital acq_digital_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_digital
    ADD CONSTRAINT acq_digital_pkey PRIMARY KEY (tag_ptr_id);


--
-- TOC entry 3126 (class 2606 OID 125596)
-- Name: acq_factor acq_factor_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_factor
    ADD CONSTRAINT acq_factor_pkey PRIMARY KEY (id);


--
-- TOC entry 3091 (class 2606 OID 125513)
-- Name: acq_mbesclavo acq_mbesclavo_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_mbesclavo
    ADD CONSTRAINT acq_mbesclavo_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 125521)
-- Name: acq_mbmaestro acq_mbmaestro_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_mbmaestro
    ADD CONSTRAINT acq_mbmaestro_pkey PRIMARY KEY (id);


--
-- TOC entry 3096 (class 2606 OID 125531)
-- Name: acq_patiotanque acq_patiotanque_Nombre_key; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_patiotanque
    ADD CONSTRAINT "acq_patiotanque_Nombre_key" UNIQUE ("Nombre");


--
-- TOC entry 3098 (class 2606 OID 125529)
-- Name: acq_patiotanque acq_patiotanque_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_patiotanque
    ADD CONSTRAINT acq_patiotanque_pkey PRIMARY KEY (id);


--
-- TOC entry 3101 (class 2606 OID 125539)
-- Name: acq_tag acq_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tag
    ADD CONSTRAINT acq_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 125583)
-- Name: acq_tct acq_tct_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tct
    ADD CONSTRAINT acq_tct_pkey PRIMARY KEY (id);


--
-- TOC entry 3116 (class 2606 OID 125575)
-- Name: acq_tk acq_tk_Nombre_key; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tk
    ADD CONSTRAINT "acq_tk_Nombre_key" UNIQUE ("Nombre");


--
-- TOC entry 3120 (class 2606 OID 125573)
-- Name: acq_tk acq_tk_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tk
    ADD CONSTRAINT acq_tk_pkey PRIMARY KEY (id);


--
-- TOC entry 3137 (class 2606 OID 125707)
-- Name: acq_userprofile_aor acq_userprofile_aor_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_aor
    ADD CONSTRAINT acq_userprofile_aor_pkey PRIMARY KEY (id);


--
-- TOC entry 3139 (class 2606 OID 125709)
-- Name: acq_userprofile_aor acq_userprofile_aor_userprofile_id_aor_id_35a66a15_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_aor
    ADD CONSTRAINT acq_userprofile_aor_userprofile_id_aor_id_35a66a15_uniq UNIQUE (userprofile_id, aor_id);


--
-- TOC entry 3110 (class 2606 OID 125562)
-- Name: acq_userprofile_patios acq_userprofile_patios_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_patios
    ADD CONSTRAINT acq_userprofile_patios_pkey PRIMARY KEY (id);


--
-- TOC entry 3113 (class 2606 OID 125620)
-- Name: acq_userprofile_patios acq_userprofile_patios_userprofile_id_patiotanq_b273db83_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_patios
    ADD CONSTRAINT acq_userprofile_patios_userprofile_id_patiotanq_b273db83_uniq UNIQUE (userprofile_id, patiotanque_id);


--
-- TOC entry 3107 (class 2606 OID 125554)
-- Name: acq_userprofile acq_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile
    ADD CONSTRAINT acq_userprofile_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3044 (class 2606 OID 125417)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3049 (class 2606 OID 125368)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3052 (class 2606 OID 125331)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3046 (class 2606 OID 125321)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3039 (class 2606 OID 125359)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3041 (class 2606 OID 125313)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3060 (class 2606 OID 125349)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3063 (class 2606 OID 125383)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3054 (class 2606 OID 125339)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3066 (class 2606 OID 125357)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3069 (class 2606 OID 125397)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3057 (class 2606 OID 125411)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3129 (class 2606 OID 125671)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3034 (class 2606 OID 125305)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3036 (class 2606 OID 125303)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3032 (class 2606 OID 125295)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3133 (class 2606 OID 125691)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3084 (class 1259 OID 125602)
-- Name: acq_aor_Nombre_0e37042b_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_aor_Nombre_0e37042b_like" ON public.acq_aor USING btree ("Nombre" varchar_pattern_ops);


--
-- TOC entry 3087 (class 1259 OID 125659)
-- Name: acq_aor_id_patioTanque_id_0267a0a7; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_aor_id_patioTanque_id_0267a0a7" ON public.acq_aor USING btree ("id_patioTanque_id");


--
-- TOC entry 3124 (class 1259 OID 125658)
-- Name: acq_factor_id_tk_id_597782df; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_factor_id_tk_id_597782df ON public.acq_factor USING btree (id_tk_id);


--
-- TOC entry 3094 (class 1259 OID 125603)
-- Name: acq_patiotanque_Nombre_2a731a40_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_patiotanque_Nombre_2a731a40_like" ON public.acq_patiotanque USING btree ("Nombre" varchar_pattern_ops);


--
-- TOC entry 3099 (class 1259 OID 125652)
-- Name: acq_tag_id_Tk_id_4dcd6a62; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_tag_id_Tk_id_4dcd6a62" ON public.acq_tag USING btree ("id_Tk_id");


--
-- TOC entry 3121 (class 1259 OID 125651)
-- Name: acq_tct_id_tk_id_da8a6ad9; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_tct_id_tk_id_da8a6ad9 ON public.acq_tct USING btree (id_tk_id);


--
-- TOC entry 3114 (class 1259 OID 125643)
-- Name: acq_tk_Nombre_edd7b80f_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_tk_Nombre_edd7b80f_like" ON public.acq_tk USING btree ("Nombre" varchar_pattern_ops);


--
-- TOC entry 3117 (class 1259 OID 125644)
-- Name: acq_tk_id_aor_id_cc573127; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_tk_id_aor_id_cc573127 ON public.acq_tk USING btree (id_aor_id);


--
-- TOC entry 3118 (class 1259 OID 125645)
-- Name: acq_tk_id_patioTanque_id_ed58dbb0; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX "acq_tk_id_patioTanque_id_ed58dbb0" ON public.acq_tk USING btree ("id_patioTanque_id");


--
-- TOC entry 3135 (class 1259 OID 125721)
-- Name: acq_userprofile_aor_aor_id_1f67935b; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_userprofile_aor_aor_id_1f67935b ON public.acq_userprofile_aor USING btree (aor_id);


--
-- TOC entry 3140 (class 1259 OID 125720)
-- Name: acq_userprofile_aor_userprofile_id_c0652618; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_userprofile_aor_userprofile_id_c0652618 ON public.acq_userprofile_aor USING btree (userprofile_id);


--
-- TOC entry 3108 (class 1259 OID 125632)
-- Name: acq_userprofile_patios_patiotanque_id_1089707d; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_userprofile_patios_patiotanque_id_1089707d ON public.acq_userprofile_patios USING btree (patiotanque_id);


--
-- TOC entry 3111 (class 1259 OID 125631)
-- Name: acq_userprofile_patios_userprofile_id_0a5f8bb5; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX acq_userprofile_patios_userprofile_id_0a5f8bb5 ON public.acq_userprofile_patios USING btree (userprofile_id);


--
-- TOC entry 3042 (class 1259 OID 125418)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3047 (class 1259 OID 125379)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3050 (class 1259 OID 125380)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3037 (class 1259 OID 125365)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3058 (class 1259 OID 125395)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3061 (class 1259 OID 125394)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3064 (class 1259 OID 125409)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3067 (class 1259 OID 125408)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3055 (class 1259 OID 125412)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3127 (class 1259 OID 125682)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3130 (class 1259 OID 125683)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3131 (class 1259 OID 125693)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3134 (class 1259 OID 125692)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: morenomx
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3150 (class 2606 OID 125604)
-- Name: acq_analogico acq_analogico_tag_ptr_id_0a2ac1d3_fk_acq_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_analogico
    ADD CONSTRAINT acq_analogico_tag_ptr_id_0a2ac1d3_fk_acq_tag_id FOREIGN KEY (tag_ptr_id) REFERENCES public.acq_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3148 (class 2606 OID 125597)
-- Name: acq_aor acq_aor_id_patioTanque_id_0267a0a7_fk_acq_patiotanque_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_aor
    ADD CONSTRAINT "acq_aor_id_patioTanque_id_0267a0a7_fk_acq_patiotanque_id" FOREIGN KEY ("id_patioTanque_id") REFERENCES public.acq_patiotanque(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3151 (class 2606 OID 125609)
-- Name: acq_digital acq_digital_tag_ptr_id_b74d392f_fk_acq_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_digital
    ADD CONSTRAINT acq_digital_tag_ptr_id_b74d392f_fk_acq_tag_id FOREIGN KEY (tag_ptr_id) REFERENCES public.acq_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3158 (class 2606 OID 125653)
-- Name: acq_factor acq_factor_id_tk_id_597782df_fk_acq_tk_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_factor
    ADD CONSTRAINT acq_factor_id_tk_id_597782df_fk_acq_tk_id FOREIGN KEY (id_tk_id) REFERENCES public.acq_tk(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3149 (class 2606 OID 125584)
-- Name: acq_tag acq_tag_id_Tk_id_4dcd6a62_fk_acq_tk_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tag
    ADD CONSTRAINT "acq_tag_id_Tk_id_4dcd6a62_fk_acq_tk_id" FOREIGN KEY ("id_Tk_id") REFERENCES public.acq_tk(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3157 (class 2606 OID 125646)
-- Name: acq_tct acq_tct_id_tk_id_da8a6ad9_fk_acq_tk_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tct
    ADD CONSTRAINT acq_tct_id_tk_id_da8a6ad9_fk_acq_tk_id FOREIGN KEY (id_tk_id) REFERENCES public.acq_tk(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3156 (class 2606 OID 125772)
-- Name: acq_tk acq_tk_id_aor_id_cc573127_fk_acq_aor_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tk
    ADD CONSTRAINT acq_tk_id_aor_id_cc573127_fk_acq_aor_id FOREIGN KEY (id_aor_id) REFERENCES public.acq_aor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3155 (class 2606 OID 125638)
-- Name: acq_tk acq_tk_id_patioTanque_id_ed58dbb0_fk_acq_patiotanque_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_tk
    ADD CONSTRAINT "acq_tk_id_patioTanque_id_ed58dbb0_fk_acq_patiotanque_id" FOREIGN KEY ("id_patioTanque_id") REFERENCES public.acq_patiotanque(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3162 (class 2606 OID 125715)
-- Name: acq_userprofile_aor acq_userprofile_aor_aor_id_1f67935b_fk_acq_aor_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_aor
    ADD CONSTRAINT acq_userprofile_aor_aor_id_1f67935b_fk_acq_aor_id FOREIGN KEY (aor_id) REFERENCES public.acq_aor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3161 (class 2606 OID 125710)
-- Name: acq_userprofile_aor acq_userprofile_aor_userprofile_id_c0652618_fk_acq_userp; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_aor
    ADD CONSTRAINT acq_userprofile_aor_userprofile_id_c0652618_fk_acq_userp FOREIGN KEY (userprofile_id) REFERENCES public.acq_userprofile(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3154 (class 2606 OID 125626)
-- Name: acq_userprofile_patios acq_userprofile_pati_patiotanque_id_1089707d_fk_acq_patio; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_patios
    ADD CONSTRAINT acq_userprofile_pati_patiotanque_id_1089707d_fk_acq_patio FOREIGN KEY (patiotanque_id) REFERENCES public.acq_patiotanque(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3153 (class 2606 OID 125621)
-- Name: acq_userprofile_patios acq_userprofile_pati_userprofile_id_0a5f8bb5_fk_acq_userp; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile_patios
    ADD CONSTRAINT acq_userprofile_pati_userprofile_id_0a5f8bb5_fk_acq_userp FOREIGN KEY (userprofile_id) REFERENCES public.acq_userprofile(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3152 (class 2606 OID 125614)
-- Name: acq_userprofile acq_userprofile_user_id_e8a775ab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.acq_userprofile
    ADD CONSTRAINT acq_userprofile_user_id_e8a775ab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3143 (class 2606 OID 125374)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3142 (class 2606 OID 125369)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3141 (class 2606 OID 125360)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3145 (class 2606 OID 125389)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3144 (class 2606 OID 125384)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3147 (class 2606 OID 125403)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3146 (class 2606 OID 125398)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3159 (class 2606 OID 125672)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3160 (class 2606 OID 125677)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: morenomx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-06-28 18:17:03 CEST

--
-- PostgreSQL database dump complete
--

