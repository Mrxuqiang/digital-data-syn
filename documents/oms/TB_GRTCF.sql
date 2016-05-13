/*
================================================================================
表结构代码:TB_GRTCF
表结构名称:任务目录表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCF;
drop table TB_GRTCF;
create table TB_GRTCF  (
   GRTCF_ID             INTEGER         NOT NULL,  /*ID                 */ 
   GRTCF001             INTEGER,                   /*父ID               */      
   GRTCF002             VARCHAR2(20),              /*目录名称           */   
   GRTCF003             INTEGER,                   /*公司ID             */
   GRTCF004             VARCHAR2(80),              /*目录说明           */    
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */      
   constraint PK_TB_GRTCF primary key (GRTCF_ID)
);
create sequence SEQ_TB_GRTCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCF to public;
grant index  on TB_GRTCF to public;
grant update on TB_GRTCF to public; 
grant delete on TB_GRTCF to public;  
grant insert on TB_GRTCF to public; 
grant select on SEQ_TB_GRTCF to public; 