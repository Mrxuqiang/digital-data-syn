/*
================================================================================
表结构代码:TB_PRODL
表结构名称:出入证收回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODL;
drop index AK_TB_PRODL;
drop table TB_PRODL;
create table TB_PRODL  (
   PRODL_ID             INTEGER                         not null,  /*出入证收回单ID	 */
   PRODL001             INTEGER                         not null,  /*单别		 */
   PRODL002             VARCHAR2(30)                    not null,  /*发证单号		 */
   PRODL003             DATE                            not null,  /*发证日期		 */
   PRODL004             INTEGER                         not null,  /*申请单ID            */
   PRODL005             INTEGER                         not null,  /*营运组织ID		 */
   PRODL006             INTEGER                         not null,  /*收回部门ID		 */
   PRODL007             INTEGER                         not null,  /*收回人员ID		 */
   PRODL008             VARCHAR2(30),                              /*备注                */
   PRODL009             INTEGER,                                   /*录入人ID            */
   PRODL010             DATE,                                      /*录入日期            */
   PRODL011             INTEGER,                                   /*审核人ID            */
   PRODL012             DATE,                                      /*审核日期            */
   PRODL013             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODL014             VARCHAR2(1),                               /*是否签核            */
   PRODL015             VARCHAR2(30),                              /*签核单号            */
   PRODL016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODL primary key (PRODL_ID)
);
create unique index AK_TB_PRODL on TB_PRODL (PRODL002,PRODL005);
create sequence SEQ_TB_PRODL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODL to public;
grant index  on TB_PRODL to public;
grant update on TB_PRODL to public; 
grant delete on TB_PRODL to public;  
grant insert on TB_PRODL to public; 
grant select on SEQ_TB_PRODL to public;   
