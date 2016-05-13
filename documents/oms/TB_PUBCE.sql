/*
================================================================================
表结构代码:TB_PUBCE
表结构名称:经营类型表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCE;
drop index AK_TB_PUBCE;
drop table TB_PUBCE;
create table TB_PUBCE  (
   PUBCE_ID             INTEGER                         not null,  /*经营类型ID                 */
   PUBCE001             VARCHAR2(4)                     not null,  /*经营类型代码               */
   PUBCE002             VARCHAR2(20)                    not null,  /*经营类型名称               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		*/                               
   CREATE_DATE          DATE,                                      /*建立日期			*/
   MODIFIER             VARCHAR2(12),                              /*修改人员			*/
   MODI_DATE            DATE,                                      /*修改日期			*/
   FLAG                 NUMBER(1),                                 /*资料状态			*/
   constraint PK_TB_PUBCE primary key (PUBCE_ID)
);
create unique index AK_TB_PUBCE on TB_PUBCE (PUBCE001);
create sequence SEQ_TB_PUBCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCE to public;
grant index  on TB_PUBCE to public;
grant update on TB_PUBCE to public; 
grant delete on TB_PUBCE to public;  
grant insert on TB_PUBCE to public; 
grant select on SEQ_TB_PUBCE to public;   