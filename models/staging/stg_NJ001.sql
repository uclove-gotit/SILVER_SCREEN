select  movie_id,
        timestamp as "DATE",   
        ticket_amount,
        transaction_total as revenue,
        'NJ_001' as location
from {{ source("SILVER_SCREEN", "NJ_001") }}