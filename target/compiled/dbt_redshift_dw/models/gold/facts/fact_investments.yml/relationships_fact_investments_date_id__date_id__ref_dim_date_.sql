
    
    

with child as (
    select date_id as from_field
    from "dev"."dev_gold"."fact_investments"
    where date_id is not null
),

parent as (
    select date_id as to_field
    from "dev"."dev_gold"."dim_date"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


