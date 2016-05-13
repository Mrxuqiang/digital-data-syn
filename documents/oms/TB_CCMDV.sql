/*
================================================================================
表结构代码:TB_CCMDV
表结构名称:预存退回单券明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDV;
drop index AK_TB_CCMDV;
drop table TB_CCMDV;
create table TB_CCMDV  (
   CCMDV_ID             INTEGER                         not null,  /*退回单券明细ID      */
   CCMDV001             INTEGER                                 ,  /*退回单ID            */
   CCMDV002             INTEGER                                 ,  /*券种ID              */
   CCMDV003             INTEGER                                 ,  /*券面额ID            */
   CCMDV004             NUMBER(12,2)                            ,  /*券面额金额          */
   CCMDV005             NUMBER(30)                              ,  /*开始号码            */
   CCMDV006             NUMBER(30)                              ,  /*结束号码            */
   CCMDV007             NUMBER(12)                              ,  /*张数                */
   CCMDV008             NUMBER(12,2)                            ,  /*券金额              */
   CCMDV009             NUMBER(22,2)                               /*预存券折扣率(%)     */
   CCMDV010             NUMBER(22,2)                               /*折后券金额          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CCMDV primary key (CCMDV_ID)
);
create unique index AK_TB_CCMDV on TB_CCMDV (CCMDV001,CCMDV002,CCMDV003);
create sequence SEQ_TB_CCMDV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDV to public;
grant index  on TB_CCMDV to public;
grant update on TB_CCMDV to public; 
grant delete on TB_CCMDV to public;  
grant insert on TB_CCMDV to public; 
grant select on SEQ_TB_CCMDV to public;   