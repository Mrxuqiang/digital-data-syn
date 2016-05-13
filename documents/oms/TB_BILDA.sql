/*
================================================================================
表结构代码:TB_BILDA
表结构名称:预收动用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILDA;
drop index AK_TB_BILDA;
drop table TB_BILDA;
create table TB_BILDA  (
   BILDA_ID             INTEGER                         not null,  /*预收动用单ID         */
   BILDA001             INTEGER                         not null,  /*单别ID               */
   BILDA002             VARCHAR2(30)                    not null,  /*单据编号             */
   BILDA003             DATE                            not null,  /*单据日期             */
   BILDA004             INTEGER                         not null,  /*公司ID               */
   BILDA005             INTEGER                         not null,  /*营运组织ID           */
   BILDA006             INTEGER                         not null,  /*客商ID               */
   BILDA007             INTEGER,                                   /*摊位ID               */
   BILDA008             INTEGER,                                   /*合同ID               */
   BILDA009             INTEGER                         not null,  /*业务部门ID           */
   BILDA010             INTEGER                         not null,  /*业务人员ID           */
   BILDA011             VARCHAR2(255),                             /*备注                 */
   BILDA012             VARCHAR2(1)                     not null,  /*动用类型1.预收动用 2.质保金动用  */
   BILDA013             VARCHAR2(1),                               /*是否催收             */
   BILDA014             INTEGER,                                   /*录入人ID             */
   BILDA015             DATE,                                      /*录入日期             */
   BILDA016             INTEGER,                                   /*审核人ID             */
   BILDA017             DATE,                                      /*审核日期             */
   BILDA018             VARCHAR2(1)                     not null,  /*审核状态             */
   BILDA019             VARCHAR2(1),                               /*是否签核             */
   BILDA020             VARCHAR2(30),                              /*签核单号             */
   BILDA021             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILDA primary key (BILDA_ID)
);
create unique index AK_TB_BILDA on TB_BILDA (BILDA002,BILDA005);
create sequence SEQ_TB_BILDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILDA to public;
grant index  on TB_BILDA to public;
grant update on TB_BILDA to public; 
grant delete on TB_BILDA to public;  
grant insert on TB_BILDA to public; 
grant select on SEQ_TB_BILDA to public;   