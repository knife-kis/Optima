    create table request (
     id bigint NOT NULL auto_increment,
        number integer,
        date DATETIME(6),
        nameCastomer varchar(512),
        indicator varchar(255),
        nameObject varchar(2048),
        term DATETIME(6),
        nameExecutor varchar(255),
        numberContract varchar(255),
        dateContract DATETIME(6),
        primary key (id)
    ) engine=InnoDB;
GO

    create table request_users (
       request_id bigint not null,
        user_id bigint not null,
        primary key (request_id, user_id)
    ) engine=InnoDB;
GO

    alter table request
       add constraint UK_ofx66ke12a4i65yqpf6f2or37 unique (name);
GO

    alter table request_users
       add constraint FKj6m8ttv7cqv74fcehir1a9ffy
       foreign key (request_id)
       references request (id);
GO

    alter table request_users
       add constraint F12o0jvgh89lopv2o17cb4vdxaa
       foreign key (user_id)
       references users (id);
GO
