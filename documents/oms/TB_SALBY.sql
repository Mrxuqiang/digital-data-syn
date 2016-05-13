/*
================================================================================
表结构代码:TB_SALBY
表结构名称:销退单退款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBY;
drop index AK_TB_SALBY;
drop table TB_SALBY;
create table TB_SALBY  (
   SALBY_ID             INTEGER                         not null,  /*销退单退款ID                               */
   SALBY001             INTEGER                         not null,  /*销退单ID                                   */
   SALBY002             INTEGER                         not null,  /*交款单ID                                       */
   SALBY003             NUMBER(12,2),                              /*交款金额                                       */
   SALBY004             NUMBER(12,2),                              /*已退金额                                       */
   SALBY005             NUMBER(12,2),                              /*可退金额                                       */
   SALBY006             NUMBER(12,2),                              /*本次退款金额                                   */
   SALBY007             NUMBER(12,2),                              /*折扣冲减金额                                   */
   SALBY008             NUMBER(12,2),                              /*实退款金额                                     */
   SALBY009             NUMBER(12,2),                              /*应回收交款券                                   */
   SALBY010             NUMBER(12,2),                              /*应回收累计券                                   */
   SALBY011             NUMBER(12,2),                              /*应回收赠品额   																*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBY primary key (SALBY_ID)
);
create index AK_TB_SALBY on TB_SALBY (SALBY001,SALBY002);
create sequence SEQ_TB_SALBY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBY to public;
grant index  on TB_SALBY to public;
grant update on TB_SALBY to public; 
grant delete on TB_SALBY to public;  
grant insert on TB_SALBY to public; 
grant select on SEQ_TB_SALBY to public;   