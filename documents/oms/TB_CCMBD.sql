/*
================================================================================
表结构代码:TB_CCMBD
表结构名称:白卡领用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBD;
drop index AK_TB_CCMBD;
drop table TB_CCMBD;
create table TB_CCMBD  (
   CCMBD_ID             INTEGER                         not null,  /*白卡领用单明细ID    */
   CCMBD001             INTEGER                         not null,  /*白卡领用单ID        */
   CCMBD002             INTEGER                         not null,  /*卡种ID              */
   CCMBD003             NUMBER(18)                      not null,  /*开始卡号            */
   CCMBD004             NUMBER(18)                      not null,  /*结束卡号            */
   CCMBD005             NUMBER(12)                      not null,  /*张数                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBD primary key (CCMBD_ID)
);
create unique index AK_TB_CCMBD on TB_CCMBD (CCMBD001,CCMBD002,CCMBD003);
create sequence SEQ_TB_CCMBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBD to public;
grant index  on TB_CCMBD to public;
grant update on TB_CCMBD to public; 
grant delete on TB_CCMBD to public;  
grant insert on TB_CCMBD to public; 
grant select on SEQ_TB_CCMBD to public;   