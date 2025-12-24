
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.name AS customer_name,
    v.name as vehicle_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN vehicles v ON b.vehicle_id = v.vehicle_id;


SELECT v.vehicle_id, v.name, v.vehicle_type, v.model, v.registration_number, v.rental_price, v.availability_status as status
FROM vehicles as v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings as b
    WHERE b.vehicle_id = v.vehicle_id
);

SELECT v.vehicle_id, v.name, v.vehicle_type as type, v.model, v.registration_number, v.rental_price, v.availability_status as status
FROM vehicles as v
WHERE availability_status = 'available' AND vehicle_type = 'car';


SELECT 
    v.name,
    COUNT(b.booking_id) AS total_bookings
FROM vehicles as v
JOIN bookings as b ON v.vehicle_id = b.vehicle_id
GROUP BY v.vehicle_id, v.name
HAVING COUNT(b.booking_id) > 2;