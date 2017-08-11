create table BOOKS_BOOK (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(255) not null,
    STATE varchar2(50) not null,
    YEAR_ number(10),
    EDITION varchar2(255),
    AUTHOR_ID varchar2(32),
    --
    primary key (ID)
)^
