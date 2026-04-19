--P166246 Muzaffar Izamuddin Final Report (WIP)
-- 1. Load from uploaded CSV file. this file was ran inside ambari
raw = LOAD '/user/maria_dev/input/Malaysia_AQI_data_combined.csv' USING PigStorage(',')
AS (
    date_recorded:chararray,
    country:chararray,
    city:chararray,
    type:chararray,
    count:float,
    min:float,
    max:float,
    median:float,
    variance:float
);

-- 2. Filter for pm25
pm25_rows = FILTER raw BY type IS NOT NULL AND type MATCHES '.*(?i)pm25.*';

-- 3. Clean up the columns
pm25_clean = FOREACH pm25_rows GENERATE
    date_recorded,
    country,
    city,
    type,
    median;

-- 4. Save to a folder
STORE pm25_clean INTO '/user/maria_dev/output/pm25_only' USING PigStorage(',');
-- the file part-v000-o000-r-00000 is outputed. downloaded file is in this repo and renamed to pm25_only_pigoutput.csv for easy viewing

-- 5. Preview the results in the log in ambari to check file contents
DUMP pm25_clean;
