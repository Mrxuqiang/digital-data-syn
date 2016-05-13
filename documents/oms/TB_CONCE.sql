/*
================================================================================
表结构代码:TB_CONCE
表结构名称:合同变更周期性固定费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCE;
drop index AK_TB_CONCE;
drop table TB_CONCE;
create table TB_CONCE  (
   CONCE_ID             INTEGER                         not null,  /*合同变更周期性固定费用明细ID*/
   CONCE001             INTEGER                         not null,  /*合同变更ID          */
   CONCE002             INTEGER                         not null,  /*合同变更周期性固定费用ID */
   CONCE003             DATE                            not null,  /*开始日期            */
   CONCE004             DATE                            not null,  /*结束日期            */
   CONCE005             NUMBER(12,2)                    not null,  /*基准数              */
   CONCE006             NUMBER(12,2)                    not null,  /*基准单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCE primary key (CONCE_ID)
);
create unique index AK_TB_CONCE on TB_CONCE (CONCE001,CONCE002,CONCE003);
create sequence SEQ_TB_CONCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCE to public;
grant index  on TB_CONCE to public;
grant update on TB_CONCE to public; 
grant delete on TB_CONCE to public;  
grant insert on TB_CONCE to public; 
grant select on SEQ_TB_CONCE to public;   