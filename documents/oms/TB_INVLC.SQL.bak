/*
================================================================================
表结构代码:TB_INVLC
表结构名称:库存借用借出明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVLC;
drop table TB_INVLC;
create table TB_INVLC  (
   INVLC_ID             INTEGER                         not null,  /*库存借出明细ID         */
   INVLC001             INTEGER                         not null,  /*库存借用单ID           */
   INVLC002             INTEGER                         not null,  /*库存借用明细ID         */
   INVLC003             INTEGER                         not null,  /*商品ID        */
   INVLC004             INTEGER,                                   /*维度1         */
   INVLC005             INTEGER,                                   /*维度2         */
   INVLC006             INTEGER,                                   /*维度3         */
   INVLC007             INTEGER,                                   /*维度4         */
   INVLC008             INTEGER,                                   /*维度5         */
   INVLC009             NUMBER(18,2),                              /*订货数量      */
   INVLC010             NUMBER(18,2),                              /*已采未发量    */
   INVLC011             NUMBER(18,2),                              /*已发未到量    */
   INVLC012             NUMBER(18,2),                              /*入库量        */    
   INVLC013             DATE,                                      /*送货日期      */   
   INVLC014            NUMBER(18,2),                               /*借出量        */
   INVLC015            NUMBER(18,2),                               /*已采未发交换量        */
   INVLC016            NUMBER(18,2),                               /*已发未到交换量        */
   INVLC017             INTEGER,                                   /*销售单ID         */
   INVLC018             INTEGER,                                   /*销售单明细ID         */
   CREATE_USER          VARCHAR2(12),                         /*建立人员        */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                            /*修改人员         */
   MODI_DATE            DATE,                                        /*修改日期         */
   FLAG                 NUMBER(1),                                      /*资料状态         */
   constraint PK_TB_INVLC primary key (INVLC_ID)
);
create sequence SEQ_TB_INVLC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVLC to public;
grant index  on TB_INVLC to public;
grant update on TB_INVLC to public; 
grant delete on TB_INVLC to public;  
grant insert on TB_INVLC to public; 
grant select on SEQ_TB_INVLC to public;   