/*
================================================================================
表结构代码:TB_PUBGR
表结构名称:客商银行表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGR;
drop index AK_TB_PUBGR;
drop table TB_PUBGR;
create table TB_PUBGR  (
   PUBGR_ID             INTEGER                         not null,  /*客商银行ID         */
   PUBGR001             INTEGER                         not null,  /*客商ID             */
   PUBGR002             VARCHAR2(50)                    not null,  /*银行帐号           */
   PUBGR003             VARCHAR2(255)                   not null,  /*银行名称           */
   PUBGR004             VARCHAR2(255)                   not null,  /*银行地址           */
   PUBGR005             INTEGER                         not null,  /*币种ID             */
   PUBGR006             VARCHAR2(1),                               /*是否默认           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGR primary key (PUBGR_ID)
);
create unique index AK_TB_PUBGR on TB_PUBGR (PUBGR001,PUBGR002);
create sequence SEQ_TB_PUBGR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGR to public;
grant index  on TB_PUBGR to public;
grant update on TB_PUBGR to public; 
grant delete on TB_PUBGR to public;  
grant insert on TB_PUBGR to public; 
grant select on SEQ_TB_PUBGR to public;   