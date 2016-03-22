CREATE TABLE `crud_column` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `TABLE_NAME` varchar(50) NOT NULL COMMENT '表名',
  `COLUMN_NAME` varchar(50) NOT NULL COMMENT '列名',
  `COLUMN_TYPE` varchar(50) NOT NULL COMMENT '数据类型',
  `JAVA_NAME` varchar(50) NOT NULL COMMENT 'java名称',
  `JAVA_METHOD_NAME` varchar(255) DEFAULT NULL COMMENT 'java用以方法的命名，即字段首字母大写',
  `JAVA_TYPE` varchar(50) NOT NULL COMMENT 'java类型',
  `LABEL` varchar(50) NOT NULL COMMENT '显示名',
  `PLACEHOLDER` varchar(100) DEFAULT NULL COMMENT '输入提示',
  `INPUT_TYPE` varchar(50) NOT NULL COMMENT '数据录入类型 INPUT：输入框，RADIO：单选，SELECT：下拉框，CHECK：复选框',
  `DICT_TYPE` varchar(50) DEFAULT NULL COMMENT '数据字典类型',
  `DICT_LIST` varchar(255) DEFAULT NULL COMMENT '自定义数据字典',
  `PRIMARY_KEY` int(2) DEFAULT NULL COMMENT '是否主键 ',
  `NULLABLE` int(2) DEFAULT NULL COMMENT '是否可空',
  `LENGTH` int(11) DEFAULT NULL COMMENT '字符长度',
  `RULES` varchar(255) DEFAULT NULL COMMENT '校验规则',
  `OP_USER_ID` varchar(36) DEFAULT NULL COMMENT '操作用户',
  `OP_TIME` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8	