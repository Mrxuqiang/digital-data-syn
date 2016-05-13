/*
================================================================================
表结构代码:TB_SALFA
表结构名称:销售检核表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALFA;
drop index AK_TB_SALFA;
drop table TB_SALFA;
create table TB_SALFA  (
   SALFA_ID             INTEGER                         not null,  /*销售检核ID        */
   SALFA001             INTEGER                         not null,  /*营运组织ID        */
   SALFA002             DATE                            not null,  /*销售日期          */
   SALFA003             INTEGER                         not null,  /*楼栋ID            */
   SALFA004             INTEGER                         not null,  /*楼层ID            */
   SALFA005             INTEGER                         not null,  /*大类ID            */
   SALFA006             VARCHAR2(1),                               /*数据核对          */
   SALFA007             INTEGER,                                   /*检核人员ID        */
   SALFA008             DATE,                                      /*检核日期          */
   SALFA009             VARCHAR2(100),                             /*说明              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SALFA primary key (SALFA_ID)
);
create unique index AK_TB_SALFA on TB_SALFA (SALFA001,SALFA002,SALFA003,SALFA004);
create sequence SEQ_TB_SALFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALFA to public;
grant index  on TB_SALFA to public;
grant update on TB_SALFA to public; 
grant delete on TB_SALFA to public;  
grant insert on TB_SALFA to public; 
grant select on SEQ_TB_SALFA to public;   