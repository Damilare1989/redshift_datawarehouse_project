
    
    

select
    transaction_type_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."dim_transaction_type"
where transaction_type_id is not null
group by transaction_type_id
having count(*) > 1


