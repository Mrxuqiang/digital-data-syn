/*
================================================================================
表结构代码:TB_PUBLF
表结构名称:账套定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLF;
drop index AK_TB_PUBLF;
drop table TB_PUBLF;
create table TB_PUBLF  (
   PUBLF_ID             INTEGER                         not null,  /*账套定义ID           */
   PUBLF001             VARCHAR2(4)                     not null,  /*账套代码             */
   PUBLF002             VARCHAR2(30)                    not null,  /*账套名称             */
   PUBLF003             VARCHAR2(60),                              /*账套描述             */
   PUBLF004             INTEGER                         not null,  /*会计科目方案ID       */
   PUBLF005             INTEGER                         not null,  /*会计期间方案ID       */
   PUBLF006             INTEGER                         not null,  /*本位币ID             */
   PUBLF007             VARCHAR2(1)                     not null,  /*币种核算体系         */
   PUBLF008             INTEGER,                                   /*辅币ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLF primary key (PUBLF_ID)
);
create unique index AK_TB_PUBLF on TB_PUBLF (PUBLF001);
create sequence SEQ_TB_PUBLF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLF to public;
grant index  on TB_PUBLF to public;
grant update on TB_PUBLF to public; 
grant delete on TB_PUBLF to public;  
grant insert on TB_PUBLF to public; 
grant select on SEQ_TB_PUBLF to public;   