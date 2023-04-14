.mode csv
.import courses.csv  courses_data_raw
.import students.csv students_data_raw
.import teachers.csv teachers_data_raw
.import sections.csv students_data_raw

INSERT INTO students (
    first_name,
    last_name, 
    email, 
    phone_number
)


INSERT INTO listings (id, url, name, body, host_name, host_since, 
                      neighborhood, property_type, accommodates, bathrooms, bedrooms, 
                      price, minimum_nights, maximum_nights, available)
SELECT id, listing_url, name, description, host_name, host_since,
       neighbourhood_cleansed, property_type, accommodates, bathrooms, bedrooms,
       price, minimum_nights, maximum_nights, has_availability
FROM listings_data_raw;

DROP TABLE listings_data_raw;