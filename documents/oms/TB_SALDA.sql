/*
================================================================================
表结构代码:TB_SALDA
表结构名称:预收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDA;
drop index AK_TB_SALDA;
drop table TB_SALDA;
create table TB_SALDA  (
   SALDA_ID             INTEGER                         not null,  /*预收单ID         */
   SALDA001             INTEGER                         not null,  /*单别ID           */
   SALDA002             VARCHAR2(30)                    not null,  /*预收单号         */
   SALDA003             DATE                            not null,  /*预收日期         */
   SALDA004             INTEGER                         not null,  /*公司ID           */
   SALDA005             INTEGER                         not null,  /*销售组织ID       */
   SALDA006             VARCHAR2(1)                     not null,  /*来源类型         */
   SALDA007             INTEGER,                                   /*来源ID           */
   SALDA008             INTEGER,                                   /*交款凭证种类ID   */
   SALDA009             NUMBER(12),                                /*交款凭证号       */
   SALDA010             INTEGER,                                   /*摊位ID           */
   SALDA011             VARCHAR2(1),                               /*摊位类型         */
   SALDA012             INTEGER,                                   /*租赁合同ID       */
   SALDA013             INTEGER,                                   /*租赁商户ID       */
   SALDA014             INTEGER,                                   /*客户ID           */
   SALDA015             VARCHAR2(30),                              /*顾客姓名         */
   SALDA016             VARCHAR2(30),                              /*联系电话         */
   SALDA017             INTEGER,                                   /*证件类型ID       */
   SALDA018             VARCHAR2(30),                              /*证件号码         */
   SALDA019             VARCHAR2(255),                             /*备注             */
   SALDA020             INTEGER,                                   /*录入人ID         */
   SALDA021             DATE,                                      /*录入日期         */
   SALDA022             INTEGER,                                   /*审核人ID         */
   SALDA023             DATE,                                      /*审核日期         */
   SALDA024             VARCHAR2(1)                     not null,  /*审核状态         */
   SALDA025             VARCHAR2(1),                               /*是否签核         */
   SALDA026             VARCHAR2(30),                              /*签核单号         */
   SALDA027             VARCHAR2(1),                               /*签核码           */
   SALDA028             VARCHAR2(16)                    not null,  /*来源单号         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDA primary key (SALDA_ID)
);
create unique index AK_TB_SALDA on TB_SALDA (SALDA002,SALDA005);
create sequence SEQ_TB_SALDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDA to public;
grant index  on TB_SALDA to public;
grant update on TB_SALDA to public; 
grant delete on TB_SALDA to public;  
grant insert on TB_SALDA to public; 
grant select on SEQ_TB_SALDA to public;   