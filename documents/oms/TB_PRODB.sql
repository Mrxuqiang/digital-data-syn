/*
================================================================================
表结构代码:TB_PRODB
表结构名称:装修申请单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODB;
drop index AK_TB_PRODB;
drop table TB_PRODB;
create table TB_PRODB  (
   PRODB_ID             INTEGER                         not null,  /*装修申请单ID	 */
   PRODB001             INTEGER                         not null,  /*单别		 */
   PRODB002             VARCHAR2(30)                    not null,  /*申请单号		 */
   PRODB003             DATE                            not null,  /*申请日期		 */
   PRODB004             INTEGER                         not null,  /*营运组织ID		 */
   PRODB005             INTEGER                         not null,  /*申请部门ID		 */
   PRODB006             INTEGER                         not null,  /*申请人员ID		 */
   PRODB007             INTEGER                         not null,  /*申请商户ID		 */
   PRODB008             INTEGER                         not null,  /*申请摊位ID		 */
   PRODB009             VARCHAR2(100),                             /*施工单位		 */
   PRODB010             VARCHAR2(40),                              /*营业执照		 */
   PRODB011             VARCHAR2(30),                              /*委托人		 */
   PRODB012             VARCHAR2(30),                              /*委手人电话		 */
   PRODB013             VARCHAR2(30),                              /*负责人	  	 */
   PRODB014             VARCHAR2(30),                              /*负责人电话		 */
   PRODB015             DATE                            not null,  /*装修开始日期	 */
   PRODB016             DATE                            not null,  /*装修结束日期	 */
   PRODB017             NUMBER(5,0),                               /*施工人数		 */
   PRODB018             VARCHAR2(30),                              /*施工许可证          */
   PRODB019             INTEGER,                                   /*录入人ID            */
   PRODB020             DATE,                                      /*录入日期            */
   PRODB021             INTEGER,                                   /*审核人ID            */
   PRODB022             DATE,                                      /*审核日期            */
   PRODB023             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODB024             VARCHAR2(1),                               /*验收状态            */
   PRODB025             VARCHAR2(1),                               /*是否签核            */
   PRODB026             VARCHAR2(30),                              /*签核单号            */
   PRODB027             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODB primary key (PRODB_ID)
);
create unique index AK_TB_PRODB on TB_PRODB (PRODB002,PRODB004);
create sequence SEQ_TB_PRODB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODB to public;
grant index  on TB_PRODB to public;
grant update on TB_PRODB to public; 
grant delete on TB_PRODB to public;  
grant insert on TB_PRODB to public; 
grant select on SEQ_TB_PRODB to public;   
