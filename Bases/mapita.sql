DELETE IF NOT EXISTS "Marcador";
DELETE IF NOT EXISTS "Users";
CREATE TABLE "Users" (
  "user_id" SERIAL PRIMARY KEY,
  "user_name" TEXT,
  "user_email" TEXT,
  "user_password" TEXT,
  "user_date" DATE
);
CREATE TABLE "Marcador" (
  "marcador_id" SERIAL PRIMARY KEY,
  "marcador_lat" DOUBLE PRECISION,
  "marcador_lon" DOUBLE PRECISION,
  "marcador_user" INTEGER REFERENCES "Users" ("user_id")
);
