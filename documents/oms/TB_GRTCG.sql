/*
================================================================================
表结构代码:TB_GRTCG
表结构名称:任务表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCG;
drop table TB_GRTCG;
create table TB_GRTCG  (
   GRTCG_ID             INTEGER         NOT NULL,  /*任务ID                 */ 
   GRTCG001             INTEGER,                   /*任务目录ID             */      
   GRTCG002             VARCHAR2(20),              /*任务编号               */   
   GRTCG003             VARCHAR2(30),              /*任务名称               */
   GRTCG004             DATE,                      /*开始日期               */   
   GRTCG005             DATE,                      /*结束日期               */   
   GRTCG006             INTEGER,                   /*关键字组合主键         */   
   GRTCG007             VARCHAR2(255),             /*备注                   */
   GRTCG008             INTEGER,                   /*创建公司ID             */   
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_GRTCG primary key (GRTCG_ID)
);
create sequence SEQ_TB_GRTCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCG to public;
grant index  on TB_GRTCG to public;
grant update on TB_GRTCG to public; 
grant delete on TB_GRTCG to public;  
grant insert on TB_GRTCG to public; 
grant select on SEQ_TB_GRTCG to public; 