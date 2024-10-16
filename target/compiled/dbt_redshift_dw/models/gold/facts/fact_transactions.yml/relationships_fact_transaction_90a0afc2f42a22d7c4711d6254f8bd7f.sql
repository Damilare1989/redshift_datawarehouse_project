
    
    

with child as (
    select location_id as from_field
    from "dev"."dev_gold"."fact_transactions"
    where location_id is not null
),

parent as (
    select location_id as to_field
    from "dev"."dev_gold"."dim_location"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


