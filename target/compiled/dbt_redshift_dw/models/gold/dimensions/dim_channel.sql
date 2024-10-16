

SELECT
    channel_id,
    channel_name,
    created_at
FROM "dev"."dev_silver"."stg_dim_channel"


WHERE created_at > (SELECT MAX(created_at) FROM "dev"."dev_gold"."dim_channel")
