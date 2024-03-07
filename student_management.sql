PGDMP                          |            student_management    10.23    10.23     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    82112    student_management    DATABASE     �   CREATE DATABASE student_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 "   DROP DATABASE student_management;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    82115    students    TABLE       CREATE TABLE public.students (
    student_id integer NOT NULL,
    student_name character varying(50),
    student_age integer,
    student_email character varying(100),
    student_address character varying(255),
    student_phone character varying(100)
);
    DROP TABLE public.students;
       public         postgres    false    3            �            1259    82113    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public       postgres    false    3    197            �
           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
            public       postgres    false    196            o
           2604    82118    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    82115    students 
   TABLE DATA               x   COPY public.students (student_id, student_name, student_age, student_email, student_address, student_phone) FROM stdin;
    public       postgres    false    197   �       �
           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 34, true);
            public       postgres    false    196            q
           2606    82123    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public         postgres    false    197            �
   �   x�e��J�0���̻tif�fn�A� 
�E�lk6�&�K��;��2���t���"�����S i�!�0d���
Fಮz2���$��0�0�Y��s�#BU�KkҳRa�5��6}��o m��b.)��!���SNc�_e��#k���������6U4��G5I�2����BOׂ԰���Π����䡸��"���OQs�2T�}��w|۱e��!��#p�     