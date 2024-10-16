

SELECT account_id,
       customer_id,
       account_number,
       account_type,
       account_balance,
       credit_score,
       getdate() as created_at
FROM dev_bronze.ext_accounts