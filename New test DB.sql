PGDMP                      }            agriguru_online_trading    17.2    17.2 /    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            +           1262    16399    agriguru_online_trading    DATABASE     �   CREATE DATABASE agriguru_online_trading WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 '   DROP DATABASE agriguru_online_trading;
                     postgres    false            �            1259    16404    categories_tbl    TABLE     �   CREATE TABLE public.categories_tbl (
    id integer NOT NULL,
    name character varying(50),
    image bytea,
    status boolean DEFAULT true
);
 "   DROP TABLE public.categories_tbl;
       public         heap r       postgres    false            �            1259    16403    categories_tbl_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.categories_tbl_id_seq;
       public               postgres    false    218            ,           0    0    categories_tbl_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.categories_tbl_id_seq OWNED BY public.categories_tbl.id;
          public               postgres    false    217            �            1259    16414 	   countries    TABLE     |   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(50),
    status boolean DEFAULT true
);
    DROP TABLE public.countries;
       public         heap r       postgres    false            �            1259    16413    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public               postgres    false    220            -           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public               postgres    false    219            �            1259    16436    ports    TABLE     �   CREATE TABLE public.ports (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    status boolean DEFAULT true
);
    DROP TABLE public.ports;
       public         heap r       postgres    false            �            1259    16435    ports_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.ports_id_seq;
       public               postgres    false    222            .           0    0    ports_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.ports_id_seq OWNED BY public.ports.id;
          public               postgres    false    221            �            1259    16493    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    category_id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying(50),
    price bigint NOT NULL,
    image bytea NOT NULL,
    status boolean DEFAULT true
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    16492    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    226            /           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    225            �            1259    16471    sub_categories    TABLE     �   CREATE TABLE public.sub_categories (
    id integer NOT NULL,
    category_id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying(50) NOT NULL,
    image bytea NOT NULL,
    status boolean DEFAULT true
);
 "   DROP TABLE public.sub_categories;
       public         heap r       postgres    false            �            1259    16470    sub_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sub_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sub_categories_id_seq;
       public               postgres    false    224            0           0    0    sub_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;
          public               postgres    false    223            k           2604    16407    categories_tbl id    DEFAULT     v   ALTER TABLE ONLY public.categories_tbl ALTER COLUMN id SET DEFAULT nextval('public.categories_tbl_id_seq'::regclass);
 @   ALTER TABLE public.categories_tbl ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            m           2604    16417    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            o           2604    16439    ports id    DEFAULT     d   ALTER TABLE ONLY public.ports ALTER COLUMN id SET DEFAULT nextval('public.ports_id_seq'::regclass);
 7   ALTER TABLE public.ports ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            s           2604    16496    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            q           2604    16474    sub_categories id    DEFAULT     v   ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);
 @   ALTER TABLE public.sub_categories ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224                      0    16404    categories_tbl 
   TABLE DATA           A   COPY public.categories_tbl (id, name, image, status) FROM stdin;
    public               postgres    false    218   ?6                 0    16414 	   countries 
   TABLE DATA           5   COPY public.countries (id, name, status) FROM stdin;
    public               postgres    false    220   7       !          0    16436    ports 
   TABLE DATA           1   COPY public.ports (id, name, status) FROM stdin;
    public               postgres    false    222   Q7       %          0    16493    products 
   TABLE DATA           [   COPY public.products (id, category_id, country_id, name, price, image, status) FROM stdin;
    public               postgres    false    226   �7       #          0    16471    sub_categories 
   TABLE DATA           Z   COPY public.sub_categories (id, category_id, country_id, name, image, status) FROM stdin;
    public               postgres    false    224   :8       1           0    0    categories_tbl_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.categories_tbl_id_seq', 18, true);
          public               postgres    false    217            2           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 5, true);
          public               postgres    false    219            3           0    0    ports_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.ports_id_seq', 7, true);
          public               postgres    false    221            4           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 13, true);
          public               postgres    false    225            5           0    0    sub_categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sub_categories_id_seq', 5, true);
          public               postgres    false    223            v           2606    16412 "   categories_tbl categories_tbl_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories_tbl
    ADD CONSTRAINT categories_tbl_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.categories_tbl DROP CONSTRAINT categories_tbl_pkey;
       public                 postgres    false    218            x           2606    16422    countries countries_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_name_key;
       public                 postgres    false    220            z           2606    16420    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public                 postgres    false    220            |           2606    16444    ports ports_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.ports
    ADD CONSTRAINT ports_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.ports DROP CONSTRAINT ports_name_key;
       public                 postgres    false    222            ~           2606    16442    ports ports_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ports
    ADD CONSTRAINT ports_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.ports DROP CONSTRAINT ports_pkey;
       public                 postgres    false    222            �           2606    16503    products products_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT products_name_key;
       public                 postgres    false    226            �           2606    16501    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    226            �           2606    16481 &   sub_categories sub_categories_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_name_key;
       public                 postgres    false    224            �           2606    16479 "   sub_categories sub_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_pkey;
       public                 postgres    false    224            �           2606    16504 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories_tbl(id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public               postgres    false    218    4726    226            �           2606    16509 !   products products_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id);
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT products_country_id_fkey;
       public               postgres    false    220    226    4730            �           2606    16482 .   sub_categories sub_categories_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories_tbl(id);
 X   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_category_id_fkey;
       public               postgres    false    218    224    4726            �           2606    16487 -   sub_categories sub_categories_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id);
 W   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_country_id_fkey;
       public               postgres    false    4730    224    220               �   x�M���0E׷_�ˣ�VK5�eSIiy�>���"%q5sgN�ޡ��V�9�#�R��Ŭd	��H��Kn��#)����P�]PG�{�r9��z��*�R;~�E��h�*������xgד4Ɓہ;m�D�J[�tqmb:���Q���(��L~����9�i���J�gpmv���,I�         >   x�3���K�L�,�2�H��,.I��L�2�t���K�L8]J�3�
L9ӊ2�Ajc���� ���      !   @   x�3��-�K)J�,�2�tN�K��L�2��/�+����qz��d'�$��9S�2��1z\\\ 	�e      %   �   x�mͱ�0���
� �ܕ�[���(*J�ҁ��&���f8.u,�³� ƷL�y�^F�<����`�Z��˪���^5��:�f�Mǒ;'�u:�pMsym��f����o�^-a������@*N�ǣ1���._      #   K   x�3�4Ģ�������TΘ�
�4�$�43K�3s�.E�z�����p:%�&�d�(26BR����  �     