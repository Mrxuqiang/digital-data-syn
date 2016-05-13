/*
================================================================================
表结构代码:TB_BILMB
表结构名称:促销费用分摊单汇总子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILMB;
drop index AK_TB_BILMB;
drop table TB_BILMB;
create table TB_BILMB  (
   BILMB_ID             INTEGER                         not null,  /*促销费用分摊单汇总明细ID */
   BILMB001             INTEGER                         not null,  /*促销费用分摊单ID     */
   BILMB002             INTEGER                         not null,  /*商户ID               */
   BILMB003             INTEGER                         not null,  /*合同ID               */
   BILMB004             INTEGER                         not null,  /*品牌ID               */
   BILMB005             INTEGER                         not null,  /*展位ID               */
   BILMB006             NUMBER(12,2),                              /*促销金额             */ 
   BILMB007             NUMBER(12,2),                              /*商户承担费用         */ 
   BILMB008             NUMBER(12,2),                              /*公司承担费用         */ 
   BILMB009             NUMBER(12,2),                              /*公司承担特殊营销金   */ 
   BILMB010             NUMBER(12,2),                              /*商户承担费用差异 = 商户承担费用 - 上一笔费用     */ 
   BILMB011             NUMBER(12,2),                              /*公司承担费用差异      */ 
   BILMB012             NUMBER(12,2),                              /*公司承担特殊营销金差异*/ 
   BILMB013             NUMBER(12,2),                              /*活动优惠租金         */ 
   BILMB014             NUMBER(12,2),                              /*活动优惠管理费       */ 
   BILMB015             NUMBER(12,2),                              /*特殊营销金优惠       */ 
   BILMB016             DATE,                                      /*SAP条款日期       */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILMB primary key (BILMB_ID)
);
create unique index AK_TB_BILMB on TB_BILMB (BILMB001,BILMB002,BILMB003);
create sequence SEQ_TB_BILMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMB to public;
grant index  on TB_BILMB to public;
grant update on TB_BILMB to public; 
grant delete on TB_BILMB to public;  
grant insert on TB_BILMB to public; 
grant select on SEQ_TB_BILMB to public;   