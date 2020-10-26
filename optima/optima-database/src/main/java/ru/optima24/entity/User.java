//package ru.optima24.entity;
//
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//import javax.persistence.*;
//import java.util.Collection;
//import java.util.List;
//import java.util.Set;
//
//
//@Entity
//@Table(name = "users")
//@Data
//@NoArgsConstructor
//public class User {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "id")
//    private Long id;
//
//    @Column(name = "firstName")
//    private String firstName;
//
//    @Column(name = "lastName")
//    private String lastName;
//
//    @Column(name = "password", nullable = false)
//    private String password;
//
//    @Column(name = "email")
//    private String email;
//
//    @Column(name = "phone")
//    private String phone;
//
//    @ManyToMany(fetch = FetchType.LAZY)
//    @JoinTable(name = "users_roles",
//            joinColumns = @JoinColumn(name = "user_id"),
//            inverseJoinColumns = @JoinColumn(name = "role_id"))
//    private Set<Role> roles;
//
//    @ManyToMany(mappedBy = "request")
//    private List<Request> requestsList;
//
//
//    public String getFullName() {
//        return String.format("%s %s", firstName, lastName);
//    }
//
//}
