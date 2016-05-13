/*
================================================================================
表结构代码:TB_PRODD
表结构名称:装修交费单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODD;
drop index AK_TB_PRODD;
drop table TB_PRODD;
create table TB_PRODD  (
   PRODD_ID             INTEGER                         not null,  /*装修交费单ID	 */
   PRODD001             INTEGER                         not null,  /*单别		 */
   PRODD002             VARCHAR2(30)                    not null,  /*交费单号		 */
   PRODD003             DATE                            not null,  /*单据日期		 */
   PRODD004             INTEGER                         not null,  /*装修申请单ID        */
   PRODD005             INTEGER                         not null,  /*营运组织ID		 */
   PRODD006             INTEGER                         not null,  /*业务部门ID		 */
   PRODD007             INTEGER                         not null,  /*业务人员ID		 */
   PRODD008             VARCHAR2(30),                              /*备注                */
   PRODD009             INTEGER,                                   /*录入人ID            */
   PRODD010             DATE,                                      /*录入日期            */
   PRODD011             INTEGER,                                   /*审核人ID            */
   PRODD012             DATE,                                      /*审核日期            */
   PRODD013             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODD014             VARCHAR2(1),                               /*是否签核            */
   PRODD015             VARCHAR2(30),                              /*签核单号            */
   PRODD016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODD primary key (PRODD_ID)
);
create unique index AK_TB_PRODD on TB_PRODD (PRODD002,PRODD005);
create sequence SEQ_TB_PRODD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODD to public;
grant index  on TB_PRODD to public;
grant update on TB_PRODD to public; 
grant delete on TB_PRODD to public;  
grant insert on TB_PRODD to public; 
grant select on SEQ_TB_PRODD to public;   
