/*
================================================================================
表结构代码:TB_PMTHC
表结构名称:累计赠品单规则区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHC;
drop index AK_TB_PMTHC;
drop table TB_PMTHC;
create table TB_PMTHC  (
   PMTHC_ID             INTEGER                         not null,  /*规则区段ID        */
   PMTHC001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHC002             NUMBER(12,2),                              /*开始金额          */
   PMTHC003             NUMBER(12,2),                              /*结束金额          */
   PMTHC004             INTEGER                         not null,  /*赠品ID            */
   PMTHC005             INTEGER,                                   /*单位ID            */
   PMTHC006             NUMBER(12,2),                              /*单价              */
   PMTHC007             NUMBER(18,3),                              /*数量              */
   PMTHC008             NUMBER(12,2),                              /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHC primary key (PMTHC_ID)
);
create unique index AK_TB_PMTHC on TB_PMTHC (PMTHC001,PMTHC002,PMTHC004);
create sequence SEQ_TB_PMTHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHC to public;
grant index  on TB_PMTHC to public;
grant update on TB_PMTHC to public; 
grant delete on TB_PMTHC to public;  
grant insert on TB_PMTHC to public; 
grant select on SEQ_TB_PMTHC to public;   