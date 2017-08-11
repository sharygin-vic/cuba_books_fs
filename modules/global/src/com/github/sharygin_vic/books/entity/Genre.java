package com.github.sharygin_vic.books.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.List;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@NamePattern("%s|name")
@Table(name = "BOOKS_GENRE")
@Entity(name = "books$Genre")
public class Genre extends StandardEntity {
    private static final long serialVersionUID = -9034464435910467154L;

    @Column(name = "STATE", nullable = false)
    protected String state;

    @Column(name = "NAME", nullable = false, length = 50)
    protected String name;

    @JoinTable(name = "BOOKS_GENRE_BOOK_LINK",
        joinColumns = @JoinColumn(name = "GENRE_ID"),
        inverseJoinColumns = @JoinColumn(name = "BOOK_ID"))
    @ManyToMany
    protected List<Book> bookCollection;

    public void setBookCollection(List<Book> bookCollection) {
        this.bookCollection = bookCollection;
    }

    public List<Book> getBookCollection() {
        return bookCollection;
    }


    public void setState(State state) {
        this.state = state == null ? null : state.getId();
    }

    public State getState() {
        return state == null ? null : State.fromId(state);
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}