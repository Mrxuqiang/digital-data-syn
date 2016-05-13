/*
================================================================================
表结构代码:TB_PRODG
表结构名称:施工监督单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODG;
drop index AK_TB_PRODG;
drop table TB_PRODG;
create table TB_PRODG  (
   PRODG_ID             INTEGER                         not null,  /*施工监督单子表ID    */
   PRODG001             INTEGER                         not null,  /*施工监督单ID        */
   PRODG002             INTEGER                         not null,  /*违章项目ID          */
   PRODG003             DATE,				           /*对应费用ID          */
   PRODG004             NUMBER(12,2),				   /*处罚金额            */
   PRODG005             VARCHAR2(100),				   /*处罚方式            */
   PRODG006             INTEGER,     		                   /*费用单ID            */
   PRODG007             INTEGER,     		                   /*费用单明细ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODG primary key (PRODG_ID)
);
create unique index AK_TB_PRODG on TB_PRODG (PRODG001,PRODG002);
create sequence SEQ_TB_PRODG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODG to public;
grant index  on TB_PRODG to public;
grant update on TB_PRODG to public; 
grant delete on TB_PRODG to public;  
grant insert on TB_PRODG to public; 
grant select on SEQ_TB_PRODG to public;   