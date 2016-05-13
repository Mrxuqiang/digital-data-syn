/*
================================================================================
表结构代码:TB_SERED
表结构名称:赠品入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERED;
drop index AK_TB_SERED;
drop table TB_SERED;
create table TB_SERED  (
   SERED_ID             INTEGER                         not null,  /*赠品入库单明细ID    */
   SERED001             INTEGER                         not null,  /*赠品入库单ID        */
   SERED002             INTEGER                         not null,  /*赠品ID              */
   SERED003             INTEGER                         not null,  /*单位ID              */
   SERED004             NUMBER(18,3)                    not null,  /*数量                */
   SERED005             NUMBER(12,2)                    not null,  /*单价                */
   SERED006             NUMBER(12,2)                    not null,  /*金额                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERED primary key (SERED_ID)
);
create unique index AK_TB_SERED on TB_SERED (SERED_ID,SERED001,SERED002);
create sequence SEQ_TB_SERED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERED to public;
grant index  on TB_SERED to public;
grant update on TB_SERED to public; 
grant delete on TB_SERED to public;  
grant insert on TB_SERED to public; 
grant select on SEQ_TB_SERED to public;   