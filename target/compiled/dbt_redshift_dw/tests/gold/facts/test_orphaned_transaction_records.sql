WITH orphaned_transactions AS (
    SELECT f.transaction_id
    FROM "dev"."dev_gold"."fact_transactions" AS f
    LEFT JOIN "dev"."dev_gold"."dim_account" AS a ON f.account_id = a.account_id
    WHERE a.account_id IS NULL
)

SELECT transaction_id
FROM orphaned_transactions