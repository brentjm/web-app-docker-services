begin;
create table mytable
(
    timestamp bigint primary key,
    username character varying(40),
    experiment character varying(40),
    value integer not null
);
commit;
