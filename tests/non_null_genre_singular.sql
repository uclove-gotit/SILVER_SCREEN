select * from {{ ref("mart_movies") }} where genre is null
