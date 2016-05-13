/*
================================================================================
表结构代码:TB_PRODJ
表结构名称:出入证发放单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODJ;
drop index AK_TB_PRODJ;
drop table TB_PRODJ;
create table TB_PRODJ  (
   PRODJ_ID             INTEGER                         not null,  /*出入证发放单ID	 */
   PRODJ001             INTEGER                         not null,  /*单别		 */
   PRODJ002             VARCHAR2(30)                    not null,  /*发证单号		 */
   PRODJ003             DATE                            not null,  /*发证日期		 */
   PRODJ004             INTEGER                         not null,  /*申请单ID            */
   PRODJ005             INTEGER                         not null,  /*营运组织ID		 */
   PRODJ006             INTEGER                         not null,  /*发证部门ID		 */
   PRODJ007             INTEGER                         not null,  /*发证人员ID		 */
   PRODJ008             VARCHAR2(30),                              /*备注                */
   PRODJ009             INTEGER,                                   /*录入人ID            */
   PRODJ010             DATE,                                      /*录入日期            */
   PRODJ011             INTEGER,                                   /*审核人ID            */
   PRODJ012             DATE,                                      /*审核日期            */
   PRODJ013             VARCHAR2(1)                     not null,  /*审核状态            */
   PRODJ014             VARCHAR2(1),                               /*是否签核            */
   PRODJ015             VARCHAR2(30),                              /*签核单号            */
   PRODJ016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODJ primary key (PRODJ_ID)
);
create unique index AK_TB_PRODJ on TB_PRODJ (PRODJ002,PRODJ005);
create sequence SEQ_TB_PRODJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODJ to public;
grant index  on TB_PRODJ to public;
grant update on TB_PRODJ to public; 
grant delete on TB_PRODJ to public;  
grant insert on TB_PRODJ to public; 
grant select on SEQ_TB_PRODJ to public;   
