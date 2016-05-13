/*
================================================================================
表结构代码:TB_SERAG
表结构名称:销售凭证作废单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAG;
drop index AK_TB_SERAG;
drop table TB_SERAG;
create table TB_SERAG  (
   SERAG_ID             INTEGER                         not null,  /*销售凭证作废单ID     */
   SERAG001             INTEGER                         not null,  /*单别ID               */
   SERAG002             VARCHAR2(30)                    not null,  /*作废单号             */
   SERAG003             DATE                            not null,  /*单据日期             */
   SERAG004             INTEGER                         not null,  /*公司ID               */
   SERAG005             INTEGER                         not null,  /*营运组织ID           */
   SERAG006             DATE                            not null,  /*作废日期             */
   SERAG007             INTEGER                         not null,  /*作废部门ID           */
   SERAG008             INTEGER                         not null,  /*作废人员ID           */
   SERAG009             VARCHAR2(255),                             /*备注                 */
   SERAG010             INTEGER,                                   /*录入人ID             */
   SERAG011             DATE,                                      /*录入日期             */
   SERAG012             INTEGER,                                   /*审核人ID             */
   SERAG013             DATE,                                      /*审核日期             */
   SERAG014             VARCHAR2(1)                     not null,  /*审核状态             */
   SERAG015             VARCHAR2(1),                               /*是否签核             */
   SERAG016             VARCHAR2(30),                              /*签核单号             */
   SERAG017             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SERAG primary key (SERAG_ID)
);
create unique index AK_TB_SERAG on TB_SERAG (SERAG002,SERAG005);
create sequence SEQ_TB_SERAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAG to public;
grant index  on TB_SERAG to public;
grant update on TB_SERAG to public; 
grant delete on TB_SERAG to public;  
grant insert on TB_SERAG to public; 
grant select on SEQ_TB_SERAG to public;   