/*
================================================================================
表结构代码:TB_CCMBB
表结构名称:白卡入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBB;
drop index AK_TB_CCMBB;
drop table TB_CCMBB;
create table TB_CCMBB  (
   CCMBB_ID             INTEGER                         not null,  /*白卡入库单明细ID    */
   CCMBB001             INTEGER                         not null,  /*白卡入库单ID        */
   CCMBB002             INTEGER                         not null,  /*卡种ID              */
   CCMBB003             NUMBER(18)                      not null,  /*开始号码            */
   CCMBB004             NUMBER(18)                      not null,  /*结束号码            */
   CCMBB005             NUMBER(12)                      not null,  /*张数                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBB primary key (CCMBB_ID)
);
create unique index AK_TB_CCMBB on TB_CCMBB (CCMBB001,CCMBB002,CCMBB003);
create sequence SEQ_TB_CCMBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBB to public;
grant index  on TB_CCMBB to public;
grant update on TB_CCMBB to public; 
grant delete on TB_CCMBB to public;  
grant insert on TB_CCMBB to public; 
grant select on SEQ_TB_CCMBB to public;   