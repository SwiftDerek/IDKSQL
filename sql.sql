BEGIN TRANSACTION;
CREATE TABLE "tbl" (
"index" INTEGER,
  "OrderDate" TIMESTAMP,
  "Region" TEXT,
  "Rep" TEXT,
  "Item" TEXT,
  "Units" INTEGER,
  "Unit Cost" REAL,
  "Total" REAL
);
INSERT INTO "tbl" VALUES(0,'2018-01-06 00:00:00','East','Jones','Pencil',95,1.99,189.05);
INSERT INTO "tbl" VALUES(1,'2018-01-23 00:00:00','Central','Kivell','Binder',50,19.99,9.9949999999999992184e+02);
INSERT INTO "tbl" VALUES(2,'2018-02-09 00:00:00','Central','Jardine','Pencil',36,4.99,1.79640000000000021884e+02);
INSERT INTO "tbl" VALUES(3,'2018-02-26 00:00:00','Central','Gill','Pen',27,19.99,5.39729999999999865423e+02);
INSERT INTO "tbl" VALUES(4,'2018-03-15 00:00:00','West','Sorvino','Pencil',56,2.99,167.44);
INSERT INTO "tbl" VALUES(5,'2018-04-01 00:00:00','East','Jones','Binder',60,4.99,2.99400000000000012789e+02);
INSERT INTO "tbl" VALUES(6,'2018-04-18 00:00:00','Central','Andrews','Pencil',75,1.99,149.25);
INSERT INTO "tbl" VALUES(7,'2018-05-05 00:00:00','Central','Jardine','Pencil',90,4.99,449.1);
INSERT INTO "tbl" VALUES(8,'2018-05-22 00:00:00','West','Thompson','Pencil',32,1.99,63.68);
INSERT INTO "tbl" VALUES(9,'2018-06-08 00:00:00','East','Jones','Binder',60,8.99,539.4);
INSERT INTO "tbl" VALUES(10,'2018-06-25 00:00:00','Central','Morgan','Pencil',90,4.99,449.1);
INSERT INTO "tbl" VALUES(11,'2018-07-12 00:00:00','East','Howard','Binder',29,1.99,57.71);
INSERT INTO "tbl" VALUES(12,'2018-07-29 00:00:00','East','Parent','Binder',81,19.99,1.61918999999999986272e+03);
INSERT INTO "tbl" VALUES(13,'2018-08-15 00:00:00','East','Jones','Pencil',35,4.99,174.65);
INSERT INTO "tbl" VALUES(14,'2018-09-01 00:00:00','Central','Smith','Desk',2,125.0,250.0);
INSERT INTO "tbl" VALUES(15,'2018-09-18 00:00:00','East','Jones','Pen Set',16,15.99,255.84);
INSERT INTO "tbl" VALUES(16,'2018-10-05 00:00:00','Central','Morgan','Binder',28,8.99,251.72);
INSERT INTO "tbl" VALUES(17,'2018-10-22 00:00:00','East','Jones','Pen',64,8.99,575.36);
INSERT INTO "tbl" VALUES(18,'2018-11-08 00:00:00','East','Parent','Pen',15,19.99,2.99849999999999958788e+02);
INSERT INTO "tbl" VALUES(19,'2018-11-25 00:00:00','Central','Kivell','Pen Set',96,4.99,479.04);
INSERT INTO "tbl" VALUES(20,'2018-12-12 00:00:00','Central','Smith','Pencil',67,1.29,86.43);
INSERT INTO "tbl" VALUES(21,'2018-12-29 00:00:00','East','Parent','Pen Set',74,15.99,1183.26);
INSERT INTO "tbl" VALUES(22,'2019-01-15 00:00:00','Central','Gill','Binder',46,8.99,413.54);
INSERT INTO "tbl" VALUES(23,'2019-02-01 00:00:00','Central','Smith','Binder',87,15.0,1305.0);
INSERT INTO "tbl" VALUES(24,'2019-02-18 00:00:00','East','Jones','Binder',4,4.99,19.96);
INSERT INTO "tbl" VALUES(25,'2019-03-07 00:00:00','West','Sorvino','Binder',7,19.99,1.39929999999999976623e+02);
INSERT INTO "tbl" VALUES(26,'2019-03-24 00:00:00','Central','Jardine','Pen Set',50,4.99,249.5);
INSERT INTO "tbl" VALUES(27,'2019-04-10 00:00:00','Central','Andrews','Pencil',66,1.99,131.34);
INSERT INTO "tbl" VALUES(28,'2019-04-27 00:00:00','East','Howard','Pen',96,4.99,479.04);
INSERT INTO "tbl" VALUES(29,'2019-05-14 00:00:00','Central','Gill','Pencil',53,1.29,68.37);
INSERT INTO "tbl" VALUES(30,'2019-05-31 00:00:00','Central','Gill','Binder',80,8.99,719.2);
INSERT INTO "tbl" VALUES(31,'2019-06-17 00:00:00','Central','Kivell','Desk',5,125.0,625.0);
INSERT INTO "tbl" VALUES(32,'2019-07-04 00:00:00','East','Jones','Pen Set',62,4.99,309.38);
INSERT INTO "tbl" VALUES(33,'2019-07-21 00:00:00','Central','Morgan','Pen Set',55,12.49,686.95);
INSERT INTO "tbl" VALUES(34,'2019-08-07 00:00:00','Central','Kivell','Pen Set',42,23.95,1005.9);
INSERT INTO "tbl" VALUES(35,'2019-08-24 00:00:00','West','Sorvino','Desk',3,275.0,825.0);
INSERT INTO "tbl" VALUES(36,'2019-09-10 00:00:00','Central','Gill','Pencil',7,1.29,9.03000000000000113686e+00);
INSERT INTO "tbl" VALUES(37,'2019-09-27 00:00:00','West','Sorvino','Pen',76,1.99,151.24);
INSERT INTO "tbl" VALUES(38,'2019-10-14 00:00:00','West','Thompson','Binder',57,19.99,1.13942999999999994287e+03);
INSERT INTO "tbl" VALUES(39,'2019-10-31 00:00:00','Central','Andrews','Pencil',14,1.29,1.80600000000000022737e+01);
INSERT INTO "tbl" VALUES(40,'2019-11-17 00:00:00','Central','Jardine','Binder',11,4.99,54.89);
INSERT INTO "tbl" VALUES(41,'2019-12-04 00:00:00','Central','Jardine','Binder',94,19.99,1879.06);
INSERT INTO "tbl" VALUES(42,'2019-12-21 00:00:00','Central','Andrews','Binder',28,4.99,139.72);
CREATE INDEX "ix_tbl_index"ON "tbl" ("index");
COMMIT;
