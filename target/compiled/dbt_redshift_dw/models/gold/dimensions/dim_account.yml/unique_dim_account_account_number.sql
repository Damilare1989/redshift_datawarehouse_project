
    
    

select
    account_number as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."dim_account"
where account_number is not null
group by account_number
having count(*) > 1


