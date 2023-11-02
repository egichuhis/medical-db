CREATE TABLE "patients"
(
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255),
  "date_of_birth" DATE
);

CREATE TABLE "medical_histories"
(
  "id" SERIAL PRIMARY KEY,
  "admitted_at" TIMESTAMP,
  "patient_id" INTEGER,
  "status" VARCHAR(255),
  FOREIGN KEY ("patient_id") REFERENCES "patients" ("id")
);

CREATE INDEX ON "medical_histories"
("patient_id");

CREATE TABLE "treatments"
(
  "id" SERIAL PRIMARY KEY,
  "type" VARCHAR(255),
  "name" VARCHAR(255)
);

CREATE TABLE "invoices"
(
  "id" SERIAL PRIMARY KEY,
  "total_amount" DECIMAL,
  "generated_at" TIMESTAMP,
  "paid_at" TIMESTAMP,
  "medical_history_id" INTEGER,
  FOREIGN KEY ("medical_history_id") REFERENCES "medical_histories" ("id")
);
