PGDMP         ;                y            d4b1reod9a97fh     13.5 (Ubuntu 13.5-2.pgdg20.04+1)    14.1 >    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    2081738    d4b1reod9a97fh    DATABASE     c   CREATE DATABASE d4b1reod9a97fh WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d4b1reod9a97fh;
                xczrclkqhpjdvq    false            ?           0    0    DATABASE d4b1reod9a97fh    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d4b1reod9a97fh FROM PUBLIC;
                   xczrclkqhpjdvq    false    4071                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                xczrclkqhpjdvq    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   xczrclkqhpjdvq    false    5            ?           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO xczrclkqhpjdvq;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   xczrclkqhpjdvq    false    5            ?           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO xczrclkqhpjdvq;
                   postgres    false    678            ?            1259    2093478    AspNetRoleClaims    TABLE     ?   CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
 &   DROP TABLE public."AspNetRoleClaims";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093476    AspNetRoleClaims_Id_seq    SEQUENCE     ?   ALTER TABLE public."AspNetRoleClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          xczrclkqhpjdvq    false    206    5            ?            1259    2093453    AspNetRoles    TABLE     ?   CREATE TABLE public."AspNetRoles" (
    "Id" text NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);
 !   DROP TABLE public."AspNetRoles";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093493    AspNetUserClaims    TABLE     ?   CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "UserId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
 &   DROP TABLE public."AspNetUserClaims";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093491    AspNetUserClaims_Id_seq    SEQUENCE     ?   ALTER TABLE public."AspNetUserClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          xczrclkqhpjdvq    false    5    208            ?            1259    2093506    AspNetUserLogins    TABLE     ?   CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);
 &   DROP TABLE public."AspNetUserLogins";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093519    AspNetUserRoles    TABLE     b   CREATE TABLE public."AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);
 %   DROP TABLE public."AspNetUserRoles";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093537    AspNetUserTokens    TABLE     ?   CREATE TABLE public."AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);
 &   DROP TABLE public."AspNetUserTokens";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093461    AspNetUsers    TABLE     I  CREATE TABLE public."AspNetUsers" (
    "Id" text NOT NULL,
    "UserName" character varying(256),
    "NormalizedUserName" character varying(256),
    "Email" character varying(256),
    "NormalizedEmail" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL
);
 !   DROP TABLE public."AspNetUsers";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093471    Payments    TABLE       CREATE TABLE public."Payments" (
    "PaymentDetailId" integer NOT NULL,
    "CardOwnerName" character varying(100) NOT NULL,
    "CardNumber" integer NOT NULL,
    "ExpirationDate" timestamp without time zone NOT NULL,
    "SecurityCode" character varying(100) NOT NULL
);
    DROP TABLE public."Payments";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093469    Payments_PaymentDetailId_seq    SEQUENCE     ?   ALTER TABLE public."Payments" ALTER COLUMN "PaymentDetailId" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Payments_PaymentDetailId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          xczrclkqhpjdvq    false    204    5            ?            1259    2093552    RefreshTokens    TABLE     (  CREATE TABLE public."RefreshTokens" (
    "Id" integer NOT NULL,
    "UserId" text,
    "Token" text,
    "JwtId" text,
    "IsUsed" boolean NOT NULL,
    "IsRevoked" boolean NOT NULL,
    "AddedDate" timestamp without time zone NOT NULL,
    "ExpiryDate" timestamp without time zone NOT NULL
);
 #   DROP TABLE public."RefreshTokens";
       public         heap    xczrclkqhpjdvq    false    5            ?            1259    2093550    RefreshTokens_Id_seq    SEQUENCE     ?   ALTER TABLE public."RefreshTokens" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."RefreshTokens_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          xczrclkqhpjdvq    false    5    213            ?            1259    2093448    __EFMigrationsHistory    TABLE     ?   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    xczrclkqhpjdvq    false    5            ?          0    2093478    AspNetRoleClaims 
   TABLE DATA           W   COPY public."AspNetRoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue") FROM stdin;
    public          xczrclkqhpjdvq    false    206   ?P       ?          0    2093453    AspNetRoles 
   TABLE DATA           [   COPY public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") FROM stdin;
    public          xczrclkqhpjdvq    false    201   Q       ?          0    2093493    AspNetUserClaims 
   TABLE DATA           W   COPY public."AspNetUserClaims" ("Id", "UserId", "ClaimType", "ClaimValue") FROM stdin;
    public          xczrclkqhpjdvq    false    208   "Q       ?          0    2093506    AspNetUserLogins 
   TABLE DATA           m   COPY public."AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
    public          xczrclkqhpjdvq    false    209   ?Q       ?          0    2093519    AspNetUserRoles 
   TABLE DATA           ?   COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
    public          xczrclkqhpjdvq    false    210   \Q       ?          0    2093537    AspNetUserTokens 
   TABLE DATA           X   COPY public."AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
    public          xczrclkqhpjdvq    false    211   yQ       ?          0    2093461    AspNetUsers 
   TABLE DATA           "  COPY public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount") FROM stdin;
    public          xczrclkqhpjdvq    false    202   ?Q       ?          0    2093471    Payments 
   TABLE DATA           x   COPY public."Payments" ("PaymentDetailId", "CardOwnerName", "CardNumber", "ExpirationDate", "SecurityCode") FROM stdin;
    public          xczrclkqhpjdvq    false    204   ET       ?          0    2093552    RefreshTokens 
   TABLE DATA           }   COPY public."RefreshTokens" ("Id", "UserId", "Token", "JwtId", "IsUsed", "IsRevoked", "AddedDate", "ExpiryDate") FROM stdin;
    public          xczrclkqhpjdvq    false    213   ?T       ?          0    2093448    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          xczrclkqhpjdvq    false    200   ?[       ?           0    0    AspNetRoleClaims_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);
          public          xczrclkqhpjdvq    false    205            ?           0    0    AspNetUserClaims_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 1, false);
          public          xczrclkqhpjdvq    false    207            ?           0    0    Payments_PaymentDetailId_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Payments_PaymentDetailId_seq"', 8, true);
          public          xczrclkqhpjdvq    false    203            ?           0    0    RefreshTokens_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."RefreshTokens_Id_seq"', 22, true);
          public          xczrclkqhpjdvq    false    212            <           2606    2093485 $   AspNetRoleClaims PK_AspNetRoleClaims 
   CONSTRAINT     h   ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "PK_AspNetRoleClaims";
       public            xczrclkqhpjdvq    false    206            2           2606    2093460    AspNetRoles PK_AspNetRoles 
   CONSTRAINT     ^   ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetRoles" DROP CONSTRAINT "PK_AspNetRoles";
       public            xczrclkqhpjdvq    false    201            ?           2606    2093500 $   AspNetUserClaims PK_AspNetUserClaims 
   CONSTRAINT     h   ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "PK_AspNetUserClaims";
       public            xczrclkqhpjdvq    false    208            B           2606    2093513 $   AspNetUserLogins PK_AspNetUserLogins 
   CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");
 R   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "PK_AspNetUserLogins";
       public            xczrclkqhpjdvq    false    209    209            E           2606    2093526 "   AspNetUserRoles PK_AspNetUserRoles 
   CONSTRAINT     t   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");
 P   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "PK_AspNetUserRoles";
       public            xczrclkqhpjdvq    false    210    210            G           2606    2093544 $   AspNetUserTokens PK_AspNetUserTokens 
   CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");
 R   ALTER TABLE ONLY public."AspNetUserTokens" DROP CONSTRAINT "PK_AspNetUserTokens";
       public            xczrclkqhpjdvq    false    211    211    211            6           2606    2093468    AspNetUsers PK_AspNetUsers 
   CONSTRAINT     ^   ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetUsers" DROP CONSTRAINT "PK_AspNetUsers";
       public            xczrclkqhpjdvq    false    202            9           2606    2093475    Payments PK_Payments 
   CONSTRAINT     e   ALTER TABLE ONLY public."Payments"
    ADD CONSTRAINT "PK_Payments" PRIMARY KEY ("PaymentDetailId");
 B   ALTER TABLE ONLY public."Payments" DROP CONSTRAINT "PK_Payments";
       public            xczrclkqhpjdvq    false    204            J           2606    2093559    RefreshTokens PK_RefreshTokens 
   CONSTRAINT     b   ALTER TABLE ONLY public."RefreshTokens"
    ADD CONSTRAINT "PK_RefreshTokens" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."RefreshTokens" DROP CONSTRAINT "PK_RefreshTokens";
       public            xczrclkqhpjdvq    false    213            0           2606    2093452 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            xczrclkqhpjdvq    false    200            4           1259    2093570 
   EmailIndex    INDEX     S   CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");
     DROP INDEX public."EmailIndex";
       public            xczrclkqhpjdvq    false    202            :           1259    2093565    IX_AspNetRoleClaims_RoleId    INDEX     _   CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");
 0   DROP INDEX public."IX_AspNetRoleClaims_RoleId";
       public            xczrclkqhpjdvq    false    206            =           1259    2093567    IX_AspNetUserClaims_UserId    INDEX     _   CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserClaims_UserId";
       public            xczrclkqhpjdvq    false    208            @           1259    2093568    IX_AspNetUserLogins_UserId    INDEX     _   CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserLogins_UserId";
       public            xczrclkqhpjdvq    false    209            C           1259    2093569    IX_AspNetUserRoles_RoleId    INDEX     ]   CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");
 /   DROP INDEX public."IX_AspNetUserRoles_RoleId";
       public            xczrclkqhpjdvq    false    210            H           1259    2093572    IX_RefreshTokens_UserId    INDEX     Y   CREATE INDEX "IX_RefreshTokens_UserId" ON public."RefreshTokens" USING btree ("UserId");
 -   DROP INDEX public."IX_RefreshTokens_UserId";
       public            xczrclkqhpjdvq    false    213            3           1259    2093566    RoleNameIndex    INDEX     \   CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");
 #   DROP INDEX public."RoleNameIndex";
       public            xczrclkqhpjdvq    false    201            7           1259    2093571    UserNameIndex    INDEX     `   CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");
 #   DROP INDEX public."UserNameIndex";
       public            xczrclkqhpjdvq    false    202            K           2606    2093486 7   AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId";
       public          xczrclkqhpjdvq    false    3890    201    206            L           2606    2093501 7   AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId";
       public          xczrclkqhpjdvq    false    202    208    3894            M           2606    2093514 7   AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId";
       public          xczrclkqhpjdvq    false    202    3894    209            N           2606    2093527 5   AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId";
       public          xczrclkqhpjdvq    false    201    3890    210            O           2606    2093532 5   AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId";
       public          xczrclkqhpjdvq    false    3894    210    202            P           2606    2093545 7   AspNetUserTokens FK_AspNetUserTokens_AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserTokens" DROP CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId";
       public          xczrclkqhpjdvq    false    202    211    3894            Q           2606    2093560 1   RefreshTokens FK_RefreshTokens_AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."RefreshTokens"
    ADD CONSTRAINT "FK_RefreshTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public."RefreshTokens" DROP CONSTRAINT "FK_RefreshTokens_AspNetUsers_UserId";
       public          xczrclkqhpjdvq    false    3894    202    213            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?}?KS?H?u?*Vk???HB^?@?n?/ \T.0??~?L???-{???ٜ???	'??p?<?HC?p???z?1?ۇ?ad?I???????׍yܿ??<?o?i? ,??$a????ƃ??ۻ?????co7?}????<$L~g??>G?????}P?zM?j6}???Ǐ`?Y]??s?mFW"?-?**??<????*??i???9??4??m??\?'?~??:??+	??i@-W@	???? ?=b̼??2.޿?O?a????[?	???{?m?Sx??Vd??o???f??????x??b?h?9}?-o}??M???7?)?dLZ?&Y???*??|R??`|???q/@c?L??s۵b?I??b??b?Q??]2<??À3+꠰֟L?'?q??Ȣ?u韷????cێ???yT?_?L????????\?(_???+ć]g???f??????-:?^9??}Q?(uUL???e?(?z<(?83??? ?P?m4??y??$TZ??_????" ??6??t?d=鲥?U????e????3?>5?N?U?;?bI??n?ޏ???X?z???F?B???ZϞu??ICҧ?????u???8??^T???0???nvBE9M?),???J ?<??p/)??????7WWW?4?      ?   ~   x?}?;?0 ??9E.?*?i?:vAl?,?҆~?????=??Az?k?2.?????????k??쒁??a?X???-??Q¬S&֬Q???<???x<?O%ʐ?;C'iӒ\????YtT&1???T?.      ?   ?  x??W?nc9|>?+?dP???:Iw?I&iqw2?Q?/??????<4?U?*?e??}??E*Ӊ7r5Rt?fM?????ۛ????????XD????ɔ?r??Ң??&?X?#5?I9Tv??\??3g?=?G??{?????{?{?;???o%v?J)?|??O_ߟޞ?F??
