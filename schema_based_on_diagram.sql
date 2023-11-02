CREATE TABLE "invoice_items"
(
  "id" SERIAL PRIMARY KEY,
  "unit_price" DECIMAL,
  "quantity" INTEGER,
  "total_price" DECIMAL,
  "invoice_id" INTEGER,
  "treatment_id" INTEGER,
  FOREIGN KEY ("invoice_id") REFERENCES "invoices" ("id"),
  FOREIGN KEY ("treatment_id") REFERENCES "treatments" ("id")
);

CREATE INDEX ON "invoice_items"
("invoice_id");
CREATE INDEX ON "invoice_items"
("treatment_id");

CREATE TABLE "patients"
(
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255),
  "date_of_birth" DATE
);