select  movie_id,
        date,   
        ticket_amount,
        total_earned as revenue,
        'NJ_002' as location
from {{ source("SILVER_SCREEN", "NJ_002") }}