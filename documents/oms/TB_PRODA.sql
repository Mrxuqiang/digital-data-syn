/*
================================================================================
表结构代码:TB_PRODA
表结构名称:装修项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODA;
drop index AK_TB_PRODA;
drop table TB_PRODA;
create table TB_PRODA  (
   PRODA_ID             INTEGER                         not null,  /*项目ID          */
   PRODA001             VARCHAR2(1)                     not null,  /*项目类项        */
   PRODA002             VARCHAR2(8)                     not null,  /*项目代码        */
   PRODA003             VARCHAR2(30),                              /*项目名称	     */ 
   PRODA004             INTEGER,                                   /*对应费用	     */ 
   PRODA005             INTEGER,                                   /*备注    	     */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门    */                               
   CREATE_DATE          DATE,                                      /*建立日期        */
   MODIFIER             VARCHAR2(12),                              /*修改人员        */
   MODI_DATE            DATE,                                      /*修改日期        */
   FLAG                 NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_PRODA primary key (PRODA_ID)
);
create unique index AK_TB_PRODA on TB_PRODA (PRODA001,PRODA002);
create sequence SEQ_TB_PRODA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODA to public;
grant index  on TB_PRODA to public;
grant update on TB_PRODA to public; 
grant delete on TB_PRODA to public;  
grant insert on TB_PRODA to public; 
grant select on SEQ_TB_PRODA to public;   

