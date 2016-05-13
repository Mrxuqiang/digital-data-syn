/*
================================================================================
表结构代码:TB_CONCL
表结构名称:合同变更帐单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCL;
drop index AK_TB_CONCL;
drop table TB_CONCL;
create table TB_CONCL  (
   CONCL_ID             INTEGER                         not null,  /*合同变更帐单费用明细ID*/
   CONCL001             INTEGER                         not null,  /*合同变更ID          */
   CONCL002             INTEGER                         not null,  /*合同变更帐单ID      */
   CONCL003             INTEGER                         not null,  /*费用ID              */
   CONCL004             DATE                            not null,  /*帐单日期            */
   CONCL005             NUMBER(12,2)                    not null,  /*经营面积            */
   CONCL006             NUMBER(12,2)                    not null,  /*基准数              */
   CONCL007             NUMBER(12,2)                    not null,  /*基准单位            */
   CONCL008             NUMBER(12,4)                    not null,  /*费用金额            */
   CONCL009             NUMBER(12,2),                              /*建筑面积            */
   CONCL010             NUMBER(12,2),                              /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCL primary key (CONCL_ID)
);
create unique index AK_TB_CONCL on TB_CONCL (CONCL001,CONCL002,CONCL003,CONCL004);
create sequence SEQ_TB_CONCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCL to public;
grant index  on TB_CONCL to public;
grant update on TB_CONCL to public; 
grant delete on TB_CONCL to public;  
grant insert on TB_CONCL to public; 
grant select on SEQ_TB_CONCL to public;   