/*
================================================================================
表结构代码:TB_PUBKR
表结构名称:门店收款方式表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBKR;
drop index AK_TB_PUBKR;
drop table TB_PUBKR;
create table TB_PUBKR  (
   PUBKR_ID             INTEGER                         not null,  /*门店收款方式id     */
   PUBKR001             VARCHAR2(4)                     not null,  /*商场id             */
   PUBKR002             VARCHAR2(30)                    not null,  /*收款方式id         */ 
   PUBKR003             INTEGER                         not null,  /*序号               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBKR primary key (PUBKR_ID)
);
create unique index AK_TB_PUBKR on TB_PUBKR (PUBKR001,PUBKR002,FLAG);
create sequence SEQ_TB_PUBKR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKR to public;
grant index  on TB_PUBKR to public;
grant update on TB_PUBKR to public; 
grant delete on TB_PUBKR to public;  
grant insert on TB_PUBKR to public; 
grant select on SEQ_TB_PUBKR to public;   