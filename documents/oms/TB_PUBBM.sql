/*
================================================================================
表结构代码:TB_PUBBM
表结构名称:资质维护分配主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBM;
drop index AK_TB_PUBBM;
drop table TB_PUBBM;
create table TB_PUBBM  (
   PUBBM_ID             INTEGER                         not null,  /*分配单主ID         */
   PUBBM001             INTEGER                         not null,  /*分配单别           */
   PUBBM002             VARCHAR2(30)                    not null,  /*分配单号           */
   PUBBM003             DATE,                                      /*分配日期           */
   PUBBM004             INTEGER,                                   /*分配人             */
   PUBBM005             INTEGER,                                   /*营运组织           */
   PUBBM006             INTEGER,                                   /*录入人             */
   PUBBM007             DATE,                                      /*录入日期           */
   PUBBM008             VARCHAR2(1),                               /*单据状态           */
   PUBBM009             INTEGER,                                   /*审核人             */
   PUBBM010             DATE,                                      /*审核日期           */
   PUBBM011             VARCHAR2(255),                             /*备注               */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBM primary key (PUBBM_ID)
);
create unique index AK_TB_PUBBM on TB_PUBBM (PUBBM001,PUBBM002,FLAG);
create sequence SEQ_TB_PUBBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBM to public;
grant index  on TB_PUBBM to public;
grant update on TB_PUBBM to public; 
grant delete on TB_PUBBM to public;  
grant insert on TB_PUBBM to public; 
grant select on SEQ_TB_PUBBM to public;   