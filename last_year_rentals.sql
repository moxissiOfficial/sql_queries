SELECT
  customer.first_name,
  customer.last_name,
  address.address,
  address.postal_code,
  city.city,
  country.country
FROM
  customer
JOIN
  rental ON customer.customer_id = rental.customer_id
JOIN
  inventory ON rental.inventory_id = inventory.inventory_id
JOIN
  store ON inventory.store_id = store.store_id
JOIN
  address ON customer.address_id = address.address_id
JOIN
  city ON address.city_id = city.city_id
JOIN
  country ON city.country_id = country.country_id
WHERE
  DATE(rental.rental_date) < DATE('now','-1 year');