???@7uV?w??B?id????k?????D?8????My?X??4???(????<.??:???_?e??S?????+?\Z(?Y2?????kӓVt??-??B?|-ŉqs5Evч4??ŇO1???9Mz?????2K?@??iޜ?X\I???5????myN??\???."Ash?h4???Ps?rP?X3??Z1Ï?ۗ*@Wq)?.??R???`A?*?????*?u?????푞K?1??mD???Ql??ϋ??F?lE]????hEZ??t[??:???(??|?????@ߓƗ?7y?+?8?rq????8??s?"?`T*ʱt?_2????+\??U?U?{?tً?r???9??Қ.}??6?????͑???f??kt?S?Yj?jK??Q҆9??e?8?@Q???N??q?~ }R?k????!<\ez?K?B??o??W
Q4???<?e1?)??K?ޜ$eW?n?22?'???N-?>??)??BN????My	jq?.T?T4?(^???o?_??3??2AZ \??1?i???f??!?r?˘5?}OKQWO??~?rw|;?(???*????0??tHJmA??Ğ?Zpf?$?F?jΊ?Mѭ@]???,;?g?xRJh????~?G???_Oho??b?x??0`eB?b0?T?~??
ܲ?R.?,qZh?I???u{?C??C??<k?$B?4?(L΀z?x??<<???????|????oEk??????Fy?s??H??ٌ?]CWp???	??N?j??]0???G??D佇g??Y????]??Cz?9^?	ѬQFB???	??^㧕f??ۖE??)藸?s3????-????~??=?.	#✡>-??B?	?7W/????j?xi?c??m??W?ͨ3tZJϐ?!??f?;??]¥{??f?Ԙ:@c?>)?P?˄??????!mb?dil1?6??|t?7S?d?|ѹ?S??~????! ?g???????C????b?P??>)??BcL??xHߏ??&??6?-{z?A??i?-?Q???/??B?p\??&c?`qD?QC%??L???o?鬴z<?(?b??w!'W??!?9?g????2?۟_???ݼ?????8????!?T?k?[??Q?tz????(_?\?????>?5?	"??;C}R??\??O????????R???=D??[?"?C?*?[Ya??/"bղ?M?e???Z0????????=FB??r???????G~|}??#~?շ???6o,^wiFKTj?Z?l(??jo??!??ׂY??W?>???6rH1???????ިt???痷??7 w??+ԄSv1%?2???Ѱ? ??ٷ????AB?%??z??=?Gf???+eY?Bo??z???[ys⯘????TM??6?Ec??]?Qh[?B?+Jns?"Q?b?u?P5?,??OJ+_?/ޤ?r????????8F??? ?	4b[?8CI?~?b??X??}	c???fx??|`o?
?"??ii??n]????f      ?   (   x?3202444604543?????,?4?3?34?????? sf?     