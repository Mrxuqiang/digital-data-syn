/*
================================================================================
表结构代码:TB_BILAH
表结构名称:费用退款单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAH;
drop index AK_TB_BILAH;
drop table TB_BILAH;
create table TB_BILAH  (
   BILAH_ID             INTEGER                         not null,  /*费用退款子ID         */
   BILAH001             INTEGER                         not null,  /*费用退款主ID         */
   BILAH002             VARCHAR2(1)                     not null,  /*来源                 */   
   BILAH003             VARCHAR2(30),                              /*来源单号             */  
   BILAH004             INTEGER,                                   /*来源单主ID           */  
   BILAH005             INTEGER,                                   /*来源单子ID           */         
   BILAH006             INTEGER,                                   /*费用ID               */
   BILAH007             NUMBER(12,2),                              /*退款金额             */
   BILAH008             VARCHAR2(30),                              /*备注                 */   
   BILAH009             VARCHAR2(50),                              /*交款单位             */  
   BILAH010             VARCHAR2(4),                               /*所属公司代码         */
   BILAH011             VARCHAR2(4),                               /*贸易伙伴代码         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_BILAH primary key (BILAH_ID)
);
create sequence SEQ_TB_BILAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAH to public;
grant index  on TB_BILAH to public;
grant update on TB_BILAH to public; 
grant delete on TB_BILAH to public;  
grant insert on TB_BILAH to public; 
grant select on SEQ_TB_BILAH to public;   