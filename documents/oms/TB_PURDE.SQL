/*
================================================================================
表结构代码:TB_PURDE
表结构名称:采购订单作废明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDE;
drop index AK_TB_PURDE;
drop table TB_PURDE;
create table TB_PURDE  (
   PURDE_ID               INTEGER                   not null,             /*商品明细ID       */
   PURDE001               INTEGER                   not null,             /*采购作废单ID     */
   PURDE002               INTEGER                   not null,             /*采购单ID         */
   PURDE003               INTEGER,                                        /*采购明细ID       */
   PURDE004               INTEGER                   not null,             /*商品ID           */
   PURDE005               INTEGER,                                        /*维度1            */
   PURDE006               INTEGER,                                        /*维度2            */
   PURDE007               INTEGER,                                        /*维度3            */
   PURDE008               INTEGER,                                        /*维度4            */
   PURDE009               INTEGER,                                        /*维度5            */
   PURDE010               INTEGER                   not null,             /*单位<…>          */
   PURDE011               NUMBER(18,3)              not null,             /*作废量           */
   PURDE012               NUMBER(12,2),                                   /*税前单价         */
   PURDE013               NUMBER(12,2),                                   /*含税单价         */
   PURDE014               INTEGER                   not null,             /*税种             */
   PURDE015               NUMBER(18,3)              not null,             /*税率             */
   PURDE016               NUMBER(18,3),                                   /*折扣率           */
   PURDE017               NUMBER(12,2),                                   /*税前金额         */
   PURDE018               NUMBER(12,2),                                   /*含税金额         */
   PURDE019               NUMBER(18,3),                                   /*单位换算率       */
   PURDE020               VARCHAR2(255),                                  /*备注             */
   PURDE021               VARCHAR2(1)    not null,                        /*商品服务属性     */
   PURDE022               VARCHAR2(1)    not null,                        /*销售属性         */
   PURDE023               VARCHAR2(1),				          /*是否组装品       */ --20111105 add by xiechun
   PURDE024               VARCHAR2(1),				          /*是否成分         */ --20111105 add by xiechun
   PURDE025               INTEGER,					  /*主商品ID         */ --20111105 add by xiechun
   PURDE026               VARCHAR2(30),				          /*子套件对应关系随机码*/--20111105 add by xiechun
   PURDE027               INTEGER,                                        /*成分数量         */ --20111105 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*建立人员         */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门     */                               
   CREATE_DATE            DATE,                                           /*建立日期         */
   MODIFIER               VARCHAR2(12),                                   /*修改人员         */
   MODI_DATE              DATE,                                           /*修改日期         */
   FLAG                   NUMBER,                                         /*资料状态         */
   constraint PK_TB_PURDE primary key (PURDE_ID)
);
create unique index AK_TB_PURDE on TB_PURDE (PURDE_ID,PURDE001,FLAG);
create sequence SEQ_TB_PURDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDE to public;
grant index  on TB_PURDE to public;
grant update on TB_PURDE to public; 
grant delete on TB_PURDE to public;  
grant insert on TB_PURDE to public; 
grant select on SEQ_TB_PURDE to public;   