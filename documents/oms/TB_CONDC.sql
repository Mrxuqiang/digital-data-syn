/*
================================================================================
表结构代码:TB_CONDC
表结构名称:合同终止帐单费用明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONDC;
drop index AK_TB_CONDC;
drop table TB_CONDC;
create table TB_CONDC  (
   CONDC_ID             INTEGER                         not null,  /*合同终止帐单费用明细ID */
   CONDC001             INTEGER                         not null,  /*合同终止ID          */
   CONDC002             INTEGER                         not null,  /*合同终止差异帐单ID  */
   CONDC003             INTEGER                         not null,  /*费用ID              */
   CONDC004             DATE                            not null,  /*帐单日期            */
   CONDC005             NUMBER(12,2)                    not null,  /*经营面积            */
   CONDC006             NUMBER(12,2)                    not null,  /*基准数              */
   CONDC007             NUMBER(12,2)                    not null,  /*基准单位            */
   CONDC008             NUMBER(12,4)                    not null,  /*费用金额            */
   CONDC009             NUMBER(12,2),                              /*建筑面积            */
   CONDC010             NUMBER(12,2),                              /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONDC primary key (CONDC_ID)
);
create unique index AK_TB_CONDC on TB_CONDC (CONDC001,CONDC002,CONDC003,CONDC004);
create sequence SEQ_TB_CONDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDC to public;
grant index  on TB_CONDC to public;
grant update on TB_CONDC to public; 
grant delete on TB_CONDC to public;  
grant insert on TB_CONDC to public; 
grant select on SEQ_TB_CONDC to public;   