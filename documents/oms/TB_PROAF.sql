/*
================================================================================
表结构代码:TB_PROAF
表结构名称:话费单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAF;
drop index AK_TB_PROAF;
drop table TB_PROAF;
create table TB_PROAF  (
   PROAF_ID             INTEGER                         not null,  /*话费单ID             */
   PROAF001             INTEGER                         not null,  /*单别ID               */
   PROAF002             VARCHAR2(30)                    not null,  /*话费单号             */
   PROAF003             DATE                            not null,  /*单据日期             */
   PROAF004             INTEGER                         not null,  /*公司ID               */
   PROAF005             INTEGER                         not null,  /*营运组织ID           */
   PROAF006             INTEGER                         not null,  /*电话ID               */
   PROAF007             VARCHAR2(1)                     not null,  /*缴费类型             */
   PROAF008             INTEGER                         not null,  /*商户ID               */
   PROAF009             INTEGER,                                   /*摊位ID               */
   PROAF010             INTEGER,                                   /*合同ID               */
   PROAF011             INTEGER                         not null,  /*费用ID               */
   PROAF012             INTEGER,                                   /*费用单ID             */
   PROAF013             INTEGER                         not null,  /*业务部门ID           */
   PROAF014             INTEGER                         not null,  /*业务人员ID           */
   PROAF015             VARCHAR2(255),                             /*备注                 */
   PROAF016             DATE,                                      /*话费起日             */
   PROAF017             DATE,                                      /*话费止日             */
   PROAF018             NUMBER(12,2)                    not null,  /*话费金额             */
   PROAF019             INTEGER,                                   /*录入人ID             */
   PROAF020             DATE,                                      /*录入日期             */
   PROAF021             INTEGER,                                   /*审核ID               */
   PROAF022             DATE,                                      /*审核日期             */
   PROAF023             VARCHAR2(1)                     not null,  /*审核状态             */
   PROAF024             VARCHAR2(1),                               /*是否签核             */
   PROAF025             VARCHAR2(30),                              /*签核单号             */
   PROAF026             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAF primary key (PROAF_ID)
);
create unique index AK_TB_PROAF on TB_PROAF (PROAF002,PROAF005);
create sequence SEQ_TB_PROAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAF to public;
grant index  on TB_PROAF to public;
grant update on TB_PROAF to public; 
grant delete on TB_PROAF to public;  
grant insert on TB_PROAF to public; 
grant select on SEQ_TB_PROAF to public;   