package com.j2n.apotek.Entity;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "branch")
public class Branch {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", unique = true, columnDefinition = "serial")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "address")
    private String address;

    @Column(name = "date")
    private Date date;

    @Column(name = "userby")
    private String userBy;

    @Column(name = "status")
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
