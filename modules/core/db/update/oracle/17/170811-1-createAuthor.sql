create table BOOKS_AUTHOR (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    STATE varchar2(50) not null,
    LAST_NAME varchar2(30) not null,
    FIRST_NAME varchar2(30),
    MIDDLE_NAME varchar2(50),
    --
    primary key (ID)
)^
