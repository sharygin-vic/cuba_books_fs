-- begin BOOKS_BOOK
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
-- end BOOKS_BOOK
-- begin BOOKS_AUTHOR
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
-- end BOOKS_AUTHOR
-- begin BOOKS_GENRE
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
-- end BOOKS_GENRE
-- begin BOOKS_GENRE_BOOK_LINK
create table BOOKS_GENRE_BOOK_LINK (
    GENRE_ID varchar2(32),
    BOOK_ID varchar2(32),
    primary key (GENRE_ID, BOOK_ID)
)^
-- end BOOKS_GENRE_BOOK_LINK
