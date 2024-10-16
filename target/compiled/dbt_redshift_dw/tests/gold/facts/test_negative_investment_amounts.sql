SELECT
    investment_id,
    investment_amount
FROM "dev"."dev_gold"."fact_investments"
WHERE investment_amount < 0