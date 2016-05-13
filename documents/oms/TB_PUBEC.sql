/*
================================================================================
表结构代码:TB_PUBEC
表结构名称:调整汇率表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBEC;
drop index AK_TB_PUBEC;
drop table TB_PUBEC;
create table TB_PUBEC  (
   PUBEC_ID             INTEGER                         not null,  /*调整汇率ID  */
   PUBEC001             INTEGER                         not null,  /*外币汇率ID */
   PUBEC002             INTEGER                         not null,  /*会计期间方案ID  */
   PUBEC003             INTEGER                         not null,  /*会计期间ID */ 
   PUBEC004             INTEGER                         not null,  /*会计期间月份ID */ 
   PUBEC005             VARCHAR2(4)                     not null,  /*会计年*/    
   PUBEC006             VARCHAR2(2)                     not null,  /*会计月份*/  
   PUBEC007             NUMBER(16,9),                              /*调整汇率*/ 
   CRECTE_USER          VARCHAR2(12),                              /*建立人员*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门*/                               
   CRECTE_DATE          DATE,                                      /*建立日期*/
   MODIFIER             VARCHAR2(12),                              /*修改人员*/
   MODI_DATE            DATE,                                      /*修改日期*/
   FLAG                 NUMBER(1),                                 /*资料状态*/
   constraint PK_TB_PUBEC primary key (PUBEC_ID)
);
create sequence SEQ_TB_PUBEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEC to public;
grant index  on TB_PUBEC to public;
grant update on TB_PUBEC to public; 
grant delete on TB_PUBEC to public;  
grant insert on TB_PUBEC to public; 
grant select on SEQ_TB_PUBEC to public;   