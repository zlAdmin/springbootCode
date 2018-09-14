DROP TABLE IF EXISTS `bom_bstock`;
CREATE TABLE `bom_bstock`  (
  `id` varchar(32)  NOT NULL,
  `cpspcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '存货型号',
  `ccomunitname` varchar(20)  NULL DEFAULT NULL COMMENT '主计量单位',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '现存数量'
) ;
DROP TABLE IF EXISTS `bom_config`;
CREATE TABLE `bom_config`  (
  `mom_cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '母件存货代码',
  `mom_cpspcode` varchar(100)  NULL DEFAULT NULL COMMENT '母件编码',
  `mom_cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '母件名称',
  `mom_cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '母件型号',
  `son_cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '子件存货代码',
  `son_cpscode` varchar(100)  NULL DEFAULT NULL COMMENT '子件编码',
  `son_cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '子件名称',
  `son_cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '子件型号',
  `son_type` varchar(1)  NULL DEFAULT NULL COMMENT '子件是否为部件',
  `son_ccomunitname` varchar(20)  NULL DEFAULT NULL COMMENT '主计量单位',
  `son_tdqtyd` int(11) NULL DEFAULT 0 COMMENT '基本用量分母',
  `son_ipsquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量分子',
  `son_sumquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量总量',
  `myid` int(11) NULL DEFAULT NULL,
  `mypid` int(11) NULL DEFAULT NULL,
  `id` int(11) NULL DEFAULT NULL
) ;

DROP TABLE IF EXISTS `bom_config_temp`;
CREATE TABLE `bom_config_temp`  (
  `id` varchar(32)  NOT NULL,
  `mom_cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '母件存货代码',
  `mom_cpspcode` varchar(100)  NULL DEFAULT NULL COMMENT '母件编码',
  `mom_cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '母件名称',
  `mom_cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '母件型号',
  `son_cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '子件存货代码',
  `son_cpscode` varchar(100)  NULL DEFAULT NULL COMMENT '子件编码',
  `son_cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '子件名称',
  `son_cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '子件型号',
  `son_type` varchar(1)  NULL DEFAULT NULL COMMENT '子件是否为部件',
  `son_ccomunitname` varchar(20)  NULL DEFAULT NULL COMMENT '主计量单位',
  `son_tdqtyd` int(11) NULL DEFAULT 0 COMMENT '基本用量分母',
  `son_ipsquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量分子',
  `son_sumquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量总量',
  `myid` int(11) NULL DEFAULT NULL,
  `mypid` int(11) NULL DEFAULT NULL
) ;

DROP TABLE IF EXISTS `bom_stock`;
CREATE TABLE `bom_stock`  (
  `id` varchar(32)  NOT NULL,
  `cpspcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '存货型号',
  `ccomunitname` varchar(20)  NULL DEFAULT NULL COMMENT '主计量单位',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '现存数量'
) ;

DROP TABLE IF EXISTS `product_plan`;
CREATE TABLE `product_plan`  (
  `id` varchar(32)  NOT NULL,
  `ccode` varchar(100)  NULL DEFAULT NULL COMMENT '订单编号',
  `cinvcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货代码',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '要求产量',
  `planstarttime` timestamp(6) NOT NULL  COMMENT '计划开始时间',
  `planendtime` timestamp(6) NOT NULL COMMENT '计划开始时间',
  `endtime` timestamp(6) NOT NULL COMMENT '计划开始时间',
  `cinvname` varchar(100)  NULL DEFAULT NULL,
  `cancomplete` varchar(1)  NULL DEFAULT NULL
) ;

DROP TABLE IF EXISTS `purchase_plan`;
CREATE TABLE `purchase_plan`  (
  `id` varchar(32)  NOT NULL,
  `ccode` varchar(100)  NULL DEFAULT NULL COMMENT '采购编号',
  `cinvcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '存货型号',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '采购数量',
  `plantime` timestamp(6) NOT NULL  COMMENT '计划完成时间',
  `endtime` timestamp(6) NOT NULL COMMENT '完成时间'
) ;

DROP TABLE IF EXISTS `purchase_result`;
CREATE TABLE `purchase_result`  (
  `id` varchar(32)  NOT NULL,
  `ccode` varchar(100)  NULL DEFAULT NULL COMMENT '订单编号',
  `cinvcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100)  NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100)  NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100)  NULL DEFAULT NULL COMMENT '存货型号',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '要求产量',
  `stockquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '库存量',
  `purchasequantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '预计采购量',
  `planstarttime` timestamp(6) NOT NULL  COMMENT '计划开始时间',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '可用数量',
  `issatisfied` varchar(1)  NULL DEFAULT NULL COMMENT '是否满足'
) ;
