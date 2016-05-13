/*
================================================================================
表结构代码:TB_PRODF
表结构名称:施工监督单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODF;
drop index AK_TB_PRODF;
drop table TB_PRODF;
create table TB_PRODF  (
   PRODF_ID             INTEGER                         not null,  /*施工监督单ID	 */
   PRODF001             INTEGER                         not null,  /*单别		 */
   PRODF002             VARCHAR2(30)                    not null,  /*监督单号		 */
   PRODF003             DATE                            not null,  /*单据日期		 */
   PRODF004             INTEGER                         not null,  /*装修申请单ID        */
   PRODF005             INTEGER                         not null,  /*营运组织ID		 */
   PRODF006             INTEGER                         not null,  /*监督部门ID		 */
   PRODF007             INTEGER                         not null,  /*监督人员ID		 */
   PRODF008             VARCHAR2(30),                              /*备注                */
   PRODF009             INTEGER,                                   /*录入人ID            */
   PRODF010             DATE,                                      /*录入日期            */
   PRODF011             INTEGER,                                   /*审核人ID            */
   PRODF012             DATE,                                      /*审核日期            */
   PRODF013             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODF014             VARCHAR2(1),                               /*是否签核            */
   PRODF015             VARCHAR2(30),                              /*签核单号            */
   PRODF016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODF primary key (PRODF_ID)
);
create unique index AK_TB_PRODF on TB_PRODF (PRODF002,PRODF005);
create sequence SEQ_TB_PRODF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODF to public;
grant index  on TB_PRODF to public;
grant update on TB_PRODF to public; 
grant delete on TB_PRODF to public;  
grant insert on TB_PRODF to public; 
grant select on SEQ_TB_PRODF to public;   
