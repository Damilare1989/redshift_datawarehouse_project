


SELECT
    customer_id,
    first_name,
    last_name,
    full_name,
    email,
    address,
    city,
    state,
    postal_code,
    phone_number,
    created_at
FROM "dev"."dev_silver"."stg_dim_customer"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_customer")
