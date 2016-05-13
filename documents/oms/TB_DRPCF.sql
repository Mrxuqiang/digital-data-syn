/*
================================================================================
表结构代码:TB_DRPCF
表结构名称:任务目录表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCF;
drop table TB_DRPCF;
create table TB_DRPCF  (
   DRPCF_ID             INTEGER         NOT NULL,  /*ID                 */ 
   DRPCF001             INTEGER,                   /*父ID               */      
   DRPCF002             VARCHAR2(20),              /*目录名称           */   
   DRPCF003             INTEGER,                   /*公司ID             */
   DRPCF004             VARCHAR2(80),              /*目录说明           */    
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */      
   constraint PK_TB_DRPCF primary key (DRPCF_ID)
);
create sequence SEQ_TB_DRPCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCF to public;
grant index  on TB_DRPCF to public;
grant update on TB_DRPCF to public; 
grant delete on TB_DRPCF to public;  
grant insert on TB_DRPCF to public; 
grant select on SEQ_TB_DRPCF to public; 