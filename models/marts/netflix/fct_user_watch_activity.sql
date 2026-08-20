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
    case
        when minutes_watched >= 50 then 'High'
        when minutes_watched >= 30 then 'Medium'
        else 'Low'
    end as watch_intensity,
    watched_date,
    minutes_watched

from {{ ref('int_user_watch_activity') }}