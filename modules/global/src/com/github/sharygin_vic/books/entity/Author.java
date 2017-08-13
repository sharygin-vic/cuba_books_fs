package com.github.sharygin_vic.books.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s %s %s|lastName,firstName,middleName")
@Table(name = "BOOKS_AUTHOR")
@Entity(name = "books$Author")
public class Author extends StandardEntity {
    private static final long serialVersionUID = 4360623905749915392L;

    @Column(name = "STATE", nullable = false)
    protected String state;

    @Column(name = "LAST_NAME", nullable = false, length = 30)
    protected String lastName;

    @Column(name = "FIRST_NAME", length = 30)
    protected String firstName;

    @Column(name = "MIDDLE_NAME", length = 50)
    protected String middleName;

    @OneToMany(mappedBy = "author")
    protected List<Book> bookCollection;

    public List<Book> getBookCollection() {
        return bookCollection;
    }

    public void setBookCollection(List<Book> bookCollection) {
        this.bookCollection = bookCollection;
    }


    public void setState(State state) {
        this.state = state == null ? null : state.getId();
    }

    public State getState() {
        return state == null ? null : State.fromId(state);
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getMiddleName() {
        return middleName;
    }


}