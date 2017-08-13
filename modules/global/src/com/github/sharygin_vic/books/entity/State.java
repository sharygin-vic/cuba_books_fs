package com.github.sharygin_vic.books.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum State implements EnumClass<String> {
    ACTIVE("active"),
    DELETED("deleted");

    private String id;

    State(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static State fromId(String id) {
        for (State at : State.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}