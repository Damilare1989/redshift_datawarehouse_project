


SELECT
    loan_id,
    loan_type,
    loan_amount,
    interest_rate,
    getdate() as created_at
FROM dev_bronze.ext_loans