

SELECT
    transaction_id,
    date_id,
    transaction_type_id,
    channel_id,
    location_id,
    account_id,
    currency_id,
    transaction_amount,
    transaction_status,
    getdate() AS created_at
FROM
    dev_bronze.ext_fact_transactions