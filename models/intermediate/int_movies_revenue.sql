with transactions as (
select *
from {{ ref('stg_NJ001') }}
union all 
select * from {{ ref('stg_NJ002') }}
union all 
select * from {{ ref('stg_NJ003') }}
)

select  movie_id,
        location,
        date_trunc ('month',date) as transaction_month,
        sum (revenue) as revenue,
        sum (ticket_amount) as tickets_sold
from transactions
group by 1,2,3
order by 2,3 DESC