# Badoo.

DROP DATABASE IF EXISTS `Badoo`;
CREATE DATABASE `Badoo`;
USE `Badoo`;

# Users tbl.

DROP TABLE IF EXISTS `users`; 
CREATE TABLE `users` (
                     `id` 			BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
                     `firstname`	VARCHAR(20) DEFAULT NULL, 
                     `lastname` 	VARCHAR(20) DEFAULT NULL,
                     `email` 		VARCHAR(20)	DEFAULT NULL,
                     `created_at` 	DATETIME DEFAULT CURRENT_TIMESTAMP(),
			PRIMARY KEY 	(`id`),
			UNIQUE KEY 		 `email`(`email`),
			KEY 			 `users_frstnm_lstnm_idx`(`firstname`, `lastname`)
					 );
					

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('1', 'Gwen', 'Daugherty', 'deanna91@example.com', '2005-07-14 08:30:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('2', 'Celestino', 'Herzog', 'maya.hane@example.ne', '1978-03-10 10:48:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('3', 'Louisa', 'Sanford', 'iwuckert@example.org', '2012-06-04 04:36:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('4', 'Rolando', 'Hayes', 'leonie.rutherford@ex', '1980-01-06 07:33:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('5', 'Alana', 'Doyle', 'uharris@example.com', '1979-01-28 15:34:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('6', 'Carmella', 'Fay', 'wehner.katelin@examp', '1993-01-09 13:31:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('7', 'Eloise', 'Roberts', 'gcole@example.com', '1991-11-11 18:37:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('8', 'Hillary', 'Schumm', 'emoore@example.net', '2016-11-28 00:57:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('9', 'Roman', 'Macejkovic', 'otorp@example.org', '1971-02-14 16:04:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`) VALUES ('10', 'Loy', 'Keebler', 'easter.casper@exampl', '1980-02-16 02:09:15');
					
					
					
# Media Types tbl.
					
DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
						   `id` 		BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
						   `name`  		VARCHAR(20) DEFAULT NULL,
		    PRIMARY KEY		(`id`),
		    UNIQUE KEY 		(`id`)
                           );
                          
INSERT INTO `media_types` (`id`, `name`) VALUES ('1', 'jpg');
INSERT INTO `media_types` (`id`, `name`) VALUES ('2', 'bmp');
INSERT INTO `media_types` (`id`, `name`) VALUES ('3', 'gif');
INSERT INTO `media_types` (`id`, `name`) VALUES ('4', 'png');
INSERT INTO `media_types` (`id`, `name`) VALUES ('5', 'tiff');
INSERT INTO `media_types` (`id`, `name`) VALUES ('6', 'ico');

                          
# Media tbl.
                          
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`(
					`user_id`			BIGINT UNSIGNED NOT NULL,
					`media_type_id`		BIGINT UNSIGNED NOT NULL,
					`body`				TEXT DEFAULT NULL,
					`filename`			VARCHAR(255) DEFAULT NULL,	
					`size`				INT DEFAULT NULL,
					`metadata`			LONGTEXT DEFAULT NULL,
					`created_at` 		DATETIME DEFAULT CURRENT_TIMESTAMP(),
					`updated_at` 		DATETIME DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(), 
			KEY 		`md_user_id_fk` (`user_id`),
			KEY 		`md_media_type_id_fk` (`media_type_id`),
			CONSTRAINT 	`md_user_id_fk` 	  FOREIGN KEY (`user_id`) 		REFERENCES `users` (`id`),
			CONSTRAINT 	`md_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
					 );
					
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', 'Similique eveniet ratione sit saepe libero modi nisi. Qui qui et quisquam. Quibusdam voluptates nesciunt commodi blanditiis.', 'vel', 650308, NULL, '2015-07-06 23:52:40', '2018-06-01 00:25:58');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', 'Dolores corrupti hic et velit. Fuga et dolores corrupti dolorem enim fugiat officiis. Eligendi mollitia velit adipisci quia aliquam expedita autem odio.', 'corporis', 1, NULL, '2014-05-05 17:36:16', '2009-01-29 09:58:19');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', 'Rerum id id id. Veniam officiis aut veniam. Quas corrupti qui nulla consequatur aspernatur. Odio iusto quia aut nam sunt provident. Alias esse dolor et quas atque eum.', 'sit', 976, NULL, '1993-05-18 23:33:37', '1976-04-12 09:53:44');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', 'Non voluptates hic optio ex fuga voluptatem fugit. Ut quam eos quos ratione. Aliquid quos quaerat dolores laudantium necessitatibus tenetur. Aut aut sed fugiat repellat cum.', 'in', 64032, NULL, '2012-11-24 11:01:57', '2015-03-05 10:11:43');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', 'Ut qui quo commodi pariatur et. Voluptate qui iure non quis animi dolorem quisquam aut. Eius aperiam aut quibusdam blanditiis non.', 'molestiae', 318070, NULL, '2007-01-26 05:04:58', '1978-07-24 04:41:13');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', 'Iusto et quae alias autem. Atque nostrum commodi necessitatibus fugit voluptates expedita dicta.', 'est', 79051883, NULL, '2015-10-08 13:58:51', '1980-11-28 23:07:16');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '2', 'Non minima tenetur eum maxime qui velit recusandae. Quia nostrum consequatur dolores aliquid praesentium velit. Autem quis dolorem voluptates et et. Nostrum doloremque amet voluptas eos itaque.', 'itaque', 29071770, NULL, '2014-11-08 01:28:15', '2018-06-02 17:46:53');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '6', 'Voluptas reiciendis et at saepe fugit. Perspiciatis rerum qui est consectetur architecto excepturi sunt. Molestiae ratione et odit iste perspiciatis consequatur voluptatem minus.', 'quam', 599171, NULL, '2020-06-06 23:40:53', '1982-11-09 06:28:25');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '3', 'Qui sit nemo aut inventore voluptas aperiam quam. Minus quasi quibusdam mollitia laborum qui tenetur nulla. Aut dolorem autem illo accusamus quos voluptatem et ipsum.', 'quis', 400, NULL, '1991-02-15 11:50:22', '1979-11-24 00:24:57');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '1', 'Non est velit voluptas illo et repudiandae laudantium. Ducimus in quasi incidunt commodi. Ad commodi mollitia itaque quaerat ut velit accusantium. Minima consequatur reiciendis blanditiis fuga dolore.', 'atque', 0, NULL, '2007-10-27 16:21:39', '1998-10-24 05:15:29');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', 'Maiores rem qui repudiandae est quia sunt molestiae. Consequatur aliquid maxime ipsam qui omnis doloribus similique reiciendis. Atque et ad harum ipsa nesciunt voluptatibus. Veniam porro architecto quia et qui natus. Qui repellendus culpa doloribus praesentium.', 'rem', 763, NULL, '2003-07-13 02:19:56', '1994-05-20 06:34:50');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', 'Praesentium ullam dolorem tenetur adipisci at illo. Sint neque minima minus ut eveniet ut. Tempore aspernatur laudantium quam ipsam.', 'commodi', 682744, NULL, '2010-10-23 08:18:02', '1992-02-04 03:46:45');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', 'Blanditiis sit quibusdam repudiandae et molestiae. Labore ad commodi odit. Sint tenetur voluptatem ea deleniti qui.', 'ut', 0, NULL, '1977-02-09 14:54:58', '1995-07-06 03:05:15');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', 'Aliquid autem quasi eos modi doloribus. Quis nihil exercitationem provident quibusdam. Numquam quisquam molestiae autem voluptates.', 'doloribus', 0, NULL, '1985-11-04 18:47:09', '1989-04-04 22:39:45');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', 'Rerum hic numquam a dolore ipsum dicta. Voluptatem facilis quidem ipsa. Doloribus dolorum et consequatur et sint ut consequuntur. Voluptates commodi consequatur dolor mollitia doloribus.', 'ipsum', 220101109, NULL, '1980-02-02 00:15:52', '1971-05-20 04:50:01');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', 'Debitis labore provident numquam non. Delectus inventore aut quasi eius quasi eius dignissimos. Adipisci cumque laudantium quae velit non sit dignissimos. Labore quo quo et ut animi.', 'quo', 5054681, NULL, '2000-04-11 18:33:01', '2014-03-31 04:15:23');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '2', 'Quos mollitia sed accusantium nobis. Perspiciatis nihil suscipit veniam libero non amet. Eum error voluptatum unde exercitationem unde.', 'exercitationem', 11488, NULL, '1972-02-20 10:51:56', '1986-03-20 09:55:31');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '1', 'Dolor qui fugiat aliquam alias eum quis est. Aut molestias minus dolorum est. Atque eveniet repellendus reiciendis illo. Non fugiat quia ut aut omnis et.', 'explicabo', 0, NULL, '1989-12-24 21:19:01', '2019-11-08 08:49:51');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '5', 'Atque qui est neque est odio. Autem id eius qui placeat alias. Reiciendis id facilis consectetur odio asperiores reprehenderit laudantium. Omnis sunt ut ut dicta veniam.', 'dolorem', 7575, NULL, '2017-01-21 20:47:18', '1975-01-24 20:05:12');
INSERT INTO `media` (`user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '4', 'Delectus enim ipsum itaque atque fugit enim. Laboriosam maxime consequatur maxime fugit. Consectetur ea praesentium dolore harum quo autem rem provident.', 'sit', 82, NULL, '2020-01-24 19:01:03', '2011-05-12 20:18:14');

					
					
			
# Profiles tbl.
					
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
						`user_id`    BIGINT UNSIGNED NOT NULL,
						`gender` 	 CHAR(1) DEFAULT NULL,
						`birthday`   DATE DEFAULT NULL,
						`photo_id`   BIGINT UNSIGNED,
						`country_id` BIGINT UNSIGNED NOT NULL,
						`city_id` 	 BIGINT UNSIGNED NOT NULL,
						`created_at` DATETIME DEFAULT CURRENT_TIMESTAMP(),
			KEY 		`prfls_user_id_fk` (`user_id`),
			KEY 		`prfls_photo_id_fk` (`photo_id`),
			KEY 		`prfls_country_id_fk` (`country_id`),
			KEY 		`prfls_city_id_fk` (`city_id`),
			CONSTRAINT  `prfls_user_id_fk` 	  FOREIGN KEY (`user_id`) 	 REFERENCES `users` (`id`)     ON UPDATE CASCADE,
			CONSTRAINT  `prfls_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
			CONSTRAINT  `prfls_city_id_fk`	  FOREIGN KEY (`city_id`)	 REFERENCES `cities` (`id`)    ON UPDATE CASCADE
						);
					
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('1', 'm', '2006-04-24', '13','21',  '50', '2010-12-02 00:04:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('2', 'm', '2002-12-11','50',  '12', '1', '2020-08-08 02:35:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('3', 'f', '1992-07-30', '54', '23', '7',  '1989-02-11 11:40:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('4', 'f', '1989-01-18', '34', '14', '8',  '1985-04-26 17:01:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('5', 'f', '2005-11-27', '55', '22', '5',  '2002-04-21 08:23:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('6', 'f', '1974-11-20', '46', '6', '6',  '1975-10-11 22:19:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('7', 'm', '1978-11-18', '23', '10', '7',  '1978-05-07 05:43:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('8', 'f', '1981-01-19', '30', '9', '10',  '2012-08-07 19:03:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('9', 'f', '1993-11-06', '50', '7', '3', '1977-04-08 23:35:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `country_id`, `city_id`, `created_at`) VALUES ('10', 'f', '1995-06-13', '18', '5', '6',  '1991-09-16 04:46:21');

# Premium users tbl.
					
DROP TABLE IF EXISTS `premium_users`;
CREATE TABLE `premium_users` (
							 `user_id`		  BIGINT UNSIGNED NOT NULL,
							 `premium_status` BOOLEAN NOT NULL DEFAULT 0,
							 `updated_at` 	  DATETIME ON UPDATE CURRENT_TIMESTAMP(),
			KEY 	   `prmm_user_id_fk` (`user_id`),
			CONSTRAINT `prmm_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
							 );
							
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('1', 1, '2020-05-25 09:41:28');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('2', 1, '2005-05-29 15:27:59');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('3', 0, '1979-01-24 10:25:45');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('4', 0, '1976-02-04 09:59:24');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('5', 0, '1982-12-27 16:14:36');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('6', 1, '1992-03-06 06:05:52');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('7', 1, '2010-12-28 20:55:11');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('8', 1, '2010-10-12 01:15:14');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('9', 1, '1974-06-14 13:32:26');
INSERT INTO `premium_users` (`user_id`, `premium_status`, `updated_at`) VALUES ('10', 0, '1979-01-27 00:37:53');
							
# Likes tbl.
							
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
				     `id` 			BIGINT UNSIGNED NOT NULL,
				     `from_user_id` BIGINT UNSIGNED NOT NULL,
				     `to_user_id`   BIGINT UNSIGNED NOT NULL,
				     `created_at`   DATETIME DEFAULT CURRENT_TIMESTAMP(),
					 `updated_at`   DATETIME DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
			PRIMARY KEY (`id`),
			KEY 		 `lks_from_user_id_fk` (`from_user_id`),
			KEY			 `lks_to_user_id_fk` (`to_user_id`),
			CONSTRAINT 	 `lks_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
			CONSTRAINT   `lks_to_user_id_fk`   FOREIGN KEY (`to_user_id`)   REFERENCES `users` (`id`)
		    		  );

INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('1', '1', '6', '1992-03-14 20:52:52', '1970-09-20 13:03:32');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('2', '3', '2', '2011-08-23 14:41:46', '2017-04-24 12:15:45');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('3', '6', '1', '2008-09-07 18:49:42', '2011-10-21 03:19:09');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('4', '2', '3', '1987-01-11 07:55:56', '1983-01-29 21:52:00');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('5', '4', '7', '1980-02-18 02:20:01', '2002-10-29 14:44:53');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('6', '8', '9', '1986-06-11 16:47:22', '1992-09-23 12:23:00');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('7', '5', '3', '1999-04-07 03:52:22', '1971-02-04 15:21:23');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('8', '2', '6', '1993-05-04 00:23:44', '1985-01-14 06:07:41');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('9', '7', '3', '2000-02-04 14:07:26', '1988-04-11 01:43:36');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('10', '4', '1', '1999-09-14 04:27:04', '1994-02-09 23:01:54');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('11', '3', '7', '2011-05-25 07:52:52', '2012-12-28 22:52:57');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('12', '8', '9', '2019-07-17 20:07:17', '1992-02-16 21:38:25');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('13', '9', '6', '1978-10-15 15:05:22', '1971-03-09 08:20:58');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('14', '10', '6', '1992-11-30 18:31:11', '1998-02-15 14:14:33');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('15', '5', '8', '2013-05-25 03:53:08', '1974-02-04 21:18:57');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('16', '7', '3', '1980-09-20 09:36:06', '2008-08-23 21:05:07');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('17', '10', '1', '1971-12-05 17:19:49', '2005-11-26 16:12:59');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('18', '5', '6', '1978-01-30 23:54:21', '2010-11-20 17:55:25');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('19', '9', '10', '2006-11-03 22:09:52', '1974-05-20 21:05:31');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('20', '6', '5', '2005-01-06 14:47:02', '1977-07-14 19:05:12');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('21', '5', '6', '1995-07-30 19:11:03', '1986-06-11 06:46:47');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('22', '7', '10', '1973-05-29 18:24:32', '2020-03-13 20:19:28');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('23', '7', '5', '1991-04-30 03:33:56', '2000-07-06 04:47:29');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('24', '7', '6', '2002-08-16 14:12:09', '1976-04-11 09:08:59');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('25', '3', '9', '1985-07-03 19:03:43', '2007-01-20 23:29:20');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('26', '2', '1', '2017-12-21 23:28:37', '1999-04-14 16:29:36');
INSERT INTO `likes` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES ('27', '10', '6', '2014-04-10 19:09:11', '1980-03-14 10:13:59');


		    		 
# Countries tbl.
	
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
						 `id` 	BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
						 `name` VARCHAR(20) NOT NULL,
			PRIMARY KEY (`id`),
	        UNIQUE KEY   `id`(`id`),
	        KEY 	     `cntrs_nm_idx`(`name`)
	        			 );
	        			
INSERT INTO `countries` (`id`, `name`) VALUES ('46', 'Albania');
INSERT INTO `countries` (`id`, `name`) VALUES ('62', 'Algeria');
INSERT INTO `countries` (`id`, `name`) VALUES ('36', 'Antarctica (the terr');
INSERT INTO `countries` (`id`, `name`) VALUES ('60', 'Argentina');
INSERT INTO `countries` (`id`, `name`) VALUES ('34', 'Aruba');
INSERT INTO `countries` (`id`, `name`) VALUES ('51', 'Belgium');
INSERT INTO `countries` (`id`, `name`) VALUES ('33', 'Benin');
INSERT INTO `countries` (`id`, `name`) VALUES ('1', 'Bosnia and Herzegovi');
INSERT INTO `countries` (`id`, `name`) VALUES ('43', 'Botswana');
INSERT INTO `countries` (`id`, `name`) VALUES ('26', 'Brazil');
INSERT INTO `countries` (`id`, `name`) VALUES ('14', 'Burkina Faso');
INSERT INTO `countries` (`id`, `name`) VALUES ('17', 'Cambodia');
INSERT INTO `countries` (`id`, `name`) VALUES ('8', 'Chile');
INSERT INTO `countries` (`id`, `name`) VALUES ('7', 'Christmas Island');
INSERT INTO `countries` (`id`, `name`) VALUES ('50', 'Cocos (Keeling) Isla');
INSERT INTO `countries` (`id`, `name`) VALUES ('30', 'Croatia');
INSERT INTO `countries` (`id`, `name`) VALUES ('22', 'Denmark');
INSERT INTO `countries` (`id`, `name`) VALUES ('55', 'Djibouti');
INSERT INTO `countries` (`id`, `name`) VALUES ('65', 'Dominican Republic');
INSERT INTO `countries` (`id`, `name`) VALUES ('61', 'Estonia');
INSERT INTO `countries` (`id`, `name`) VALUES ('21', 'Fiji');
INSERT INTO `countries` (`id`, `name`) VALUES ('44', 'Finland');
INSERT INTO `countries` (`id`, `name`) VALUES ('6', 'French Polynesia');
INSERT INTO `countries` (`id`, `name`) VALUES ('47', 'French Southern Terr');
INSERT INTO `countries` (`id`, `name`) VALUES ('59', 'Guatemala');
INSERT INTO `countries` (`id`, `name`) VALUES ('45', 'Heard Island and McD');
INSERT INTO `countries` (`id`, `name`) VALUES ('56', 'Hungary');
INSERT INTO `countries` (`id`, `name`) VALUES ('4', 'Iceland');
INSERT INTO `countries` (`id`, `name`) VALUES ('39', 'Iraq');
INSERT INTO `countries` (`id`, `name`) VALUES ('63', 'Isle of Man');
INSERT INTO `countries` (`id`, `name`) VALUES ('53', 'Israel');
INSERT INTO `countries` (`id`, `name`) VALUES ('66', 'Jamaica');
INSERT INTO `countries` (`id`, `name`) VALUES ('69', 'Jersey');
INSERT INTO `countries` (`id`, `name`) VALUES ('48', 'Jordan');
INSERT INTO `countries` (`id`, `name`) VALUES ('2', 'Kiribati');
INSERT INTO `countries` (`id`, `name`) VALUES ('40', 'Korea');
INSERT INTO `countries` (`id`, `name`) VALUES ('15', 'Kuwait');
INSERT INTO `countries` (`id`, `name`) VALUES ('31', 'Lao Peoples Democra');
INSERT INTO `countries` (`id`, `name`) VALUES ('35', 'Liechtenstein');
INSERT INTO `countries` (`id`, `name`) VALUES ('9', 'Luxembourg');
INSERT INTO `countries` (`id`, `name`) VALUES ('42', 'Malawi');
INSERT INTO `countries` (`id`, `name`) VALUES ('24', 'Maldives');
INSERT INTO `countries` (`id`, `name`) VALUES ('28', 'Marshall Islands');
INSERT INTO `countries` (`id`, `name`) VALUES ('18', 'Mauritania');
INSERT INTO `countries` (`id`, `name`) VALUES ('29', 'Mauritius');
INSERT INTO `countries` (`id`, `name`) VALUES ('11', 'Monaco');
INSERT INTO `countries` (`id`, `name`) VALUES ('49', 'Mongolia');
INSERT INTO `countries` (`id`, `name`) VALUES ('38', 'Namibia');
INSERT INTO `countries` (`id`, `name`) VALUES ('19', 'Nauru');
INSERT INTO `countries` (`id`, `name`) VALUES ('64', 'Netherlands Antilles');
INSERT INTO `countries` (`id`, `name`) VALUES ('20', 'New Zealand');
INSERT INTO `countries` (`id`, `name`) VALUES ('37', 'Palestinian Territor');
INSERT INTO `countries` (`id`, `name`) VALUES ('10', 'Paraguay');
INSERT INTO `countries` (`id`, `name`) VALUES ('12', 'Peru');
INSERT INTO `countries` (`id`, `name`) VALUES ('54', 'Saint Kitts and Nevi');
INSERT INTO `countries` (`id`, `name`) VALUES ('16', 'Saudi Arabia');
INSERT INTO `countries` (`id`, `name`) VALUES ('13', 'Seychelles');
INSERT INTO `countries` (`id`, `name`) VALUES ('41', 'Slovakia (Slovak Rep');
INSERT INTO `countries` (`id`, `name`) VALUES ('32', 'Svalbard & Jan Mayen');
INSERT INTO `countries` (`id`, `name`) VALUES ('67', 'Tajikistan');
INSERT INTO `countries` (`id`, `name`) VALUES ('25', 'Thailand');
INSERT INTO `countries` (`id`, `name`) VALUES ('3', 'Ukraine');
INSERT INTO `countries` (`id`, `name`) VALUES ('68', 'United Kingdom');
INSERT INTO `countries` (`id`, `name`) VALUES ('70', 'United States Minor ');
INSERT INTO `countries` (`id`, `name`) VALUES ('5', 'United States Virgin');
INSERT INTO `countries` (`id`, `name`) VALUES ('27', 'Uzbekistan');
INSERT INTO `countries` (`id`, `name`) VALUES ('23', 'Vanuatu');
INSERT INTO `countries` (`id`, `name`) VALUES ('57', 'Vietnam');
INSERT INTO `countries` (`id`, `name`) VALUES ('52', 'Yemen');
INSERT INTO `countries` (`id`, `name`) VALUES ('58', 'Zambia');
	        			
# Cities tbl.
	        			
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
					  `id` 	 BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
					  `name` VARCHAR(20) NOT NULL,
			PRIMARY KEY (`id`),
	        UNIQUE KEY   `id`(`id`),
	        KEY 	     `cts_nm_idx`(`name`)
	        			 );
	        			
INSERT INTO `cities` (`id`, `name`) VALUES ('26', 'Angusfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('46', 'Armandomouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('23', 'Boganborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('14', 'Carmellachester');
INSERT INTO `cities` (`id`, `name`) VALUES ('18', 'Charleneborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('16', 'Christianville');
INSERT INTO `cities` (`id`, `name`) VALUES ('66', 'Deckowview');
INSERT INTO `cities` (`id`, `name`) VALUES ('33', 'East Alan');
INSERT INTO `cities` (`id`, `name`) VALUES ('44', 'East Art');
INSERT INTO `cities` (`id`, `name`) VALUES ('49', 'East Chandlerbury');
INSERT INTO `cities` (`id`, `name`) VALUES ('55', 'East Gunner');
INSERT INTO `cities` (`id`, `name`) VALUES ('27', 'East Keithfort');
INSERT INTO `cities` (`id`, `name`) VALUES ('31', 'East Oma');
INSERT INTO `cities` (`id`, `name`) VALUES ('11', 'East Riverborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('15', 'East Seamuston');
INSERT INTO `cities` (`id`, `name`) VALUES ('61', 'Erafurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('29', 'Fadelchester');
INSERT INTO `cities` (`id`, `name`) VALUES ('12', 'Fisherport');
INSERT INTO `cities` (`id`, `name`) VALUES ('56', 'Gottliebbury');
INSERT INTO `cities` (`id`, `name`) VALUES ('39', 'Grimeschester');
INSERT INTO `cities` (`id`, `name`) VALUES ('54', 'Johnathonshire');
INSERT INTO `cities` (`id`, `name`) VALUES ('50', 'Kirstenfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('32', 'Lake Elinorfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('9', 'Lake Korybury');
INSERT INTO `cities` (`id`, `name`) VALUES ('35', 'Lake Larissa');
INSERT INTO `cities` (`id`, `name`) VALUES ('5', 'Lake Verna');
INSERT INTO `cities` (`id`, `name`) VALUES ('42', 'Lubowitzberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('45', 'Mohrview');
INSERT INTO `cities` (`id`, `name`) VALUES ('62', 'Monroeport');
INSERT INTO `cities` (`id`, `name`) VALUES ('36', 'Muellerhaven');
INSERT INTO `cities` (`id`, `name`) VALUES ('22', 'Napoleonview');
INSERT INTO `cities` (`id`, `name`) VALUES ('52', 'New Claudshire');
INSERT INTO `cities` (`id`, `name`) VALUES ('41', 'New Leanntown');
INSERT INTO `cities` (`id`, `name`) VALUES ('48', 'New Maribel');
INSERT INTO `cities` (`id`, `name`) VALUES ('65', 'New Mireille');
INSERT INTO `cities` (`id`, `name`) VALUES ('53', 'New Ramon');
INSERT INTO `cities` (`id`, `name`) VALUES ('20', 'North Clevelandtown');
INSERT INTO `cities` (`id`, `name`) VALUES ('8', 'North Dustyland');
INSERT INTO `cities` (`id`, `name`) VALUES ('1', 'North Emmy');
INSERT INTO `cities` (`id`, `name`) VALUES ('57', 'North Enoch');
INSERT INTO `cities` (`id`, `name`) VALUES ('68', 'North Irma');
INSERT INTO `cities` (`id`, `name`) VALUES ('6', 'North Isaacberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('4', 'North Judy');
INSERT INTO `cities` (`id`, `name`) VALUES ('67', 'North Sigurdton');
INSERT INTO `cities` (`id`, `name`) VALUES ('3', 'North Tiannastad');
INSERT INTO `cities` (`id`, `name`) VALUES ('25', 'North Yoshiko');
INSERT INTO `cities` (`id`, `name`) VALUES ('70', 'Parkerville');
INSERT INTO `cities` (`id`, `name`) VALUES ('7', 'Port Angelica');
INSERT INTO `cities` (`id`, `name`) VALUES ('37', 'Port Chloehaven');
INSERT INTO `cities` (`id`, `name`) VALUES ('21', 'Port Ines');
INSERT INTO `cities` (`id`, `name`) VALUES ('59', 'Port Nashville');
INSERT INTO `cities` (`id`, `name`) VALUES ('13', 'Port Osbaldoside');
INSERT INTO `cities` (`id`, `name`) VALUES ('43', 'Port Roscoe');
INSERT INTO `cities` (`id`, `name`) VALUES ('63', 'Reillyhaven');
INSERT INTO `cities` (`id`, `name`) VALUES ('60', 'Runolfssonmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('2', 'Selmerport');
INSERT INTO `cities` (`id`, `name`) VALUES ('47', 'Sengershire');
INSERT INTO `cities` (`id`, `name`) VALUES ('24', 'Smithamfort');
INSERT INTO `cities` (`id`, `name`) VALUES ('34', 'South Dewittstad');
INSERT INTO `cities` (`id`, `name`) VALUES ('40', 'South Imanimouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('30', 'South Keon');
INSERT INTO `cities` (`id`, `name`) VALUES ('17', 'South Terrancemouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('28', 'Verdiestad');
INSERT INTO `cities` (`id`, `name`) VALUES ('19', 'Volkmanberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('64', 'Watersstad');
INSERT INTO `cities` (`id`, `name`) VALUES ('69', 'Wehnerland');
INSERT INTO `cities` (`id`, `name`) VALUES ('58', 'West Akeem');
INSERT INTO `cities` (`id`, `name`) VALUES ('10', 'West Brendon');
INSERT INTO `cities` (`id`, `name`) VALUES ('51', 'West Jayceeborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('38', 'Wizaport');

	   
# Credits tbl.
	        			
DROP TABLE IF EXISTS `user_credits`;
CREATE TABLE `user_credits` (
				     		`user_id`    BIGINT UNSIGNED NOT NULL,
				     		`credits`    BIGINT UNSIGNED NOT NULL,
				     		`created_at` DATETIME DEFAULT CURRENT_TIMESTAMP(),
					 		`updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
			PRIMARY KEY (`credits`),
			KEY 		 `usr_crdts_user_id_fk` (`user_id`),
			CONSTRAINT 	 `usr_crdts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
		    		  );

INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('6', '4', '2018-09-18 16:27:41', '2016-08-13 05:52:49');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('8', '30', '1998-08-03 19:24:15', '1979-11-08 23:15:12');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('7', '84', '1985-06-27 19:29:39', '2006-10-30 11:46:28');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('4', '446', '1994-05-14 10:49:29', '1980-03-28 21:58:30');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('9', '4030', '1980-09-13 00:36:00', '2009-01-20 06:45:28');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('5', '40996', '1997-06-18 21:08:51', '1971-06-10 03:02:01');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('2', '136963', '2021-06-23 04:54:39', '1981-05-10 21:54:04');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('3', '295128', '2014-11-29 05:51:59', '1990-07-15 18:31:50');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('1', '442345', '1989-01-18 07:04:16', '1972-01-27 15:49:40');
INSERT INTO `user_credits` (`user_id`, `credits`, `created_at`, `updated_at`) VALUES ('10', '760223', '2013-12-04 23:32:40', '1977-11-28 22:15:52');


# Online St./ Offline Status tbl. 
		    		 
DROP TABLE IF EXISTS `users_online_offline`;
CREATE TABLE `user_online_offline` (
				     			   `user_id` 	 BIGINT UNSIGNED NOT NULL,
				     			   `conn_status` BOOLEAN NOT NULL DEFAULT 0,
					 			   `updated_at`  DATETIME DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
			KEY 	   `usr_onln_offln_user_id_fk` (`user_id`),
			CONSTRAINT `usr_onln_offln_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
		    		  ); 
		    		 
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('1', 0, '1988-03-13 14:30:02');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('2', 0, '2018-03-28 04:31:02');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('3', 1, '1994-03-03 16:04:56');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('4', 0, '1993-06-01 18:05:34');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('5', 0, '2007-04-12 08:37:25');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('6', 1, '1975-01-25 10:04:59');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('7', 0, '1988-07-04 09:36:30');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('8', 0, '2009-06-22 16:05:28');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('9', 0, '2001-12-20 12:23:27');
INSERT INTO `user_online_offline` (`user_id`, `conn_status`, `updated_at`) VALUES ('10', 0, '1976-04-03 11:18:50');

		    		  
# Profiles Anketas tbl.
		    		 
DROP TABLE IF EXISTS `profiles_anketas`;
CREATE TABLE `profiles_anketas` (
				     			`user_id`			 	BIGINT UNSIGNED NOT NULL,
				     		    `alco_relationship` 	BOOLEAN NOT NULL DEFAULT 0,	
				     		    `sex_orient` 		 	TEXT DEFAULT NULL,
				     		    `family_status` 	 	TEXT DEFAULT NULL,
				     			`interests` 		 	TEXT DEFAULT NULL,
				     			`about` 			 	TEXT DEFAULT NULL,
				     			`growth` 			 	REAL UNSIGNED,	
				     			`school` 			 	TEXT DEFAULT NULL,
				     			`workplace` 		 	TEXT DEFAULT NULL,
				     			`position_work` 	 	TEXT DEFAULT NULL,
				     			`smoking_relationship`  BOOLEAN  DEFAULT 0,
				     			`children` 			    BOOLEAN  DEFAULT 0,
				     			`zodiaq` 				TEXT DEFAULT NULL,
				     			`pets` 				    TEXT DEFAULT NULL,
				     			`religion` 			    TEXT DEFAULT NULL,
			 KEY 		`prfls_ankts_user_id_fk` (`user_id`),
			 CONSTRAINT `prfls_ankts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
				     			 );
				     			 
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('1', 0, ' metero', 'married', 'Pariatur eligendi eveniet assumenda dolorum magnam repellat iste. Et voluptas possimus et molestiae impedit.', 'Distinctio eos sit a et ullam adipisci corporis at. Nemo nobis ut quidem aperiam.', '189999.32950883', 'Deckow Causeway', 'Officia optio nulla corporis nemo aut quis. Nesciunt ut velit dolorum voluptatem modi.', 'Explicabo expedita dolores blanditiis facere et sit est.', 1, 1, 'Capricorn', 'Quia aut dolorum quibusdam est qui consequuntur. Sequi delectus aut dolore aliquam reiciendis.', 'Catholicism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('2', 1, ' bi', ' single', 'Adipisci et reprehenderit doloribus ex perspiciatis. Libero nesciunt accusantium qui et aut nam laboriosam non. Fuga qui et quia est dolorum.', 'Dolor corporis tenetur doloribus nihil molestiae eveniet voluptatibus. Corrupti veritatis reiciendis qui odit rerum laborum.', '91.211347324406', 'Raynor Path', 'Delectus quia modi asperiores qui ipsum doloribus. Non consequuntur ab hic non possimus.', 'Tempora deserunt in autem ut molestiae. Ut quae fugit exercitationem iure quibusdam omnis labore.', 0, 0, 'Libra', 'Aut saepe saepe voluptates reiciendis. Id incidunt voluptatem provident animi non.', 'Buddhism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('3', 0, ' lesbian', 'married', 'Dolor et voluptatem enim ad quis eveniet enim possimus. Impedit rem temporibus et sit.', 'Maxime et ducimus voluptas dolores rerum possimus. Ut vero quam quia qui maiores. Et aliquid sit rerum vel architecto velit.', '408072.84638771', 'Justice Track', 'Possimus nesciunt nihil temporibus vel sequi quisquam dolor non.', 'Atque fugit non excepturi ut modi.', 1, 1, 'Pisces', 'Officia quaerat sint quia earum distinctio.', 'Islam');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('4', 0, ' metero', ' single', 'Consequatur eos quam error. Voluptas quae debitis mollitia. Harum illum error nobis sed voluptate molestiae ipsam.', 'Provident qui provident voluptatem iste et est consequuntur. Qui ut voluptatem blanditiis autem ut accusamus.', '10141684.197293', 'Frami Stravenue', 'Voluptatem dignissimos maiores quam et voluptas modi. Enim maxime ullam culpa dolor voluptas.', 'Consequuntur similique esse ipsa voluptas unde. Nihil aspernatur ut aut nihil.', 0, 0, 'Aries', 'Et distinctio corrupti eius eum nihil.', 'Orthodoxy');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('5', 0, 'getero', 'married', 'Id alias sit ea iusto ex porro molestiae. Deleniti alias minima quis consequatur excepturi.', 'Dignissimos sed harum est ea. Iste minima deserunt qui impedit. Ipsum quis facilis ut quia ab.', '137.53512634781', 'Ruecker Points', 'Dignissimos odit repellat et quisquam id.', 'Magni at minima quia enim sed temporibus ut.', 1, 1, 'Gemini', 'Velit et ea rerum hic expedita.', 'Islam');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('6', 0, ' metero', ' single', 'Voluptates quos incidunt atque aut. Modi enim quibusdam beatae molestiae magni autem. Dolor a quisquam sed molestiae voluptatum suscipit.', 'Velit reiciendis atque et voluptates et. Natus modi voluptatem quia quas ut laborum molestias. Omnis ipsam sapiente quo amet.', '230.80505668689', 'Elsa River', 'Sed et corrupti et rem ea. Provident illo perferendis id.', 'Porro dignissimos omnis ea ea.', 0, 0, 'Gemini', 'Nobis sit minima iure accusantium. Qui eaque architecto harum et neque.', 'Buddhism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('7', 0, ' lesbian', 'married', 'Qui non facere nostrum molestiae nihil repellat. Quod magnam natus eum officia nobis repellendus.', 'Eius temporibus quia voluptatum est commodi at. Voluptatibus enim debitis quisquam sunt et est. Autem magnam id quis rerum quasi.', '265789.4009233', 'Greenfelder Ferry', 'Neque nisi ut voluptatem officia rerum eaque corrupti. Dolores maxime odio qui aut veritatis quos fuga.', 'Libero id tempora debitis porro placeat.', 1, 0, 'Libra', 'Perspiciatis et et sapiente iure. Ullam est et sed aliquam.', 'Buddhism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('8', 1, ' gay', 'married', 'Velit tempore enim asperiores enim aut deserunt. Aspernatur possimus consequatur libero expedita quia nisi excepturi. Corrupti voluptas tempora est.', 'Dolore cupiditate qui et maxime sed sed quidem iusto. Tempore rerum aperiam aliquid dolores consequuntur.', '158.57092311772', 'O\'Keefe Trail', 'Odio aliquam vel quae recusandae illo adipisci omnis. Sapiente alias voluptate doloremque assumenda.', 'Doloremque doloribus aliquam dolores dolorum in quae.', 0, 1, 'Sagittarius', 'Ea qui maxime rerum architecto. Soluta fuga sunt aperiam dolorum et.', 'Catholicism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('9', 0, ' lesbian', ' single', 'Similique non velit nobis porro voluptas facilis modi tempora. Voluptatem quis magni vel quo voluptatem. Et nam voluptatem autem quos.', 'Doloribus illum distinctio dolorem sed. Debitis non voluptatum nostrum consequatur.', '34603125.234682', 'Jayne Hollow', 'Veniam ut dolorem omnis unde eius dolores optio sunt. Et rem dolorum et molestias dolor quo aut.', 'Quia itaque est mollitia vero nihil dicta et.', 0, 1, 'Scorpio', 'Sint illo accusamus doloribus alias cum.', 'Catholicism');
INSERT INTO `profiles_anketas` (`user_id`, `alco_relationship`, `sex_orient`, `family_status`, `interests`, `about`, `growth`, `school`, `workplace`, `position_work`, `smoking_relationship`, `children`, `zodiaq`, `pets`, `religion`) VALUES ('10', 0, ' pan', ' single', 'Quae necessitatibus et laborum et voluptas. Repellendus veniam labore eos inventore minima nihil. Est vel praesentium qui.', 'Nobis voluptatem aut aspernatur dolor. Voluptatum omnis dolorum sint quas tempore. Illo ipsa hic repudiandae voluptatem.', '115666.2951707', 'Weimann Ridges', 'Mollitia nam ex cumque quos qui et itaque. Omnis quo qui consequatur repellendus.', 'Nemo laudantium cum illum ut.', 0, 0, 'Aries', 'Qui fugit est tenetur repellendus tempore. Placeat reiciendis corrupti et illum sed et illum.', 'Islam');
