/*
================================================================================
表结构代码:TB_PURGB
表结构名称:采购退货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURGB;
drop index AK_TB_PURGB;
drop table TB_PURGB;
create table TB_PURGB  (
   PURGB_ID             INTEGER                            not null,              /*退货明细ID      */
   PURGB001             INTEGER                            not null,              /*退货单ID        */
   PURGB002             INTEGER,                                                  /*入库单号ID      */
   PURGB003             INTEGER,                                                  /*入库单项次ID    */
   PURGB004             INTEGER                            not null,              /*商品编码        */
   PURGB005             INTEGER,                                                  /*维度1       	 */ 
   PURGB006             INTEGER,                                                  /*维度2           */
   PURGB007             INTEGER,                                                  /*维度3           */
   PURGB008             INTEGER,                                                  /*维度4           */
   PURGB009             INTEGER,                                                  /*维度5           */
   PURGB010             INTEGER                            not null,              /*仓库            */
   PURGB011             INTEGER                            not null,              /*库位            */
   PURGB012             VARCHAR2(30)                       not null,              /*主批号          */
   PURGB013             VARCHAR2(30),                                             /*辅批号          */
   PURGB014             VARCHAR2(30),                                             /*厂商批号        */
   PURGB015             INTEGER                            not null,              /*退货单位        */
   PURGB016             NUMBER(12,2)                       not null,              /*单位换算率      */
   PURGB017             NUMBER(18,3)                       not null,              /*退库量          */
   PURGB018             NUMBER(12,2)                       not null,              /*税前单价        */
   PURGB019             NUMBER(12,2)                       not null,              /*含税单价        */
   PURGB020             INTEGER                            not null,              /*税种            */
   PURGB021             NUMBER(12,2)                       not null,              /*税率            */
   PURGB022             NUMBER(12,2)                       not null,              /*税前金额        */
   PURGB023             NUMBER(12,2)                       not null,              /*含税金额        */
   PURGB024             NUMBER(18,3),                                             /*扣率            */
   PURGB025             VARCHAR2(1)                        not null,              /*商品服务属性    */
   PURGB028             INTEGER,                                                  /*理由说明        */ -- mark by 20100427
   PURGB029             INTEGER,                                                  /*应付暂估单号    */ --mark by 20100427
   PURGB030             VARCHAR2(255),                                            /*备注            */
   PURGB031             INTEGER                            not null,              /*采购单号        */ --mark by 20100427
   PURGB032             INTEGER                            not null,              /*采购单项次      */ --mark by 20100427
   PURGB033             VARCHAR2(1)                        not null,              /*发货状态*/ --ADD BY HANSF  1 已发货，2 已收货 --mark by 20100427
   PURGB034             VARCHAR2(1),                                              /*是否组装品     */
   PURGB035             VARCHAR2(1),                                              /*是否成分       */
   PURGB036             INTEGER,                                                  /*主商品ID           */
   PURGB037             INTEGER,                                                  /*包数           */
   PURGB038             VARCHAR2(30),                                             /*子套件对应随机码           */
   CREATE_USER          VARCHAR2(12),                                             /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                                             /*建立人员部门              */                               
   CREATE_DATE          DATE,                                                     /*建立日期                  */
   MODIFIER             VARCHAR2(12),                                             /*修改人员                  */
   MODI_DATE            DATE,                                                     /*修改日期                  */
   FLAG                 NUMBER(1),                                                /*资料状态                  */
   constraint PK_TB_PURGB primary key (PURGB_ID)
);
create index AK_TB_PURGB on TB_PURGB (PURGB_ID,PURGB002,PURGB005);
create sequence SEQ_TB_PURGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURGB to public;
grant index  on TB_PURGB to public;
grant update on TB_PURGB to public; 
grant delete on TB_PURGB to public;  
grant insert on TB_PURGB to public; 
grant select on SEQ_TB_PURGB to public;   