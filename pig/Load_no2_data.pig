-- 1. Load from your specific CSV file
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
no2_rows = FILTER raw BY type IS NOT NULL AND type MATCHES '.*(?i)no2.*';

-- 3. Clean up the columns
no2_clean = FOREACH no2_rows GENERATE
    date_recorded,
    country,
    city,
    type,
    median;

-- 4. Save to a fresh folder name to avoid permission errors
STORE no2_clean INTO '/user/maria_dev/output1/no2_only' USING PigStorage(',');

-- 5. Preview the results in the log
DUMP no2_clean;