SELECT
    transaction_id,
    transaction_amount
FROM "dev"."dev_gold"."fact_transactions"
WHERE transaction_amount < 0