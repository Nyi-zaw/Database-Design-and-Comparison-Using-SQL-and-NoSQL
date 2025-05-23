DROP TABLE categories;

CREATE TABLE categories (
    categorieid          NUMBER NOT NULL,
    categoriename        VARCHAR(255) NOT NULL,
    categoriedesc        CLOB NOT NULL,
    categoriecreatedate  TIMESTAMP DEFAULT systimestamp NULL
);

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(1, 'Spaghetti Carbonara', 'Indulge in our creamy and savory Spaghetti Carbonara, made with pancetta, egg, and Parmesan cheese, and topped with black pepper.', TIMESTAMP '2022-03-17 18:16:28');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(2, 'Penne Arrabbiata', 'Savor the spicy and robust flavors of our Penne Arrabbiata, featuring a tangy tomato sauce with garlic, chili flakes, and fresh parsley.', TIMESTAMP '2022-03-17 18:17:14');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(3, 'Fettuccine Alfredo', 'Enjoy the rich and creamy taste of our Fettuccine Alfredo, made with a smooth Alfredo sauce and garnished with Parmesan and parsley.', TIMESTAMP '2022-03-17 18:17:43');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(4, 'Vegetarian Pasta', 'Delight in our Vegetarian Pasta, a meat-free option filled with colorful vegetables, tofu, and a flavorful vegetable broth, perfect for veggie lovers.', TIMESTAMP '2022-03-17 18:19:10');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(5, 'Side Dishes', 'Complement your pasta with our selection of side dishes, including bruschetta, garlic bread, and Caesar salad, for a complete dining experience.', TIMESTAMP '2022-03-17 21:58:58');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(6, 'Pasta Bowls', 'Explore our variety of pasta bowls, each crafted with care to deliver authentic Italian flavors and textures, ensuring a satisfying meal every time.', TIMESTAMP '2022-03-18 07:55:28');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(7, 'Specialty Pasta', 'Indulge in our specialty pasta creations, featuring unique flavor combinations and premium ingredients that elevate the pasta experience to new heights.', TIMESTAMP '2022-03-18 08:06:30');

INSERT INTO categories (categorieId, categorieName, categorieDesc, categorieCreateDate) VALUES
(8, 'Drinks', 'Quench your thirst with our selection of refreshing drinks, including traditional Italian sodas, wines, and fruit juices, to accompany your pasta meal.', TIMESTAMP '2022-03-18 08:13:47');

DROP TABLE contact;

CREATE TABLE contact (
    contactid  NUMBER NOT NULL,
    userid     NUMBER NOT NULL,
    email      VARCHAR(35) NOT NULL,
    phoneno    NUMBER NOT NULL,
    orderid    NUMBER NOT NULL,
    message    CLOB NOT NULL,
    time       TIMESTAMP DEFAULT systimestamp NULL
);

INSERT INTO contact (contactId, userId, email, phoneNo, orderId, message, time) VALUES
(1, 2, 'nicky@gmail.com', 1234567890, 1, 'Nice You guys are doing great..', TIMESTAMP '2023-01-30 20:39:41');



DROP TABLE contactreply;

CREATE TABLE contactreply (
    id         NUMBER NOT NULL,
    contactid  NUMBER NOT NULL,
    userid     NUMBER NOT NULL,
    message    CLOB NOT NULL,
    datetime   TIMESTAMP DEFAULT systimestamp NULL
);

INSERT INTO contactreply (id, contactId, userId, message, datetime) VALUES
(1, 1, 2, 'Thank you for shopping with us', TIMESTAMP '2023-01-30 20:40:08');

DROP TABLE deliverydetails;

