WITH src_reviews AS (
    SELECT * FROM {{ref('src_reviews')}}
)
SELECT
    LISTING_ID,
    REVIEW_DATE

FROM src_reviews