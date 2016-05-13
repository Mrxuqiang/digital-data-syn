/*
================================================================================
表结构代码:TB_GLDBA
表结构名称:现金异动明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDBA;
drop index AK_TB_GLDBA;
drop table TB_GLDBA;
create table TB_GLDBA  (
   GLDBA_ID             INTEGER                         not null,  /*异动明细ID           */
   GLDBA001             INTEGER,                                   /*单据ID               */
   GLDBA002             INTEGER,                                   /*单身ID               */
   GLDBA003             INTEGER,                                   /*单别ID               */
   GLDBA004             VARCHAR2(30),                              /*单号                 */
   GLDBA005             DATE,                                      /*异动日期             */
   GLDBA006             VARCHAR2(30),                              /*核销批号             */
   GLDBA007             INTEGER,                                   /*客商ID               */
   GLDBA008             INTEGER,                                   /*现金异动项ID         */
   GLDBA009             INTEGER,                                   /*部门ID               */   
   GLDBA010             INTEGER,                                   /*人员ID               */
   GLDBA011             NUMBER(16,2),                              /*原币金额             */    
   GLDBA012             NUMBER(16,2),                              /*本币金额             */         
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_GLDBA primary key (GLDBA_ID)
);
create sequence SEQ_TB_GLDBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDBA to public;
grant index  on TB_GLDBA to public;
grant update on TB_GLDBA to public; 
grant delete on TB_GLDBA to public;  
grant insert on TB_GLDBA to public; 
grant select on SEQ_TB_GLDBA to public;   