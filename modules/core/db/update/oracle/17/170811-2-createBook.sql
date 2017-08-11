alter table BOOKS_BOOK add constraint FK_BOOKS_BOOK_AUTHOR foreign key (AUTHOR_ID) references BOOKS_AUTHOR(ID)^
create index IDX_BOOKS_BOOK_AUTHOR on BOOKS_BOOK (AUTHOR_ID)^
