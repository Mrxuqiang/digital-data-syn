/*
================================================================================
表结构代码:TB_SALHR
表结构名称:设计顾问销售计划明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHR;
drop index AK_TB_SALHR;
drop table TB_SALHR;
create table TB_TB_SALHR  (
   SALHR_ID             INTEGER                        not null,   /*设计顾问销售计划明细ID      */
   SALHR001             INTEGER                        not null,   /*设计顾问销售计划ID          */
   SALHR002             INTEGER                        not null,   /*设计顾问                    */
   SALHR003             NUMBER(18,2),                              /*订单金额保证目标            */
   SALHR004             NUMBER(18,2),                              /*订单金额奋斗目标            */
   SALHR005             NUMBER(18,2),                              /*送货金额保证目标            */
   SALHR006             NUMBER(18,2),                              /*送货金额奋斗目标目标        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                          
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER,                                    /*资料状态                    */
   constraint PK_TB_SALHP primary key (SALHR_ID)
);
create unique index AK_TB_SALHR on TB_SALHR (SALHR002,FLAG);
create sequence SEQ_TB_SALHR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHR to public;
grant index  on TB_SALHR to public;
grant update on TB_SALHR to public; 
grant delete on TB_SALHR to public;  
grant insert on TB_SALHR to public; 
grant select on SEQ_TB_SALHR to public;   