/*
================================================================================
表结构代码:TB_PUBIG
表结构名称:摊位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIG;
drop index AK_TB_PUBIG;
drop table TB_PUBIG;
create table TB_PUBIG  (
   PUBIG_ID             INTEGER                         not null,  /*摊位ID             */
   PUBIG001             INTEGER                         not null,  /*公司ID             */
   PUBIG002             INTEGER                         not null,  /*营运组织ID         */
   PUBIG003             VARCHAR2(30)                    not null,  /*摊位编号           */
   PUBIG004             VARCHAR2(30),                              /*摊位描述           */  
   PUBIG005             VARCHAR2(50),                              /*备注               */  
   PUBIG006             INTEGER,                                   /*录入人ID           */  
   PUBIG007             DATE,                                      /*录入日期           */  
   PUBIG008             INTEGER,                                   /*审核人ID           */  
   PUBIG009             DATE,                                      /*审核日期           */  
   PUBIG010             VARCHAR2(1)                     not null,  /*当前出租0.未出租 1.预租 2.出租 3.停用 */
   PUBIG011             VARCHAR2(1)                     not null,  /*审核状态           */
   PUBIG012             INTEGER,                                   /*摊位分类ID         */  
   PUBIG013             INTEGER,                                   /*展位区域ID         */  add by ouwx 2011/10/24
   PUBIG015             VARCHAR2(30),                              /*公司代码           */  add by ouwx 2013/12/01
   PUBIG014             VARCHAR2(30),                              /*商业主体           */  add by ouwx 2013/12/01
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBIG primary key (PUBIG_ID)
);
create unique index AK_TB_PUBIG on TB_PUBIG (PUBIG002,PUBIG003);
create sequence SEQ_TB_PUBIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIG to public;
grant index  on TB_PUBIG to public;
grant update on TB_PUBIG to public; 
grant delete on TB_PUBIG to public;  
grant insert on TB_PUBIG to public; 
grant select on SEQ_TB_PUBIG to public;   