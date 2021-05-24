-- Personal try
-- CREATE TABLE cohort (id SERIAL PRIMARY KEY, name VARCHAR(500), start_date date, end_date date);
-- Personal try
-- CREATE TABLE student (id INTEGER PRIMARY KEY, name varchar(500), email varchar(100), phone INTEGER, github varchar(1000), start_date date, end_date date, cohort_id )


CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

