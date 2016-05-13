/*
================================================================================
表结构代码:TB_DRPAH
表结构名称:合并单位间持股比例表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAH;
drop index AK_TB_DRPAH;
drop table TB_DRPAH;
create table TB_DRPAH  (
   DRPAH_ID             INTEGER                         not null,  /* 主ID               */
   DRPAH001             INTEGER                         not null,  /* 合并范围主ID       */
   DRPAH002             INTEGER                         not null,  /* 投资单位ID         */
   DRPAH003             INTEGER,                                   /* 被投资单位ID       */    
   DRPAH004             NUMBER(5,4),                               /* 投资比例           */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPAH primary key (DRPAH_ID)
);
create sequence SEQ_TB_DRPAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAH to public;
grant index  on TB_DRPAH to public;
grant update on TB_DRPAH to public; 
grant delete on TB_DRPAH to public;  
grant insert on TB_DRPAH to public; 
grant select on SEQ_TB_DRPAH to public;   