
    
    

select
    channel_id as unique_field,
    count(*) as n_records

from "dev"."dev_gold"."dim_channel"
where channel_id is not null
group by channel_id
having count(*) > 1


