CREATE TABLE "Salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "Cars" (
  "car_id" SERIAL,
  "isNew" BOOLEAN,
  "year" INTEGER,
  "make" VARCHAR(30),
  "model" VARCHAR(30),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Customer" (
  "customer_id " SERIAL,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  "phone" INTEGER,
  "email" VARCHAR(20),
  "did_Buy" BOOLEAN,
  PRIMARY KEY ("customer_id ")
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(15),
  "last_name" VARCHAR(15),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "Serv_Mech" (
  "serv_mech_id" SERIAL,
  "mechanic_id" INTEGER,
  PRIMARY KEY ("serv_mech_id")
);

CREATE TABLE "Services" (
  "service_id" SERIAL,
  "service_history" VARCHAR(250),
  "serv_mech_id" INTEGER,
  PRIMARY KEY ("service_id"),
  CONSTRAINT "FK_Services.serv_mech_id"
    FOREIGN KEY ("serv_mech_id")
      REFERENCES "Serv_Mech"("serv_mech_id")
);


CREATE TABLE "Invoices" (
  "invoice_id" SERIAL,
  "isPaid" BOOLEAN,
  "customer_id" INTEGER,
  "salesperson_id" INTEGER,
  "car_id" INTEGER,
  "service_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_Invoices.salesperson_id"
    FOREIGN KEY ("salesperson_id")
      REFERENCES "Salesperson"("salesperson_id"),
  CONSTRAINT "FK_Invoices.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Cars"("car_id"),
  CONSTRAINT "FK_Invoices.service_id"
    FOREIGN KEY ("service_id")
      REFERENCES "Services"("service_id"),
  CONSTRAINT "FK_Invoices.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id ")
);

INSERT INTO "Customer"(
  "customer_id ",
  "first_name", 
  "last_name", 
  "phone", 
  "email" 
)VALUES(
	1,
	'Joel',
	'Carter',
  345-456-7654,
  'JC@yahoo.com'
);
INSERT INTO "Customer"(
  "customer_id ",
  "first_name", 
  "last_name", 
  "phone", 
  "email" 
)VALUES(
	2,
	'Flash',
	'Gordon',
  218-365-8800,
  'FG@yahoo.com'
);
INSERT INTO  "Salesperson" (
  "salesperson_id",
  "first_name",
  "last_name"
)VALUES(
  1,
  'Magic',
  'Johnson'
);
INSERT INTO  "Salesperson" (
  "salesperson_id",
  "first_name",
  "last_name"
)VALUES(
  2,
  'Bo',
  'Jackson'
);

INSERT INTO  "Cars" (
  "car_id",
  "year",
  "make",
  "model"
)VALUES(
  1,
  2022,
  'Nissan',
  'Altima'
)
INSERT INTO  "Cars" (
  "car_id",
  "year",
  "make",
  "model"
)VALUES(
  2,
  1997,
  'Ford',
  'F-150'
)

INSERT INTO "Mechanic" (
  "mechanic_id",
  "first_name",
  "last_name"
)VALUES(
  1,
  'Pablo',
  'Escobar'
)
INSERT INTO "Mechanic" (
  "mechanic_id",
  "first_name",
  "last_name"
)VALUES(
  2,
  'Albert',
  'Polojoles'
)

INSERT INTO "Serv_Mech" (
  "serv_mech_id",
  "mechanic_id"
)VALUES(
  1,
  1
)
INSERT INTO "Serv_Mech" (
  "serv_mech_id",
  "mechanic_id"
)VALUES(
  2,
  2
)

INSERT INTO "Services" (
  "service_id",
  "service_history",
  "serv_mech_id"
)VALUES(
  1,
  'probably the alternator',
  1
)
INSERT INTO "Services" (
  "service_id",
  "service_history",
  "serv_mech_id"
)VALUES(
  2,
  'I know whats wrong with it, it aint got no gas in it',
  2
)

INSERT INTO "Invoices" (
  "invoice_id",
  "customer_id",
  "salesperson_id",
  "car_id",
  "service_id"
)VALUES(
  1,
  1,
  1,
  1,
  1
)
INSERT INTO "Invoices" (
  "invoice_id",
  "customer_id",
  "salesperson_id",
  "car_id",
  "service_id"
)VALUES(
  2,
  2,
  2,
  2,
  2
)