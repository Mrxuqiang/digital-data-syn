/*
================================================================================
表结构代码:TB_GRTCA      iufo_measure_data_ak7vzznp  iufo_measure_data_ak7vzznp
表结构名称:报表目录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCA;
--drop index AK_TB_GRTCA;
drop table TB_GRTCA;
create table TB_GRTCA  (
   GRTCA_ID             INTEGER         not null,  /*ID                 */
   GRTCA001             INTEGER,                   /*父ID               */   
   GRTCA002             VARCHAR2(50),              /*目录名称           */
   GRTCA003             VARCHAR2(1),               /*是否合并报表目录   */ 
   GRTCA004             VARCHAR2(1),               /*是否模板           */    
   GRTCA005             VARCHAR2(1),               /*是否系统预制       */    
   GRTCA006             VARCHAR2(1),               /*目录类型           */
   GRTCA007             INTEGER,                   /*公司ID             */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */   
   constraint PK_TB_GRTCA primary key (GRTCA_ID)
);
create sequence SEQ_TB_GRTCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCA to public;
grant index  on TB_GRTCA to public;
grant update on TB_GRTCA to public; 
grant delete on TB_GRTCA to public;  
grant insert on TB_GRTCA to public; 
grant select on SEQ_TB_GRTCA to public;   