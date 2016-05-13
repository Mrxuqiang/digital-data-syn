/*
================================================================================
表结构代码:TB_PUBHF
表结构名称:商品条码表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHF;
drop index AK_TB_PUBHF;
drop table TB_PUBHF;
create table TB_PUBHF  (
   PUBHF_ID             INTEGER                         not null,  /*条码ID            */
   PUBHF001             INTEGER                         not null,  /*商品ID            */
   PUBHF002             INTEGER                         not null,  /*单位ID            */
   PUBHF003             VARCHAR2(1)                     not null,  /*条码类型          */
   PUBHF004             VARCHAR2(32)                    not null,  /*条码号            */
   PUBHF005             INTEGER,                                   /*维度1             */
   PUBHF006             INTEGER,                                   /*维度2             */
   PUBHF007             INTEGER,                                   /*维度3             */
   PUBHF008             INTEGER,                                   /*维度4             */
   PUBHF009             INTEGER,                                   /*维度5             */
   PUBHF010             VARCHAR2(1)                     not null,  /*有效否            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */ 
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHF primary key (PUBHF_ID)
);
create unique index AK_TB_PUBHF on TB_PUBHF (PUBHF004);
create sequence SEQ_TB_PUBHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHF to public;
grant index  on TB_PUBHF to public;
grant update on TB_PUBHF to public; 
grant delete on TB_PUBHF to public;  
grant insert on TB_PUBHF to public; 
grant select on SEQ_TB_PUBHF to public;   