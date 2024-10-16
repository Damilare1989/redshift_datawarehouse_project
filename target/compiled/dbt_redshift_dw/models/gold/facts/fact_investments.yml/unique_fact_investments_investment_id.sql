
    
    

select
    investment_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."fact_investments"
where investment_id is not null
group by investment_id
having count(*) > 1


