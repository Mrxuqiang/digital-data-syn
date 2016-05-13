/*
================================================================================
表结构代码:TB_DRPAF
表结构名称:合并范围主表  
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAF;
drop index AK_TB_DRPAF;
drop table TB_DRPAF;
create table TB_DRPAF  (
   DRPAF_ID             INTEGER                         not null,  /*合并范围主ID          */
   DRPAF001             INTEGER                         not null,  /*合并单位ID              */   
   DRPAF002             INTEGER                         not null,  /*任务ID              */
   DRPAF003             DATE                            not null,  /*会计期间            */            
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPAF primary key (DRPAF_ID)
);
create sequence SEQ_TB_DRPAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAF to public;
grant index  on TB_DRPAF to public;
grant update on TB_DRPAF to public; 
grant delete on TB_DRPAF to public;  
grant insert on TB_DRPAF to public; 
grant select on SEQ_TB_DRPAF to public;   