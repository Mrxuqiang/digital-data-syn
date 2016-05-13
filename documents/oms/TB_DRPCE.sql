/*
================================================================================
表结构代码:TB_DRPCE
表结构名称:报表指标表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCE;
drop table TB_DRPCE;
create table TB_DRPCE  (
   DRPCE_ID             INTEGER         NOT NULL,                      /*报表指标ID         */   
   DRPCE001             VARCHAR2(20),                                  /*报表编号           */   
   DRPCE002             VARCHAR2(20),                                  /*行号               */   
   DRPCE003             VARCHAR2(20),                                  /*列号               */
   DRPCE004             VARCHAR2(30),                                  /*指标名称           */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员           */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门       */                               
   CREATE_DATE          DATE,                                          /*建立日期           */
   MODIFIER             VARCHAR2(12),                                  /*修改人员           */
   MODI_DATE            DATE,                                          /*修改日期           */
   FLAG                 NUMBER(1),                                     /*资料状态           */  
   constraint PK_TB_DRPCE primary key (DRPCE_ID)
);
create sequence SEQ_TB_DRPCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCE to public;
grant index  on TB_DRPCE to public;
grant update on TB_DRPCE to public; 
grant delete on TB_DRPCE to public;  
grant insert on TB_DRPCE to public; 
grant select on SEQ_TB_DRPCE to public; 