/*
================================================================================
表结构代码:TB_SALHS
表结构名称:设计顾问销售计划二级子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHS;
drop index AK_TB_SALHS;
drop table TB_SALHS;
create table TB_TB_SALHS  (
   SALHS_ID             INTEGER                        not null,   /*设计顾问销售计划二级子表ID  */
   SALHS001             INTEGER                        not null,   /*设计顾问销售计划ID          */
   SALHS002             INTEGER                        not null,   /*设计顾问销售计划明细ID      */
   SALHS003             INTEGER                        not null,   /*商品分类                    */
   SALHS004             NUMBER(18,2),                              /*订单金额保证目标            */
   SALHS005             NUMBER(18,2),                              /*订单金额奋斗目标            */
   SALHS006             NUMBER(18,2),                              /*送货金额保证目标            */
   SALHS007             NUMBER(18,2),                              /*送货金额奋斗目标目标        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                          
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER,                                    /*资料状态                    */
   constraint PK_TB_SALHS primary key (SALHS_ID)
);
create unique index AK_TB_SALHS on TB_SALHS (SALHS002,SALHS003,FLAG);
create sequence SEQ_TB_SALHS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHS to public;
grant index  on TB_SALHS to public;
grant update on TB_SALHS to public; 
grant delete on TB_SALHS to public;  
grant insert on TB_SALHS to public; 
grant select on SEQ_TB_SALHS to public;   