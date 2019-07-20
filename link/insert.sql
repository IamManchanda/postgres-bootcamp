INSERT INTO app_link (link_url, link_name)
	VALUES ('www.google.com', 'Google');

INSERT INTO app_link (link_url, link_name)
	VALUES 
        ('www.yahoo.com', 'Yahoo'),
	    ('www.bing.com', 'Bing'),
        ('www.amazon.com', 'Amazon');

INSERT INTO app_link_copy
	SELECT * 
	FROM app_link
	WHERE link_name = 'Bing';
    