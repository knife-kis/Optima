INSERT INTO `request` (`number`, `date`, `nameCastomer`, `indicator`, `nameObject`, `term`, `nameExecutor`, `numberContract`, `dateContract`)
VALUE   (1, '2020-01-09', 'Новый город', 'ПК', 'детский садик', '2020-03-30', 'Тарновский', '1', '2020-01-09'),
        (2, '2020-01-10', 'Арбан', 'ФФ', 'жилой дом №1', '2020-03-30', 'Федоров', '2', '2020-01-10'),
        (3, '2020-01-10', 'Арбан', 'ФФ', 'жилой дом №2', '2020-03-30', 'Федоров', '3', '2020-01-10');
GO



INSERT INTO `request_users`(`request_id`, `user_id`)
SELECT (SELECT id FROM `request` WHERE `id` = '1'), (SELECT id FROM `users` WHERE `phone` = '89639567916')
UNION ALL
SELECT (SELECT id FROM `request` WHERE `id` = '2'), (SELECT id FROM `users` WHERE `phone` = '89999999999')
UNION ALL
SELECT (SELECT id FROM `request` WHERE `id` = '3'), (SELECT id FROM `users` WHERE `phone` = '89999999999')
;
GO
