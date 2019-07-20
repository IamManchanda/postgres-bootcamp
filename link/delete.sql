DELETE FROM app_link
WHERE link_name LIKE 'B%'
RETURNING *;
