create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`) VALUES ('Informatique')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item2', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
create table audiorecord_t (duration integer, pistes integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table book_t (isbn varchar(13), pages integer not null, id bigint not null, primary key (id)) engine=MyISAM
create table category_t (identifier bigint not null auto_increment, address varchar(255), name varchar(20), primary key (identifier)) engine=MyISAM
create table category_title_r (category_id bigint not null, title_id bigint not null) engine=MyISAM
create table item_t (inventory_id varchar(255) not null, status varchar(255) not null, title_id bigint, primary key (inventory_id)) engine=MyISAM
create table title_t (id bigint not null, author varchar(255), name varchar(255), publishedAt datetime, primary key (id)) engine=MyISAM
alter table audiorecord_t add constraint UK_3s5s15vv2okppm7ctmv7j2mog unique (duration)
alter table book_t add constraint UK_4l6a1uo1o4a0o2mqoijku7m75 unique (isbn)
alter table category_t add constraint UK_tcfc99fltg08hebxcch7ujvpv unique (name)
alter table audiorecord_t add constraint FKnhdlvxn7ryj0878vof532c0qo foreign key (id) references title_t (id)
alter table book_t add constraint FKjej7vvfh7sh1jjm8487od8sf0 foreign key (id) references title_t (id)
alter table category_title_r add constraint fk_category_id foreign key (title_id) references title_t (id)
alter table category_title_r add constraint fk_title_id foreign key (category_id) references category_t (identifier)
alter table item_t add constraint fk_title_id foreign key (title_id) references title_t (id)
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('1', 'Orsys', 'Hibernate with JPA')
INSERT INTO `library_db`.`title_t` (`id`, `author`, `name`) VALUES ('2', 'SMALS', 'Toplink')
INSERT INTO `library_db`.`category_t` (`name`, `address`) VALUES ('Informatique', 'Brussels')
INSERT INTO `library_db`.`item_t` (`inventory_id`, `status`,`title_id`) VALUES ('item1', "Available",1)
insert into category_title_r (category_id, title_id) values (1, 1)
