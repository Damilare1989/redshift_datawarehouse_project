


SELECT
    customer_id,
    first_name,
    last_name,
    concat(concat(first_name, ' '), last_name) as full_name,
    email,
    address,
    city,
    state,
    postal_code,
    phone_number,
    getdate() as created_at
FROM dev_bronze.ext_customers