


SELECT
    date_id,
    date,
    day,
    month,
    year,
    weekday,
    getdate() as created_at
FROM dev_bronze.ext_dates