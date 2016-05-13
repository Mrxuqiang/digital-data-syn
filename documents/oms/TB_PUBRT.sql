/*
================================================================================
表结构代码:TB_PUBRT
表结构名称:期末结转子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRT;
drop index AK_TB_PUBRT;
drop table TB_PUBRT;
create table TB_PUBRT  (
   PUBRT_ID             INTEGER                         not null,  /*期末结转子ID       */
   PUBRT001             INTEGER                         not null,  /*期末结转主ID       */
   PUBRT002             VARCHAR2(10)                    not null,  /*序号               */
   PUBRT003              VARCHAR2(255)                  not null,  /*摘要ID             */
   PUBRT004             INTEGER                         not null,  /*科目ID             */
   PUBRT005             VARCHAR2(20) ,                             /*辅助项标识         */
   PUBRT006             VARCHAR2(1)                     not null,  /*方向               */
   PUBRT007             INTEGER                         not null,  /*币种ID             */
   PUBRT008             VARCHAR2(200)                   not null,  /*金额公式           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRT primary key (PUBRT_ID)
);
create unique index AK_TB_PUBRT on TB_PUBRT (PUBRT001,PUBRT002);
create sequence SEQ_TB_PUBRT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRT to public;
grant index  on TB_PUBRT to public;
grant update on TB_PUBRT to public; 
grant delete on TB_PUBRT to public;  
grant insert on TB_PUBRT to public; 
grant select on SEQ_TB_PUBRT to public;   