CREATE TABLE deliverydetails (
    id                  NUMBER NOT NULL,
    orderid             NUMBER NOT NULL,
    deliveryname     VARCHAR(35) NOT NULL,
    deliveryphoneno  NUMBER NOT NULL,
    deliverytime        NUMBER NOT NULL,
    datetime            TIMESTAMP DEFAULT systimestamp NULL
);

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(1, 1, 'Alice Johnson', 9988776655, 40, TIMESTAMP '2023-06-10 10:15:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(2, 2, 'Bob Smith', 8877665544, 45, TIMESTAMP '2023-06-11 12:30:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(3, 3, 'Charlie Brown', 7766554433, 50, TIMESTAMP '2023-06-12 14:45:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(4, 4, 'Daisy Miller', 6655443322, 35, TIMESTAMP '2023-06-13 16:00:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(5, 8, 'Eddie Wilson', 5544332211, 60, TIMESTAMP '2023-06-14 18:15:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(6, 9, 'Fiona Martinez', 4433221100, 40, TIMESTAMP '2023-06-15 20:30:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(7, 11, 'George Taylor', 3322110099, 45, TIMESTAMP '2023-06-16 22:45:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(8, 13, 'Hannah Garcia', 2211009988, 50, TIMESTAMP '2023-06-17 00:00:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(9, 5, 'Ian Thomas', 1100998877, 35, TIMESTAMP '2023-06-18 02:15:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(10, 15, 'Julia Hernandez', 9900887766, 30, TIMESTAMP '2023-06-19 04:30:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(16, 14, 'Kevin Martinez', 8800776655, 55, TIMESTAMP '2023-06-20 06:45:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(17, 16, 'Linda Rodriguez', 7700665544, 50, TIMESTAMP '2023-06-21 08:00:00');

INSERT INTO deliverydetails (id, orderId, deliveryName, deliveryPhoneNo, deliveryTime, dateTime) VALUES
(18, 17, 'Mason Nguyen', 6600554433, 45, TIMESTAMP '2023-06-22 10:15:00');


DROP TABLE orderitems;

CREATE TABLE orderitems (
  id NUMBER NOT NULL,
  orderId NUMBER NOT NULL,
  pastaId NUMBER NOT NULL,
  itemQuantity NUMBER NOT NULL
);

INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (1, 1, 1, 2);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (2, 2, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (3, 2, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (4, 2, 3, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (5, 3, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (6, 3, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (7, 3, 3, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (8, 3, 4, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (9, 3, 5, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (10, 3, 6, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (11, 3, 7, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (12, 4, 13, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (13, 4, 14, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (14, 4, 15, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (15, 5, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (16, 6, 47, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (17, 6, 48, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (18, 6, 49, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (19, 7, 38, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (20, 7, 39, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (21, 7, 40, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (22, 8, 10, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (23, 8, 11, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (24, 8, 12, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (25, 9, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (26, 9, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (27, 9, 3, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (28, 10, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (29, 10, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (30, 11, 13, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (31, 11, 14, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (32, 11, 15, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (33, 11, 16, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (34, 12, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (35, 12, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (36, 13, 14, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (37, 13, 15, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (38, 13, 16, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (39, 13, 20, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (40, 14, 50, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (41, 14, 51, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (42, 14, 52, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (43, 15, 53, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (44, 16, 1, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (45, 16, 2, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (46, 16, 3, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (47, 16, 4, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (48, 17, 9, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (49, 17, 10, 1);
INSERT INTO orderitems (id, orderId, pastaId, itemQuantity) VALUES (50, 17, 11, 1);


DROP TABLE orders;

CREATE TABLE orders (
  orderId NUMBER NOT NULL,
  userId NUMBER NOT NULL,
  address VARCHAR2(255) NOT NULL,
  zipCode NUMBER NOT NULL,
  phoneNo NUMBER NOT NULL,
  amount NUMBER NOT NULL,
  paymentMode VARCHAR2(1) NOT NULL,
  orderStatus VARCHAR2(1) NOT NULL,
  orderDate TIMESTAMP DEFAULT SYSTIMESTAMP
);

ALTER TABLE orders MODIFY paymentMode VARCHAR2(1) DEFAULT '0';
ALTER TABLE orders MODIFY orderStatus VARCHAR2(1) DEFAULT '0';

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (1, 2, 'Rome, Italy', 00100, 39061234567, 198, '1', '1', TIMESTAMP '2023-05-01 10:15:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (2, 2, 'Milan, Italy', 20100, 390212345678, 447, '1', '2', TIMESTAMP '2023-05-02 12:30:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (3, 2, 'Naples, Italy', 80100, 390812345678, 1463, '1', '3', TIMESTAMP '2023-05-03 14:45:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (4, 2, 'Turin, Italy', 10100, 390112345678, 697, '1', '4', TIMESTAMP '2023-05-04 16:00:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (5, 2, 'Palermo, Italy', 90100, 390912345678, 99, '1', '1', TIMESTAMP '2023-05-05 18:15:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (6, 2, 'Genoa, Italy', 16100, 390101234567, 417, '1', '2', TIMESTAMP '2023-05-06 20:30:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (7, 2, 'Bologna, Italy', 40100, 390512345678, 132, '1', '3', TIMESTAMP '2023-05-07 22:45:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (8, 2, 'Florence, Italy', 50100, 390552345678, 797, '1', '4', TIMESTAMP '2023-05-08 00:00:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (9, 2, 'Venice, Italy', 30100, 390412345678, 447, '1', '1', TIMESTAMP '2023-05-09 02:15:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (10, 2, 'Verona, Italy', 37100, 390452345678, 298, '1', '2', TIMESTAMP '2023-05-10 04:30:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (11, 2, 'Pisa, Italy', 56100, 390502345678, 1096, '1', '3', TIMESTAMP '2023-05-11 06:45:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (12, 2, 'Siena, Italy', 53100, 390577234567, 298, '1', '4', TIMESTAMP '2023-05-12 08:00:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (13, 2, 'Bari, Italy', 70100, 390803456789, 1246, '1', '1', TIMESTAMP '2023-05-13 10:15:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (14, 2, 'Parma, Italy', 43100, 390521234567, 145, '1', '2', TIMESTAMP '2023-05-14 12:30:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (15, 2, 'Perugia, Italy', 06100, 390755234567, 20, '1', '3', TIMESTAMP '2023-05-15 14:45:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (16, 2, 'Catania, Italy', 95100, 390957234567, 696, '1', '4', TIMESTAMP '2023-05-16 16:00:00');

INSERT INTO orders (orderId, userId, address, zipCode, phoneNo, amount, paymentMode, orderStatus, orderDate) 
VALUES (17, 2, 'Trieste, Italy', 34100, 390402345678, 667, '1', '1', TIMESTAMP '2023-05-17 18:15:00');

DROP TABLE pasta;

CREATE TABLE pasta (
  pastaId NUMBER NOT NULL,
  pastaName varchar(255) NOT NULL,
  pastaPrice NUMBER NOT NULL,
  pastaDesc CLOB NOT NULL,
  pastaCategorieId NUMBER NOT NULL,
  pastaPubDate TIMESTAMP DEFAULT SYSTIMESTAMP
);


INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(1, 'Spaghetti Carbonara', 99, 'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.', 1, TIMESTAMP '2021-03-17 21:03:26');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(2, 'Penne Arrabbiata', 149, 'A spicy pasta dish with penne pasta in a tomato sauce flavored with garlic, tomatoes, and red chili peppers.', 1, TIMESTAMP '2021-03-17 21:20:58');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(3, 'Fettuccine Alfredo', 159, 'A rich and creamy pasta dish with fettuccine noodles tossed in a Parmesan cheese and butter sauce.', 1, TIMESTAMP '2021-03-17 21:22:07');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(4, 'Spaghetti Bolognese', 139, 'A hearty pasta dish with spaghetti noodles topped with a slow-cooked meat sauce made with beef, tomatoes, and onions.', 1, TIMESTAMP '2021-03-17 21:23:05');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(5, 'Pesto Pasta', 169, 'A vibrant pasta dish with spaghetti noodles tossed in a fresh basil pesto sauce made with basil, garlic, pine nuts, Parmesan cheese, and olive oil.', 1, TIMESTAMP '2021-03-17 21:23:48');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(6, 'Vegetarian Lasagna', 129, 'A layered pasta dish with lasagna noodles, ricotta cheese, spinach, mushrooms, and marinara sauce.', 1, TIMESTAMP '2021-03-17 21:24:38');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(7, 'Seafood Linguine', 179, 'A delicious pasta dish with linguine noodles served with a medley of seafood including shrimp, clams, and mussels in a white wine and garlic sauce.', 1, TIMESTAMP '2021-03-17 21:25:42');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(8, 'Ravioli with Sage Butter', 169, 'Pasta filled with ricotta cheese and spinach, served with a sage-infused butter sauce.', 1, TIMESTAMP '2021-03-17 21:26:31');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(9, 'Chicken Alfredo', 159, 'Fettuccine noodles served with a creamy Alfredo sauce and grilled chicken breast slices.', 1, TIMESTAMP '2021-03-17 21:27:21');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(10, 'Beef Ragu', 169, 'Pappardelle noodles served with a slow-cooked beef ragu sauce, garnished with Parmesan cheese.', 1, TIMESTAMP '2021-03-17 21:28:06');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(11, 'Seafood Risotto', 189, 'A creamy risotto dish with Arborio rice, shrimp, scallops, and a rich seafood broth.', 1, TIMESTAMP '2021-03-17 21:28:49');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(12, 'Spicy Chicken Penne', 169, 'Penne pasta served with spicy chicken slices, marinara sauce, and red chili flakes.', 1, TIMESTAMP '2021-03-17 21:29:41');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(13, 'Caprese Pasta Salad', 119, 'A refreshing pasta salad with penne noodles, cherry tomatoes, fresh mozzarella, basil, and balsamic glaze.', 1, TIMESTAMP '2021-03-17 21:34:37');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(14, 'Primavera Pasta', 129, 'A healthy pasta dish with spaghetti noodles, fresh vegetables, olive oil, and garlic.', 1, TIMESTAMP '2021-03-17 21:35:31');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(15, 'Pasta Burger', 149, 'An innovative fusion of pasta and burger, with a spaghetti patty served between two pasta buns, lettuce, tomato, cheese, and special sauce.', 1, TIMESTAMP '2021-03-17 21:36:36');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(16, 'Vegetarian Curry Pasta', 139, 'Pasta served with a flavorful vegetarian curry sauce, mixed vegetables, and fresh herbs.', 1, TIMESTAMP '2021-03-17 21:37:21');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(17, 'Kimchi Pasta', 159, 'A fusion dish with spaghetti noodles served in a spicy kimchi sauce, topped with kimchi, pork slices, and green onions.', 1, TIMESTAMP '2021-03-17 21:38:13');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(18, 'Szechuan Pasta', 149, 'Spaghetti noodles served in a spicy Szechuan sauce with pork slices, bean sprouts, and green onions.', 1, TIMESTAMP '2021-03-17 21:39:49');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(19, 'Pasta with Black Garlic Oil', 169, 'Spaghetti noodles served with a rich black garlic oil sauce, topped with chashu pork, marinated soft-boiled egg, and green onions.', 1, TIMESTAMP '2021-03-17 21:40:58');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(20, 'Spicy Tofu Pasta', 129, 'Penne pasta served with tofu slices in a spicy tomato sauce, accompanied by spinach and green onions.', 1, TIMESTAMP '2021-03-17 21:41:49');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(21, 'Shrimp Scampi', 169, 'Linguine noodles served with shrimp in a garlic butter and white wine sauce, garnished with parsley.', 1, TIMESTAMP '2021-03-17 21:44:44');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(22, 'Pasta with Pork Belly', 179, 'Tagliatelle noodles served with tender pork belly slices in a rich sauce, garnished with Parmesan cheese and green onions.', 1, TIMESTAMP '2021-03-17 21:45:34');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(23, 'Vegetable Tempura Pasta', 149, 'Spaghetti noodles served with freshly fried vegetable tempura in a light broth, accompanied by green onions.', 1, TIMESTAMP '2021-03-17 21:46:21');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(24, 'Pasta with Butter Corn', 139, 'Penne noodles served with buttered corn kernels in a flavorful broth, garnished with chashu pork and green onions.', 1, TIMESTAMP '2021-03-17 21:47:07');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(25, 'Pasta with Bonito Flakes', 159, 'Experience the smoky flavors of bonito flakes served with spaghetti noodles in a savory sauce, topped with chashu pork, marinated soft-boiled egg, seaweed, and green onions.', 1, TIMESTAMP '2021-03-17 21:47:51');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(26, 'Tonkotsu Pasta', 179, 'Enjoy the rich and creamy flavors of tonkotsu sauce served with fettuccine noodles, topped with pork belly slices, marinated soft-boiled egg, bamboo shoots, and green onions.', 1, TIMESTAMP '2021-03-17 21:48:44');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(27, 'Miso Pasta', 169, 'Savor the complex and savory taste of miso sauce served with penne noodles, garnished with pork slices, marinated soft-boiled egg, corn kernels, and green onions.', 1, TIMESTAMP '2021-03-17 21:49:36');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(28, 'Shoyu Pasta', 159, 'Indulge in the classic flavors of shoyu sauce served with spaghetti noodles, topped with chicken slices, marinated soft-boiled egg, spinach, and green onions.', 1, TIMESTAMP '2021-03-17 21:50:20');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(29, 'Pasta with Bean Sprouts', 149, 'Enjoy the crunch of fresh bean sprouts served with spaghetti noodles in a light sauce, accompanied by pork slices, marinated soft-boiled egg, seaweed, and green onions.', 1, TIMESTAMP '2021-03-17 22:01:33');

INSERT INTO pasta (pastaId, pastaName, pastaPrice, pastaDesc, pastaCategorieId, pastaPubDate) VALUES
(30, 'Pasta with Sesame Oil', 159, 'Experience the nutty aroma of sesame oil infused into spaghetti noodles served in a flavorful sauce, garnished with chashu pork, marinated soft-boiled egg, bamboo shoots, and green onions.', 1, TIMESTAMP '2021-03-17 22:02:50');


DROP TABLE SITEDETAIL;

CREATE TABLE SITEDETAIL 
(
  TEMPID NUMBER NOT NULL 
, SYSTEMNAME VARCHAR2(21) NOT NULL 
, EMAIL VARCHAR2(35) NOT NULL 
, CONTACT1 NUMBER NOT NULL 
, CONTACT2 NUMBER NOT NULL 
, ADDRESS CLOB NOT NULL 
);

COMMENT ON COLUMN SITEDETAIL.CONTACT2 IS 'Optinal';

INSERT INTO sitedetail (tempId, systemName, email, contact1, contact2, address) VALUES
(1, 'Italy Pasta', 'pasta@gmail.com', '1234567890', '9876543210', 'Sample Address');

DROP TABLE users;

CREATE TABLE users (
  id NUMBER NOT NULL,
  username VARCHAR2(21) NOT NULL,
  firstName VARCHAR2(21) NOT NULL,
  lastName VARCHAR2(21) NOT NULL,
  email VARCHAR2(35) NOT NULL,
  phone NUMBER NOT NULL,
  userType VARCHAR2(1) NOT NULL CHECK (userType IN ('0', '1')),
  password VARCHAR2(255) NOT NULL,
  joinDate TIMESTAMP DEFAULT SYSTIMESTAMP
);

ALTER TABLE users MODIFY userType DEFAULT '0';

INSERT INTO users (id, username, firstName, lastName, email, phone, userType, password, joinDate) 
VALUES (1, 'nicky', 'ni', 'nayyy', 'nay@gmail.com', 9898989898, '1', '$2y$10$AAfxRFOYbl7FdN17rN', TIMESTAMP '2022-09-13 11:40:58');

INSERT INTO users (id, username, firstName, lastName, email, phone, userType, password, joinDate) 
VALUES (2, 'san', 'na', '1', 'naysan@gmail.com', 1234567890, '0', '$2y$10$2klu7oTnY3Yl.', TIMESTAMP '2023-09-09 20:34:18');

DROP TABLE viewcart;

CREATE TABLE viewcart (
  cartItemId NUMBER NOT NULL,
  pastaId NUMBER NOT NULL,
  itemQuantity NUMBER NOT NULL,
  userId NUMBER NOT NULL,
  addedDate TIMESTAMP DEFAULT SYSTIMESTAMP
);

ALTER TABLE categories
  ADD PRIMARY KEY (categorieId);

ALTER TABLE contact
  ADD PRIMARY KEY (contactId);

ALTER TABLE contactreply
  ADD PRIMARY KEY (id);

ALTER TABLE deliverydetails
  ADD PRIMARY KEY (id);

ALTER TABLE deliverydetails
  ADD CONSTRAINT unique_orderId UNIQUE (orderId);

ALTER TABLE orderitems
  ADD PRIMARY KEY (id);

ALTER TABLE orders
  ADD PRIMARY KEY (orderId);

ALTER TABLE pasta
  ADD PRIMARY KEY (pastaId);

ALTER TABLE sitedetail
  ADD PRIMARY KEY (tempId);

ALTER TABLE users
 ADD CONSTRAINT pk_users PRIMARY KEY (id);

ALTER TABLE users
ADD CONSTRAINT unique_username UNIQUE (username);

ALTER TABLE viewcart
ADD PRIMARY KEY (cartItemId);

DROP SEQUENCE categorieId_seqa;
CREATE SEQUENCE categorieId_seqa
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


CREATE OR REPLACE TRIGGER categorieId_trigger
BEFORE INSERT ON categories
FOR EACH ROW
BEGIN
  :NEW.categorieId := categorieId_seq.NEXTVAL;
END;

DROP SEQUENCE contactId_seqa;

CREATE SEQUENCE contactId_seqa
  START WITH 2
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER contactId_trigger
BEFORE INSERT ON contact
FOR EACH ROW
BEGIN
  :NEW.contactId := contactId_seqa.NEXTVAL;
END;
DROP SEQUENCE contactreply_id_seq;
CREATE SEQUENCE contactreply_id_seq
  START WITH 2
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER contactreply_id_trigger
BEFORE INSERT ON contactreply
FOR EACH ROW
BEGIN
  :NEW.id := contactreply_id_seq.NEXTVAL;
END;

DROP SEQUENCE deliverydetails_id_seq;
CREATE SEQUENCE deliverydetails_id_seq
  START WITH 19
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER deliverydetails_id_trigger
BEFORE INSERT ON deliverydetails
FOR EACH ROW
BEGIN
  :NEW.id := deliverydetails_id_seq.NEXTVAL;
END;
  DROP SEQUENCE orderitems_id_seq;
CREATE SEQUENCE orderitems_id_seq
  START WITH 51
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER orderitems_id_trigger
BEFORE INSERT ON orderitems
FOR EACH ROW
BEGIN
  :NEW.id := orderitems_id_seq.NEXTVAL;
END;
 DROP SEQUENCE orders_orderId_seq;
CREATE SEQUENCE orders_orderId_seq
  START WITH 18
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER orders_orderId_trigger
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  :NEW.orderId := orders_orderId_seq.NEXTVAL;
END;

 DROP SEQUENCE pastaId_seq;
CREATE SEQUENCE pastaId_seq
  START WITH 70
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER pastaId_trigger
BEFORE INSERT ON pasta
FOR EACH ROW
BEGIN
  :NEW.pastaId := pastaId_seq.NEXTVAL;
END;

CREATE SEQUENCE sitedetail_tempId_seq
  START WITH 3
  INCREMENT BY 1;

DROP SEQUENCE sitedetail_tempId_trigger;
CREATE OR REPLACE TRIGGER sitedetail_tempId_trigger
BEFORE INSERT ON sitedetail
FOR EACH ROW
BEGIN
  :NEW.tempId := sitedetail_tempId_seq.NEXTVAL;
END;
DROP SEQUENCE users_id_seq;
CREATE SEQUENCE users_id_seq
  START WITH 3
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER users_id_trigger
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
  :NEW.id := users_id_seq.NEXTVAL;
END;

DROP SEQUENCE viewcart_cartItemId_seq;
CREATE SEQUENCE viewcart_cartItemId_seq
  START WITH 51
  INCREMENT BY 1;
  
CREATE OR REPLACE TRIGGER viewcart_cartItemId_trigger
BEFORE INSERT ON viewcart
FOR EACH ROW
BEGIN
  :NEW.cartItemId := viewcart_cartItemId_seq.NEXTVAL;
END;

//Question 1
SELECT u.username, o.orderId, oi.pastaId, p.pastaName
FROM users u
LEFT JOIN orders o ON u.id = o.userId
LEFT JOIN orderitems oi ON o.orderId = oi.orderId
INNER JOIN pasta p ON oi.pastaId = p.pastaId
WHERE o.orderDate >= TO_TIMESTAMP('2023-01-01', 'YYYY-MM-DD') AND p.pastaPrice < 200;


//Question 2
(SELECT orderId, address, 'Order' AS type FROM orders)
UNION
(SELECT contactId, email, 'Contact' AS type FROM contact);


//Question 3
SELECT
    u.username,
    LISTAGG(o.orderId, ',') WITHIN GROUP (ORDER BY o.orderId) AS order_ids
FROM
    users u
JOIN
    orders o ON u.id = o.userId
GROUP BY
    u.username;

//Question 4
SELECT
    EXTRACT(YEAR FROM orderDate) AS order_year,
    EXTRACT(MONTH FROM orderDate) AS order_month,
    COUNT(*) AS order_count
FROM
    orders
WHERE
    orderDate >= TIMESTAMP '2023-01-01 00:00:00'
    AND orderDate > TIMESTAMP '2023-04-01 00:00:00'
GROUP BY
    EXTRACT(YEAR FROM orderDate),
    EXTRACT(MONTH FROM orderDate)
ORDER BY
    order_year, order_month;

//Question 5
SELECT
    CASE
        WHEN GROUPING(orderdate) = 1 THEN
            'Total'
        ELSE
            to_char(orderdate, 'YYYY-MM')
    END AS order_month,
    CASE
        WHEN GROUPING(categoriename) = 1 THEN
            'Total'
        ELSE
            categoriename
    END AS categorie_name,
    COUNT(o.orderid) AS total_orders,
    SUM(amount) AS total_amount
FROM
    orders o
JOIN orderitems oi ON o.orderid = oi.orderid
JOIN pasta p ON oi.pastaid = p.pastaid
JOIN categories c ON p.pastacategorieid = c.categorieid
GROUP BY
    ROLLUP(to_char(orderdate, 'YYYY-MM'), categoriename, orderdate)
ORDER BY
    order_month,
    categorie_name
FETCH FIRST 17 ROWS ONLY;