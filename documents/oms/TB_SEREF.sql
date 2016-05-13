/*
================================================================================
表结构代码:TB_SEREF
表结构名称:赠品领用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREF;
drop index AK_TB_SEREF;
drop table TB_SEREF;
create table TB_SEREF  (
   SEREF_ID             INTEGER                         not null,  /*赠品领用单明细ID    */
   SEREF001             INTEGER                         not null,  /*赠品领用单ID        */
   SEREF002             INTEGER                         not null,  /*赠品ID              */
   SEREF003             INTEGER                         not null,  /*单位ID              */
   SEREF004             NUMBER(18,3)                    not null,  /*数量                */
   SEREF005             NUMBER(12,2)                    not null,  /*单价                */
   SEREF006             NUMBER(12,2)                    not null,  /*金额                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SEREF primary key (SEREF_ID)
);
create unique index AK_TB_SEREF on TB_SEREF (SEREF_ID,SEREF001,SEREF002);
create sequence SEQ_TB_SEREF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREF to public;
grant index  on TB_SEREF to public;
grant update on TB_SEREF to public; 
grant delete on TB_SEREF to public;  
grant insert on TB_SEREF to public; 
grant select on SEQ_TB_SEREF to public;   