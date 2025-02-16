toc.dat                                                                                             0000600 0004000 0002000 00000013510 14512710716 0014443 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       	    {            Persebaran_PTN    15.4    15.4     <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    32776    Persebaran_PTN    DATABASE     �   CREATE DATABASE "Persebaran_PTN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
     DROP DATABASE "Persebaran_PTN";
                postgres    false         @           0    0    Persebaran_PTN    DATABASE PROPERTIES     R   ALTER DATABASE "Persebaran_PTN" SET search_path TO '$user', 'public', 'topology';
                     postgres    false                     2615    33868    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false         A           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    8                     3079    32792    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false         B           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2                     3079    33869    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    8    2         C           0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    3         �            1259    32785    Perguruan Tinggi    TABLE       CREATE TABLE public."Perguruan Tinggi" (
    idperguruantinggi integer NOT NULL,
    namapt character varying,
    akreditaspt character varying,
    status character varying,
    kecamatan character varying,
    alamat character varying,
    geometry public.geometry
);
 &   DROP TABLE public."Perguruan Tinggi";
       public         heap    postgres    false    2    2    2    2    2    2    2    2         �            1259    32777    Program Studi    TABLE     �   CREATE TABLE public."Program Studi" (
    idprogramstudi integer NOT NULL,
    namaprodi character varying,
    akreditasi character varying,
    idpt integer
);
 #   DROP TABLE public."Program Studi";
       public         heap    postgres    false         9          0    32785    Perguruan Tinggi 
   TABLE DATA           y   COPY public."Perguruan Tinggi" (idperguruantinggi, namapt, akreditaspt, status, kecamatan, alamat, geometry) FROM stdin;
    public          postgres    false    218       4409.dat 8          0    32777    Program Studi 
   TABLE DATA           V   COPY public."Program Studi" (idprogramstudi, namaprodi, akreditasi, idpt) FROM stdin;
    public          postgres    false    217       4408.dat �          0    33110    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    220       4237.dat �          0    33871    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          postgres    false    225       4239.dat �          0    33883    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          postgres    false    226       4240.dat D           0    0    topology_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);
          topology          postgres    false    224         �           2606    32791 &   Perguruan Tinggi Perguruan Tinggi_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Perguruan Tinggi"
    ADD CONSTRAINT "Perguruan Tinggi_pkey" PRIMARY KEY (idperguruantinggi);
 T   ALTER TABLE ONLY public."Perguruan Tinggi" DROP CONSTRAINT "Perguruan Tinggi_pkey";
       public            postgres    false    218         �           2606    32783     Program Studi Program Studi_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Program Studi"
    ADD CONSTRAINT "Program Studi_pkey" PRIMARY KEY (idprogramstudi);
 N   ALTER TABLE ONLY public."Program Studi" DROP CONSTRAINT "Program Studi_pkey";
       public            postgres    false    217         �           1259    34052    fki_perguruan tinggi    INDEX     R   CREATE INDEX "fki_perguruan tinggi" ON public."Program Studi" USING btree (idpt);
 *   DROP INDEX public."fki_perguruan tinggi";
       public            postgres    false    217         �           2606    34047    Program Studi perguruan tinggi    FK CONSTRAINT     �   ALTER TABLE ONLY public."Program Studi"
    ADD CONSTRAINT "perguruan tinggi" FOREIGN KEY (idpt) REFERENCES public."Perguruan Tinggi"(idperguruantinggi);
 L   ALTER TABLE ONLY public."Program Studi" DROP CONSTRAINT "perguruan tinggi";
       public          postgres    false    4249    217    218                                                                                                                                                                                                4409.dat                                                                                            0000600 0004000 0002000 00000011671 14512710716 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	Universitas Diponegoro	A (Unggul)	PTN	Tembalang	Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275	0101000020E61000008AC8B08A379C5B40E695EB6D33351CC0
