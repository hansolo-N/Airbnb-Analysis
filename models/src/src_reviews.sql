WITH raw_reviews AS (
    SELECT * FROM {{source('airbnb','reviews')}}
)
SELECT
    LISTING_ID,
    DATE AS review_date

FROM raw_reviews