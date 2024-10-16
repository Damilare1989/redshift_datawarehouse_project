

SELECT
    channel_id,
    channel_name,
    getdate() as created_at
FROM dev_bronze.ext_channels