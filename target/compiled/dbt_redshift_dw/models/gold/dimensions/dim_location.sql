


SELECT
    location_id,
    city,
    state,
    country,
    postal_code,
    created_at
FROM "dev"."dev_silver"."stg_dim_location"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_location")
