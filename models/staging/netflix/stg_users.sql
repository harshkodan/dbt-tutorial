select
    user_id,
    country,
    signup_date,
    subscription_type
from {{ source('netflix_bronze', 'users') }}