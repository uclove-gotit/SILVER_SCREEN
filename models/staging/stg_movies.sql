SELECT 
    movie_id,
    movie_title, 
    COALESCE (genre, 'unknown') as genre,
    studio
FROM {{ source('SILVER_SCREEN', 'movie_catalogue') }}