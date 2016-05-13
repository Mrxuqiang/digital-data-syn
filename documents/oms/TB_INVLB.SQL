/*
================================================================================
表结构代码:TB_INVLB
表结构名称:库存借用借用明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVLB;
drop table TB_INVLB;
create table TB_INVLB  (
   INVLB_ID             INTEGER                         not null,  /*库存借用明细ID         */
   INVLB001             INTEGER                         not null,  /*库存借用单ID             */
   INVLB002             INTEGER                         not null,  /*销售单明细ID         */
   INVLB003             INTEGER                         not null,  /*商品ID         */
   INVLB004             INTEGER,                                   /*维度1       */
   INVLB005             INTEGER,                                   /*维度2       */
   INVLB006             INTEGER,                                   /*维度3       */
   INVLB007             INTEGER,                                   /*维度4       */
   INVLB008             INTEGER,                                   /*维度5       */
   INVLB009             NUMBER(18,2),                              /*订货数量    */
   INVLB010             NUMBER(18,2),                              /*已采未发量  */
   INVLB011             NUMBER(18,2),                              /*已发未到量  */
   INVLB012             NUMBER(18,2),                              /*入库量      */                              
   INVLB013             NUMBER(18,2),                              /*借用量        */
   CREATE_USER          VARCHAR2(12),                          /*建立人员        */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                        /*修改日期         */
   FLAG                 NUMBER(1),                                      /*资料状态         */
   constraint PK_TB_INVLB primary key (INVLB_ID)
);
create sequence SEQ_TB_INVLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVLB to public;
grant index  on TB_INVLB to public;
grant update on TB_INVLB to public; 
grant delete on TB_INVLB to public;  
grant insert on TB_INVLB to public; 
grant select on SEQ_TB_INVLB to public;   