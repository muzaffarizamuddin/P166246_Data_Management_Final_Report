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
pm10_rows = FILTER raw BY type IS NOT NULL AND type MATCHES '.*(?i)pm10.*';

-- 3. Clean up the columns
pm10_clean = FOREACH pm10_rows GENERATE
    date_recorded,
    country,
    city,
    type,
    median;

-- 4. Save to a fresh folder name to avoid permission errors
STORE pm10_clean INTO '/user/maria_dev/output1/pm10_only' USING PigStorage(',');

-- 5. Preview the results in the log
DUMP pm10_clean;