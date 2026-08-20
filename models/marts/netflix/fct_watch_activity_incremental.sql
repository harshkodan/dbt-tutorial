{{
    config(
        materialized='incremental',
        unique_key='watch_id'
    )
}}

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

{% if is_incremental() %}

where watched_date > (
    select coalesce(max(watched_date), '1900-01-01')
    from {{ this }}
)

{% endif %}