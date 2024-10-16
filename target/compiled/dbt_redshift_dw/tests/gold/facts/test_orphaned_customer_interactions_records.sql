WITH orphaned_interactions AS (
    SELECT f.interaction_id
    FROM "dev"."dev_gold"."fact_customer_interactions" AS f
    LEFT JOIN "dev"."dev_gold"."dim_customer" AS c ON f.customer_id = c.customer_id
    WHERE c.customer_id IS NULL
)

SELECT interaction_id
FROM orphaned_interactions