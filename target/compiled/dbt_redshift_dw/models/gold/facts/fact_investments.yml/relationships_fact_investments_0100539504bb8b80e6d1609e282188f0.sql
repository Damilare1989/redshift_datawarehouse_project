
    
    

with child as (
    select investment_type_id as from_field
    from "dev"."dev_gold"."fact_investments"
    where investment_type_id is not null
),

parent as (
    select investment_type_id as to_field
    from "dev"."dev_gold"."dim_investment_type"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


