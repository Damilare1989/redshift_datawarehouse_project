SELECT
    account_id,
    account_type
FROM "dev"."dev_gold"."dim_account"
where account_type not in ('Savings', 'Checking', 'Investment', 'Loan')