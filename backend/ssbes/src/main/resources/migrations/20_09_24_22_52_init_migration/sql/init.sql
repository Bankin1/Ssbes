CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE Description (
     id UUID PRIMARY KEY,
     is_yandex BOOLEAN,
     is_to_public BOOLEAN,
     stack_of_technology VARCHAR(255),
     what_i_do VARCHAR(255),
     office VARCHAR(255),
     working_time VARCHAR(255),
     seat BOOLEAN,
     how_often_sinks VARCHAR(255),
     is_open_space BOOLEAN,
     work_after BOOLEAN,
     average_age INT,
     is_healthy_lifestyle VARCHAR(255),
     party VARCHAR(255),
     smth_else TEXT
);

ALTER TABLE Description ALTER COLUMN id SET DEFAULT gen_random_uuid();

CREATE TABLE Team (
      id UUID PRIMARY KEY,
      user_id UUID NOT NULL,
      name VARCHAR(255) NOT NULL,
      description_id UUID NOT NULL,
      FOREIGN KEY (description_id) REFERENCES Description(id)
);

ALTER TABLE Team ALTER COLUMN id SET DEFAULT gen_random_uuid();
