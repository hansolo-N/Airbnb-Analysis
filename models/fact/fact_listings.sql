WITH dim_listings AS (
    SELECT * FROM {{ref("dim_listings")}}
),
dim_reviews AS (
    SELECT * FROM {{ref("dim_reviews")}}
)
SELECT
    l.listing_id,
    l.host_id,
    l.host_name,
    l.nbhd_name,
    l.room_type,
    l.price,
    l.minimum_nights,
    l.days_avail_year,
    l.NUMBER_OF_REVIEWS_LTM,
    r.review_date
FROM
    dim_listings AS l

JOIN dim_reviews AS r

WHERE l.listing_id = r.listing_id