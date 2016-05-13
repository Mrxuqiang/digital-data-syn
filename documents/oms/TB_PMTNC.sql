/*
================================================================================
表结构代码:TB_PMTNC
表结构名称:券回收单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTNC;
drop index AK_TB_PMTNC;
drop table TB_PMTNC;
create table TB_PMTNC  (
   PMTNC_ID             INTEGER                         not null,  /*券回收单商品ID                */
   PMTNC001             INTEGER                         not null,  /*券回收单ID                    */
   PMTNC002             INTEGER                         not null,  /*券回收单退款ID                */
   PMTNC003             INTEGER                         not null,  /*销退明细商品ID                */
   PMTNC004             NUMBER(12,2),                              /*退款金额                      */
   PMTNC005             NUMBER(12,2),                              /*退款折扣金额                  */
   PMTNC006             NUMBER(12,2),                              /*实退款金额                    */
   PMTNC007             NUMBER(12,2),                              /*参与收券退款金额              */
   PMTNC008             NUMBER(12,2),                              /*应回收券金额                  */
   PMTNC009             NUMBER(12,2),                              /*实回收券金额                  */
   PMTNC010             NUMBER(12,2),                              /*销退金额                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTNC primary key (PMTNC_ID)
);
create unique index AK_TB_PMTNC on TB_PMTNC (PMTNC001,PMTNC002,PMTNC003);
create sequence SEQ_TB_PMTNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNC to public;
grant index  on TB_PMTNC to public;
grant update on TB_PMTNC to public; 
grant delete on TB_PMTNC to public;  
grant insert on TB_PMTNC to public; 
grant select on SEQ_TB_PMTNC to public;   