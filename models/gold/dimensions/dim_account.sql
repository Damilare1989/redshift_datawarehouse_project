{{ config(
    materialized="incremental",
    alias="dim_account",
    schema=var("gold_schema"),
    unique_key="account_id",
    incremental_strategy="delete+insert"
) }}


SELECT
    account_id,
    customer_id,
    account_number,
    account_type,
    account_balance,
    credit_score,
    created_at
FROM {{ ref("stg_dim_account") }}

{% if is_incremental() %}
WHERE created_at > (SELECT MAX(created_at) FROM {{ this }})
{% endif %}

{# 
This code block is part of an incremental model in dbt.
It's used to filter the data when running an incremental update.

The `{% if is_incremental() %}` checks if the model is being run incrementally.
If it is, the WHERE clause is added to the SQL query.

The WHERE clause filters the data to only include rows where the 'created_at'
column is greater than the maximum 'created_at' value in the existing table.

`{{ this }}` refers to the current model's table in the data warehouse.

This ensures that only new or updated data since the last run is processed,
which can significantly improve performance for large datasets.
#}