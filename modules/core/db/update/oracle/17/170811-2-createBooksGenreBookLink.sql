alter table BOOKS_GENRE_BOOK_LINK add constraint FK_BGBL_GENRE foreign key (GENRE_ID) references BOOKS_GENRE(ID)^
alter table BOOKS_GENRE_BOOK_LINK add constraint FK_BGBL_BOOK foreign key (BOOK_ID) references BOOKS_BOOK(ID)^
