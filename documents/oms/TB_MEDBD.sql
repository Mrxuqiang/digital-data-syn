/*
================================================================================
表结构代码:TB_MEDBD
表结构名称:素材定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDBD;
drop index AK_TB_MEDBD;
drop table TB_MEDBD;
create table TB_MEDBD  (
   MEDBD_ID             INTEGER                         not null,  /*素材ID             */
   MEDBD001             VARCHAR2(4)                     not null,  /*素材编号           */
   MEDBD002             VARCHAR2(30)                    not null,  /*素材简称           */
   MEDBD003             VARCHAR2(30),                              /*素材全称           */
   MEDBD004             INTEGER,                                   /*素材单位           */
   MEDBD005             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDBD primary key (MEDBD_ID)
);
create unique index AK_TB_MEDBD on TB_MEDBD (MEDBD001);
create sequence SEQ_TB_MEDBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBD to public;
grant index  on TB_MEDBD to public;
grant update on TB_MEDBD to public; 
grant delete on TB_MEDBD to public;  
grant insert on TB_MEDBD to public; 
grant select on SEQ_TB_MEDBD to public;   