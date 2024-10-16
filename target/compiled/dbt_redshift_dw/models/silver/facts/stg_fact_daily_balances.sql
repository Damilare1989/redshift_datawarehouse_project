

SELECT
    balance_id,
    date_id,
    account_id,
    currency_id,
    opening_balance,
    closing_balance,
    average_balance,
    getdate() as created_at
FROM dev_bronze.ext_fact_daily_balances