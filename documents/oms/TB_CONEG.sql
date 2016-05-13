/*
================================================================================
表结构代码:TB_CONEG
表结构名称:供应商合同返利表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEG;
drop index AK_TB_CONEG;
drop table TB_CONEG;
create table TB_CONEG  (
   CONEG_ID             INTEGER                         not null,  /*合同返利ID          */
   CONEG001             INTEGER                         not null,  /*合同ID              */
   CONEG002             INTEGER                         not null,  /*费用ID              */
   CONEG003             VARCHAR2(1)                     not null,  /*费用周期            */
   CONEG004             VARCHAR2(1)                     not null,  /*分段计算方法        */
   CONEG005             INTEGER                         not null,  /*营运组织ID          */
   CONEG006             VARCHAR2(1)                     not null,  /*基准营运组织        */
   CONEG007             VARCHAR2(1)                     not null,  /*基准费用            */
   CONEG008             NUMBER(12,2),                              /*基准费用比率(%)     */
   CONEG009             NUMBER(12,2),                              /*返利比例(%)         */
   CONEG010             NUMBER(12,2),                              /*毛利下限            */
   CONEG011             NUMBER(12,2),                              /*毛利上限            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEG primary key (CONEG_ID)
);
create unique index AK_TB_CONEG on TB_CONEG (CONEG001,CONEG002,CONEG003,CONEG005);
create sequence SEQ_TB_CONEG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEG to public;
grant index  on TB_CONEG to public;
grant update on TB_CONEG to public; 
grant delete on TB_CONEG to public;  
grant insert on TB_CONEG to public; 
grant select on SEQ_TB_CONEG to public;   