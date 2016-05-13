/*
================================================================================
表结构代码:TB_PMTNB
表结构名称:券回收单退款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTNB;
drop index AK_TB_PMTNB;
drop table TB_PMTNB;
create table TB_PMTNB  (
   PMTNB_ID             INTEGER                         not null,  /*券回收单退款ID                */
   PMTNB001             INTEGER                         not null,  /*券回收单ID                    */
   PMTNB002             VARCHAR2(1)				,  /*促销类型                      */
   PMTNB003             INTEGER					,  /*促销单ID                      */
   PMTNB004             INTEGER                         not null,  /*营运组织ID                    */
   PMTNB005             VARCHAR2(1)				,  /*销退类型                      */
   PMTNB006             INTEGER					,  /*销退单ID                      */
   PMTNB007             INTEGER                         not null,  /*销售单ID                      */
   PMTNB008             INTEGER                         not null,  /*交款单ID                      */
   PMTNB009             VARCHAR2(30),                              /*促销单号                      */
   PMTNB010             VARCHAR2(30),                              /*销退单号                      */
   PMTNB011             VARCHAR2(30),                              /*销售单号                      */
   PMTNB012             VARCHAR2(30),                              /*交款单号                      */
   PMTNB013             INTEGER                                 ,  /*券发放单ID                    */
   PMTNB014             VARCHAR2(30),                              /*券发放号                      */
   PMTNB015             NUMBER(12,2),                              /*实交款金额                    */
   PMTNB016             NUMBER(12,2),                              /*参与返券交款金额              */
   PMTNB017             NUMBER(22,2),                              /*返券金额                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTNB primary key (PMTNB_ID)
);
create unique index AK_TB_PMTNB on TB_PMTNB (PMTNB001,PMTNB002,PMTNB003,PMTNB004,PMTNB005,PMTNB006,PMTNB008);
create sequence SEQ_TB_PMTNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNB to public;
grant index  on TB_PMTNB to public;
grant update on TB_PMTNB to public; 
grant delete on TB_PMTNB to public;  
grant insert on TB_PMTNB to public; 
grant select on SEQ_TB_PMTNB to public;   