PGDMP     9    '                |            universe "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    universe    DATABASE     r   CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE universe;
                freecodecamp    false            �            1259    16388    galaxy    TABLE     �   CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    galaxy_types character varying,
    distance_from_earth integer NOT NULL,
    name character varying,
    etoile_min_milliard integer NOT NULL
);
    DROP TABLE public.galaxy;
       public         heap    freecodecamp    false            �            1259    16386    galaxy_galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.galaxy_galaxy_id_seq;
       public          freecodecamp    false    203            �           0    0    galaxy_galaxy_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
          public          freecodecamp    false    202            �            1259    16412    moon    TABLE     �   CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    descritpion text,
    planet_id integer,
    name character varying,
    demi_grand_axe integer NOT NULL,
    periapside integer NOT NULL
);
    DROP TABLE public.moon;
       public         heap    freecodecamp    false            �            1259    16410    moon_moon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moon_moon_id_seq;
       public          freecodecamp    false    209            �           0    0    moon_moon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;
          public          freecodecamp    false    208            �            1259    16404    planet    TABLE     J  CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_years integer NOT NULL,
    planet_types character varying,
    distance_from_earth integer NOT NULL,
    radius numeric(40,0),
    star_id integer,
    name character varying
);
    DROP TABLE public.planet;
       public         heap    freecodecamp    false            �            1259    16402    planet_planet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.planet_planet_id_seq;
       public          freecodecamp    false    207            �           0    0    planet_planet_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;
          public          freecodecamp    false    206            �            1259    16396    star    TABLE     �   CREATE TABLE public.star (
    star_id integer NOT NULL,
    desctiption text,
    age_in_millions_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    star_types character varying,
    galaxy_id integer,
    name character varying
);
    DROP TABLE public.star;
       public         heap    freecodecamp    false            �            1259    16394    star_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.star_star_id_seq;
       public          freecodecamp    false    205            �           0    0    star_star_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
          public          freecodecamp    false    204            �            1259    16430    system    TABLE     �   CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying NOT NULL,
    descritpion text NOT NULL
);
    DROP TABLE public.system;
       public         heap    freecodecamp    false            *           2604    16391    galaxy galaxy_id    DEFAULT     t   ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
 ?   ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
       public          freecodecamp    false    202    203    203            -           2604    16415    moon moon_id    DEFAULT     l   ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
 ;   ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
       public          freecodecamp    false    209    208    209            ,           2604    16407    planet planet_id    DEFAULT     t   ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);
 ?   ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
       public          freecodecamp    false    207    206    207            +           2604    16399    star star_id    DEFAULT     l   ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);
 ;   ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
       public          freecodecamp    false    205    204    205            �          0    16388    galaxy 
   TABLE DATA           v   COPY public.galaxy (galaxy_id, description, galaxy_types, distance_from_earth, name, etoile_min_milliard) FROM stdin;
    public          freecodecamp    false    203   �1       �          0    16412    moon 
   TABLE DATA           a   COPY public.moon (moon_id, descritpion, planet_id, name, demi_grand_axe, periapside) FROM stdin;
    public          freecodecamp    false    209   i2       �          0    16404    planet 
   TABLE DATA           �   COPY public.planet (planet_id, description, has_life, is_spherical, age_in_millions_years, planet_types, distance_from_earth, radius, star_id, name) FROM stdin;
    public          freecodecamp    false    207   73       �          0    16396    star 
   TABLE DATA           }   COPY public.star (star_id, desctiption, age_in_millions_years, distance_from_earth, star_types, galaxy_id, name) FROM stdin;
    public          freecodecamp    false    205   <4       �          0    16430    system 
   TABLE DATA           >   COPY public.system (system_id, name, descritpion) FROM stdin;
    public          freecodecamp    false    210   �4       �           0    0    galaxy_galaxy_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);
          public          freecodecamp    false    202            �           0    0    moon_moon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);
          public          freecodecamp    false    208            �           0    0    planet_planet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);
          public          freecodecamp    false    206            �           0    0    star_star_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);
          public          freecodecamp    false    204            /           2606    16456    galaxy galaxy_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_name_key;
       public            freecodecamp    false    203            1           2606    16393    galaxy galaxy_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);
 <   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
       public            freecodecamp    false    203            ;           2606    16462    moon moon_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_name_key;
       public            freecodecamp    false    209            =           2606    16417    moon moon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
       public            freecodecamp    false    209            7           2606    16460    planet planet_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_name_key;
       public            freecodecamp    false    207            9           2606    16409    planet planet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);
 <   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
       public            freecodecamp    false    207            3           2606    16458    star star_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.star DROP CONSTRAINT star_name_key;
       public            freecodecamp    false    205            5           2606    16401    star star_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
       public            freecodecamp    false    205            ?           2606    16451    system system_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.system DROP CONSTRAINT system_name_key;
       public            freecodecamp    false    210            A           2606    16449    system system_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);
 <   ALTER TABLE ONLY public.system DROP CONSTRAINT system_pkey;
       public            freecodecamp    false    210            D           2606    16443    moon moon_planet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
 B   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_planet_id_fkey;
       public          freecodecamp    false    207    2873    209            C           2606    16438    planet planet_star_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
 D   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_star_id_fkey;
       public          freecodecamp    false    205    2869    207            B           2606    16433    star star_galaxy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
 B   ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_id_fkey;
       public          freecodecamp    false    2865    203    205            �   �   x�m�1� Eg����:gq��"�(����C�bY~��+X��z�D�ŝ3HxG��uSR�� ���*���x�v"��x����%$(���)���bca�\�0��[�i�r���
4�y������܂qj@ �w��=�f"�Ϩ�N�)�¹c���O�.�e�"~ �EQA      �   �   x�U�M�0�u{C�G��'`3�DF��в��"Sð��K:/5���R�գ*۪�:U��k��q8�����RL�T��A�kf͆	�4���8�hKoٷ� �k$z��"�	db��/Nr�
�[z��q��C-�R�N�I�2y��DQ�>�Ra��Yz�>"���s�(��T0� `:��h���j}      �   �   x���KR1D��)8e��|.�	�qM)001�?YpzdB � Vyc�s�d����|-X���]�e�i~�l��X8J��bo�/�e7*p�4�$�~�Dt��(�T�M���n��Z&!e��~4����:�v'誑��.5��q�����Pj���6��i���c�����B�p�}ǊDYKU��.�$�9j.=!��ץ�׈d.,���m�Nj���O)��ϑ�H�H����9��? \��7      �   �   x�]���0���n� �q�MPA.�hd�VN�G��p�?�Z��ىB>���T�� J>������4O)᪇�+�Zg�GK���r]A�*z����2��xWцu(	<T9t-����E��P�0d��.��G^o����=�      �   R   x�3�,��I�,J�,�,.I�MUHIU�T(�I�K-I-�2�,�,�,-�K�'g U�*�D�ps&�䤧���<F��� QY,�     