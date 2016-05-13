/*
================================================================================
表结构代码:TB_PMTHK
表结构名称:满赠促销单促销规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHK;
drop index AK_TB_PMTHK;
drop table TB_PMTHK;
create table TB_PMTHK  (
   PMTHK_ID             INTEGER                         not null,  /*促销规则ID        */
   PMTHK001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHK002             NUMBER(12,2),                              /*开始金额          */
   PMTHK003             NUMBER(12,2),                              /*结束金额          */
   PMTHK004             INTEGER                         not null,  /*赠品ID            */
   PMTHK005             INTEGER,                                   /*单位ID            */
   PMTHK006             NUMBER(12,2),                              /*单价              */
   PMTHK007             NUMBER(18,3),                              /*数量              */
   PMTHK008             NUMBER(12,2),                              /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHK primary key (PMTHK_ID)
);
create unique index AK_TB_PMTHK on TB_PMTHK (PMTHK001,PMTHK002,PMTHK004);
create sequence SEQ_TB_PMTHK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHK to public;
grant index  on TB_PMTHK to public;
grant update on TB_PMTHK to public; 
grant delete on TB_PMTHK to public;  
grant insert on TB_PMTHK to public; 
grant select on SEQ_TB_PMTHK to public;   