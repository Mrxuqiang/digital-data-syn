/*
================================================================================
表结构代码:TB_PMTGJ
表结构名称:累计返券单参与规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGJ;
drop index AK_TB_PMTGJ;
drop table TB_PMTGJ;
create table TB_PMTGJ  (
   PMTGJ_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTGJ001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGJ002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTGJ003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGJ primary key (PMTGJ_ID)
);
create unique index AK_TB_PMTGJ on TB_PMTGJ (PMTGJ001,PMTGJ002,PMTGJ003);
create sequence SEQ_TB_PMTGJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGJ to public;
grant index  on TB_PMTGJ to public;
grant update on TB_PMTGJ to public; 
grant delete on TB_PMTGJ to public;  
grant insert on TB_PMTGJ to public; 
grant select on SEQ_TB_PMTGJ to public;   