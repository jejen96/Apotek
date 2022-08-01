package com.j2n.apotek.Entity.api;

import java.util.Date;

public class BranchApi {

    private long id;
    private String name;
    private String address;
    private Date date;
    private String userBy;
    private Boolean status;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUserBy() {
        return userBy;
    }

    public void setUserBy(String userBy) {
        this.userBy = userBy;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
}
