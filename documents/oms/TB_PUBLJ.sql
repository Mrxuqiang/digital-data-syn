/*
================================================================================
表结构代码:TB_PUBLJ
表结构名称:辅助核算项定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLJ;
drop index AK_TB_PUBLJ;
drop table TB_PUBLJ;
create table TB_PUBLJ  (
   PUBLJ_ID             INTEGER                         not null,  /*辅助核算项ID         */
   PUBLJ001             VARCHAR2(4)                     not null,  /*辅助核算项代码       */
   PUBLJ002             VARCHAR2(30)                    not null,  /*辅助核算项名称       */
   PUBLJ003             VARCHAR2(2)                     not null,  /*资料来源             */
   PUBLJ004             INTEGER,                                   /*视图名             */
   PUBLJ005             INTEGER,                                   /*保存字段ID             */
   PUBLJ006             INTEGER,                                   /*视图ID               */
   PUBLJ007             INTEGER,                                   /*显示字段ID               */
   PUBLJ008             INTEGER,                                   /*名称字段ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLJ primary key (PUBLJ_ID)
);
create unique index AK_TB_PUBLJ on TB_PUBLJ (PUBLJ001);
create sequence SEQ_TB_PUBLJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLJ to public;
grant index  on TB_PUBLJ to public;
grant update on TB_PUBLJ to public; 
grant delete on TB_PUBLJ to public;  
grant insert on TB_PUBLJ to public; 
grant select on SEQ_TB_PUBLJ to public;   