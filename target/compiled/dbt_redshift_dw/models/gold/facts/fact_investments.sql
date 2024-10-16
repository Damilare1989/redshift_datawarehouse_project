

WITH source_data as (
    SELECT
        investment_id,
        date_id,
        investment_type_id,
        location_id,
        account_id,
        currency_id,
        investment_amount,
        investment_return
    FROM "dev"."dev_silver"."stg_fact_investments"
)

SELECT
    s.date_id,
    s.investment_id,
    d.date as investment_date,
    a.account_number,
    a.account_type,
    a.credit_score,
    it.investment_type_id,
    it.investment_type_name,
    s.investment_amount,
    s.investment_return
FROM source_data s
LEFT JOIN "dev"."dev_gold"."dim_date" as d on s.date_id = d.date_id
LEFT JOIN "dev"."dev_gold"."dim_account" as a on s.account_id = a.account_id
LEFT JOIN "dev"."dev_gold"."dim_investment_type" as it on s.investment_type_id = it.investment_type_id
LEFT JOIN "dev"."dev_gold"."dim_currency" as c on s.currency_id = c.currency_id