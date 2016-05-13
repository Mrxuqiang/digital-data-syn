/*
================================================================================
表结构代码:TB_SERAE
表结构名称:销售凭证收回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAE;
drop index AK_TB_SERAE;
drop table TB_SERAE;
create table TB_SERAE  (
   SERAE_ID             INTEGER                         not null,  /*销售凭证收回单ID     */
   SERAE001             INTEGER                         not null,  /*单别ID               */
   SERAE002             VARCHAR2(30)                    not null,  /*收回单号             */
   SERAE003             DATE                            not null,  /*单据日期             */
   SERAE004             INTEGER                         not null,  /*公司ID               */
   SERAE005             INTEGER                         not null,  /*营运组织ID           */
   SERAE006             DATE                            not null,  /*收回日期             */
   SERAE007             INTEGER                         not null,  /*业务部门ID           */
   SERAE008             INTEGER                         not null,  /*业务人员ID           */
   SERAE009             INTEGER                         not null,  /*客商ID               */
   SERAE010             INTEGER                         not null,  /*摊位ID               */
   SERAE011             INTEGER                         not null,  /*合同ID               */
   SERAE012             VARCHAR2(255),                             /*备注                 */
   SERAE013             INTEGER,                                   /*录入人ID             */
   SERAE014             DATE,                                      /*录入日期             */
   SERAE015             INTEGER,                                   /*审核人ID             */
   SERAE016             DATE,                                      /*审核日期             */
   SERAE017             VARCHAR2(1)                     not null,  /*审核状态             */
   SERAE018             VARCHAR2(1),                               /*是否签核             */
   SERAE019             VARCHAR2(30),                              /*签核单号             */
   SERAE020             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SERAE primary key (SERAE_ID)
);
create unique index AK_TB_SERAE on TB_SERAE (SERAE002,SERAE005);
create sequence SEQ_TB_SERAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAE to public;
grant index  on TB_SERAE to public;
grant update on TB_SERAE to public; 
grant delete on TB_SERAE to public;  
grant insert on TB_SERAE to public; 
grant select on SEQ_TB_SERAE to public;   