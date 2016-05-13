/*
================================================================================
表结构代码:TB_SYSAG
表结构名称:报表单元项表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAG;
drop index AK_TB_SYSAG;
drop table TB_SYSAG;
create table TB_SYSAG  (
   SYSAG_ID             INTEGER                         not null,  /*单元项ID          */
   SYSAG001             VARCHAR2(5)                     not null,  /*编码              */
   SYSAG002             VARCHAR2(30)                    not null,  /*单位名称          */
   SYSAG003             VARCHAR2(1)                     not null,  /*类别:0.文字 1数字 2条码 3图片            */
   SYSAG004             NUMBER(3),                                 /*数字精度          */
   SYSAG005             NUMBER(5),                                 /*字段长度            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SYSAG primary key (SYSAG_ID)
);
create unique index AK_TB_SYSAG on TB_SYSAG (SYSAG001);
create sequence SEQ_TB_SYSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAG to public;
grant index  on TB_SYSAG to public;
grant update on TB_SYSAG to public; 
grant delete on TB_SYSAG to public;  
grant insert on TB_SYSAG to public; 
grant select on SEQ_TB_SYSAG to public;   