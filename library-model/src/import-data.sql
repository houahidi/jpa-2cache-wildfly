
-- INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`,`type`) VALUES ('1', 'Orsys', 'Hibernate with JPA','T');
-- INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`,`type`) VALUES ('2', 'SMALS', 'Toplink','T');

INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA');
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink');
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels');
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1);
-- INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1);
insert into category_title_r (category_id, title_id) values (1, 1);

