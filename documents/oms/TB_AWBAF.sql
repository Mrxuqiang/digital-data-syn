/*
================================================================================
表结构代码:TB_AWBAF
表结构名称:凭证模板辅助项表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAF;
drop index AK_TB_AWBAF;
drop table TB_AWBAF;
create table TB_AWBAF  (
   AWBAF_ID             INTEGER                         not null,  /*凭证模板辅助项ID       */
   AWBAF001             INTEGER,                                   /*凭证模版ID             */
   AWBAF002             INTEGER,                                   /*辅助项类型ID            */  
   AWBAF003             VARCHAR2(200),                             /*辅助项公式             */ 
   AWBAF004             VARCHAR2(200),                             /*辅助项公式描述             */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_AWBAF primary key (AWBAF_ID)
);
create unique index AK_TB_AWBAF on TB_AWBAF (AWBAF001,AWBAF002);
create sequence SEQ_TB_AWBAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAF to public;
grant index  on TB_AWBAF to public;
grant update on TB_AWBAF to public; 
grant delete on TB_AWBAF to public;  
grant insert on TB_AWBAF to public; 
grant select on SEQ_TB_AWBAF to public;   