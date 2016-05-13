/*
================================================================================
表结构代码:TB_PUBCF
表结构名称:营运组织类型表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCF;
drop index AK_TB_PUBCF;
drop table TB_PUBCF;
create table TB_PUBCF  (
   PUBCF_ID             INTEGER                         not null,  /*营运组织类型ID             */
   PUBCF001             VARCHAR2(4)                     not null,  /*营运组织类型代码           */
   PUBCF002             VARCHAR2(20)                    not null,  /*营运组织类型名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		*/                               
   CREATE_DATE          DATE,                                      /*建立日期			*/
   MODIFIER             VARCHAR2(12),                              /*修改人员			*/
   MODI_DATE            DATE,                                      /*修改日期			*/
   FLAG                 NUMBER(1),                                 /*资料状态			*/
   constraint PK_TB_PUBCF primary key (PUBCF_ID)
);
create unique index AK_TB_PUBCF on TB_PUBCF (PUBCF001);
create sequence SEQ_TB_PUBCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCF to public;
grant index  on TB_PUBCF to public;
grant update on TB_PUBCF to public; 
grant delete on TB_PUBCF to public;  
grant insert on TB_PUBCF to public; 
grant select on SEQ_TB_PUBCF to public;   