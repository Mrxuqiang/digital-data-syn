/*
================================================================================
表结构代码:TB_CONBR
表结构名称:合同费用项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBR;
drop index AK_TB_CONBR;
drop table TB_CONBR;
create table TB_CONBR  (
   CONBR_ID             INTEGER                         not null,  /*合同费用项目ID      */
   CONBR001             INTEGER                         not null,  /*合同ID              */
   CONBR002             INTEGER                         not null,  /*费用ID              */
   CONBR003             VARCHAR2(1)                     not null,  /*计算类型            */
   CONBR004             VARCHAR2(1)                     not null,  /*是否选择            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBR primary key (CONBR_ID)
);
create unique index AK_TB_CONBR on TB_CONBR (CONBR001,CONBR002);
create sequence SEQ_TB_CONBR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBR to public;
grant index  on TB_CONBR to public;
grant update on TB_CONBR to public; 
grant delete on TB_CONBR to public;  
grant insert on TB_CONBR to public; 
grant select on SEQ_TB_CONBR to public;   