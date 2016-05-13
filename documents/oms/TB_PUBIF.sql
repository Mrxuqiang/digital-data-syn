/*
================================================================================
表结构代码:TB_PUBIF
表结构名称:场地表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIF;
drop index AK_TB_PUBIF;
drop table TB_PUBIF;
create table TB_PUBIF  (
   PUBIF_ID             INTEGER                         not null,  /*场地ID             */
   PUBIF001             INTEGER                         not null,  /*公司ID             */
   PUBIF002             INTEGER                         not null,  /*营运组织ID         */
   PUBIF003             INTEGER                         not null,  /*楼栋ID             */
   PUBIF004             INTEGER                         not null,  /*楼层ID             */
   PUBIF005             VARCHAR2(16)                    not null,  /*场地编号           */
   PUBIF006             VARCHAR2(30),                              /*场地描述           */
   PUBIF007             VARCHAR2(50),                              /*备注               */
   PUBIF008             INTEGER,                                   /*录入人ID           */
   PUBIF009             DATE,                                      /*录入日期           */
   PUBIF010             INTEGER,                                   /*审核人ID           */
   PUBIF011             DATE,                                      /*审核日期           */
   PUBIF012             VARCHAR2(1)                     not null,  /*当前使用 0.未使用 1.使用 2.停用 */
   PUBIF013             VARCHAR2(1)                     not null,  /*审核状态           */
   PUBIF014             VARCHAR2(1),                               /*是否纳入面积计算   */  
   PUBIF015             VARCHAR2(30),                               /*商业主体   */  
   PUBIF016             VARCHAR2(30),                               /*公司代码   */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBIF primary key (PUBIF_ID)
);
create unique index AK_TB_PUBIF on TB_PUBIF (PUBIF002,PUBIF005);
create sequence SEQ_TB_PUBIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIF to public;
grant index  on TB_PUBIF to public;
grant update on TB_PUBIF to public; 
grant delete on TB_PUBIF to public;  
grant insert on TB_PUBIF to public; 
grant select on SEQ_TB_PUBIF to public;   