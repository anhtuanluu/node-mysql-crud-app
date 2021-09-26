ALTER DATABASE worker CHARACTER SET utf8 COLLATE utf8_general_ci;
DROP TABLE IF EXISTS `workers`;
CREATE TABLE `workers` (
    `id` int(5) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `position` varchar(255) NOT NULL,
    `number` int(11) NOT NULL,
    `image` varchar(255) NOT NULL,
    `user_name` varchar(20) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
ALTER TABLE workers CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO workers (`id`, `first_name`, `last_name`, `position`, `number`, `image`, `user_name`) VALUES (1, 'Lưu', 'Anh Tuấn', 'Kỹ thuật an toàn', '10', 'tuanlxa.jpeg', 'tuanlxa');
INSERT INTO workers (`id`, `first_name`, `last_name`, `position`, `number`, `image`, `user_name`) VALUES (2, 'Nguyễn', 'Nam', 'Hành chính lao động', '11', 'namnh.jpeg', 'namnh');
INSERT INTO workers (`id`, `first_name`, `last_name`, `position`, `number`, `image`, `user_name`) VALUES (3, 'Cao', 'Kỳ Duyên', 'Hành chính lao động', '12', 'duyenck.jpeg', 'duyenck');
INSERT INTO workers (`id`, `first_name`, `last_name`, `position`, `number`, `image`, `user_name`) VALUES (4, 'Bùi', 'Anh Tuấn', 'Tài chính kế toán', '13', 'tuanba.jpeg', 'tuanba');