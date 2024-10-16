

SELECT
    interaction_id,
    date_id,
    customer_id,
    location_id,
    interaction_type,
    channel_id,
    interaction_rating,
    getdate() as created_at
FROM dev_bronze.ext_fact_customer_interactions