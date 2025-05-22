-- 这一步可以自己创建
create DataBase ass3;

-- Name: public; Type: Schema; Schema:  ;

CREATE SCHEMA public;



-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -

COMMENT ON SCHEMA public IS 'standard public schema' ;


SET search_path = public ;



-- Name: public; Type: ACL; Schema: public;

REVOKE ALL ON SCHEMA public FROM PUBLIC;
 REVOKE ALL ON SCHEMA public FROM omm;
GRANT ALL ON SCHEMA public TO omm;
GRANT USAGE ON SCHEMA public TO PUBLIC;


-- Name: after_insert_user_trigger; Type: Function; Schema: public;

CREATE OR REPLACE FUNCTION public.after_insert_user_trigger()
 RETURNS trigger
 LANGUAGE plpgsql
 NOT FENCED NOT SHIPPABLE
AS $$
BEGIN
    IF NEW.type = 'customer' THEN
        INSERT INTO customers (id) VALUES (NEW.id);
    ELSIF NEW.type = 'rider' THEN
        INSERT INTO riders (id) VALUES (NEW.id);
    ELSIF NEW.type = 'restaurant' THEN
        INSERT INTO restaurants (id) VALUES (NEW.id);
    ELSIF NEW.type = 'admin' THEN
        INSERT INTO admins (id) VALUES (NEW.id);
    END IF;
    RETURN NEW;
END;
$$;
/

