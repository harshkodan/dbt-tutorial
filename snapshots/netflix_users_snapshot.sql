{% snapshot netflix_users_snapshot %}

{{
    config(
        target_schema='netflix_silver',
        unique_key='user_id',
        strategy='check',
        check_cols=[
            'country',
            'subscription_type'
        ]
    )
}}

select
    user_id,
    country,
    signup_date,
    subscription_type

from {{ source('netflix_bronze', 'users') }}

{% endsnapshot %}