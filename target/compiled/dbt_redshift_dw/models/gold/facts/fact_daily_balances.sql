

WITH source_data as (
    SELECT
        balance_id,
        date_id,
        account_id,
        currency_id,
        opening_balance,
        closing_balance,
        average_balance
        FROM "dev"."dev_silver"."stg_fact_daily_balances"
)

SELECT
    s.date_id,
    s.balance_id,
    d.date as balance_date,
    s.account_id,
    a.account_number,
    a.account_type,
    a.credit_score,
    c.currency_code,
    c.currency_name,
    s.opening_balance,
    s.closing_balance,
    s.average_balance
FROM source_data s
INNER JOIN "dev"."dev_gold"."dim_date" as d on s.date_id = d.date_id
INNER JOIN "dev"."dev_gold"."dim_account" as a on s.account_id = a.account_id
INNER JOIN "dev"."dev_gold"."dim_currency" as c on s.currency_id = c.currency_id