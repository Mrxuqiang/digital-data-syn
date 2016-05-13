/*
================================================================================
表结构代码:TB_PRODI
表结构名称:装修验收单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODI;
drop index AK_TB_PRODI;
drop table TB_PRODI;
create table TB_PRODI  (
   PRODI_ID             INTEGER                         not null,  /*装修验收单子表ID    */
   PRODI001             INTEGER                         not null,  /*装修验收单ID        */
   PRODI002             INTEGER                         not null,  /*验收项目ID          */
   PRODI003             VARCHAR2(100),				   /*验收内容            */
   PRODI004             VARCHAR2(100),				   /*验收结果            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODI primary key (PRODI_ID)
);
create unique index AK_TB_PRODI on TB_PRODI (PRODI001,PRODI002);
create sequence SEQ_TB_PRODI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODI to public;
grant index  on TB_PRODI to public;
grant update on TB_PRODI to public; 
grant delete on TB_PRODI to public;  
grant insert on TB_PRODI to public; 
grant select on SEQ_TB_PRODI to public;   