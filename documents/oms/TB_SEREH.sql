/*
================================================================================
表结构代码:TB_SEREH
表结构名称:赠品出库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREH;
drop index AK_TB_SEREH;
drop table TB_SEREH;
create table TB_SEREH  (
   SEREH_ID             INTEGER                         not null,  /*赠品出库单明细ID    */
   SEREH001             INTEGER                         not null,  /*赠品出库单ID        */
   SEREH002             INTEGER                         not null,  /*赠品ID              */
   SEREH003             INTEGER                         not null,  /*单位ID              */
   SEREH004             NUMBER(18,3)                    not null,  /*数量                */
   SEREH005             NUMBER(12,2)                    not null,  /*单价                */
   SEREH006             NUMBER(12,2)                    not null,  /*金额                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SEREH primary key (SEREH_ID)
);
create unique index AK_TB_SEREH on TB_SEREH (SEREH_ID,SEREH001,SEREH002);
create sequence SEQ_TB_SEREH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREH to public;
grant index  on TB_SEREH to public;
grant update on TB_SEREH to public; 
grant delete on TB_SEREH to public;  
grant insert on TB_SEREH to public; 
grant select on SEQ_TB_SEREH to public;   