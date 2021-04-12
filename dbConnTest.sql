create Table test_table(
    data1 varchar(10),
    data2 int
);

insert into test_table(data1, data2) values('name', '100');
insert into test_table(data1, data2) values('name2', '200');
insert into test_table(data1, data2) values('name3', '300');
commit;

select * from test_table;
