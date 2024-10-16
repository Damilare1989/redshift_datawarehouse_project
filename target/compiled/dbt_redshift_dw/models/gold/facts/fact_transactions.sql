

WITH source_data as (
    SELECT
        transaction_id,
        date_id,
        transaction_type_id,
        channel_id,
        location_id,
        account_id,
        currency_id,
        transaction_amount,
        transaction_status
    FROM "dev"."dev_silver"."stg_fact_transactions"
)

SELECT
    s.transaction_id,
    d.date_id,
    d.date,
    a.account_number,
    a.account_type,
    a.credit_score,
    tt.transaction_type_name,
    c.currency_code,
    c.currency_name,
    ch.channel_name,
    l.city,
    l.state,
    l.postal_code,
    l.country,
    transaction_amount,
    transaction_status
FROM source_data s
LEFT JOIN "dev"."dev_gold"."dim_date" as d on s.date_id = d.date_id
LEFT JOIN "dev"."dev_gold"."dim_account" as a on s.account_id = a.account_id
LEFT JOIN "dev"."dev_gold"."dim_transaction_type" as tt on s.transaction_type_id = tt.transaction_type_id
LEFT JOIN "dev"."dev_gold"."dim_currency" as c on s.currency_id = c.currency_id
LEFT JOIN "dev"."dev_gold"."dim_channel" as ch on s.channel_id = ch.channel_id
LEFT JOIN "dev"."dev_gold"."dim_location" as l on s.location_id = l.location_id