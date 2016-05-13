/*
================================================================================
表结构代码:TB_CCMDG
表结构名称:券入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDG;
drop index AK_TB_CCMDG;
drop table TB_CCMDG;
create table TB_CCMDG  (
   CCMDG_ID             INTEGER                         not null,  /*券入库单明细ID      */
   CCMDG001             INTEGER                         not null,  /*券入库单ID          */
   CCMDG002             INTEGER                         not null,  /*券种ID              */
   CCMDG003             INTEGER                         not null,  /*券面额ID            */
   CCMDG004             NUMBER(12,2)                    not null,  /*券面额金额          */
   CCMDG005             NUMBER(30)                      not null,  /*开始号码            */
   CCMDG006             NUMBER(30)                      not null,  /*结束号码            */
   CCMDG007             NUMBER(12)                      not null,  /*张数                */
   CCMDG008             NUMBER(12,2)                    not null,  /*券金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDG primary key (CCMDG_ID)
);
create unique index AK_TB_CCMDG on TB_CCMDG (CCMDG001,CCMDG002,CCMDG003,CCMDG005);
create sequence SEQ_TB_CCMDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDG to public;
grant index  on TB_CCMDG to public;
grant update on TB_CCMDG to public; 
grant delete on TB_CCMDG to public;  
grant insert on TB_CCMDG to public; 
grant select on SEQ_TB_CCMDG to public;   