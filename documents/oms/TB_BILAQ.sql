/*
================================================================================
表结构代码:TB_BILAQ
表结构名称:积分优惠分摊单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAQ;
drop index AK_TB_BILAQ;
drop table TB_BILAQ;
create table TB_BILAQ  (
   BILAQ_ID             INTEGER                         not null,  /*积分优惠分摊单主id       */
   BILAQ001             INTEGER                         not null,  /*单别id                   */
   BILAQ002             VARCHAR2(30)                    not null,  /*单号                     */
   BILAQ003             DATE                            not null,  /*日期                     */
   BILAQ004             INTEGER,                                   /*商场id                   */
   BILAQ005             VARCHAR2(255),                             /*备注                     */
   BILAQ006             INTEGER,                                   /*录入人id                 */
   BILAQ007             DATE,                                      /*录入日期                 */
   BILAQ008             VARCHAR2(1),                               /*单据状态                 */
   BILAQ009             INTEGER,                                   /*审核人id                 */
   BILAQ010             DATE,                                      /*审核日期                 */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_BILAQ primary key (BILAQ_ID)
);
create unique index AK_TB_BILAQ on TB_BILAQ (BILAQ001,BILAQ002,BILAQ004,FLAG);
create sequence SEQ_TB_BILAQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAQ to public;
grant index  on TB_BILAQ to public;
grant update on TB_BILAQ to public; 
grant delete on TB_BILAQ to public;  
grant insert on TB_BILAQ to public; 
grant select on SEQ_TB_BILAQ to public;   