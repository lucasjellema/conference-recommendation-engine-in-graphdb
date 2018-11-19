
create table people
(name varchar2 (50) not null primary key
);

create table sessions
(code varchar2(10) not null primary key
,title varchar2(200)
);

create table speakers
( session_code varchar2(10)
, speaker_name varchar2(50)
);

create table attendance
( session_code varchar2(10)
, attendee_name varchar2(50)
);

create table speaker_liking
( speaker_name varchar2(50)
, attendee_name varchar2(50)
);

