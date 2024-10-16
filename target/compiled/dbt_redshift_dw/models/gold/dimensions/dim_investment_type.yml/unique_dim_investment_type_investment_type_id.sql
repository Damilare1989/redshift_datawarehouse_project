
    
    

select
    investment_type_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."dim_investment_type"
where investment_type_id is not null
group by investment_type_id
having count(*) > 1


