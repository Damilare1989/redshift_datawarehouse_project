


SELECT
    location_id,
    city,
    state,
    country,
    postal_code,
    getdate() as created_at
FROM dev_bronze.ext_locations