/*
================================================================================
表结构代码:TB_BILFA
表结构名称:促销费用分摊单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILFA;
drop index AK_TB_BILFA;
drop table TB_BILFA;
create table TB_BILFA  (
   BILFA_ID             INTEGER                         not null,  /*促销费用分摊单ID     */
   BILFA001             INTEGER                         not null,  /*单别ID               */
   BILFA002             VARCHAR2(30)                    not null,  /*分摊单号             */
   BILFA003             DATE                            not null,  /*分摊日期             */
   BILFA004             INTEGER                         not null,  /*营运组织ID           */
   BILFA005             INTEGER                         not null,  /*业务部门ID           */
   BILFA006             INTEGER                         not null,  /*业务人员ID           */
   BILFA007             VARCHAR2(100),                             /*经营大类             */
   BILFA008             VARCHAR2(100),                             /*经营中类             */
   BILFA009             VARCHAR2(100),                             /*经营小类             */
   BILFA010             VARCHAR2(100),                             /*摊位                 */
   BILFA011             DATE                            not null,  /*分摊截止日期         */
   BILFA012             VARCHAR2(255),                             /*备注                 */
   BILFA013             INTEGER,                                   /*录入人ID             */
   BILFA014             DATE,                                      /*录入日期             */
   BILFA015             INTEGER,                                   /*审核人ID             */
   BILFA016             DATE,                                      /*审核日期             */
   BILFA017             VARCHAR2(1)                     not null,  /*审核状态             */
   BILFA018             VARCHAR2(1),                               /*是否签核             */
   BILFA019             VARCHAR2(30),                              /*签核单号             */
   BILFA020             VARCHAR2(1),                               /*签核码               */
   BILFA021             INTEGER,                                   /*费用ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILFA primary key (BILFA_ID)
);
create unique index AK_TB_BILFA on TB_BILFA (BILFA001,BILFA002);
create sequence SEQ_TB_BILFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFA to public;
grant index  on TB_BILFA to public;
grant update on TB_BILFA to public; 
grant delete on TB_BILFA to public;  
grant insert on TB_BILFA to public; 
grant select on SEQ_TB_BILFA to public;   