102	Universitas Negeri Semarang (UNNES)	A (Unggul)	PTN	Gunungpati	Sekaran, Gunung Pati, Semarang City, Central Java 50229	0101000020E61000000FD594641D995B408D7C5EF1D4331CC0
103	UIN Walisongo	A 	PTN	Ngaliyan	Jl. Walisongo No.3-5, Tambakaji, Kec. Ngaliyan, Kota Semarang, Jawa Tengah 50185	0101000020E6100000C4094CA775965B407FC16ED8B6F81BC0
104	Politeknik Negeri Semarang	A 	PTN	Tembalang	Jl. Prof. Sudarto, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275	0101000020E610000077F35487DC9B5B407FBF982D59351CC0
105	Politeknik Ilmu Pelayaran Semarang	A 	PTN	Semarang Selatan	Jl. Singosari Raya No.2A, Wonodri, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50242	0101000020E6100000E06932E36D9B5B40D05E7D3CF4FD1BC0
106	Politeknik Kesehatan Kemenkes Semarang	B	PTN	Banyumanik	Jl. Tirto Agung, Pedalangan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50268	0101000020E6100000A0FCDD3B6A9B5B40360186E5CF371CC0
107	Institut Teknologi dan Bisnis Semarang	B	PTS	Semarang Barat	Jl. Jenderal Sudirman 346 Semarang	0101000020E61000009ED0EB4FE2985B40D3D85E0B7AEF1BC0
108	IKIP Veteran Semarang	B 	PTS	Mijen	Jalan Pawiyatan Luhur IV / 17 BENDAN DUWUR SEMARANG, Jatisari Kecamatan Mijen, Semarang, Jawa Tengah	0101000020E610000064EAAEEC82995B4048533D997F141CC0
109	Universitas Dian Nuswantoro (Udinus)	A 	PTS	Semarang Tengah	Jl. Imam Bonjol No.207, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50131	0101000020E61000004CDD955D309A5B408C3045B934EE1BC0
110	Universitas Katolik Soegijapranata (Unika)	A 	PTS	Gajahmungkur	Jl. Pawiyatan Luhur Sel. IV No.1, Bendan Duwur, Kec. Gajahmungkur, Kota Semarang, Jawa Tengah 50234	0101000020E610000097E2AAB2EF995B4037E15E99B71A1CC0
111	Universitas Semarang	Baik Sekali	PTS	Pedurungan	Jl. Soekarno Hatta, RT.7/RW.7, Tlogosari Kulon, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50196	0101000020E61000000EF96706F19C5B40F9DB9E20B1ED1BC0
112	Universitas STIKUBANK	B 	PTS	Semarang Selatan	Jl. Trilomba Juang No 1 Semarang 50241	0101000020E610000047C7D5C8AE9A5B40FEB4519D0EF41BC0
113	Universitas Islam Sultan Agung (Unissula)	A 	PTS	Genuk	Jl. Kaligawe Raya No.Km.4, Terboyo Kulon, Kec. Genuk, Kota Semarang, Jawa Tengah 50112	0101000020E610000024D5777E519D5B40A64412BD8CD21BC0
114	Universitas 17 Agustus 1945 Semarang	Baik Sekali	PTS	Gajahmungkur	Jalan Pawiyatan Luhur Bendan Dhuwur Semarang	0101000020E61000001C959BA8A5995B407D772B4B74161CC0
115	Universitsa Muhammadiyah Semarang	Baik Sekali	PTS	Tembalang	Jl. Kedungmundu No.18, Kedungmundu, Kec. Tembalang, Kota Semarang, Jawa Tengah 50273	0101000020E6100000313D06D0949D5B4043609B4308161CC0
116	Universitas Wahid Hasyim Semarang	B 	PTS	Gajahmungkur	Jl. Menoreh Tengah X No.22, Sampangan, Kec. Gajahmungkur, Kota Semarang, Jawa Tengah 50232	0101000020E6100000BD29F6E1EA985B400A12DBDD030C1CC0
117	Universitas AKI Semarang	B 	PTS	Semarang Utara	Jl. Imam Bonjol No.15 - 17, Dadapsari, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50173	0101000020E610000048AC2061F39A5B40D454601278E11BC0
118	Unversitas Pandanaran	B 	PTS	Banyumanik	Jl. Banjarsari Barat No.1, Pedalangan, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50268	0101000020E61000000C790437D29B5B40B920B64F223D1CC0
119	Universitas Sains dan Teknologi Komputer	Baik	PTS	Pedurungan	Jln. Majapahit No. 605 Kota Semarang, Jawa Tengah 	0101000020E610000023CD6960759D5B40892F6EFEBA061CC0
120	STIE Dharma Putra	Baik 	PTS	Semarang Barat	Jl. Pamularsih Raya No.16, Bongsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50148	0101000020E610000003CDE7DC6D995B401CD6AFCFF7F61BC0
121	Sekolah Tinggi Ilmu Ekonomi Widya Manggala Semarang	B 	PTS	Semarang Selatan	Jl. Sriwijaya No.32, RW.36, Wonodri, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50242	0101000020E61000006FDB5262329B5B40B4D43032B7011CC0
122	Sekolah Tinggi Ilmu Ekonomi Bank BPD Jateng	B 	PTS	Pedurungan	Jl. Soekarno Hatta No.88, Tlogosari Kulon, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50196	0101000020E61000009E3017A7109D5B40B6204A6A57EF1BC0
123	STMIK Himsya	Baik 	PTS	Mijen	Jalan Raya Karanganyar Tugu KM.12 No. 58 Semarang	0101000020E6100000405FC4880E955B4050508A56EEE51BC0
124	Universitas Karya Husada Semarang	B	PTS	Tembalang	Jl. Kompol R.Soekanto No.46 Kota Semarang	0101000020E610000047663F9C519D5B4071F211E7971F1CC0
125	Universitas Ivet	B 	PTS	Gajahmungkur	Jln. Pawiyatan Luhur IV/17 Bendan Dhuwur Kota Semarang	0101000020E610000052F5865682995B40C9F9AC7CE0141CC0
126	Universitas Widya Husada Semarang	B	PTS	Semarang Barat	Jl. Subali Raya No. 12  Kota Semarang	0101000020E6100000F7F6F8CE79975B409DAE38E686F01BC0
127	Politeknik Katolik Mangunwijaya	B	PTS	Semarang Selatan	Jl. Sriwijaya No.104 Semarang	0101000020E61000003703B749209B5B40C0481E3E9FFF1BC0
128	Institut Teknologi Statistika dan Bisnis Muhammadiyah Semarang	B	PTS	Ngaliyan	Jl. Prof. Dr. Hamka No. 17 Km.01 Ngaliyan,  Kota Semarang	0101000020E610000065749BCBE8965B40A4E4D53906F41BC0
\.


                                                                       4408.dat                                                                                            0000600 0004000 0002000 00000055354 14512710716 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1001	S1 Teknik Sipil	Unggul	101