-- Name: admins; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE admins (
	id integer NOT NULL,
	name character varying(100) NOT NULL,
    CONSTRAINT admins_id_fkey FOREIGN KEY (id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (orientation=row, compression=no);
ALTER TABLE admins ADD CONSTRAINT admins_pkey PRIMARY KEY (id);

--Data for  Name: admins; Type: Table; Schema: public;

INSERT INTO public.admins (id,name)
 VALUES (1045,'Admin Name 1045');
INSERT INTO public.admins (id,name)
 VALUES (1046,'Admin Name 1046');
INSERT INTO public.admins (id,name)
 VALUES (1047,'Admin Name 1047');
INSERT INTO public.admins (id,name)
 VALUES (1048,'Admin Name 1048');
INSERT INTO public.admins (id,name)
 VALUES (1049,'Admin Name 1049');
INSERT INTO public.admins (id,name)
 VALUES (1050,'Admin Name 1050');
INSERT INTO public.admins (id,name)
 VALUES (1051,'Admin Name 1051');
INSERT INTO public.admins (id,name)
 VALUES (1052,'Admin Name 1052');
INSERT INTO public.admins (id,name)
 VALUES (1053,'Admin Name 1053');


-- Name: customers; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE customers (
	id integer NOT NULL,
	address character varying(255),
	payment_method character varying(50),
    CONSTRAINT customers_id_fkey FOREIGN KEY (id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (orientation=row, compression=no);
ALTER TABLE customers ADD CONSTRAINT customers_pkey PRIMARY KEY (id);

--Data for  Name: customers; Type: Table; Schema: public;

INSERT INTO public.customers (id,address,payment_method)
 VALUES (847,'Customer Address 847','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (848,'Customer Address 848','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (849,'Customer Address 849','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (850,'Customer Address 850','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (851,'Customer Address 851','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (852,'Customer Address 852','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (853,'Customer Address 853','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (854,'Customer Address 854','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (855,'Customer Address 855','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (856,'Customer Address 856','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (857,'Customer Address 857','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (858,'Customer Address 858','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (859,'Customer Address 859','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (860,'Customer Address 860','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (861,'Customer Address 861','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (862,'Customer Address 862','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (863,'Customer Address 863','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (864,'Customer Address 864','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (865,'Customer Address 865','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (866,'Customer Address 866','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (867,'Customer Address 867','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (868,'Customer Address 868','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (869,'Customer Address 869','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (870,'Customer Address 870','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (871,'Customer Address 871','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (872,'Customer Address 872','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (873,'Customer Address 873','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (874,'Customer Address 874','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (875,'Customer Address 875','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (876,'Customer Address 876','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (877,'Customer Address 877','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (878,'Customer Address 878','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (879,'Customer Address 879','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (880,'Customer Address 880','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (881,'Customer Address 881','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (882,'Customer Address 882','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (883,'Customer Address 883','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (884,'Customer Address 884','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (885,'Customer Address 885','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (886,'Customer Address 886','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (887,'Customer Address 887','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (888,'Customer Address 888','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (889,'Customer Address 889','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (890,'Customer Address 890','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (891,'Customer Address 891','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (892,'Customer Address 892','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (893,'Customer Address 893','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (894,'Customer Address 894','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (895,'Customer Address 895','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (896,'Customer Address 896','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (897,'Customer Address 897','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (898,'Customer Address 898','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (899,'Customer Address 899','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (900,'Customer Address 900','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (901,'Customer Address 901','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (902,'Customer Address 902','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (903,'Customer Address 903','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (904,'Customer Address 904','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (905,'Customer Address 905','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (906,'Customer Address 906','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (907,'Customer Address 907','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (908,'Customer Address 908','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (909,'Customer Address 909','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (910,'Customer Address 910','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (911,'Customer Address 911','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (912,'Customer Address 912','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (913,'Customer Address 913','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (914,'Customer Address 914','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (915,'Customer Address 915','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (916,'Customer Address 916','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (917,'Customer Address 917','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (918,'Customer Address 918','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (919,'Customer Address 919','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (920,'Customer Address 920','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (921,'Customer Address 921','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (922,'Customer Address 922','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (923,'Customer Address 923','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (924,'Customer Address 924','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (925,'Customer Address 925','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (926,'Customer Address 926','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (927,'Customer Address 927','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (928,'Customer Address 928','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (929,'Customer Address 929','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (930,'Customer Address 930','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (931,'Customer Address 931','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (932,'Customer Address 932','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (933,'Customer Address 933','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (934,'Customer Address 934','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (935,'Customer Address 935','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (936,'Customer Address 936','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (937,'Customer Address 937','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (938,'Customer Address 938','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (939,'Customer Address 939','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (940,'Customer Address 940','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (941,'Customer Address 941','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (942,'Customer Address 942','支付宝');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (943,'Customer Address 943','微信');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (944,'Customer Address 944','银行卡');
INSERT INTO public.customers (id,address,payment_method)
 VALUES (845,'北京理工大学','支付宝');


-- Name: deliveries; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE deliveries (
	id integer DEFAULT nextval('deliveries_id_seq'::regclass) NOT NULL,
	order_id integer,
	rider_id integer,
	delivery_status character varying(20) NOT NULL,
	delivery_time timestamp without time zone,
	menu_item_name character varying(255) NOT NULL,
	quantity integer NOT NULL,
	price numeric(10,2) NOT NULL,
    CONSTRAINT deliveries_rider_id_fkey FOREIGN KEY (rider_id) REFERENCES riders(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT deliveries_order_id_fkey FOREIGN KEY (order_id) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT deliveries_delivery_status_check CHECK (((delivery_status)::text = ANY ((ARRAY['pending'::character varying, 'in_transit'::character varying, 'delivered'::character varying])::text[])))
)
WITH (orientation=row, compression=no);
ALTER TABLE deliveries ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);

--Data for  Name: deliveries; Type: Table; Schema: public;

INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (6,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 29',3,19.42);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (7,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 28',1,9.91);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (8,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 27',6,43.92);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (9,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 26',6,18.48);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (10,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 25',1,41.60);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (11,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 24',5,39.56);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (12,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 23',1,31.00);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (13,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 22',4,36.58);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (14,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 21',9,28.90);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (15,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 20',5,9.80);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (16,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 19',9,30.75);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (17,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 18',9,47.22);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (18,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 17',4,21.14);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (19,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 16',2,42.70);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (20,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 15',6,5.03);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (21,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 14',6,4.42);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (22,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 13',7,14.30);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (23,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 12',8,40.87);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (24,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 11',2,28.55);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (25,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 10',8,31.71);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (26,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 9',5,46.98);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (27,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 8',7,49.27);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (28,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 7',5,35.63);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (29,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 6',5,40.73);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (30,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 5',4,20.30);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (31,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 4',10,31.53);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (32,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 3',10,28.46);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (33,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 2',4,28.53);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (34,64,null,'pending','2024-06-01 16:19:51.0717','Menu Item 1',9,48.22);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (35,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 30',10,47.58);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (36,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 29',2,49.30);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (37,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 28',6,38.59);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (38,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 27',10,21.47);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (39,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 26',7,31.87);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (40,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 25',5,11.60);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (41,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 24',6,21.58);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (42,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 23',5,29.62);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (43,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 22',3,23.26);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (44,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 21',4,29.07);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (45,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 20',8,46.56);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (46,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 19',9,25.42);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (47,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 18',1,38.31);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (48,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 17',1,27.70);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (49,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 16',3,42.53);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (50,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 15',1,30.03);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (51,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 14',3,9.11);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (52,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 13',4,22.87);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (53,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 12',1,42.95);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (54,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 11',4,20.17);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (55,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 10',9,26.24);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (56,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 9',7,42.59);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (57,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 8',1,13.32);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (58,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 7',10,6.37);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (59,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 6',10,34.50);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (60,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 5',1,28.59);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (61,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 4',7,12.61);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (62,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 3',3,6.46);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (63,65,null,'pending','2024-06-01 16:19:51.0717','Menu Item 2',5,26.72);
INSERT INTO public.deliveries (id,order_id,rider_id,delivery_status,delivery_time,menu_item_name,quantity,price)
 VALUES (4,69,945,'in_transit',null,'Menu Item 3',2,15.74);


-- Name: menu_items; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE menu_items (
	id integer DEFAULT nextval('menu_items_id_seq'::regclass) NOT NULL,
	restaurant_id integer,
	name character varying(100) NOT NULL,
	description character varying(255),
	price numeric(10,2) NOT NULL,
	category character varying(50),
    CONSTRAINT menu_items_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (orientation=row, compression=no);
ALTER TABLE menu_items ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);

--Data for  Name: menu_items; Type: Table; Schema: public;

INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (32,1029,'Menu Item 1','Description for Menu Item 1',22.79,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (33,1029,'Menu Item 2','Description for Menu Item 2',4.37,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (34,1029,'Menu Item 3','Description for Menu Item 3',7.87,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (35,1029,'Menu Item 4','Description for Menu Item 4',11.27,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (36,1029,'Menu Item 5','Description for Menu Item 5',11.61,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (37,1029,'Menu Item 6','Description for Menu Item 6',3.68,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (38,1029,'Menu Item 7','Description for Menu Item 7',2.14,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (39,1029,'Menu Item 8','Description for Menu Item 8',40.77,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (40,1029,'Menu Item 9','Description for Menu Item 9',4.89,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (41,1029,'Menu Item 10','Description for Menu Item 10',35.76,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (42,1029,'Menu Item 11','Description for Menu Item 11',49.52,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (43,1029,'Menu Item 12','Description for Menu Item 12',24.69,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (44,1029,'Menu Item 13','Description for Menu Item 13',10.62,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (45,1029,'Menu Item 14','Description for Menu Item 14',37.64,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (46,1029,'Menu Item 15','Description for Menu Item 15',21.52,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (47,1029,'Menu Item 16','Description for Menu Item 16',5.19,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (48,1029,'Menu Item 17','Description for Menu Item 17',24.00,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (49,1029,'Menu Item 18','Description for Menu Item 18',5.75,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (50,1029,'Menu Item 19','Description for Menu Item 19',27.77,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (51,1029,'Menu Item 20','Description for Menu Item 20',27.42,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (52,1029,'Menu Item 21','Description for Menu Item 21',3.64,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (53,1029,'Menu Item 22','Description for Menu Item 22',35.00,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (54,1029,'Menu Item 23','Description for Menu Item 23',46.05,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (55,1029,'Menu Item 24','Description for Menu Item 24',3.23,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (56,1029,'Menu Item 25','Description for Menu Item 25',35.32,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (57,1029,'Menu Item 26','Description for Menu Item 26',28.78,'Dessert');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (58,1029,'Menu Item 27','Description for Menu Item 27',34.85,'Beverage');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (59,1029,'Menu Item 28','Description for Menu Item 28',4.32,'Appetizer');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (60,1029,'Menu Item 29','Description for Menu Item 29',39.70,'Main Course');
INSERT INTO public.menu_items (id,restaurant_id,name,description,price,category)
 VALUES (61,1029,'Menu Item 30','Description for Menu Item 30',16.72,'Dessert');


-- Name: orders; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE orders (
	id integer DEFAULT nextval('orders_id_seq'::regclass) NOT NULL,
	customer_id integer,
	restaurant_id integer,
	total_amount numeric(10,2) NOT NULL,
	status character varying(20) NOT NULL,
	created_at timestamp without time zone DEFAULT pg_systimestamp(),
    CONSTRAINT orders_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT orders_status_check CHECK (((status)::text = ANY ((ARRAY['placed'::character varying, 'preparing'::character varying, 'delivering'::character varying, 'completed'::character varying, 'cancelled'::character varying])::text[])))
)
WITH (orientation=row, compression=no);
ALTER TABLE orders ADD CONSTRAINT orders_pkey PRIMARY KEY (id);

--Data for  Name: orders; Type: Table; Schema: public;

INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (37,858,1017,61.52,'delivering','2024-05-06 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (38,858,1017,87.23,'delivering','2024-05-29 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (39,858,1017,105.95,'delivering','2024-05-25 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (40,858,1017,109.22,'placed','2024-05-12 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (41,858,1017,58.71,'preparing','2024-05-24 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (42,858,1017,49.97,'delivering','2024-05-12 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (43,858,1017,102.93,'placed','2024-05-21 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (44,858,1017,29.04,'delivering','2024-05-07 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (45,858,1017,60.82,'cancelled','2024-05-29 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (46,858,1017,94.41,'preparing','2024-05-27 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (47,858,1017,98.77,'delivering','2024-05-10 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (48,858,1017,102.35,'preparing','2024-05-21 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (49,858,1017,69.13,'preparing','2024-05-08 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (50,858,1017,36.43,'delivering','2024-05-26 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (51,858,1017,41.68,'preparing','2024-05-04 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (52,858,1017,61.08,'preparing','2024-05-09 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (53,858,1017,58.22,'completed','2024-05-13 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (54,858,1017,68.76,'preparing','2024-05-22 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (55,858,1017,74.07,'preparing','2024-05-15 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (57,858,1017,94.06,'preparing','2024-05-08 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (58,858,1017,95.34,'completed','2024-05-12 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (59,858,1017,33.85,'completed','2024-05-19 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (61,858,1017,93.93,'completed','2024-05-15 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (62,858,1017,107.55,'placed','2024-05-14 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (64,845,1029,273.48,'placed','2024-06-01 00:32:17');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (65,845,1029,1.00,'placed','2024-06-01 00:35:33');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (66,845,1029,1.00,'placed','2024-06-01 00:36:29');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (69,845,1029,15.74,'cancelled','2024-06-01 22:30:30');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (35,858,1017,33.65,'completed','2024-05-18 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (60,858,1017,27.31,'cancelled','2024-05-30 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (56,858,1017,113.23,'completed','2024-05-22 12:42:51.962565');
INSERT INTO public.orders (id,customer_id,restaurant_id,total_amount,status,created_at)
 VALUES (33,858,1017,49.74,'delivering','2024-05-07 12:42:51.962565');


-- Name: payments; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE payments (
	id integer DEFAULT nextval('payments_id_seq'::regclass) NOT NULL,
	order_id integer,
	payment_method character varying(50),
	payment_status character varying(20) NOT NULL,
	payment_time timestamp without time zone,
    CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT payments_payment_status_check CHECK (((payment_status)::text = ANY ((ARRAY['pending'::character varying, 'completed'::character varying, 'failed'::character varying])::text[])))
)
WITH (orientation=row, compression=no);
ALTER TABLE payments ADD CONSTRAINT payments_pkey PRIMARY KEY (id);

--Data for  Name: payments; Type: Table; Schema: public;

INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (33,35,'银行卡','completed','2024-05-26 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (35,37,'微信','completed','2024-05-26 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (36,38,'支付宝','completed','2024-05-21 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (37,39,'银行卡','completed','2024-05-24 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (38,40,'微信','completed','2024-05-13 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (39,41,'支付宝','completed','2024-05-02 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (40,42,'微信','completed','2024-05-26 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (41,43,'支付宝','completed','2024-05-24 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (42,44,'银行卡','completed','2024-05-29 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (43,45,'支付宝','completed','2024-05-23 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (44,46,'支付宝','completed','2024-05-01 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (45,47,'支付宝','completed','2024-05-17 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (46,48,'支付宝','pending','2024-05-26 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (47,49,'微信','completed','2024-05-11 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (48,50,'银行卡','completed','2024-05-04 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (49,51,'微信','completed','2024-05-12 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (50,52,'支付宝','completed','2024-05-08 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (51,53,'银行卡','completed','2024-05-26 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (52,54,'银行卡','completed','2024-05-07 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (53,55,'银行卡','pending','2024-05-14 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (54,56,'支付宝','pending','2024-05-21 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (55,57,'微信','completed','2024-05-02 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (56,58,'微信','completed','2024-05-12 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (57,59,'微信','completed','2024-05-17 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (59,61,'微信','completed','2024-05-22 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (60,62,'支付宝','completed','2024-05-19 12:42:57.610169');
INSERT INTO public.payments (id,order_id,payment_method,payment_status,payment_time)
 VALUES (58,60,'微信','completed','2024-05-21 12:42:57.610169');


-- Name: restaurants; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE restaurants (
	id integer NOT NULL,
	name character varying(100) NOT NULL,
	address character varying(255),
	phone character varying(20),
	cuisine character varying(50),
    CONSTRAINT restaurants_id_fkey FOREIGN KEY (id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (orientation=row, compression=no);
ALTER TABLE restaurants ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);

--Data for  Name: restaurants; Type: Table; Schema: public;

INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (996,'Restaurant Name 996','Restaurant Address 996','123456789996','Cuisine Type 7');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (997,'Restaurant Name 997','Restaurant Address 997','123456789997','Cuisine Type 8');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (998,'Restaurant Name 998','Restaurant Address 998','123456789998','Cuisine Type 9');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (999,'Restaurant Name 999','Restaurant Address 999','123456789999','Cuisine Type 10');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1000,'Restaurant Name 1000','Restaurant Address 1000','1234567891000','Cuisine Type 1');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1001,'Restaurant Name 1001','Restaurant Address 1001','1234567891001','Cuisine Type 2');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1002,'Restaurant Name 1002','Restaurant Address 1002','1234567891002','Cuisine Type 3');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1003,'Restaurant Name 1003','Restaurant Address 1003','1234567891003','Cuisine Type 4');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1004,'Restaurant Name 1004','Restaurant Address 1004','1234567891004','Cuisine Type 5');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1005,'Restaurant Name 1005','Restaurant Address 1005','1234567891005','Cuisine Type 6');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1006,'Restaurant Name 1006','Restaurant Address 1006','1234567891006','Cuisine Type 7');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1007,'Restaurant Name 1007','Restaurant Address 1007','1234567891007','Cuisine Type 8');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1008,'Restaurant Name 1008','Restaurant Address 1008','1234567891008','Cuisine Type 9');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1009,'Restaurant Name 1009','Restaurant Address 1009','1234567891009','Cuisine Type 10');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1010,'Restaurant Name 1010','Restaurant Address 1010','1234567891010','Cuisine Type 1');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1011,'Restaurant Name 1011','Restaurant Address 1011','1234567891011','Cuisine Type 2');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1012,'Restaurant Name 1012','Restaurant Address 1012','1234567891012','Cuisine Type 3');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1013,'Restaurant Name 1013','Restaurant Address 1013','1234567891013','Cuisine Type 4');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1014,'Restaurant Name 1014','Restaurant Address 1014','1234567891014','Cuisine Type 5');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1015,'Restaurant Name 1015','Restaurant Address 1015','1234567891015','Cuisine Type 6');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1016,'Restaurant Name 1016','Restaurant Address 1016','1234567891016','Cuisine Type 7');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1018,'Restaurant Name 1018','Restaurant Address 1018','1234567891018','Cuisine Type 9');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1019,'Restaurant Name 1019','Restaurant Address 1019','1234567891019','Cuisine Type 10');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1020,'Restaurant Name 1020','Restaurant Address 1020','1234567891020','Cuisine Type 1');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1021,'Restaurant Name 1021','Restaurant Address 1021','1234567891021','Cuisine Type 2');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1022,'Restaurant Name 1022','Restaurant Address 1022','1234567891022','Cuisine Type 3');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1023,'Restaurant Name 1023','Restaurant Address 1023','1234567891023','Cuisine Type 4');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1024,'Restaurant Name 1024','Restaurant Address 1024','1234567891024','Cuisine Type 5');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1025,'Restaurant Name 1025','Restaurant Address 1025','1234567891025','Cuisine Type 6');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1026,'Restaurant Name 1026','Restaurant Address 1026','1234567891026','Cuisine Type 7');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1027,'Restaurant Name 1027','Restaurant Address 1027','1234567891027','Cuisine Type 8');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1028,'Restaurant Name 1028','Restaurant Address 1028','1234567891028','Cuisine Type 9');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1029,'Restaurant Name 1029','Restaurant Address 1029','1234567891029','Cuisine Type 10');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1030,'Restaurant Name 1030','Restaurant Address 1030','1234567891030','Cuisine Type 1');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1031,'Restaurant Name 1031','Restaurant Address 1031','1234567891031','Cuisine Type 2');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1032,'Restaurant Name 1032','Restaurant Address 1032','1234567891032','Cuisine Type 3');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1033,'Restaurant Name 1033','Restaurant Address 1033','1234567891033','Cuisine Type 4');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1034,'Restaurant Name 1034','Restaurant Address 1034','1234567891034','Cuisine Type 5');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1035,'Restaurant Name 1035','Restaurant Address 1035','1234567891035','Cuisine Type 6');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1036,'Restaurant Name 1036','Restaurant Address 1036','1234567891036','Cuisine Type 7');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1037,'Restaurant Name 1037','Restaurant Address 1037','1234567891037','Cuisine Type 8');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1038,'Restaurant Name 1038','Restaurant Address 1038','1234567891038','Cuisine Type 9');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1039,'Restaurant Name 1039','Restaurant Address 1039','1234567891039','Cuisine Type 10');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1040,'Restaurant Name 1040','Restaurant Address 1040','1234567891040','Cuisine Type 1');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1041,'Restaurant Name 1041','Restaurant Address 1041','1234567891041','Cuisine Type 2');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1042,'Restaurant Name 1042','Restaurant Address 1042','1234567891042','Cuisine Type 3');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1043,'Restaurant Name 1043','Restaurant Address 1043','1234567891043','Cuisine Type 4');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1044,'Restaurant Name 1044','Restaurant Address 1044','1234567891044','Cuisine Type 5');
INSERT INTO public.restaurants (id,name,address,phone,cuisine)
 VALUES (1017,'北食堂','Restaurant Address 1017','1234567891017','Cuisine Type 8');


-- Name: riders; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE riders (
	id integer NOT NULL,
	vehicle character varying(50),
	license character varying(20),
	available boolean DEFAULT true,
    CONSTRAINT riders_id_fkey FOREIGN KEY (id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (orientation=row, compression=no);
ALTER TABLE riders ADD CONSTRAINT riders_pkey PRIMARY KEY (id);

--Data for  Name: riders; Type: Table; Schema: public;

INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (947,'摩托车','License 947',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (948,'汽车','License 948',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (949,'步行','License 949',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (950,'电动车','License 950',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (951,'自行车','License 951',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (952,'摩托车','License 952',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (953,'汽车','License 953',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (954,'步行','License 954',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (955,'电动车','License 955',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (956,'自行车','License 956',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (957,'摩托车','License 957',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (958,'汽车','License 958',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (959,'步行','License 959',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (960,'电动车','License 960',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (961,'自行车','License 961',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (962,'摩托车','License 962',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (963,'汽车','License 963',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (964,'步行','License 964',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (965,'电动车','License 965',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (966,'自行车','License 966',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (967,'摩托车','License 967',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (968,'汽车','License 968',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (969,'步行','License 969',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (970,'电动车','License 970',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (971,'自行车','License 971',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (972,'摩托车','License 972',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (973,'汽车','License 973',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (974,'步行','License 974',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (975,'电动车','License 975',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (976,'自行车','License 976',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (977,'摩托车','License 977',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (978,'汽车','License 978',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (979,'步行','License 979',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (980,'电动车','License 980',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (981,'自行车','License 981',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (982,'摩托车','License 982',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (983,'汽车','License 983',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (984,'步行','License 984',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (985,'电动车','License 985',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (986,'自行车','License 986',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (987,'摩托车','License 987',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (988,'汽车','License 988',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (989,'步行','License 989',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (990,'电动车','License 990',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (992,'摩托车','License 992',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (993,'汽车','License 993',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (994,'步行','License 994',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (991,'自行车','License 991',true);
INSERT INTO public.riders (id,vehicle,license,available)
 VALUES (945,'电动车','License 888',true);


-- Name: users; Type: Table; Schema: public;

SET search_path = public;
CREATE TABLE users (
	id integer DEFAULT nextval('users_id_seq'::regclass) NOT NULL,
	username character varying(50) NOT NULL,
	password character varying(255) NOT NULL,
	phone character varying(20),
	type character varying(10) NOT NULL,
	created_at timestamp without time zone DEFAULT pg_systimestamp(),
    CONSTRAINT users_type_check CHECK (((type)::text = ANY ((ARRAY['customer'::character varying, 'rider'::character varying, 'restaurant'::character varying, 'admin'::character varying])::text[])))
)
WITH (orientation=row, compression=no);
ALTER TABLE users ADD CONSTRAINT users_pkey PRIMARY KEY (id);

--Data for  Name: users; Type: Table; Schema: public;

INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (846,'user_2','password_2','1234567892','customer','2024-05-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1060,'xwb','xwb','15139271875','restaurant','2024-06-01 00:00:00');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1061,'rider_1','rider_1','111','restaurant','2024-06-01 00:00:00');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1035,'user_191','password_191','123456789191','restaurant','2023-11-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1036,'user_192','password_192','123456789192','restaurant','2023-11-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1037,'user_193','password_193','123456789193','restaurant','2023-11-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1038,'user_194','password_194','123456789194','restaurant','2023-11-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1039,'user_195','password_195','123456789195','restaurant','2023-11-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1040,'user_196','password_196','123456789196','restaurant','2023-11-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1041,'user_197','password_197','123456789197','restaurant','2023-11-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1042,'user_198','password_198','123456789198','restaurant','2023-11-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1043,'user_199','password_199','123456789199','restaurant','2023-11-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1044,'user_200','password_200','123456789200','restaurant','2023-11-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1045,'user_201','password_201','123456789201','admin','2023-11-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1046,'user_202','password_202','123456789202','admin','2023-11-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1047,'user_203','password_203','123456789203','admin','2023-11-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1048,'user_204','password_204','123456789204','admin','2023-11-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1049,'user_205','password_205','123456789205','admin','2023-11-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1050,'user_206','password_206','123456789206','admin','2023-11-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1051,'user_207','password_207','123456789207','admin','2023-11-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1052,'user_208','password_208','123456789208','admin','2023-11-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1053,'user_209','password_209','123456789209','admin','2023-11-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1054,'user_210','password_210','123456789210','admin','2023-11-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (848,'user_4','password_4','1234567894','customer','2024-05-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (849,'user_5','password_5','1234567895','customer','2024-05-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (850,'user_6','password_6','1234567896','customer','2024-05-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (851,'user_7','password_7','1234567897','customer','2024-05-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (852,'user_8','password_8','1234567898','customer','2024-05-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (853,'user_9','password_9','1234567899','customer','2024-05-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (854,'user_10','password_10','12345678910','customer','2024-05-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (855,'user_11','password_11','12345678911','customer','2024-05-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (856,'user_12','password_12','12345678912','customer','2024-05-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (857,'user_13','password_13','12345678913','customer','2024-05-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (858,'user_14','password_14','12345678914','customer','2024-05-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (859,'user_15','password_15','12345678915','customer','2024-05-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (860,'user_16','password_16','12345678916','customer','2024-05-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (861,'user_17','password_17','12345678917','customer','2024-05-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (862,'user_18','password_18','12345678918','customer','2024-05-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (863,'user_19','password_19','12345678919','customer','2024-05-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (864,'user_20','password_20','12345678920','customer','2024-05-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (865,'user_21','password_21','12345678921','customer','2024-05-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (866,'user_22','password_22','12345678922','customer','2024-05-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (867,'user_23','password_23','12345678923','customer','2024-05-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (868,'user_24','password_24','12345678924','customer','2024-05-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (869,'user_25','password_25','12345678925','customer','2024-05-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (870,'user_26','password_26','12345678926','customer','2024-05-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (871,'user_27','password_27','12345678927','customer','2024-05-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (872,'user_28','password_28','12345678928','customer','2024-05-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (873,'user_29','password_29','12345678929','customer','2024-05-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (874,'user_30','password_30','12345678930','customer','2024-04-30 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (875,'user_31','password_31','12345678931','customer','2024-04-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (876,'user_32','password_32','12345678932','customer','2024-04-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (877,'user_33','password_33','12345678933','customer','2024-04-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (878,'user_34','password_34','12345678934','customer','2024-04-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (879,'user_35','password_35','12345678935','customer','2024-04-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (880,'user_36','password_36','12345678936','customer','2024-04-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (881,'user_37','password_37','12345678937','customer','2024-04-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1062,'rider_2','rider_2','111','restaurant','2024-06-01 00:00:00');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (847,'user_3','password_3','1234567893','customer','2024-05-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1063,'xxxx','xxxx','xxxx','rider','2024-06-01 00:00:00');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (882,'user_38','password_38','12345678938','customer','2024-04-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (883,'user_39','password_39','12345678939','customer','2024-04-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (884,'user_40','password_40','12345678940','customer','2024-04-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (885,'user_41','password_41','12345678941','customer','2024-04-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (886,'user_42','password_42','12345678942','customer','2024-04-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (887,'user_43','password_43','12345678943','customer','2024-04-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (888,'user_44','password_44','12345678944','customer','2024-04-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (889,'user_45','password_45','12345678945','customer','2024-04-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (890,'user_46','password_46','12345678946','customer','2024-04-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (891,'user_47','password_47','12345678947','customer','2024-04-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (892,'user_48','password_48','12345678948','customer','2024-04-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (893,'user_49','password_49','12345678949','customer','2024-04-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (894,'user_50','password_50','12345678950','customer','2024-04-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (895,'user_51','password_51','12345678951','customer','2024-04-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (896,'user_52','password_52','12345678952','customer','2024-04-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (897,'user_53','password_53','12345678953','customer','2024-04-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (898,'user_54','password_54','12345678954','customer','2024-04-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (899,'user_55','password_55','12345678955','customer','2024-04-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (900,'user_56','password_56','12345678956','customer','2024-04-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (901,'user_57','password_57','12345678957','customer','2024-04-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (902,'user_58','password_58','12345678958','customer','2024-04-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (903,'user_59','password_59','12345678959','customer','2024-04-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (904,'user_60','password_60','12345678960','customer','2024-03-31 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (905,'user_61','password_61','12345678961','customer','2024-03-30 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (906,'user_62','password_62','12345678962','customer','2024-03-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (907,'user_63','password_63','12345678963','customer','2024-03-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (908,'user_64','password_64','12345678964','customer','2024-03-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (909,'user_65','password_65','12345678965','customer','2024-03-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (910,'user_66','password_66','12345678966','customer','2024-03-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (911,'user_67','password_67','12345678967','customer','2024-03-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (912,'user_68','password_68','12345678968','customer','2024-03-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (913,'user_69','password_69','12345678969','customer','2024-03-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (914,'user_70','password_70','12345678970','customer','2024-03-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (915,'user_71','password_71','12345678971','customer','2024-03-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (916,'user_72','password_72','12345678972','customer','2024-03-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (917,'user_73','password_73','12345678973','customer','2024-03-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (918,'user_74','password_74','12345678974','customer','2024-03-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (919,'user_75','password_75','12345678975','customer','2024-03-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (920,'user_76','password_76','12345678976','customer','2024-03-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (921,'user_77','password_77','12345678977','customer','2024-03-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (922,'user_78','password_78','12345678978','customer','2024-03-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (923,'user_79','password_79','12345678979','customer','2024-03-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (924,'user_80','password_80','12345678980','customer','2024-03-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (925,'user_81','password_81','12345678981','customer','2024-03-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (926,'user_82','password_82','12345678982','customer','2024-03-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (927,'user_83','password_83','12345678983','customer','2024-03-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (928,'user_84','password_84','12345678984','customer','2024-03-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (929,'user_85','password_85','12345678985','customer','2024-03-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (930,'user_86','password_86','12345678986','customer','2024-03-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (931,'user_87','password_87','12345678987','customer','2024-03-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (932,'user_88','password_88','12345678988','customer','2024-03-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (933,'user_89','password_89','12345678989','customer','2024-03-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (934,'user_90','password_90','12345678990','customer','2024-03-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (935,'user_91','password_91','12345678991','customer','2024-02-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (936,'user_92','password_92','12345678992','customer','2024-02-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (937,'user_93','password_93','12345678993','customer','2024-02-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (938,'user_94','password_94','12345678994','customer','2024-02-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (939,'user_95','password_95','12345678995','customer','2024-02-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (940,'user_96','password_96','12345678996','customer','2024-02-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (941,'user_97','password_97','12345678997','customer','2024-02-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (942,'user_98','password_98','12345678998','customer','2024-02-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (943,'user_99','password_99','12345678999','customer','2024-02-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (944,'user_100','password_100','123456789100','customer','2024-02-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (946,'user_102','password_102','123456789102','rider','2024-02-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (947,'user_103','password_103','123456789103','rider','2024-02-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (948,'user_104','password_104','123456789104','rider','2024-02-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (949,'user_105','password_105','123456789105','rider','2024-02-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (950,'user_106','password_106','123456789106','rider','2024-02-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (951,'user_107','password_107','123456789107','rider','2024-02-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (952,'user_108','password_108','123456789108','rider','2024-02-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (953,'user_109','password_109','123456789109','rider','2024-02-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (954,'user_110','password_110','123456789110','rider','2024-02-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (955,'user_111','password_111','123456789111','rider','2024-02-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (956,'user_112','password_112','123456789112','rider','2024-02-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (957,'user_113','password_113','123456789113','rider','2024-02-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (958,'user_114','password_114','123456789114','rider','2024-02-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (959,'user_115','password_115','123456789115','rider','2024-02-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (960,'user_116','password_116','123456789116','rider','2024-02-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (961,'user_117','password_117','123456789117','rider','2024-02-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (962,'user_118','password_118','123456789118','rider','2024-02-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (963,'user_119','password_119','123456789119','rider','2024-02-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (964,'user_120','password_120','123456789120','rider','2024-01-31 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (965,'user_121','password_121','123456789121','rider','2024-01-30 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (966,'user_122','password_122','123456789122','rider','2024-01-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (967,'user_123','password_123','123456789123','rider','2024-01-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (968,'user_124','password_124','123456789124','rider','2024-01-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (969,'user_125','password_125','123456789125','rider','2024-01-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (970,'user_126','password_126','123456789126','rider','2024-01-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (971,'user_127','password_127','123456789127','rider','2024-01-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (972,'user_128','password_128','123456789128','rider','2024-01-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (973,'user_129','password_129','123456789129','rider','2024-01-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (974,'user_130','password_130','123456789130','rider','2024-01-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (975,'user_131','password_131','123456789131','rider','2024-01-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (976,'user_132','password_132','123456789132','rider','2024-01-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (977,'user_133','password_133','123456789133','rider','2024-01-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (978,'user_134','password_134','123456789134','rider','2024-01-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (979,'user_135','password_135','123456789135','rider','2024-01-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (980,'user_136','password_136','123456789136','rider','2024-01-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (981,'user_137','password_137','123456789137','rider','2024-01-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (982,'user_138','password_138','123456789138','rider','2024-01-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (983,'user_139','password_139','123456789139','rider','2024-01-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (984,'user_140','password_140','123456789140','rider','2024-01-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (985,'user_141','password_141','123456789141','rider','2024-01-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (986,'user_142','password_142','123456789142','rider','2024-01-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (987,'user_143','password_143','123456789143','rider','2024-01-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (988,'user_144','password_144','123456789144','rider','2024-01-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (989,'user_145','password_145','123456789145','rider','2024-01-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (990,'user_146','password_146','123456789146','rider','2024-01-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (992,'user_148','password_148','123456789148','rider','2024-01-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (993,'user_149','password_149','123456789149','rider','2024-01-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (994,'user_150','password_150','123456789150','rider','2024-01-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (995,'user_151','password_151','123456789151','restaurant','2023-12-31 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (996,'user_152','password_152','123456789152','restaurant','2023-12-30 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (997,'user_153','password_153','123456789153','restaurant','2023-12-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (998,'user_154','password_154','123456789154','restaurant','2023-12-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (999,'user_155','password_155','123456789155','restaurant','2023-12-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1000,'user_156','password_156','123456789156','restaurant','2023-12-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1001,'user_157','password_157','123456789157','restaurant','2023-12-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1002,'user_158','password_158','123456789158','restaurant','2023-12-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1003,'user_159','password_159','123456789159','restaurant','2023-12-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1004,'user_160','password_160','123456789160','restaurant','2023-12-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1005,'user_161','password_161','123456789161','restaurant','2023-12-21 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1006,'user_162','password_162','123456789162','restaurant','2023-12-20 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1007,'user_163','password_163','123456789163','restaurant','2023-12-19 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1008,'user_164','password_164','123456789164','restaurant','2023-12-18 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1009,'user_165','password_165','123456789165','restaurant','2023-12-17 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1010,'user_166','password_166','123456789166','restaurant','2023-12-16 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1011,'user_167','password_167','123456789167','restaurant','2023-12-15 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1012,'user_168','password_168','123456789168','restaurant','2023-12-14 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1013,'user_169','password_169','123456789169','restaurant','2023-12-13 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1014,'user_170','password_170','123456789170','restaurant','2023-12-12 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1015,'user_171','password_171','123456789171','restaurant','2023-12-11 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1016,'user_172','password_172','123456789172','restaurant','2023-12-10 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1017,'user_173','password_173','123456789173','restaurant','2023-12-09 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1018,'user_174','password_174','123456789174','restaurant','2023-12-08 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1019,'user_175','password_175','123456789175','restaurant','2023-12-07 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1020,'user_176','password_176','123456789176','restaurant','2023-12-06 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1021,'user_177','password_177','123456789177','restaurant','2023-12-05 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1022,'user_178','password_178','123456789178','restaurant','2023-12-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1023,'user_179','password_179','123456789179','restaurant','2023-12-03 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1024,'user_180','password_180','123456789180','restaurant','2023-12-02 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1025,'user_181','password_181','123456789181','restaurant','2023-12-01 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1026,'user_182','password_182','123456789182','restaurant','2023-11-30 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1027,'user_183','password_183','123456789183','restaurant','2023-11-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1028,'user_184','password_184','123456789184','restaurant','2023-11-28 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1029,'user_185','password_185','123456789185','restaurant','2023-11-27 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1030,'user_186','password_186','123456789186','restaurant','2023-11-26 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1031,'user_187','password_187','123456789187','restaurant','2023-11-25 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1032,'user_188','password_188','123456789188','restaurant','2023-11-24 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1033,'user_189','password_189','123456789189','restaurant','2023-11-23 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (1034,'user_190','password_190','123456789190','restaurant','2023-11-22 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (991,'徐文彬','password_147','123456789147','rider','2024-01-04 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (845,'user_1','password_1','1234567891','customer','2024-05-29 12:42:28.251604');
INSERT INTO public.users (id,username,password,phone,type,created_at)
 VALUES (945,'user_101','password_101','123456789101','rider','2024-02-19 12:42:28.251604');


-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY ; Schema: public;

ALTER SEQUENCE deliveries_id_seq OWNED BY deliveries.id ;

-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY ; Schema: public;

ALTER SEQUENCE menu_items_id_seq OWNED BY menu_items.id ;

-- Name: orders_id_seq; Type: SEQUENCE OWNED BY ; Schema: public;

ALTER SEQUENCE orders_id_seq OWNED BY orders.id ;

-- Name: payments_id_seq; Type: SEQUENCE OWNED BY ; Schema: public;

ALTER SEQUENCE payments_id_seq OWNED BY payments.id ;

-- Name: users_id_seq; Type: SEQUENCE OWNED BY ; Schema: public;

ALTER SEQUENCE users_id_seq OWNED BY users.id ;

-- Name: user_info; Type: View; Schema: public;


SET search_path = public ;
CREATE OR REPLACE VIEW public.user_info
	AS 
SELECT u.id, u.username, u.phone, u.type, u.created_at, c.address AS customer_address, c.payment_method AS customer_payment_method, r.vehicle AS rider_vehicle, r.license AS rider_license, r.available AS rider_available, res.name AS restaurant_name, res.address AS restaurant_address, res.phone AS restaurant_phone, res.cuisine AS restaurant_cuisine FROM (((users u LEFT JOIN customers c ON ((u.id = c.id))) LEFT JOIN riders r ON ((u.id = r.id))) LEFT JOIN restaurants res ON ((u.id = res.id)));

-- Name: user_unpaid_orders; Type: View; Schema: public;


SET search_path = public ;
CREATE OR REPLACE VIEW public.user_unpaid_orders
	AS 
SELECT o.id AS order_id, o.customer_id, u.username AS customer_username, o.restaurant_id, r.name AS restaurant_name, o.total_amount, o.status AS order_status, p.payment_status, o.created_at FROM ((((orders o JOIN customers c ON ((o.customer_id = c.id))) JOIN users u ON ((c.id = u.id))) JOIN restaurants r ON ((o.restaurant_id = r.id))) LEFT JOIN payments p ON ((o.id = p.order_id))) WHERE ((p.payment_status IS NULL) OR ((p.payment_status)::text <> 'completed'::text));

-- Name: deliveries_id_seq; Type: Sequence; Schema: public;


SET search_path = public ;
 CREATE  SEQUENCE deliveries_id_seq
 START  WITH  1
 INCREMENT  BY  1
 NO MINVALUE  
 MAXVALUE 9223372036854775807
 CACHE 1;

--Data for  Name: deliveries_id_seq; Type: Sequence; Schema: public;

SELECT pg_catalog.setVal('deliveries_id_seq',95,true);

-- Name: menu_items_id_seq; Type: Sequence; Schema: public;


SET search_path = public ;
 CREATE  SEQUENCE menu_items_id_seq
 START  WITH  1
 INCREMENT  BY  1
 NO MINVALUE  
 MAXVALUE 9223372036854775807
 CACHE 1;

--Data for  Name: menu_items_id_seq; Type: Sequence; Schema: public;

SELECT pg_catalog.setVal('menu_items_id_seq',65,true);

-- Name: orders_id_seq; Type: Sequence; Schema: public;


SET search_path = public ;
 CREATE  SEQUENCE orders_id_seq
 START  WITH  1
 INCREMENT  BY  1
 NO MINVALUE  
 MAXVALUE 9223372036854775807
 CACHE 1;

--Data for  Name: orders_id_seq; Type: Sequence; Schema: public;

SELECT pg_catalog.setVal('orders_id_seq',70,true);

-- Name: payments_id_seq; Type: Sequence; Schema: public;


SET search_path = public ;
 CREATE  SEQUENCE payments_id_seq
 START  WITH  1
 INCREMENT  BY  1
 NO MINVALUE  
 MAXVALUE 9223372036854775807
 CACHE 1;

--Data for  Name: payments_id_seq; Type: Sequence; Schema: public;

SELECT pg_catalog.setVal('payments_id_seq',63,true);

-- Name: users_id_seq; Type: Sequence; Schema: public;


SET search_path = public ;
 CREATE  SEQUENCE users_id_seq
 START  WITH  1
 INCREMENT  BY  1
 NO MINVALUE  
 MAXVALUE 9223372036854775807
 CACHE 1;

--Data for  Name: users_id_seq; Type: Sequence; Schema: public;

SELECT pg_catalog.setVal('users_id_seq',1064,true);
