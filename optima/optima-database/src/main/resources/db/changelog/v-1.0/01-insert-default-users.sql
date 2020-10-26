INSERT INTO `users` (`phone`, `password`)
VALUE   ('89639567916', '$2y$12$p8GenkKruIb3LNyyWnnCGu.VlSlZITt.OXJWmGZ12xKjyzW3F4sUG'),
        ('89999999999', '$2y$12$p8GenkKruIb3LNyyWnnCGu.VlSlZITt.OXJWmGZ12xKjyzW3F4sUG'),
        ('89876543210', '$2y$12$p8GenkKruIb3LNyyWnnCGu.VlSlZITt.OXJWmGZ12xKjyzW3F4sUG'),
        ('89876543211', '$2y$12$p8GenkKruIb3LNyyWnnCGu.VlSlZITt.OXJWmGZ12xKjyzW3F4sUG'),
        ('89876543212', '$2y$12$p8GenkKruIb3LNyyWnnCGu.VlSlZITt.OXJWmGZ12xKjyzW3F4sUG');
GO

INSERT INTO `roles` (`name`)
VALUE ('ROLE_ADMIN'), ('ROLE_DIRECTOR'), ('ROLE_ENGINEER'), ('ROLE_MANAGER');
GO

INSERT INTO `users_roles`(`user_id`, `role_id`)
SELECT (SELECT id FROM `users` WHERE `phone` = '89639567916'), (SELECT id FROM `roles` WHERE `name` = 'ROLE_ADMIN')
UNION ALL
SELECT (SELECT id FROM `users` WHERE `phone` = '89999999999'), (SELECT id FROM `roles` WHERE `name` = 'ROLE_DIRECTOR')
UNION ALL
SELECT (SELECT id FROM `users` WHERE `phone` = '89876543210'), (SELECT id FROM `roles` WHERE `name` = 'ROLE_ENGINEER')
UNION ALL
SELECT (SELECT id FROM `users` WHERE `phone` = '89876543211'), (SELECT id FROM `roles` WHERE `name` = 'ROLE_ENGINEER')
UNION ALL
SELECT (SELECT id FROM `users` WHERE `phone` = '89876543212'), (SELECT id FROM `roles` WHERE `name` = 'ROLE_MANAGER')
;
GO
