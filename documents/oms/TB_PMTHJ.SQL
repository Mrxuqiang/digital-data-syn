/*
================================================================================
表结构代码:TB_PMTHJ
表结构名称:满赠促销单规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHJ;
drop index AK_TB_PMTHJ;
drop table TB_PMTHJ;
create table TB_PMTHJ  (
   PMTHJ_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTHJ001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHJ002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTHJ003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHJ primary key (PMTHJ_ID)
);
create unique index AK_TB_PMTHJ on TB_PMTHJ (PMTHJ001,PMTHJ002,PMTHJ003);
create sequence SEQ_TB_PMTHJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHJ to public;
grant index  on TB_PMTHJ to public;
grant update on TB_PMTHJ to public; 
grant delete on TB_PMTHJ to public;  
grant insert on TB_PMTHJ to public; 
grant select on SEQ_TB_PMTHJ to public;   