# Badoo.

USE Badoo;

# richest user request (credits).

SELECT MAX(uc.credits), u.firstname, u.lastname, u.email FROM user_credits uc 
INNER JOIN users u ON u.id = uc.user_id ;

# the most popular user request (likes).

SELECT id, firstname, lastname, email 
FROM   users 
WHERE id = (SELECT  l.to_user_id 
			FROM 	likes l 	
			ORDER BY (l.to_user_id) LIMIT 1);

# the most popular male person request (likes).

SELECT u.id, u.firstname, u.lastname, u.email, p.gender 
FROM   users u, profiles p 
WHERE u.id = (SELECT  l.to_user_id 
			FROM 	likes l 	
			ORDER BY (l.to_user_id) LIMIT 1)
AND p.gender = 'm' GROUP BY p.gender LIMIT 1;

# the most popular female person request (likes).

SELECT u.id, u.firstname, u.lastname, u.email, p.gender 
FROM   users u, profiles p 
WHERE u.id = (SELECT  l.to_user_id 
			  FROM 	likes l 	
			  ORDER BY (l.to_user_id) LIMIT 1)
AND p.gender = 'f' GROUP BY p.gender LIMIT 1;

# view of integration users+profiles request for full information.

DROP VIEW IF EXISTS users_profiles;
CREATE VIEW users_profiles AS 
(SELECT u.id, u.firstname, u.lastname, u.email, p.gender, p.birthday 
FROM users u, profiles p
WHERE u.id = p.user_id);

SELECT * FROM users_profiles;

# view of wealth (credits) of users order by credits reqest.

DROP VIEW IF EXISTS users_credits;
CREATE VIEW users_credits AS 
(SELECT u.id, u.firstname, u.lastname, u.email, uc.credits 
FROM users u, user_credits uc 
WHERE u.id = uc.user_id) ORDER BY uc.credits DESC;

SELECT * FROM users_credits;

# view of information about the number of likes per user request.

DROP VIEW IF EXISTS users_likes_get;
CREATE VIEW users_likes_get AS
(SELECT DISTINCT u.id, u.firstname, u.lastname, u.email, Count(l.to_user_id) - Count(DISTINCT l.to_user_id)
FROM users u, likes l
WHERE l.to_user_id = u.id
GROUP BY to_user_id)
;

SELECT * FROM users_likes_get;

# a trigger that, after adding each record to the 1st table, will log this event

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
				   `id` INT( 11 ) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
				   `msg` VARCHAR( 255 ) NOT NULL,
				   `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
				   `row_id` INT( 11 ) NOT NULL
				   );
				  
DELIMITER |
CREATE TRIGGER `users_tr_update_log` AFTER INSERT ON `users`
FOR EACH ROW BEGIN
INSERT INTO `log` SET msg = 'insert', row_id = NEW.id;
END;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('11', 'Gwen', 'Daugherty', 'fa91@example.com', '2005-07-14 08:30:06');

SELECT * FROM `log`;
