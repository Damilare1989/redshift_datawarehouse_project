SELECT account_number
FROM "dev"."dev_gold"."dim_account"
GROUP BY account_number
HAVING COUNT(*) > 1