insert into people
(name) values ('Luis Weir');

insert into people
(name) values ('Daniel Bryant');

insert into people
(name) values ('Lucas Jellema');

insert into people
(name) values ('John Miller');
insert into people
(name) values ('Adam Farley');
insert into people
(name) values ('Arun Gupta');

insert into sessions
(code, title)
values ('DEV4854','A Day in a Java Developer’s Life, with a Taste of Kubernetes');

insert into sessions
(code, title)
values ('DEV4976','50 Shades of Data: How, When, Why—Big, Relational, NoSQL, Elastic, Graph, Event');

insert into sessions
(code, title)
values ('DEV5349','Continuous Delivery with Containers and Java: Lessons Learned and Mistakes Made');

insert into sessions
(code, title)
values ('DEV4921','The Seven Deadly Sins of API Design');

insert into sessions
(code, title)
values ('TUT5283','AdoptOpenJDK: Lessons Learned from the New Build Farm for Java Itself');

insert into sessions
(code, title)
values ('DEV4979','Oracle Cloud Soaring: Live Demo of a Poly-Cloud Microservices Implementation');

insert into speakers
( session_code, speaker_name ) 
values
('DEV4979','Lucas Jellema');


insert into speakers
( session_code, speaker_name ) 
values
('DEV4979','Luis Weir');


insert into speakers
( session_code, speaker_name ) 
values
('DEV4976','Lucas Jellema');


insert into speakers
( session_code, speaker_name ) 
values
('TUT5283','Daniel Bryant');


insert into speakers
( session_code, speaker_name ) 
values
('TUT5283','Adam Farley');

insert into speakers
( session_code, speaker_name ) 
values
('DEV5349','Daniel Bryant');

insert into speakers
( session_code, speaker_name ) 
values
('DEV4921','Luis Weir');

insert into speakers
( session_code, speaker_name ) 
values
('DEV4854','Arun Gupta');

insert into attendance
( session_code, attendee_name ) 
values
('DEV4854','Lucas Jellema');

insert into attendance
( session_code, attendee_name ) 
values
('DEV4854','Luis Weir');

insert into attendance
( session_code, attendee_name ) 
values
('DEV4979','John Miller');

insert into speaker_liking
( speaker_name
, attendee_name
) values
('Daniel Bryant', 'Luis Weir');

