/*
================================================================================
表结构代码:TB_PMTQB
表结构名称:活动抽奖交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTQB;
drop index AK_TB_PMTQB;
drop table TB_PMTQB;
create table TB_PMTQB  (
   PMTQB_ID             INTEGER                         not null,  /*活动抽奖交款ID                */
   PMTQB001             INTEGER                         not null,  /*活动抽奖单ID                  */
   PMTQB002             INTEGER                         not null,  /*营运组织ID                    */
   PMTQB003             VARCHAR2(1)                     not null,  /*销售类型                      */
   PMTQB004             INTEGER                         not null,  /*销售单ID                      */
   PMTQB005             INTEGER                         not null,  /*交款单ID                      */
   PMTQB006             VARCHAR2(30),                              /*销售单号                      */
   PMTQB007             VARCHAR2(30),                              /*交款单号                      */
   PMTQB008             NUMBER(12,2),                              /*实交款金额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTQB primary key (PMTQB_ID)
);
create unique index AK_TB_PMTQB on TB_PMTQB (PMTQB001,PMTQB002,PMTQB003,PMTQB004,PMTQB005);
create sequence SEQ_TB_PMTQB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQB to public;
grant index  on TB_PMTQB to public;
grant update on TB_PMTQB to public; 
grant delete on TB_PMTQB to public;  
grant insert on TB_PMTQB to public; 
grant select on SEQ_TB_PMTQB to public;   