1002	S1 Arsitektur	A	101
1003	S1 Teknik Kimia	Unggul	101
1004	S1 Teknik Perencanaan Wilayah dan Kota	A	101
1005	S1 Teknik Mesin	A	101
1006	S1 Teknik Elektro	Unggul	101
1007	S1 Teknik Industri	Unggul	101
1008	S1 Teknik Lingkungan	Unggul	101
1009	S1 Teknik Perkapalan	A	101
1010	S1 Teknik Geologi	B	101
1011	S1 Teknik Geodesi	A	101
1012	S1 Teknik Komputer 	B	101
1013	S2 Teknik Sipil	B	101
1014	S2 Ilmu Arsitektur	\N	101
1015	S2 Teknik Kimia	A	101
1016	S2 Perencanaan Wilayah dan Kota	Unggul	101
1017	S2 Teknik Mesin	A	101
1018	S2 Teknik Elektro	B	101
1019	S2 Teknik dan Manajemen Industri	B	101
1020	S3 Teknik Sipil	A	101
1021	S3 Ilmu Arsitektur dan Perkotaan	A	101
1022	S3 Teknik Kimia	B	101
1023	S3 Teknik Mesin	B	101
1024	Program Profesi Insinyur (PSPPI)	B	101
1025	S1 Administrasi Bisnis	A	101
1026	S1 Administrasi Publik	A	101
1027	S1 Hubungan Internasional 	B	101
1028	S1 Ilmu Komunikasi	A	101
1029	S1 Ilmu Pemerintahan	A	101
1030	S2 Administrasi Bisnis	Baik	101
1031	S2 Administrasi Publik	B	101
1032	S2 Ilmu Komunikasi	A	101
1033	S2 Ilmu Politik 	A	101
1034	S3 Ilmu Sosial	A	101
1035	S3 Administrasi Publik	A	101
1036	Program Profesi Dokter	A	101
1037	Program Profesi Ners	Unggul	101
1038	S1 Kedokteran	A	101
1039	S1 Farmasi	B	101
1040	S1 Kedokteran Gigi	B	101
1041	S1 Keperawatan	Unggul	101
1042	S1 Gizi	A	101
1043	S2 Ilmu Biomedik	A	101
1044	S2 Keperawatan	A	101
1045	S2 Ilmu Gizi	A	101
1046	S3 Ilmu Kedokteran	A	101
1047	Program Spesialis Patologi Klinis	A	101
1048	Program Spesialis Psikiatri	B	101
1049	Program Spesialis Radiologi	A	101
1050	Program Spesialis Patologi Anatomik 	A	101
1051	Program Spesialis Mikrobiologi Klinis	A	101
1052	Program Spesialis Neurologi	A	101
1053	Program Spesialis Obstetri dan Ginekologi	A	101
1054	Program Spesialis Kedokteran Fisik dan Rehabilitasi	A	101
1055	Program Spesialis Ilmu Penyakit Dalam	A	101
1056	Program Spesialis Jantung dan Pembuluh Darah	A	101
1057	Program Spesialis Ilmu Bedah	A	101
1058	Program Spesialis Anestesiologi dan Terapi Intensif	A	101
1059	Program Spesialis Bedah Saraf	B	101
1060	Program Spesialis Gizi Klinis	Unggul	101
1061	Program Spesialis Ilmu Kedokteran Forensik &Studi Medikolegal	A	101
1062	Program Spesialis Ilmu Kesehatan Anak	A	101
1063	S1 Manajemen	A	101
1064	S1 Ekonomi Pembangunan	A	101
1065	S1 Ekonomi Islam	A	101
1066	S1 Akutansi	A	101
1067	S2 Akutansi	A	101
1068	S2 Manajemen	A	101
1069	S2 Ekonomi Pembangunan	A	101
1070	S3 Ilmu Ekonomi	A	101
1071	Program Profesi Akutansi	A	101
1072	S1 Ilmu Hukum	A	101
1073	S2 Ilmu Hukum	A	101
1074	S2 Kenotariatan	A	101
1075	S3 Ilmu Hukum	A	101
1076	S1 Akuakultur	A	101
1077	S1 Ilmu Kelautan	A	101
1078	S1 Manajemen Sumber Daya Perairan	A	101
1079	S1 Oseanografi	A	101
1080	S1 Perikanan Tangkap	A	101
1081	S1 Teknologi Hasil Perikanan	A	101
1082	S2 Manajemen Sumber Daya Pantai	A	101
1083	S2 Ilmu Kelautan	A	101
1084	S3 Manajemen Sumber Daya Pantai	A	101
1085	S3 Ilmu Kelautan	B	101
1086	S1 Psikologi	A	101
1087	S2 Psikologi 	B	101
1088	S1 Peternakan	Unggul	101
1089	S1 Teknologi Pangan	A	101
1090	S1 Agroekoteknologi	A	101
1091	S1 Agribisinis	A	101
1092	S2 Ilmu peternakan	A	101
1093	S2 Agribisnis	A	101
1094	S3 Ilmu Peternakan	A	101
1095	D3 Kearsipan	B	101
1096	D3 Bahasa Inggris	B	101
1097	D3 Perpustakaan dan Informasi	B	101
1098	D3 Bahasa Jepang	B	101
1099	S1 Sastra Indonesia	A	101
1100	S1 Sastra Inggris	A	101
1101	S1 Bahasa dan Kebudayaan Jepang	A	101
1102	S1 Sejarah	A	101
1103	S1 Ilmu Perpustakaan	A	101
1104	S1 Antropologi Sosial	B	101
1105	S2 Susastra	B	101
1106	S2 Linguistik	A	101
1107	S2 Ilmu Sejarah	A	101
1108	S3 Ilmu Sejarah	B	101
1109	S1 Kesehatan Masyarakat	A	101
1110	S2 Kesehatan Masyarakat	Unggul	101
1111	S2 Kesehatan Lingkungan	A	101
1112	S2 Promosi Kesehatan	A	101
1113	S3 Kesehatan Masyarakat	Unggul	101
1114	S1 Matematika	A	101
1115	S1 Biologi	A	101
1116	S1 Fisika	A	101
1117	S1 Kimia	A	101
1118	S1 Statistika	A	101
1119	S1 Ilmu Komputer/Informatika	B	101
1120	S1 Bioteknologi	Baik	101
1121	S2 Biologi	A	101
1122	S2 Kimia	B	101
1123	S2 Ilmu Fisika	A	101
1124	S2 Matematika	B	101
1125	D4 Teknik Infrastruktur Sipil dan Arsitektur	Baik	101
1126	D4 Perencanaan Tata Ruang dan Pertahanan	Baik	101
1127	D4 Akutansi Perpajakan	Baik	101
1128	D4 Manajemen dan Administrasi Logistik	Baik	101
1129	D4 Teknologi Rekayasa Kimia Industri	B	101
1130	D4 Rekayasa Perancangan Mekanik	B	101
1131	D4 Teknologi Rekayasa Otomasi	C	101
1132	D4 Teknologi Rekayasa Konstruksi Perkapalan	Baik	101
1133	D4 Teknik Listrik Industri	Baik	101
1134	D4 Bahasa Asing Terapan	Baik	101
1135	D4 Informasi dan Humas	Baik	101
1136	S2 Epidemiologi	A	101
1137	S2 Energi	B	101
1138	S2 Sistem Informasi	Unggul	101
1139	S2 Ilmu Lingkungan	A	101
1140	S3 Ilmu Lingkungan	A	101
1141	S3 Sistem Informasi	Baik	101
1142	S1 Teknologi Pendidikan	Unggul	102
1143	S1 Pendidikan Luar Sekolah	A	102
1144	S1 Bimbingan dan Konseling	Unggul	102
1145	S1 Pendidikan Guru Sekolah Dasar	A	102
1146	S1 Psikologi	B	102
1147	S1 Pendidikan Guru Pendidikan Anak Usia Dini	Unggul	102
1148	S1 Pend. Bahasa dan Sastra Indonesia	A	102
1149	S1 Sastra Indonesia	A	102
1150	S1 Pendidikan Bahasa Inggris	Unggul	102
1151	S1 Sastra Inggris	Unggul	102
1152	S1 Pendidikan Bahasa Prancis	Unggul	102
1153	S1 Pendidikan Bahasa Jepang	A	102
1154	S1 Pendidikan Bahasa Arab	Unggul	102
1155	S1 Pendidikan Bahasa Mandarin	A	102
1156	S1 Sastra Perancis	A	102
1157	S1 Pendidikan Seni Rupa	A	102
1158	S1 Seni Rupa	B	102
1159	S1 Pendidikan Seni Tari	A	102
1160	S1 Pendidikan Seni Musik	A	102
1161	S1 Pendidikan Bahasa dan Sastra Jawa	Unggul	102
1162	S1 Sastra Jawa	A	102
1163	S1 Pendidikan Sejarah	A	102
1164	S1 Ilmu Sejarah	A	102
1165	S1 Pendidikan Geografi	A	102
1166	S1 Geografi	A	102
1167	S1 Pendidikan Pancasila dan Kewarganegaraan	A	102
1168	S1 Ilmu Politik	B	102
1169	S1 Pendidikan Sosiologi dan Antropologi	Unggul	102
1170	S1 Pendidikan Ilmu Pengetahuan Sosial	Unggul	102
1171	S1 Pendidikan Matematika	A	102
1172	S1 Matematika	A	102
1173	S1 Pendidikan Fisika	Unggul	102
1174	S1 Fisika	Unggul	102
1175	S1 Pendidikan Kimia	A	102
1176	S1 Kimia	A	102
1177	S1 Pendidikan Biologi	A	102
1178	S1 Biologi	A	102
1179	S1 Pendidikan Ilmu Pengetahuan Alam	A	102
1180	S1 Teknik Informatika	B	102
1181	S1 Sistem Informasi	Baik	102
1182	S1 Ilmu Lingkungan	Baik	102
1183	S1 Farmasi	Baik	102
1184	S1 Pendidikan Teknik Bangunan	Unggul	102
1185	S1 Teknik Sipil	Unggul	102
1186	S1 Teknik Arsitektur	B	102
1187	S1 Pendidikan Teknik Mesin	A	102
1188	S1 Pendidikan Teknik Otomatis	B	102
1189	S1 Teknik Mesin	Unggul	102
1190	S1 Teknik Kimia	A	102
1191	S1 Pendidikan Teknik Elektro	A	102
1192	S1 Teknik Elektro	B	102
1193	S1 Pendidikan Teknik Informatika dan Komputer	Unggul	102
1194	S1 Teknik Komputer	\N	102
1195	S1 Pendidikan Kesejahteraan Keluarga	A	102
1196	S1 Pendidikan Tata Kecantikan	A	102
1197	S1 Pendidikan Tata Busana	Unggul	102
1198	S1 Pendidikan Tata Boga	Unggul	102
1199	S1 Pendidikan Jasmani, Kesehatan dan Rekreasi	A	102
1200	S1 Pendidikan Jasmani Sekolah Dasar	Baik	102
1201	S1 Ilmu Keolahragaan	A	102
1202	S1 Pendidikan Kepelatihan Olahraga	Unggul	102
1203	S1 Kesehatan Masyarakat 	A	102
1204	S1 Gizi	Baik	102
1205	S1 Pendidikan Akutansi	A	102
1206	S1 Pendidikan Koperasi	A	102
1207	S1 Pendidikan Administrasi Perkantoran	A	102
1208	S1 Akutansi	A	102
1209	S1 Manajemen	Unggul	102
1210	S1 Ekomoni Pembangunan	A	102
1211	S1 Ilmu Hukum	Unggul	102
1212	Manajemen Dakwah	A  	103
1213	Pengembangan Masyarakat Islam	A	103
1214	Bimbingan dan Penyuluhan Islam	A	103
1215	Komunikasi dan Penyiaran Islam	A	103
1216	Manajemen Haji dan Umrah	B	103
1217	Ekonomoi Islam	A	103
1218	Akutansi Syari'ah	Unggul	103
1219	Perbankan Syariah	Baik Sekali	103
1220	Manajemen	Baik 	103
1221	Ilmu Politik	B	103
1222	Sosiologi	B	103
1223	Pendidikan Guru Madrasah Ibtidaiyah	B	103
1224	Manajemen Pendidikan Islam	A	103
1225	Pendidikan Islam Anak Usia DIni	B	103
1226	Pendidikan Bahasa Inggris	Unggul	103
1227	Pendidikan Agama Islam	Unggul	103
1228	Pendidikan Bahasa Arab	A	103
1229	Psikologi	B	103
1230	Gizi	Baik Sekali	103
1231	Hukum Pidana Islam	A	103
1232	Ilmu Falak	A	103
1233	Hukum Ekonomi Syari'ah	A	103
1234	Hukum Keluarga Islam	A	103
1235	Ilmu Hukum	B	103
1236	Pendidikan Kimia	A	103
1237	Pendidikan Matematika	B	103
1238	Pendidikan Biologi	A	103
1239	Biologi 	B	103
1240	Fisika	B	103
1241	Kimia	B	103
1242	Matematika	B	103
1243	Pendidikan Fisika	A	103
1244	Teknologi Informasi 	Baik	103
1245	Teknik Lingkungan	(proses akreditasi)	103
1246	Aqidah dan Filsafat Islam	A	103
1247	Ilmu Al-Qur'an dan Tafsir	A	103
1248	Tasawuf dan Psikoterapi	A	103
1249	Studi Agama-Agama	A	103
1250	Ilmu Seni dan Arsitektur Islam	B	103
1251	Str Teknik Perawatan dan Perbaikan Gedung	Baik Sekali	104
1252	Str Perancangan Jalan dan Jembatan	B	104
1253	D3 Konstruksi Gedung	A	104
1254	D3 Konstruksi Sipil	A	104
1255	Str Teknik Mesin Produksi dan Perawatan	B	104
1256	Str Teknologi Rekayasa Pembangkit Energi	B	104
1257	D3 Teknik Mesin	B	104
1258	D3 Teknik Konversi Energi	B	104
1259	S2  Terapan Teknik Telekomunikasi	B	104
1260	Str Teknik Telekomunikasi	B	104
1261	Str Teknologi Rekayasa Instalasi Listrik	B	104
1262	Str Teknologi Rekayasa Komputer	Baik Sekali	104
1263	Str Teknologi Rekayasa Elektronika	B	104
1264	D3 Teknik Listrik	B	104
1265	D3 Teknik Elektronika	B	104
1266	D3 Teknik Telekomunikasi	B	104
1267	D3 Teknik Informatika	B	104
1268	Str Komputerisasi Akuntansi	Terakreditasi Internasional	104
1269	Str Akutansi Manajerial	B	104
1270	Str Perbankan Syariah	A	104
1271	Str Analis Keuangan	A	104
1272	D3 Akutansi	A	104
1273	D3 Keuangan dan Perbankan	A	104
1274	Str Manajemen Bisnis Internasional	A	104
1275	Str Administrasi Bisnis Terapan	B	104
1276	D3 Administrasi Bisnis	A	104
1277	D3 Manajemen Pemasaran	Unggul	104
1278	D4 Studi Nautika	A	105
1279	D4 Studi Tehnika	A	105
1280	D4 Studi Ketatalaksanaan Angkutan Laut dan Kepelabuhanan	A	105
1281	Diklat Teknis Profesi Kepelautan Tingkat-II Nautika	A	105
1282	Diklat Teknis Profesi Kepelautan Tingkat-III Nautika	A	105
1283	Diklat Teknis Profesi Kepelautan Tingkat-IV Nautika	A	105
1284	Diklat Teknis Profesi Kepelautan Tingkat-II Tehnika	A	105
1285	Diklat Teknis Profesi Kepelautan Tingkat-III Tehnika	A	105
1286	Diklat Teknis Profesi Kepelautan Tingkat-IV Tehnika	A	105
1287	D3 Gizi	A	106
1288	D3 Kebidanan	A	106
1289	D3 Keperawatan	A	106
1290	D3 Keperawatan Gigi	A	106
1291	D3 Teknik Radiodiagnostik & Radioterapi	\N	106
1292	D3 Analis Kesehatan	B	106
1293	D3 Perekam Medis & Informasi Kesehatan	B	106
1294	D3 Teknologi Bank Daerah	-	106
1295	D4 Teknik Radiodiagnostik & Radioterapi	A	106
1296	D4 Gizi	B	106
1297	D4 Kebidanan	B	106
1298	D4 Keperawatan	B	106
1299	D4 Keperawatan Gigi	B	106
1300	D4 Teknologi Laboratorium Medis	-	106
1301	Pendidikan Profesi Dietisien	B	106
1302	Profesi Bidan	B	106
1303	Profesi Ners	B	106
1304	Akuntansi	Baik	107
1305	Manajemen	B   	107
1306	Sistem dan Teknologi Informasi	Baik	107
1307	Bimbingan Dan Konseling	B	108
1308	Pendidikan Ekonomi	B	108
1309	Pendidikan Geografi	B	108
1310	Pendidikan Guru Pendidikan Anak Usia Dini	B	108
1311	Pendidikan Informatika	B	108
1312	Pendidikan IPA	C	108
1313	Pendidikan Matematika	C	108
1314	Pendidikan Pancasila Dan Kewarganegaraan	B	108
1315	Pendidikan Sejarah	B	108
1316	Pendidikan Teknik Bangunan\t	-	108
1317	\tPendidikan Teknik Mesin	B	108
1318	PSKGJ Pendidikan Guru Pendidikan Anak Usia Dini	-	108
1319	PSKGJ Pendidikan Pancasila dan Kewarganegaraan	-	108
1320	PSKGJ Pendidikan Sejarah	-	108
1321	Teknologi Pendidikan	-	108
1322	Ilmu Komputer S-3	Baik	109
1323	Manajemen S-3	Minimal	109
1324	Manajemen S-2	AKREDITASI PRODI	109
1325	Teknik Informatika S-2	Baik	109
1326	Akuntansi	Unggul	109
1327	Bahasa Inggris	A 	109
1328	Desain Komunikasi Visual	A	109
1329	Desain Komunikasi Visual (Kampus Kota Kediri)	Baik	109
1330	Ilmu Komunikasi	Unggul	109
1331	Kedokteran	-	109
1332	Kesehatan Lingkungan	Unggul	109
1333	Kesehatan Masyarakat	A	109
1334	Manajemen	Unggul	109
1335	Manajemen (Kampus Kota Kediri)	-	109
1336	PJJ Informatika	Minimal	109
1337	Sastra Jepang	Unggul	109
1338	Sistem Informasi	A	109
1339	Sistem Informasi (Kampus Kota Kediri)	Baik Sekali	109
1340	Teknik Biomedis	Baik Sekali	109
1341	Teknik Elektro	Baik Sekali	109
1342	Teknik Industri	Baik Sekali	109
1343	Teknik Informatika S-2	Unggul	109
1344	Teknik Informatika (Kampus Kota Kediri)	-	109
1345	Animasi	B	109
1346	\tFilm dan Televisi	B	109
1347	Pengelolaan Perhotelan	B	109
1348	Manajemen Informatika (Kampus Kota Kediri)	-	109
1349	Penyiaran	B	109
1350	Rekam Medik Dan Informasi Kesehatan	Unggul	109
1351	Teknik Informatika	A	109
1352	Pendidikan Profesi Dokter (Profesi)	-	109
1353	Bahasa Mandarin D-3	-	109
1354	 Sastra Inggris	A	109
1355	Manajemen Perhotelan D-4	B	109
1356	Ekonomi Syariah	-	109
1357	Akuntansi D-3	A	109
1358	Bahasa Inggris D-3	B	109
1359	Komputerisasi Akuntansi D-3	B	109
1360	Manajemen Informatik D-3	B	109
1361	Arsitektur\tS-3	Baik	110
1362	Ilmu Lingkungan S-3	Baik	110
1363	Akuntansi        S-2	B 	110
1364	Arsitektur S-2	Baik Sekali	110
1365	Ilmu Hukum\tS-2	A 	110
1366	Lingkungan Dan Perkotaan\tS-2	Baik Sekali	110
1367	Manajemen\tS-2	B	110
1368	Psikologi\tS-2	B	110
1369	Psikologi Profesi\tS-2	B	110
1370	Teknologi Pangan\tS-2	Baik Sekali	110
1371	Akuntansi 	A	110
1372	Arsitektur	Unggul	110
1373	Desain Komunikasi Visual	B	110
1374	Ilmu Hukum	A	110
1375	Ilmu Komunikasi	B	110
1376	Kedokteran	Baik	110
1377	Manajemen 	A	110
1378	Psikologi	Baik Sekali	110
1379	Rekayasa Infrastruktur dan Lingkungan	Baik	110
1380	Sastra Inggris	B	110
1381	Sistem Informasi	B	110
1382	Teknik Elektro	Baik Sekali	110
1383	Teknik Informatika	B	110
1384	Teknik Sipil	B	110
1385	Teknologi Pangan	A	110
1386	Perpajakan D-3	A	110
1387	Pendidikan Profesi Dokter	Baik   	110
1388	Profesi Insinyur	Baik   	110
1389	Bahasa Inggris D-3	C	110
1390	Hukum\tS-2	B	110
1391	Manajemen\tS-2	Baik Sekali	110
1392	Psikologi\tS-2	Baik 	110
1393	Akuntansi	B	110
1394	Ilmu Hukum	S	110
1395	Ilmu Komunikasi	B	110
1396	Manajemen	B	110
1397	Pariwisata	Baik	110
1398	Perencanaan Wilayah dan Kota	Baik	110
1399	Psikologi   	B	110
1400	Sistem Informasi	B 	110
1401	Teknik Elektro	B 	110
1402	Teknik Informatika	B 	110
1403	Teknik Sipil        	Baik	110
1404	Teknologi Hasil Pertanian	B	110
1405	Manajemen Perusahaan\tD-3	Baik Sekali	110
1406	Ilmu Hukum	B	110
1407	Peternakan	-	110
1408	Teknik Sipil\tD-3	-	110
1409	Manajemen\tS-2	B	111
1410	Teknologi Informasi\tS-2	Minimal	111
1411	Akuntansi	A	111
1412	Ilmu Hukum	B	111
1413	Manajemen        	A	111
1414	Sastra Inggris	B	111
1415	Sistem Informasi	B	111
1416	Teknik Industri	Baik Sekali	111
1417	Teknik Informatika	B	111
1418	Teknologi Rekayasa Multimedia Grafis	Minimal	111
1419	Keuangan Dan Perbankan\tD-3	A	111
1420	Manajemen Informatika\tD-3	B	111
1421	Perhotelan\tD-3	Baik  	111
1422	Profesi Akuntan	B	111
1423	Ekonomi Pembangunan	-	111
1424	Akuntansi        D-3	B	111
1425	Bahasa Inggris\tD-3	B	111
1426	Komputerisasi Akuntansi\tD-3	B	111
1427	Manajemen Perusahaan\tD-3	C	111
1428	Teknik Komputer\tD-3	C	111
1429	Ilmu Hukum\tS-3	Unggul	112
1430	Ilmu Manajemen\tS-3	Baik Sekali	112
1431	Teknik Sipil\tS-3	Baik Sekali	112
1432	Akuntansi\tS-2	Baik Sekali	112
1433	Biomedik\tS-2	Unggul	112
1434	Ilmu Hukum\tS-2	Unggul	112
1435	Kenotariatan\tS-2	Unggul	112
1436	Manajemen        S-2	Baik Sekali	112
1437	Pendidikan Agama Islam\tS-2	Baik Sekali	112
1438	Teknik Elektro        S-2	Baik Sekali	112
1439	Teknik Sipil\tS-2	A  	112
1440	Akuntansi 	Unggul	112
1441	Farmasi	B	112
1442	Hukum Keluarga (Ahwal Syakhshiyah)	A	112
1443	Ilmu Hukum	Unggul	112
1444	Ilmu Keperawatan	Unggul	112
1445	Ilmu Komunikasi	Baik Sekali	112
1446	Kebidanan	Unggul	112
1447	Manajeme  	Unggul	112
1448	Pendidikan Agama Islam      	A	112
1449	Pendidikan Bahasa dan Sastra Indonesia	Unggul	112
1450	Pendidikan Bahasa Inggris	B	112
1451	Pendidikan Dokter	Unggul	112
1452	Pendidikan Dokter Gigi	Unggul	112
1453	Pendidikan Guru Sekolah Dasar	Unggul	112
1454	Pendidikan Matematika	Unggul	112
1455	Perencanaan Wilayah Dan Kota	Unggul	112
1456	Psikologi	B	112
1457	Sastra Inggris	A	112
1458	Sejarah dan Peradaban Islam	B	112
1459	Teknik Elektro    	Baik Sekali	112
1460	Teknik Industri	Baik Sekali	112
1461	Teknik Informatika	B   	112
1462	Teknik Sipil	Unggul	112
1463	Akuntansi	Unggul	112
1464	Keperawatan	Unggul	112
1465	Dokter Gigi	Unggul	112
1466	Pendidikan Profesi Apoteker	Baik Sekali	112
1467	Pendidikan Profesi Bidan	Unggul	112
1468	Pendidikan Profesi Guru	-	112
1469	Profesi Dokter	Unggul	112
1470	Profesi Ners\t	Unggul	112
1471	Teknik Lingkungan	C	112
1472	Kebidanan D-3	B	112
1473	Manajemen Keuangan D-3	-	112
1474	Teknik Komputer D-3	B	112
1475	Hukum  S-3	B	113
1476	Administrasi Publik  S-2	B	113
1477	Hukum S-2	B	113
1478	Kenotariatan S-2	Baik Sekali	113
1479	Manajemen S-2	B	113
1480	Administrasi Bisnis	B	113
1481	Administrasi Publik  	AKREDITASI PRODI	113
1482	Akuntansi	B	113
1483	Arsitektur	B	113
1484	Bahasa Inggris	B	113
1485	Bisnis Digital	-	113
1486	Hukum	Unggul	113
1487	Manajemen	B  	113
1488	Pendidikan Kepercayaan Terhadap Tuhan Yang Maha Esa	Baik	113
1489	Teknik Kimia	Baik Sekali	113
1490	Teknik Sipil	B	113
1491	Teknologi Hasil Pertanian	B	113
1492	Bahasa Jepang	B	113
1493	Administrasi Bisnis	C	113
1494	Bahasa Belanda	C	113
1495	Bahasa Inggris D-3	B	113
1496	Bahasa Inggris D-1	C	113
1497	Ilmu Gizi S-2	-	114
1498	Ilmu Laboratorium Klinis S-2	B	114
1499	Keperawatan S-2	Baik Sekali	114
1500	Kesehatan Masyarakat S-2	-	114
1501	Agribisnis	C	114
1502	Akuntansi	Baik Sekali	114
1503	Arsitektur	Minimal	114
1504	Ilmu Gizi 	A	114
1505	Ilmu Keolahragaan	Minimal	114
1506	Ilmu Keperawatan	A	114
1507	Informatika	Baik  	114
1508	Kebidanan	Baik  	114
1509	Kedokteran	B   	114
1510	Kedokteran Gigi	Baik Sekali	114
1511	Kesehatan Masyarakat      	A	114
1512	Manajemen	Baik Sekali	114
1513	Pendidikan Bahasa Inggris	Baik Sekali	114
1514	Pendidikan Kimia	Baik Sekali	114
1515	Pendidikan Matematika	Baik Sekali	114
1516	Rekayasa Sipil	Minimal	114
1517	Sains Data	-	114
1518	Sastra Inggris	Baik Sekali	114
1519	Statistika	Baik Sekali	114
1520	Teknik Elektro	B  	114
1521	Teknik Mesin	Baik Sekali	114
1522	Teknologi Informasi	-	114
1523	Teknologi Pangan	Baik Sekali	114
1524	Analis Kesehatan D-4	A	114
1525	Analis Kesehatan        D-3	A	114
1526	Gizi  D-3	A	114
1527	Kebidanan        D-3	B	114
1528	Keperawatan        D-3	A	114
1529	Pendidikan Profesi Bidan	Baik    	114
1530	Pendidikan Profesi Guru	-	114
1531	Profesi Dokter	B    	114
1532	Profesi Dokter Gigi	Baik Sekali	114
1533	 Profesi Ners	A	114
1534	Pendidikan Matematika S-2	-	114
1535	Akuntansi D-3	C	114
1536	Bahasa Inggris D-3	-	114
1537	Teknik Mesin\tD-3	-	114
1538	Pendidikan Agama Islam S-3	B	115
1539	Hukum Ekonomi Syari'ah (Muamalah)        S-2	B	115
1540	Pendidikan Agama Islam        S-2	Unggul	115
1541	Agribisnis	B	115
1542	Akuntansi	B	115
1543	Ekonomi Islam	Baik Sekali	115
1544	Farmasi	B	115
1545	Hukum Ekonomi Syari'ah (Muamalah)	B	115
1546	Ilmu Hubungan Internasional	B	115
1547	Ilmu Hukum	B	115
1548	Ilmu Politik	B	115
1549	Kedokteran	Baik Sekali	115
1550	Manajemen	B	115
1551	Pendidikan Agama Islam	A  	115
1552	Pendidikan Guru Madrasah Ibtidaiyah	B	115
1553	 Pendidikan Jasmani, Kesehatan dan Rekreas	Baik Sekali	115
1554	Teknik Informatika	B	115
1555	Teknik Kimia	Baik Sekali	115
1556	Teknik Mesin	B	115
1557	Teknik Mesin	B	115
1558	Profesi Dokter	Baik Sekali	115
1559	Pendidikan Dokter	Baik Sekali	115
1560	Nutrisi Dan Makanan Ternak	C	115
1561	Teknik Elektronika D-3	C	115
1562	Akuntansi	Baik Sekali	116
1563	Manajemen	Baik Sekali	116
1564	Perpajakan	B   	116
1565	Psikologi	B   	116
1566	Sastra Inggris	B 	116
1567	Sistem Informasi	Baik Sekali	116
1568	Teknik Informatika	Baik Sekali	116
1569	Teknik Multimedia dan Jaringan	-	116
1570	Teknik Telekomunikasi	-	116
1571	Akuntansi	Baik	117
1572	Arsitektur	Baik	117
1573	Kewirausahaan	Baik	117
1574	Manajemen	B  	117
1575	Teknik Sipil	Baik	117
1576	Administrasi Niaga D-3	Baik	117
1577	Teknik Elektronika	Baik	117
1578	Teknik Kimia D-3	Baik	117
1579	Teknik Lingkungan D-3	Baik	117
1580	Teknik Mesin D-3	Baik	117
1581	Teknik Sipil D-3	C	117
1582	Hubungan Masyarakat D-3	C	117
1583	Bisnis	Minimal	118
1584	Desain Grafis	B	118
1585	Desain Komunikasi Visual	-	118
1586	Kewirausahaan	Minimal	118
1587	Manajemen	Baik	118
1588	Sistem Informasi	Baik	118
1589	Sistem Komputer	B 	118
1590	Teknik Informatika	Baik	118
1591	Komputerisasi Akuntansi        D-4	B 	118
1592	Manajemen Informatika\tD-4	Baik	118
1593	Komputer Grafis D-3	B	118
1594	Komputerisasi Akuntans D-3	B	118
1595	Manajemen Informatika        D-3	C	118
1596	Teknik Elektronika        D-3	B	118
1597	Teknik Komputer\tD-3	B	118
1598	Manajemen Informatika\tD-1	Minimal	118
1599	Kebidanan D-3	B	118
1600	D3 Akuntansi	B	119
1601	D3 Manajemen	B	119
1602	S1 Akuntansi	B	119
1603	S1 Akuntansi	B	119
1604	S2 Magister Sains Akuntansi	C	119
1605	S2 Magister Sains Manajemen	B	119
1606	S1 Akuntansi	B	120
1607	S1 Manajemen	B	120
1608	S1 Bisnis Digital	B	120
1609	S1 Akuntansi	B	121
1610	S1 Manajemen	B	121
1611	S2 Magister Manajemen	B	121
1612	Sistem Informasi	C	122
1613	Teknik Informatika	C	122
1614	Keperawatan\tS-2	Baik	123
1615	Hukum	Minimal	123
1616	Ilmu Biomedis	Baik	123
1617	Informatika	Minimal	123
1618	Keperawatan     	B	123
1619	Manajemen	Minimal	123
1620	Kebidanan\tD-4	C	123
1621	Kebidanan (Kampus Kab. Pati)\tD-3	B	123
1622	Keperawatan\tD-3	B	123
1623	Ners (Profesi)	B	123
1624	Pendidikan Profesi Bidan	C	123
1625	Kebidanan D-3	-	123
1626	Administrasi Kesehatan	Baik	124
1627	Bimbingan Dan Konseling	B 	124
1628	Bisnis Digital	Minimal	124
1629	Gizi	Minimal	124
1630	Ilmu Lingkungan	Baik	124
1631	Pendidikan Agama Islam	Baik	124
1632	Pendidikan Ekonomi	B	124
1633	Pendidikan Geografi	B	124
1634	Pendidikan Guru Madrasah Ibtidaiyah	-	124
1635	Pendidikan Guru Pendidikan Anak Usia Dini	B	124
1636	Pendidikan Ilmu Pengetahuan Alam	Baik Sekali	124
1637	Pendidikan Informatika	B	124
1638	Pendidikan Matematika	Baik Sekali	124
1639	Pendidikan Pancasila Dan Kewarganegaraan	B	124
1640	Pendidikan Sejarah	B	124
1641	Pendidikan Vokasional Teknik Mesin	B  	124
1642	Pendidikan Vokasional Teknologi Otomotif	Baik	124
1643	PJJ Pendidikan Guru Pendidikan Anak Usia Dini	Baik	124
1644	PJJ Pendidikan Vokasional Teknik Mesin	Baik	124
1645	Sains Biomedis	Minimal	124
1646	Sistem Dan Teknologi Informasi	Baik	124
1647	Teknik Keselamatan	Baik	124
1648	Teknik Bangunan Kapal D-3	B	124
1649	Teknik Kelistrikan Kapal D-3	C	124
1650	Teknik Permesinan Kapal D-3	B	124
1651	Pendidikan Profesi Guru	-	124
1652	Informatika Medis	Baik	125
1653	Keperawatan	Baik Sekali	125
1654	Kewirausahaan	Minimal	125
1655	Manajemen	Minimal	125
1656	Sistem dan Teknologi Informasi	Minimal	125
1657	Fisioterapi D-3	Baik Sekali	125
1658	Kebidanan D-3	B	125
1659	Keperawatan D-3	B	125
1660	Optometri D-3	Baik Sekali	125
1661	Radiologi\tD-3	Baik Sekali	125
1662	Teknologi Elektro Medis        D-3	B	125
1663	Pendidikan Profesi Ners        	Baik Sekali	125
1664	Ilmu Keperawatan        	Baik Sekali	125
1665	Perekam dan Informasi Kesehatan	-	125
1666	Refraksi Optisi D-3	Baik Sekali	125
1667	Teknik Elektromedik  D-3	B 	125
1668	Teknik Rontgen D-3	Baik Sekali	125
1669	Pendidikan Profesi Ners	Baik Sekali	125
1670	Profesi Ners	Baik Sekali	125
1671	Analis Kesehatan D-3	B   	126
1672	Farmasi D-3	Baik Sekali	126
1673	Teknik Kimia D-3	B	126
1674	Manajemen Ritel	Minimal	127
1675	Rekayasa Perangkat Lunak	Baik	127
1676	Sains Aktuaria	Minimal	127
1677	Statistika D-3	B	127
\.


                                                                                                                                                                                                                                                                                    4237.dat                                                                                            0000600 0004000 0002000 00000000005 14512710717 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4239.dat                                                                                            0000600 0004000 0002000 00000000005 14512710717 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4240.dat                                                                                            0000600 0004000 0002000 00000000005 14512710717 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000013616 14512710717 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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

