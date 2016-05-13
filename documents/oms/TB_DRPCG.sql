/*
================================================================================
表结构代码:TB_DRPCG
表结构名称:任务表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCG;
drop table TB_DRPCG;
create table TB_DRPCG  (
   DRPCG_ID             INTEGER         NOT NULL,  /*任务ID                 */ 
   DRPCG001             INTEGER,                   /*任务目录ID             */      
   DRPCG002             VARCHAR2(20),              /*任务编号               */   
   DRPCG003             VARCHAR2(30),              /*任务名称               */
   DRPCG004             DATE,                      /*开始日期               */   
   DRPCG005             DATE,                      /*结束日期               */   
   DRPCG006             INTEGER,                   /*关键字组合主键         */   
   DRPCG007             VARCHAR2(255),             /*备注                   */
   DRPCG008             INTEGER,                   /*创建公司ID             */   
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_DRPCG primary key (DRPCG_ID)
);
create sequence SEQ_TB_DRPCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCG to public;
grant index  on TB_DRPCG to public;
grant update on TB_DRPCG to public; 
grant delete on TB_DRPCG to public;  
grant insert on TB_DRPCG to public; 
grant select on SEQ_TB_DRPCG to public; 