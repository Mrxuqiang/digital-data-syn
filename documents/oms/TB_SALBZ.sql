/*
================================================================================
表结构代码:TB_SALBZ
表结构名称:销退单退款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBZ;
drop index AK_TB_SALBZ;
drop table TB_SALBZ;
create table TB_SALBZ  (
   SALBZ_ID             INTEGER                         not null,  /*销退单退款别ID                                 */
   SALBZ001             INTEGER                         not null,  /*销退单ID                                       */
   SALBZ002             INTEGER                         not null,  /*销退单退款ID                                   */
   SALBZ003             INTEGER                         not null,  /*交款单ID                                       */
   SALBZ004             INTEGER                         not null,  /*结算代码ID                                     */
   SALBZ005             NUMBER(12,2),                              /*实退款可退金额                                 */
   SALBZ006             NUMBER(12,2),                              /*实退款金额                                     */
   SALBZ007             INTEGER                         not null,  /*交款单付款ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBZ primary key (SALBZ_ID)
);
create index AK_TB_SALBZ on TB_SALBZ (SALBZ001,SALBZ002,SALBZ003,SALBZ007);
create sequence SEQ_TB_SALBZ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBZ to public;
grant index  on TB_SALBZ to public;
grant update on TB_SALBZ to public; 
grant delete on TB_SALBZ to public;  
grant insert on TB_SALBZ to public; 
grant select on SEQ_TB_SALBZ to public;   