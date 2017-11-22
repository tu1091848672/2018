CREATE TABLE IF NOT EXISTS `think_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `UserSex` int(11) DEFAULT NULL,
  `UserTel` varchar(255) DEFAULT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `UserAddress` varchar(255) DEFAULT NULL,
  `UserBirth` varchar(255) DEFAULT NULL,
  `UserJoinTime` varchar(255) DEFAULT NULL,
  `UserPasswd` varchar(255) DEFAULT NULL,
  `UserSignature` varchar(255) DEFAULT NULL,
  `UserHobby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `think_user` (`user_id`, `user_name`, `UserSex`, `UserTel`, `UserEmail`, `UserAddress`, `UserBirth`, `UserJoinTime`, `UserPasswd`, `UserSignature`, `UserHobby`) VALUES
(0, 'thinkphp', 1, '15700000000', 'emial@email.com', '山东省济南市****路', '1111111', '111111', 'qqq', NULL, NULL);