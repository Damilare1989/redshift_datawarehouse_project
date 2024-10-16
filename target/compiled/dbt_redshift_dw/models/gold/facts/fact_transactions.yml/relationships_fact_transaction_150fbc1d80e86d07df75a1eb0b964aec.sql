
    
    

with child as (
    select transaction_type_id as from_field
    from "dev"."dev_gold"."fact_transactions"
    where transaction_type_id is not null
),

parent as (
    select transaction_type_id as to_field
    from "dev"."dev_gold"."dim_transaction_type"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


