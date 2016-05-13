/*
================================================================================
表结构代码:TB_CONBM
表结构名称:合同周期性固定费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBM;
drop index AK_TB_CONBM;
drop table TB_CONBM;
create table TB_CONBM  (
   CONBM_ID             INTEGER                         not null,  /*合同周期性固定费用明细ID */
   CONBM001             INTEGER                         not null,  /*合同ID              */
   CONBM002             INTEGER                         not null,  /*合同周期性固定费用ID*/
   CONBM003             DATE                            not null,  /*开始日期            */
   CONBM004             DATE                            not null,  /*结束日期            */
   CONBM005             NUMBER(12,2)                    not null,  /*基准数              */
   CONBM006             NUMBER(12,2)                    not null,  /*基准单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBM primary key (CONBM_ID)
);
create unique index AK_TB_CONBM on TB_CONBM (CONBM001,CONBM002,CONBM003);
create sequence SEQ_TB_CONBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBM to public;
grant index  on TB_CONBM to public;
grant update on TB_CONBM to public; 
grant delete on TB_CONBM to public;  
grant insert on TB_CONBM to public; 
grant select on SEQ_TB_CONBM to public;   