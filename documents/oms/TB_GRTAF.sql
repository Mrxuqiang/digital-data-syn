/*
================================================================================
表结构代码:TB_GRTAF
表结构名称:合并范围主表  
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAF;
drop index AK_TB_GRTAF;
drop table TB_GRTAF;
create table TB_GRTAF  (
   GRTAF_ID             INTEGER                         not null,  /*合并范围主ID          */
   GRTAF001             INTEGER                         not null,  /*合并单位ID              */   
   GRTAF002             INTEGER                         not null,  /*任务ID              */
   GRTAF003             DATE                            not null,  /*会计期间            */            
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAF primary key (GRTAF_ID)
);
create sequence SEQ_TB_GRTAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAF to public;
grant index  on TB_GRTAF to public;
grant update on TB_GRTAF to public; 
grant delete on TB_GRTAF to public;  
grant insert on TB_GRTAF to public; 
grant select on SEQ_TB_GRTAF to public;   