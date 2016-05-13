/*
================================================================================
表结构代码:TB_CONAF
表结构名称:合同打印模版表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAF;
drop index AK_TB_CONAF;
drop table TB_CONAF;
create table TB_CONAF  (
   CONAF_ID             INTEGER                         not null,  /*打印模块ID          */
   CONAF001             INTEGER                         not null,  /*公司ID              */
   CONAF002             INTEGER                         not null,  /*营运组织ID          */
   CONAF003             VARCHAR2(16)                    not null,  /*模板编号            */
   CONAF004             VARCHAR2(30)                    not null,  /*模板描述            */
   CONAF005             DATE                            not null,  /*生效日期            */
   CONAF006             INTEGER,                                   /*录入人ID            */
   CONAF007             DATE,                                      /*录入日期            */
   CONAF008             INTEGER,                                   /*审核人ID            */
   CONAF009             DATE,                                      /*审核日期            */
   CONAF010             VARCHAR2(1)                     not null,  /*审核状态            */
   CONAF011             VARCHAR2(30)                    not null,  /*SAP公司代码         */
   CONAF012             VARCHAR2(30)                    not null,  /*SAP商业实体         */  
   CONAF013             VARCHAR2(30)                    not null,  /*打印模板       */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONAF primary key (CONAF_ID)
);
create unique index AK_TB_CONAF on TB_CONAF (CONAF002,CONAF003);
create sequence SEQ_TB_CONAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAF to public;
grant index  on TB_CONAF to public;
grant update on TB_CONAF to public; 
grant delete on TB_CONAF to public;  
grant insert on TB_CONAF to public; 
grant select on SEQ_TB_CONAF to public;   