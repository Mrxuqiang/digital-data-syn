/*
================================================================================
表结构代码:TB_BILAR
表结构名称:积分优惠分摊单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAR;
drop index AK_TB_BILAR;
drop table TB_BILAR;
create table TB_BILAR  (
   BILAR_ID             INTEGER                         not null,  /*积分优惠分摊单子id     */
   BILAR001             INTEGER                         not null, /*积分优惠分摊单主id     */
   BILAR002             INTEGER                         not null,  /*商户id                 */
   BILAR003             INTEGER                         not null,  /*合同id                 */
   BILAR004             INTEGER,                                   /*品牌id                 */
   BILAR005             INTEGER,                                   /*展位id                 */
   BILAR006             NUMBER(22,2),                              /*优惠金额               */
   BILAR007             VARCHAR2(10),                              /*公司代码               */
   BILAR008             NUMBER(22,2),                              /*活动优惠租金           */
   BILAR009             NUMBER(22,2),                              /*活动优惠管理费         */
   BILAR010             NUMBER(22,2),                              /*市场推广费         */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_BILAR primary key (BILAR_ID)
);
create unique index AK_TB_BILAR on TB_BILAR (BILAR001,BILAR002,BILAR003,BILAR007,FLAG);
create sequence SEQ_TB_BILAR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAR to public;
grant index  on TB_BILAR to public;
grant update on TB_BILAR to public; 
grant delete on TB_BILAR to public;  
grant insert on TB_BILAR to public; 
grant select on SEQ_TB_BILAR to public;   