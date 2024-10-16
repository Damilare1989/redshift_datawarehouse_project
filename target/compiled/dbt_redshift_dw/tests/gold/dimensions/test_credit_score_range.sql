SELECT
    account_id,
    credit_score
FROM "dev"."dev_gold"."dim_account"
WHERE credit_score < 300 OR credit_score > 850