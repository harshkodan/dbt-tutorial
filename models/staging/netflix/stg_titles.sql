with source_data as (

    select *
    from {{ source('netflix_bronze', 'titles') }}

)

select
    show_id,
    title,
    type,
    release_year,
    rating,
    country,
    date_added
from source_data