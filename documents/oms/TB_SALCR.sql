
/*
================================================================================
表结构代码:TB_SALCR
表结构名称:促销商品折扣表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCR;
drop index AK_TB_SALCR;
drop table TB_SALCR;
create table TB_SALCR  (
   SALCR_ID             INTEGER                         not null,  /*促销商品折扣ID				        */
   SALCR001             VARCHAR2(1)                     not null,  /*单据类型1.销售订单 2.销售单 3.订单销退 4.销退      */
   SALCR002             INTEGER                         not null,  /*来源单据ID                                         */
   SALCR003             INTEGER,                                   /*来源单据商品明细ID                                 */
   SALCR004             INTEGER,                                   /*交款单号ID                                         */
   SALCR005             NUMBER(12,2),                              /*交款/退款金额                                      */
   SALCR006             NUMBER(12,2),                              /*参与促销金额                                       */
   SALCR007             NUMBER(12,2),                              /*单品特价                                           */
   SALCR008             NUMBER(12,2),                              /*单品折扣                                           */
   SALCR009             NUMBER(12,2),                              /*单品组合                                           */
   SALCR010             NUMBER(12,2),                              /*单品买赠                                           */
   SALCR011             NUMBER(12,2),                              /*交款折扣                                           */
   SALCR012             NUMBER(12,2),                              /*交款返券                                           */
   SALCR013             NUMBER(12,2),                              /*累计返券                                           */
   SALCR014             NUMBER(12,2),                              /*累计送赠                                           */
   SALCR015             INTEGER,                                   /*发放回收单ID                                       */
   SALCR016             DATE,                                      /*交易日期                                           */
   SALCR017             INTEGER,                                   /*促销单ID                                           */
   SALCR018             VARCHAR2(2),                               /*促销类型                                           */
   SALCR019             VARCHAR2(30),                              /*发放回收单号                                       */
   SALCR020             INTEGER,                                   /*来源营运组织ID                                     */
   SALCR021             VARCHAR2(1),                               /*交易类型1.正常交易 2.订金转入			*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                       */                               
   CREATE_DATE          DATE,                                      /*建立日期                                           */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                           */
   MODI_DATE            DATE,                                      /*修改日期                                           */
   FLAG                 NUMBER(1),                                 /*资料状态                                           */
   constraint PK_TB_SALCR primary key (SALCR_ID)
);
create index AK_TB_SALCR on TB_SALCR (SALCR001,SALCR002,SALCR003,SALCR004,SALCR017,SALCR018,SALCR021);
create sequence SEQ_TB_SALCR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCR to public;
grant index  on TB_SALCR to public;
grant update on TB_SALCR to public; 
grant delete on TB_SALCR to public;  
grant insert on TB_SALCR to public; 
grant select on SEQ_TB_SALCR to public;   