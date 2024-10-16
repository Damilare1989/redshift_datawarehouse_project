

SELECT
    transaction_type_id,
    INITCAP(transaction_type_name) AS transaction_type_name,
    created_at
FROM
    "dev"."dev_silver"."stg_dim_transaction_type"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_transaction_type")
