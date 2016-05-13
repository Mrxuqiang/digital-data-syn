/*
================================================================================
表结构代码:TB_SALBX
表结构名称:订单销退单退款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBX;
drop index AK_TB_SALBX;
drop table TB_SALBX;
create table TB_SALBX  (
   SALBX_ID             INTEGER                         not null,  /*订单销退单退款别ID                             */
   SALBX001             INTEGER                         not null,  /*订单销退单ID                                   */
   SALBX002             INTEGER                         not null,  /*订单销退单退款ID                               */
   SALBX003             INTEGER                         not null,  /*交款单ID                                       */
   SALBX004             INTEGER                         not null,  /*结算代码ID                                     */
   SALBX005             NUMBER(12,2),                              /*实退款可退金额                                 */
   SALBX006             NUMBER(12,2),                              /*实退款金额                                     */
   SALBX007             INTEGER                         not null,  /*交款单付款ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBX primary key (SALBX_ID)
);
create index AK_TB_SALBX on TB_SALBX (SALBX001,SALBX002,SALBX003,SALBX007);
create sequence SEQ_TB_SALBX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBX to public;
grant index  on TB_SALBX to public;
grant update on TB_SALBX to public; 
grant delete on TB_SALBX to public;  
grant insert on TB_SALBX to public; 
grant select on SEQ_TB_SALBX to public;   