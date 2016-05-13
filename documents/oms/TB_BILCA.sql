/*
================================================================================
表结构代码:TB_BILCA
表结构名称:费用调整单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILCA;
drop index AK_TB_BILCA;
drop table TB_BILCA;
create table TB_BILCA  (
   BILCA_ID             INTEGER                         not null,  /*费用调整单           */
   BILCA001             INTEGER                         not null,  /*单别ID               */
   BILCA002             VARCHAR2(30)                    not null,  /*单据编号             */
   BILCA003             DATE                            not null,  /*调整日期             */
   BILCA004             INTEGER                         not null,  /*公司ID               */
   BILCA005             INTEGER                         not null,  /*营运组织ID           */
   BILCA006             INTEGER                         not null,  /*客商ID               */
   BILCA007             INTEGER,                                   /*摊位ID               */
   BILCA008             INTEGER,                                   /*合同ID               */
   BILCA009             INTEGER                         not null,  /*业务部门ID           */
   BILCA010             INTEGER                         not null,  /*业务人员ID           */
   BILCA011             VARCHAR2(255),                             /*备注                 */
   BILCA012             INTEGER,                                   /*录入人ID             */
   BILCA013             DATE,                                      /*录入日期             */
   BILCA014             INTEGER,                                   /*审核人ID             */
   BILCA015             DATE,                                      /*审核日期             */
   BILCA016             VARCHAR2(1)                     not null,  /*审核状态             */
   BILCA017             VARCHAR2(1),                               /*是否签核             */
   BILCA018             VARCHAR2(30),                              /*签核单号             */
   BILCA019             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILCA primary key (BILCA_ID)
);
create unique index AK_TB_BILCA on TB_BILCA (BILCA002,BILCA005);
create sequence SEQ_TB_BILCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILCA to public;
grant index  on TB_BILCA to public;
grant update on TB_BILCA to public; 
grant delete on TB_BILCA to public;  
grant insert on TB_BILCA to public; 
grant select on SEQ_TB_BILCA to public;   