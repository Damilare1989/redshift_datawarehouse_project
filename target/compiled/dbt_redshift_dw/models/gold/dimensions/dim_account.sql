


SELECT
    account_id,
    customer_id,
    account_number,
    account_type,
    account_balance,
    credit_score,
    created_at
FROM "dev"."dev_silver"."stg_dim_account"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_account")