DROP DATABASE "Persebaran_PTN";
--
-- Name: Persebaran_PTN; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Persebaran_PTN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE "Persebaran_PTN" OWNER TO postgres;

\connect "Persebaran_PTN"

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
-- Name: Persebaran_PTN; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE "Persebaran_PTN" SET search_path TO '$user', 'public', 'topology';


\connect "Persebaran_PTN"

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
-- Name: topology; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO postgres;

--
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Perguruan Tinggi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Perguruan Tinggi" (
    idperguruantinggi integer NOT NULL,
    namapt character varying,
    akreditaspt character varying,
    status character varying,
    kecamatan character varying,
    alamat character varying,
    geometry public.geometry
);


ALTER TABLE public."Perguruan Tinggi" OWNER TO postgres;

--
-- Name: Program Studi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Program Studi" (
    idprogramstudi integer NOT NULL,
    namaprodi character varying,
    akreditasi character varying,
    idpt integer
);


ALTER TABLE public."Program Studi" OWNER TO postgres;

--
-- Data for Name: Perguruan Tinggi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Perguruan Tinggi" (idperguruantinggi, namapt, akreditaspt, status, kecamatan, alamat, geometry) FROM stdin;
\.
COPY public."Perguruan Tinggi" (idperguruantinggi, namapt, akreditaspt, status, kecamatan, alamat, geometry) FROM '$$PATH$$/4409.dat';

