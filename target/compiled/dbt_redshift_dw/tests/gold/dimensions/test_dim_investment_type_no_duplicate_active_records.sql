WITH active_records AS (
    SELECT
        investment_type_id,
        COUNT(*) AS active_count
    FROM "dev"."dev_gold"."dim_investment_type"
    GROUP BY investment_type_id
)

SELECT investment_type_id
FROM active_records
WHERE active_count > 1