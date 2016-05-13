/*
================================================================================
表结构代码:TB_CCMEB
表结构名称:消费券卡换券单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMEB;
drop index AK_TB_CCMEB;
drop table TB_CCMEB;
create table TB_CCMEB  (
   CCMEB_ID             INTEGER                         not null,  /*消费券卡换券单明细ID*/
   CCMEB001             INTEGER                         not null,  /*消费券卡换券单ID    */
   CCMEB002             INTEGER                         not null,  /*券种ID              */
   CCMEB003             DATE                            not null,  /*有效起日            */
   CCMEB004             DATE                            not null,  /*有效止日            */
   CCMEB005             NUMBER(12,2)                    not null,  /*券金额              */
   CCMEB006             INTEGER                         not null,  /*更换券种ID          */
   CCMEB007             DATE                            not null,  /*更换券有效起日      */
   CCMEB008             DATE                            not null,  /*更换券有效止日      */
   CCMEB009             NUMBER(12,2)                    not null,  /*更换券金额          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMEB primary key (CCMEB_ID)
);
create unique index AK_TB_CCMEB on TB_CCMEB (CCMEB001,CCMEB002);
create sequence SEQ_TB_CCMEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMEB to public;
grant index  on TB_CCMEB to public;
grant update on TB_CCMEB to public; 
grant delete on TB_CCMEB to public;  
grant insert on TB_CCMEB to public; 
grant select on SEQ_TB_CCMEB to public;   