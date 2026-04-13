-- 1. Load from your specific CSV file
raw = LOAD '/user/maria_dev/input/Malaysia_AQI_data_combined.csv' USING PigStorage(',')
AS (
    date_recorded:chararray,
    country:chararray,
    city:chararray,
    type:chararray,
    count:chararray,
    min:chararray,
    max:chararray,
    median:chararray,
    variance:chararray
);

-- 2. Filter for pm25 
co_rows = FILTER raw BY type IS NOT NULL AND type MATCHES '.*(?i)co.*';

-- 3. Clean up the columns
co_clean = FOREACH co_rows GENERATE
    date_recorded,
    country,
    city,
    type,
    median;

-- 4. Save to a fresh folder name to avoid permission errors
STORE co_clean INTO '/user/maria_dev/output2/co_only' USING PigStorage(',');

-- 5. Preview the results in the log
DUMP co_clean;