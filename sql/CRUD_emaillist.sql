
-- select
select no, first_name, last_name, email from email_list;

-- sequence
select email_list_no_seq.nextval from dual; -- 증가시킨값
select email_list_no_seq.currval from dual; -- 현재값

-- insert
insert into email_list values(1, '민정','김','kim@daum.net');
insert into email_list values(2, '민정','김','kim@naver.com');

insert into email_list values(email_list_no_seq.nextval, '민정','김','kim@naver.com');

-- transaction : insert, delete, update
-- commit , rollback

commit;

-- delete
delete from email_list where last_name='김';

rollback;

-- update
update email_list set last_name='김', first_name='둘리' where no=5;