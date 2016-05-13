/*
================================================================================
表结构代码:TB_HRBAM
表结构名称:薪资组子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAM;
drop index AK_TB_HRBAM;
drop table TB_HRBAM;
create table TB_HRBAM  (
   HRBAM_ID             INTEGER                         not null,  /*薪资组子表ID       */
   HRBAM001             VARCHAR2(8)                     not null,  /*薪资组编号         */
   HRBAM002             VARCHAR2(8)                     not null,  /*序号               */
   HRBAM003             VARCHAR2(8)                     not null,  /*薪资类别编号       */   
   HRBAM004             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAM primary key (HRBAM_ID)
);
create unique index AK_TB_HRBAM on TB_HRBAM (HRBAM001);
create sequence SEQ_TB_HRBAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAM to public;
grant index  on TB_HRBAM to public;
grant update on TB_HRBAM to public; 
grant delete on TB_HRBAM to public;  
grant insert on TB_HRBAM to public; 
grant select on SEQ_TB_HRBAM to public;   