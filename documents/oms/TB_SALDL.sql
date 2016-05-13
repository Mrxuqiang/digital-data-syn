/*
================================================================================
表结构代码:TB_SALDL
表结构名称:退货垫付还回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDL;
drop index AK_TB_SALDL;
drop table TB_SALDL;
create table TB_SALDL  (
   SALDL_ID             INTEGER                         not null,  /*退货垫付还回单ID */
   SALDL001             INTEGER                         not null,  /*单别ID           */
   SALDL002             VARCHAR2(30)                    not null,  /*还回单号         */
   SALDL003             DATE                            not null,  /*还回日期         */
   SALDL004             INTEGER                         not null,  /*营运组织ID       */
   SALDL005             INTEGER                         not null,  /*退货垫付单ID     */
   SALDL006             INTEGER,                                   /*摊位ID           */
   SALDL007             INTEGER,                                   /*租赁合同ID       */
   SALDL008             INTEGER                         not null,  /*租赁商户ID       */
   SALDL009             INTEGER,                                   /*业务部门ID       */
   SALDL010             INTEGER,                                   /*业务人员ID       */
   SALDL011             VARCHAR2(255),                             /*备注             */
   SALDL012             INTEGER,                                   /*录入人ID         */
   SALDL013             DATE,                                      /*录入日期         */
   SALDL014             INTEGER,                                   /*审核人ID         */
   SALDL015             DATE,                                      /*审核日期         */
   SALDL016             VARCHAR2(1)                     not null,  /*审核状态         */
   SALDL017             VARCHAR2(1),                               /*是否签核         */
   SALDL018             VARCHAR2(30),                              /*签核单号         */
   SALDL019             VARCHAR2(1),                               /*签核码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDL primary key (SALDL_ID)
);
create unique index AK_TB_SALDL on TB_SALDL (SALDL002);
create sequence SEQ_TB_SALDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDL to public;
grant index  on TB_SALDL to public;
grant update on TB_SALDL to public; 
grant delete on TB_SALDL to public;  
grant insert on TB_SALDL to public; 
grant select on SEQ_TB_SALDL to public;   