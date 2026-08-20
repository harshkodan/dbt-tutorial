select
    wh.watch_id,
    wh.user_id,
    u.country,
    u.subscription_type,
    wh.show_id,
    t.title,
    t.type,
    t.release_year,
    t.rating,
    wh.watched_date,
    wh.minutes_watched

from {{ ref('stg_watch_history') }} wh

left join {{ ref('stg_users') }} u
    on wh.user_id = u.user_id

left join {{ ref('stg_titles') }} t
    on wh.show_id = t.show_id