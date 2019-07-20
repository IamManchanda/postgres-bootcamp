CREATE TABLE user_account (
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50) UNIQUE NOT NULL,
	user_password VARCHAR(50) NOT NULL,
	user_email VARCHAR(355) UNIQUE NOT NULL,
	user_created_on TIMESTAMP NOT NULL,
	user_last_login TIMESTAMP
);

CREATE TABLE user_role (
	role_id SERIAL PRIMARY KEY,
	role_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE user_account_role (
	user_id INTEGER NOT NULL,
	role_id INTEGER NOT NULL,
	grant_date TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(user_id, role_id),
	
	CONSTRAINT user_account_role_user_id_fkey 
		FOREIGN KEY (user_id)
		REFERENCES user_account (user_id)
		MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION,
	
	CONSTRAINT user_account_role_role_id_fkey 
		FOREIGN KEY (role_id)
		REFERENCES user_role (role_id)
		MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
);
