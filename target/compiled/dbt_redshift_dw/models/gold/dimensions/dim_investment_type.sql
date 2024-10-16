

SELECT
    investment_type_id,
    INITCAP(investment_type_name) AS investment_type_name,
    created_at
FROM
    "dev"."dev_silver"."stg_dim_investment_type"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_investment_type")
