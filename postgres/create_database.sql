begin;
create table qcmtable
(
    timestamp bigint primary key,
    username character varying(40),
    experiment character varying(40),
    frequency integer not null
);
commit;
