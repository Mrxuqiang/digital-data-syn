/*
================================================================================
表结构代码:TB_PUBHH
表结构名称:商品维度信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHH;
drop index AK_TB_PUBHH;
drop table TB_PUBHH;
create table TB_PUBHH  (
   PUBHH_ID             INTEGER                         not null,  /*维度项ID          */
   PUBHH001             VARCHAR2(2)                     not null,  /*维度组            */
   PUBHH002             VARCHAR2(8)                     not null,  /*维度项代码        */
   PUBHH003             VARCHAR2(32)                    not null,  /*维度项描述        */
   PUBHH004             VARCHAR2(30)                    not null,  /*维度组名称        */
   PUBHH005             VARCHAR2(255),                             /*备注              */
   PUBHH006		VARCHAR2(1)			not null,  /*是否可订          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHH primary key (PUBHH_ID)
);
create unique index AK_TB_PUBHH on TB_PUBHH (PUBHH001,PUBHH002);
create sequence SEQ_TB_PUBHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHH to public;
grant index  on TB_PUBHH to public;
grant update on TB_PUBHH to public; 
grant delete on TB_PUBHH to public;  
grant insert on TB_PUBHH to public; 
grant select on SEQ_TB_PUBHH to public;   