--
-- Data for Name: Program Studi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Program Studi" (idprogramstudi, namaprodi, akreditasi, idpt) FROM stdin;
\.
COPY public."Program Studi" (idprogramstudi, namaprodi, akreditasi, idpt) FROM '$$PATH$$/4408.dat';

--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.
COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM '$$PATH$$/4237.dat';

--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.
COPY topology.topology (id, name, srid, "precision", hasz) FROM '$$PATH$$/4239.dat';

--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.
COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM '$$PATH$$/4240.dat';

--
-- Name: topology_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);


--
-- Name: Perguruan Tinggi Perguruan Tinggi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Perguruan Tinggi"
    ADD CONSTRAINT "Perguruan Tinggi_pkey" PRIMARY KEY (idperguruantinggi);


--
-- Name: Program Studi Program Studi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Program Studi"
    ADD CONSTRAINT "Program Studi_pkey" PRIMARY KEY (idprogramstudi);


--
-- Name: fki_perguruan tinggi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_perguruan tinggi" ON public."Program Studi" USING btree (idpt);


--
-- Name: Program Studi perguruan tinggi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Program Studi"
    ADD CONSTRAINT "perguruan tinggi" FOREIGN KEY (idpt) REFERENCES public."Perguruan Tinggi"(idperguruantinggi);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  