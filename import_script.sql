CREATE TABLE IF NOT EXISTS public.populations
(
    id serial NOT NULL,
    zip_code text NOT NULL,
    population_count int,
    PRIMARY KEY (id)
);
TRUNCATE populations;

CREATE TABLE IF NOT EXISTS public.incomes
(
    id serial NOT NULL,
    zip_code text NOT NULL,
    median_income int,
    margin_error int,
    PRIMARY KEY (id)
);
TRUNCATE incomes;


COPY populations(zip_code, population_count)
from 'C:\Users\LabUser\Downloads\populationPerZip.csv'
DELIMITER ','
CSV HEADER;

Copy incomes(zip_code, median_income, margin_error) 
from PROGRAM 'C:\Users\LabUser\Downloads\MI_ZIP.csv'
DELIMITER ','
CSV HEADER;