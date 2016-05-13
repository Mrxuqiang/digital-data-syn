/*
================================================================================
表结构代码:TB_CONAN
表结构名称:合同频率条款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAN;
drop index AK_TB_CONAN;
drop table TB_CONAN;
create table TB_CONAN  (
   CONAN_ID             INTEGER                         not null,  /*合同频率条款ID      */
   CONAN001             VARCHAR2(4)                     not null,  /*频率条款编码        */
   CONAN002             VARCHAR2(60)                    not null,  /*频率条款名称        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONAN primary key (CONAN_ID)
);
create unique index AK_TB_CONAN on TB_CONAN (CONAN001);
create sequence SEQ_TB_CONAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAN to public;
grant index  on TB_CONAN to public;
grant update on TB_CONAN to public; 
grant delete on TB_CONAN to public;  
grant insert on TB_CONAN to public; 
grant select on SEQ_TB_CONAN to public;   