-- begin BOOKS_BOOK
alter table BOOKS_BOOK add constraint FK_BOOKS_BOOK_AUTHOR foreign key (AUTHOR_ID) references BOOKS_AUTHOR(ID)^
create index IDX_BOOKS_BOOK_AUTHOR on BOOKS_BOOK (AUTHOR_ID)^
-- end BOOKS_BOOK
-- begin BOOKS_GENRE_BOOK_LINK
alter table BOOKS_GENRE_BOOK_LINK add constraint FK_BGBL_GENRE foreign key (GENRE_ID) references BOOKS_GENRE(ID)^
alter table BOOKS_GENRE_BOOK_LINK add constraint FK_BGBL_BOOK foreign key (BOOK_ID) references BOOKS_BOOK(ID)^
-- end BOOKS_GENRE_BOOK_LINK
