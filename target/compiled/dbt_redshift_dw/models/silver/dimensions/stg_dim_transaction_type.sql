


SELECT
    transaction_type_id,
    transaction_type_name,
    getdate() as created_at
FROM dev_bronze.ext_transaction_types