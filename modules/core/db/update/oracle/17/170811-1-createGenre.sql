create table BOOKS_GENRE (
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
    NAME varchar2(50) not null,
    --
    primary key (ID)
)^
