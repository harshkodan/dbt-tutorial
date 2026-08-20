select
    watch_id,
    user_id,
    show_id,
    watched_date,
    minutes_watched
from {{ source('netflix_bronze', 'watch_history') }}