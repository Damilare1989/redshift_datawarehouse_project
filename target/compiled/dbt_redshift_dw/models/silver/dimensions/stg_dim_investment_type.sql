


SELECT
    investment_type_id,
    investment_type_name,
    getdate() as created_at
FROM dev_bronze.ext_investment_types