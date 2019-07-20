CREATE TABLE app_link (
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_name VARCHAR(255) NOT NULL,
	link_description VARCHAR(255),
	link_rel VARCHAR(50)
);

CREATE TABLE app_link_copy (LIKE app_link);
