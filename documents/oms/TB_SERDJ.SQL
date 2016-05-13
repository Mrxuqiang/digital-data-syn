/*
================================================================================
表结构代码:TB_SERDJ
表结构名称:售后服务单费用明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDJ;
drop index AK_TB_SERDJ;
drop table TB_SERDJ;
create table TB_SERDJ  (
   SERDJ_ID             INTEGER               not null,              /*费用明细ID         */
   SERDJ001             INTEGER               not null,              /*售后服务单ID       */
   SERDJ002             INTEGER               not null,              /*费用ID       */
   SERDJ003             NUMBER(18,3)          not null,              /*金额               */
   CREATE_USER          VARCHAR2(12),                                /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门         */                               
   CREATE_DATE          DATE,                                        /*建立日期             */
   MODIFIER             VARCHAR2(12),                                /*修改人员             */
   MODI_DATE            DATE,                                        /*修改日期             */
   FLAG                 NUMBER(1),                                   /*资料状态             */
   constraint PK_TB_SERDJ primary key (SERDJ_ID)
);
create sequence SEQ_TB_SERDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDJ to public;
grant index  on TB_SERDJ to public;
grant update on TB_SERDJ to public; 
grant delete on TB_SERDJ to public;  
grant insert on TB_SERDJ to public; 
grant select on SEQ_TB_SERDJ to public;   