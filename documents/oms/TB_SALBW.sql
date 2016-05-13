/*
================================================================================
表结构代码:TB_SALBW
表结构名称:订单销退单退款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBW;
drop index AK_TB_SALBW;
drop table TB_SALBW;
create table TB_SALBW  (
   SALBW_ID             INTEGER                         not null,  /*订单销退单退款ID                               */
   SALBW001             INTEGER                         not null,  /*订单销退单ID                                   */
   SALBW002             INTEGER                         not null,  /*交款单ID                                       */
   SALBW003             NUMBER(12,2),                              /*交款金额                                       */
   SALBW004             NUMBER(12,2),                              /*已退金额                                       */
   SALBW005             NUMBER(12,2),                              /*可退金额                                       */
   SALBW006             NUMBER(12,2),                              /*本次退款金额                                   */
   SALBW007             NUMBER(12,2),                              /*折扣冲减金额                                   */
   SALBW008             NUMBER(12,2),                              /*实退款金额                                     */
   SALBW009             NUMBER(12,2),                              /*应回收交款券                                   */
   SALBW010             NUMBER(12,2),                              /*应回收累计券                                   */
   SALBW011             NUMBER(12,2),                              /*应回收赠品额                                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBW primary key (SALBW_ID)
);
create index AK_TB_SALBW on TB_SALBW (SALBW001,SALBW002);
create sequence SEQ_TB_SALBW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBW to public;
grant index  on TB_SALBW to public;
grant update on TB_SALBW to public; 
grant delete on TB_SALBW to public;  
grant insert on TB_SALBW to public; 
grant select on SEQ_TB_SALBW to public;   