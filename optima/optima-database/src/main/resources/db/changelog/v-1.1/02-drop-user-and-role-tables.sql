    alter table request
       drop index UK_ofx66ke12a4i65yqpf6f2or37;
GO

    alter table request_users
       drop foreign key FKj6m8ttv7cqv74fcehir1a9ffy;
GO

    alter table request_users
       drop foreign key F12o0jvgh89lopv2o17cb4vdxaa;
GO

    drop table request;
GO

    drop table request_users;
GO
