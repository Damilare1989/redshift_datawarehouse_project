

SELECT
    currency_id,
    created_at,
    UPPER(currency_code) as currency_code,
    INITCAP(currency_name) as currency_name
FROM
    "dev"."dev_silver"."stg_dim_currency"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_currency")
