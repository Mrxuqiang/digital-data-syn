/*
================================================================================
表结构代码:TB_CONCC
表结构名称:合同变更一次性固定费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCC;
drop index AK_TB_CONCC;
drop table TB_CONCC;
create table TB_CONCC  (
   CONCC_ID             INTEGER                         not null,  /*合同变更一次性固定费用ID    */
   CONCC001             INTEGER                         not null,  /*合同变更ID          */
   CONCC002             INTEGER                         not null,  /*费用ID              */
   CONCC003             INTEGER                         not null,  /*公式ID              */
   CONCC004             DATE                            not null,  /*基准日期            */
   CONCC005             NUMBER(12,2)                    not null,  /*基准数              */
   CONCC006             NUMBER(12,2)                    not null,  /*基准单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCC primary key (CONCC_ID)
);
create unique index AK_TB_CONCC on TB_CONCC (CONCC001,CONCC002);
create sequence SEQ_TB_CONCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCC to public;
grant index  on TB_CONCC to public;
grant update on TB_CONCC to public; 
grant delete on TB_CONCC to public;  
grant insert on TB_CONCC to public; 
grant select on SEQ_TB_CONCC to public;   