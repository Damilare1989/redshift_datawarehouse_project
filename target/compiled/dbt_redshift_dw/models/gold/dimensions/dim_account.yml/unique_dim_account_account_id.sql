
    
    

select
    account_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."dim_account"
where account_id is not null
group by account_id
having count(*) > 1


