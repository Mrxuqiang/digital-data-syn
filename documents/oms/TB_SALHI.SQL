/*
================================================================================
表结构代码:TB_SALHI
表结构名称:退款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHI;
drop index AK_TB_SALHI;
drop table TB_SALHI;
create table TB_SALHI  (
   SALHI_ID             INTEGER                         not null,  /*退款单ID    */
   SALHI001             INTEGER                         not null,  /*单别        */
   SALHI002             VARCHAR2(30)                    not null,  /*退款单号    */
   SALHI003             DATE                            not null,  /*退款日期    */
   SALHI004             INTEGER                         not null,  /*销退单ID    */
   SALHI005             INTEGER                         not null,  /*收银员ID    */
   SALHI006             VARCHAR2(255),                             /*备注        */
   SALHI007             NUMBER(12,2)                    not null,  /*销售金额   */
   SALHI008             NUMBER(12,2)                    not null,  /*已退金额   */
   SALHI009             NUMBER(12,2)                    not null,  /*应付金额   */
   SALHI010             NUMBER(12,2)                    not null,  /*本次退货金额  */
   SALHI011             NUMBER(12,2)                    not null,  /*本次退款金额  */
   SALHI012             VARCHAR2(30)                    not null,  /*销退单号         */
   SALHI013             INTEGER                         not null,  /*营运组织ID       */      
   SALHI014             NUMBER(12,2),                              /*本次可退款金额       */  
   SALHI015             VARCHAR2(1),                               /*收款方式：1  自收银 2 代收银     */
   SALHI016             NUMBER(12,2),                              /*销退单过来的本次退款金额*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALHI primary key (SALHI_ID)
);
create unique index AK_TB_SALHI on TB_SALHI (SALHI002,SALHI011);
create sequence SEQ_TB_SALHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHI to public;
grant index  on TB_SALHI to public;
grant update on TB_SALHI to public; 
grant delete on TB_SALHI to public;  
grant insert on TB_SALHI to public; 
grant select on SEQ_TB_SALHI to public;   