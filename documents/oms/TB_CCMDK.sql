/*
================================================================================
表结构代码:TB_CCMDK
表结构名称:券领退单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDK;
drop index AK_TB_CCMDK;
drop table TB_CCMDK;
create table TB_CCMDK  (
   CCMDK_ID             INTEGER                         not null,  /*券领退单明细ID      */
   CCMDK001             INTEGER                         not null,  /*券领退单ID          */
   CCMDK002             INTEGER                         not null,  /*券种ID              */
   CCMDK003             INTEGER                         not null,  /*券面额ID            */
   CCMDK004             NUMBER(12,2)                    not null,  /*券面额金额          */
   CCMDK005             NUMBER(30)                      not null,  /*开始券号            */
   CCMDK006             NUMBER(30)                      not null,  /*结束券号            */
   CCMDK007             NUMBER(12)                      not null,  /*张数                */
   CCMDK008             NUMBER(12,2)                    not null,  /*券金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDK primary key (CCMDK_ID)
);
create unique index AK_TB_CCMDK on TB_CCMDK (CCMDK001,CCMDK002,CCMDK003,CCMDK005);
create sequence SEQ_TB_CCMDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDK to public;
grant index  on TB_CCMDK to public;
grant update on TB_CCMDK to public; 
grant delete on TB_CCMDK to public;  
grant insert on TB_CCMDK to public; 
grant select on SEQ_TB_CCMDK to public;   