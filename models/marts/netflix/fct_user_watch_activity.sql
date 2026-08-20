select
    watch_id,
    user_id,
    country,
    subscription_type,
    show_id,
    title,
    type,
    release_year,
    rating,
    watched_date,
    minutes_watched

from {{ ref('int_user_watch_activity') }}