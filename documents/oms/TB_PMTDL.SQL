/*
================================================================================
表结构代码:TB_PMTDL
表结构名称:单品买赠单规则赠品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDL;
drop index AK_TB_PMTDL;
drop table TB_PMTDL;
create table TB_PMTDL  (
   PMTDL_ID             INTEGER                         not null,  /*规则赠品ID        */
   PMTDL001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDL002            INTEGER                          not null,  /*买赠规则ID        */
   PMTDL003             INTEGER                         not null,  /*赠品ID            */
   PMTDL004             INTEGER                         not null,  /*单位ID            */
   PMTDL005             NUMBER(12,2),                              /*数量              */
   PMTDL006             NUMBER(12,2),                              /*单价              */
   PMTDL007             NUMBER(12,2),                              /*金额              */                                                                                         
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDL primary key (PMTDL_ID)
);
create unique index AK_TB_PMTDL on TB_PMTDL (PMTDL001,PMTDL002,PMTDL003,PMTDL005);
create sequence SEQ_TB_PMTDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDL to public;
grant index  on TB_PMTDL to public;
grant update on TB_PMTDL to public; 
grant delete on TB_PMTDL to public;  
grant insert on TB_PMTDL to public; 
grant select on SEQ_TB_PMTDL to public;   