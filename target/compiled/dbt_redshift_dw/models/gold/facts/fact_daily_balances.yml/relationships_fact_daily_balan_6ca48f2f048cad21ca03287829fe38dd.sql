
    
    

with child as (
    select currency_id as from_field
    from "dev"."dev_gold"."fact_daily_balances"
    where currency_id is not null
),

parent as (
    select currency_id as to_field
    from "dev"."dev_gold"."dim_currency"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


