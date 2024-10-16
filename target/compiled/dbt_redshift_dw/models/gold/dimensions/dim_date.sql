


SELECT
    date_id,
    date,
    day,
    month,
    year,
    weekday,
    created_at
FROM "dev"."dev_silver"."stg_dim_date"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_date")
