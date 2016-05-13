/*
================================================================================
表结构代码:TB_PRODH
表结构名称:装修验收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODH;
drop index AK_TB_PRODH;
drop table TB_PRODH;
create table TB_PRODH  (
   PRODH_ID             INTEGER                         not null,  /*装修验收单ID	 */
   PRODH001             INTEGER                         not null,  /*单别		 */
   PRODH002             VARCHAR2(30)                    not null,  /*验收单号		 */
   PRODH003             DATE                            not null,  /*单据日期		 */
   PRODH004             INTEGER                         not null,  /*装修申请单ID        */
   PRODH005             INTEGER                         not null,  /*营运组织ID		 */
   PRODH006             INTEGER                         not null,  /*验收部门ID		 */
   PRODH007             INTEGER                         not null,  /*验收人员ID		 */
   PRODH008             VARCHAR2(30),                              /*备注                */
   PRODH009             VARCHAR2(1),                               /*是否结案            */
   PRODH010             INTEGER,                                   /*录入人ID            */
   PRODH011             DATE,                                      /*录入日期            */
   PRODH012             INTEGER,                                   /*审核人ID            */
   PRODH013             DATE,                                      /*审核日期            */
   PRODH014             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODH015             VARCHAR2(1),                               /*是否签核            */
   PRODH016             VARCHAR2(30),                              /*签核单号            */
   PRODH017             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODH primary key (PRODH_ID)
);
create unique index AK_TB_PRODH on TB_PRODH (PRODH002,PRODH005);
create sequence SEQ_TB_PRODH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODH to public;
grant index  on TB_PRODH to public;
grant update on TB_PRODH to public; 
grant delete on TB_PRODH to public;  
grant insert on TB_PRODH to public; 
grant select on SEQ_TB_PRODH to public;   
