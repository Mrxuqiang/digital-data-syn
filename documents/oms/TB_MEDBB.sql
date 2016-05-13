/*
================================================================================
表结构代码:TB_MEDBB
表结构名称:媒体价格表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDBB;
drop index AK_TB_MEDBB;
drop table TB_MEDBB;
create table TB_MEDBB  (
   MEDBB_ID             INTEGER                         not null,  /*媒体价格ID         */
   MEDBB001             INTEGER                         not null,  /*媒体ID             */
   MEDBB002             VARCHAR2(8)                     not null,  /*开始时段           */
   MEDBB003             VARCHAR2(8)                     not null,  /*结束时段           */
   MEDBB004             INTEGER                         not null,  /*单位ID             */
   MEDBB005             NUMBER(12,2),				   /*单价               */
   MEDBB006             VARCHAR2(255),				   /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDBB primary key (MEDBB_ID)
);
create unique index AK_TB_MEDBB on TB_MEDBB (MEDBB001,MEDBB002);
create sequence SEQ_TB_MEDBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBB to public;
grant index  on TB_MEDBB to public;
grant update on TB_MEDBB to public; 
grant delete on TB_MEDBB to public;  
grant insert on TB_MEDBB to public; 
grant select on SEQ_TB_MEDBB to public;   