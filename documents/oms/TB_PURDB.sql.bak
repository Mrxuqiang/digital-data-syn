/*
================================================================================
表结构代码:TB_PURDB
表结构名称:采购订单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDB;
drop index AK_TB_PURDB;
drop table TB_PURDB;
create table TB_PURDB  (
   PURDB_ID               INTEGER                   not null,             /*商品明细ID       */
   PURDB001               INTEGER                   not null,             /*采购单ID         */
   PURDB002               INTEGER,                                        /*来源单号ID       */
   PURDB003               INTEGER,                                        /*来源项次ID       */
   PURDB004               INTEGER                   not null,             /*商品ID           */
   PURDB005               INTEGER,                                        /*维度1            */
   PURDB006               INTEGER,                                        /*维度2            */
   PURDB007               INTEGER,                                        /*维度3            */
   PURDB008               INTEGER,                                        /*维度4            */
   PURDB009               INTEGER,                                        /*维度5            */
   PURDB010               INTEGER                   not null,             /*采购单位<…>      */
   PURDB011               NUMBER(18,3)              not null,             /*采购量           */
   PURDB012               NUMBER(18,3),                                   /*待收货量         */ --modify by hansf  待收货量
   PURDB013               NUMBER(18,3)              not null,             /*周销量           */ --MARK BY 20100328
   PURDB014               NUMBER(12,2),                                   /*税前单价         */
   PURDB015               NUMBER(12,2),                                   /*含税单价         */
   PURDB016               INTEGER                   not null,             /*税种             */
   PURDB017               NUMBER(18,3)              not null,             /*税率             */
   PURDB018               NUMBER(18,3),                                   /*折扣率           */
   PURDB019               NUMBER(18,3),                                   /*搭赠量           */
   PURDB020               NUMBER(12,2),                                   /*税前金额         */
   PURDB021               NUMBER(12,2),                                   /*含税金额         */
   PURDB022               NUMBER(18,3),                                   /*扣率             */
   PURDB023               VARCHAR2(30),                                   /*价格来源         */
   PURDB024               VARCHAR2(1)               not null,             /*结案码ˇ          */
   PURDB025               NUMBER(12,2),                                   /*当前售价         */
   PURDB026               NUMBER(18,3),                                   /*当前扣率         */
   PURDB027               NUMBER(1)                 not null,             /*优先级           */
   PURDB028               DATE ,                                          /*期望到货日       */ --MARK BY 20100404
   PURDB029               NUMBER(18,3),                                   /*单位换算率       */
   PURDB030               VARCHAR2(255),                                  /*备注             */
   PURDB031                VARCHAR2(1)    not null,                       /*商品服务属性     */
   PURDB032               VARCHAR2(1),				          /*销售属性         */ --modify 是否定制商品
   PURDB033               NUMBER(22,2) ,			          /*销售量           */
   PURDB034              VARCHAR2(255),					  /*要货单ID         */ --MARK BY 20100328
   PURDB035               NUMBER(22,2) ,				  /*要货量           */ --MARK BY 20100328
   PURDB036              VARCHAR2(255),				          /*申请单ID         */ --MARK BY 20100328
   PURDB037               NUMBER(22,2) ,				  /*申请量           */
   PURDB038               NUMBER(22,2) ,			          /*入库量           */ --add by hansf 2010-3-8*/
   PURDB039               NUMBER(22,2) 	  not null,                       /*作废量           */ --20110217 add by xiechun*/
   PURDB040               VARCHAR2(40),                                   /*货号            */ --20110712 add by xiechun
   PURDB041               VARCHAR2(255),                                  /*备注1            */ --20110712 add by xiechun
   PURDB042               VARCHAR2(255),                                  /*备注2            */ --20110712 add by xiechun
   PURDB043               VARCHAR2(255),                                  /*备注3            */ --20110712 add by xiechun
   PURDB044               VARCHAR2(1),				          /*是否组装品       */ --20110803 add by xiechun
   PURDB045               VARCHAR2(1),				          /*是否成分         */ --20110803 add by xiechun
   PURDB046               INTEGER,					  /*主商品ID         */ --20110803 add by xiechun
   PURDB047               VARCHAR2(30),				          /*子套件对应关系随机码*/--20110803 add by xiechun
   PURDB048              INTEGER,                                         /*成分数量         */ --20111020 add by xiechun
   PURDB049               INTEGER                           ,             /*销售单明细ID     */ --20111021 add by xiechun
   PURDB050               NUMBER(28,3),                                   /*基本单价         */ --20111027 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*建立人员         */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门     */                                
   CREATE_DATE            DATE,                                           /*建立日期         */
   MODIFIER               VARCHAR2(12),                                   /*修改人员         */
   MODI_DATE              DATE,                                           /*修改日期         */
   FLAG                   NUMBER,                                         /*资料状态         */
   constraint PK_TB_PURDB primary key (PURDB_ID)
);
create unique index AK_TB_PURDB on TB_PURDB (PURDB_ID,PURDB001,PURDB004,FLAG);
create sequence SEQ_TB_PURDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDB to public;
grant index  on TB_PURDB to public;
grant update on TB_PURDB to public; 
grant delete on TB_PURDB to public;  
grant insert on TB_PURDB to public; 
grant select on SEQ_TB_PURDB to public;   