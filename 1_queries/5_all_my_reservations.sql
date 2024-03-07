SELECT reservations.id as id, properties.title as title, cost_per_night, start_date, avg(property_reviews.rating) as average_rating
FROM property_reviews
JOIN reservations ON reservations.id = property_reviews.reservation_id
JOIN properties ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, cost_per_night
ORDER BY start_date ASC
LIMIT 10;