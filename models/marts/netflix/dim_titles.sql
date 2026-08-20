select
    show_id,
    title,
    type,
    release_year,
    rating,
    country,
    date_added

from {{ ref('stg_titles') }}