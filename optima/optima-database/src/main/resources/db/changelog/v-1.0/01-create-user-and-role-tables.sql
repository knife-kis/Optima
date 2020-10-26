    create table roles (
       id bigint NOT NULL auto_increment,
        name varchar(255) NOT NULL,
        primary key (id)
    ) engine=InnoDB;
GO

    create table users (
       id bigint NOT NULL auto_increment,
       phone varchar(255) NOT NULL,
        email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;
GO

    create table users_roles (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB;
GO

    alter table roles
       add constraint UK_ofx66keruapi6vyqpv6f2or37 unique (name);
GO

    alter table users_roles
       add constraint FKj6m8fwv7oqv74fcehir1a9ffy
       foreign key (role_id)
       references roles (id);
GO

    alter table users_roles
       add constraint FK2o0jvgh89lemvvo17cbqvdxaa
       foreign key (user_id)
       references users (id);
GO
