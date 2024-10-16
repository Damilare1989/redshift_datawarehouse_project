

SELECT
    investment_id,
    date_id,
    investment_type_id,
    location_id,
    account_id,
    currency_id,
    investment_amount,
    investment_return,
    getdate() as created_at
FROM
    dev_bronze.ext_fact_investments