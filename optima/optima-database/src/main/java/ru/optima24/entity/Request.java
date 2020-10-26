package ru.optima24.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "request")
@Data
@NoArgsConstructor
public class Request {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "number")
    private Integer number;

    @Column(name = "date")
    private Date date;

    @Column(name = "nameCastomer")
    private String nameCastomer;

    @Column(name = "indicator")
    private String indicator;

    @Column(name = "nameObject")
    private String nameObject;

    @Column(name = "term")
    private Date term;

    @Column(name = "nameExecutor")
    private String nameExecutor;

    @Column(name = "numberContract")
    private String numberContract;

    @Column(name = "dateContract")
    private Date dateContract;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "request_users",
            joinColumns = @JoinColumn(name = "request_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> usersRequest;

}
