/*
================================================================================
表结构代码:TB_CCMDO
表结构名称:预存单券明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDO;
drop index AK_TB_CCMDO;
drop table TB_CCMDO;
create table TB_CCMDO  (
   CCMDO_ID             INTEGER                         not null,  /*预存单券明细ID      */
   CCMDO001             INTEGER                                 ,  /*预存单ID            */
   CCMDO002             INTEGER                                 ,  /*券种ID              */
   CCMDO003             INTEGER                                 ,  /*券面额ID            */
   CCMDO004             NUMBER(12,2)                            ,  /*券面额金额          */
   CCMDO005             NUMBER(30)                              ,  /*开始号码            */
   CCMDO006             NUMBER(30)                              ,  /*结束号码            */
   CCMDO007             NUMBER(12)                              ,  /*张数                */
   CCMDO008             NUMBER(12,2)                            ,  /*券金额              */
   CCMDO009             NUMBER(22,2)                               /*预存券折扣率(%)     */ ADD OUWX 100606
   CCMDO010             NUMBER(22,2)                               /*折后券金额          */ ADD OUWX 100606
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CCMDO primary key (CCMDO_ID)
);
create unique index AK_TB_CCMDO on TB_CCMDO (CCMDO001,CCMDO002,CCMDO003);
create sequence SEQ_TB_CCMDO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDO to public;
grant index  on TB_CCMDO to public;
grant update on TB_CCMDO to public; 
grant delete on TB_CCMDO to public;  
grant insert on TB_CCMDO to public; 
grant select on SEQ_TB_CCMDO to public;   