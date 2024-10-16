
    
    

select
    balance_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."fact_daily_balances"
where balance_id is not null
group by balance_id
having count(*) > 1


