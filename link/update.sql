UPDATE app_link
SET link_description = 'Empty Description.';

UPDATE app_link
SET link_description = 'Name starts with A'
WHERE link_name LIKE 'A%';

UPDATE app_link
SET link_description = link_name;

UPDATE app_link
SET link_description = 'New Description'
WHERE link_id = 1
RETURNING *;

