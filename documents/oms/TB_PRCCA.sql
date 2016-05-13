/*
================================================================================
表结构代码:TB_PRCCA
表结构名称:价格策略调整单头表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCCA;
drop index AK_TB_PRCCA;
drop table TB_PRCCA;
create table TB_PRCCA  (
   PRCCA_ID             INTEGER                         not null,  /*价格策略调整单头ID*/
   PRCCA001             INTEGER                         not null,  /*单别ID            */
   PRCCA002             VARCHAR2(30)                    not null,  /*价格策略调整单号  */
   PRCCA003             DATE                            not null,  /*单据日期          */
   PRCCA004             INTEGER                         not null,  /*价格策略ID        */
   PRCCA005             INTEGER                         not null,  /*调价营运组织ID    */
   PRCCA006             INTEGER,                                   /*调价部门ID        */
   PRCCA007             INTEGER,                                   /*调价人员ID        */
   PRCCA008             VARCHAR2(255),                             /*调价原因          */
   PRCCA009             VARCHAR2(1)                     not null,  /*状态              */
   PRCCA010             VARCHAR2(1),                               /*是否签核          */
   PRCCA011             VARCHAR2(30),                              /*签核单号          */
   PRCCA012             VARCHAR2(1),                               /*签核码            */
   PRCCA013             INTEGER,                                   /*录入人ID          */
   PRCCA014             DATE,                                      /*录入日期          */
   PRCCA015             INTEGER,                                   /*审核人ID          */
   PRCCA016             DATE,                                      /*审核日期          */
   PRCCA017             VARCHAR2(200),                             /*备用字段          */
   PRCCA018             VARCHAR2(200),                             /*备用字段          */
   PRCCA019             VARCHAR2(200),                             /*备用字段          */
   PRCCA020             VARCHAR2(200),                             /*备用字段          */
   PRCCA021             INTEGER,                                   /*商品策略          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCCA primary key (PRCCA_ID)
);
create unique index AK_TB_PRCCA on TB_PRCCA (PRCCA002);
create sequence SEQ_TB_PRCCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCCA to public;
grant index  on TB_PRCCA to public;
grant update on TB_PRCCA to public; 
grant delete on TB_PRCCA to public;  
grant insert on TB_PRCCA to public; 
grant select on SEQ_TB_PRCCA to public;   