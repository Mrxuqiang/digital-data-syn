/*
================================================================================
表结构代码:TB_SERIL
表结构名称:商户信用分类月档主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIL;
drop index AK_TB_SERIL;
drop table TB_SERIL;
create table TB_SERIL  (
   SERIL_ID             INTEGER                         not null,  /*月档主ID       */
   SERIL001             INTEGER                         not null,  /*商场ID     */
   SERIL002             INTEGER,                                   /*商户ID     */
   SERIL003             NUMBER(4),                                 /*年度       */
   SERIL004             NUMBER(2),                                 /*月份       */   
   SERIL005             NUMBER(4),                                 /*扣分合计   */
   SERIL006             INTEGER,                                   /*信用等级   */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIL primary key (SERIL_ID)
);
create unique index AK_TB_SERIL on TB_SERIL (SERIL001,SERIL002,SERIL003,SERIL004,FLAG);
create sequence SEQ_TB_SERIL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIL to public;
grant index  on TB_SERIL to public;
grant update on TB_SERIL to public; 
grant delete on TB_SERIL to public;  
grant insert on TB_SERIL to public; 
grant select on SEQ_TB_SERIL to public;   