drop user mybatis cascade;

--create table mybatis.users (
--  user_id number(2) constraint user_userid_pk primary key,
--    user_name varchar2(12),
--    reg_date date);

--create table mybatis.posts (
--    post_id number(3) constraint post_postid_pk primary key,
--    post_title varchar2(60),
--    post_content varchar2(120),
--    user_id number(2) constraint post_userid_fk references mybatis.users(user_id));
    
--create table mybatis.addresses (
--    user_id number(2) constraint addr_userid_pk primary key
--                      constraint addr_userid_fk references mybatis.users(user_id),
--    address varchar2(30));
