/*
================================================================================
表结构代码:TB_PUBBG
表结构名称:小区资料表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBG;
drop index AK_TB_PUBBG;
drop table TB_PUBBG;
create table TB_PUBBG  (
   PUBBG_ID             INTEGER                         not null,  /*小区ID             */
   PUBBG001             VARCHAR2(8)                     not null,  /*小区代码           */
   PUBBG002             VARCHAR2(20)                    not null,  /*小区名称           */
   PUBBG003             INTEGER                         not null,  /*区县ID             */
   PUBBG004             NUMBER(12,2),				   /*小区面积           */
   PUBBG005             NUMBER(12,2),				   /*小区楼栋数         */
   PUBBG006             NUMBER(12,2),				   /*小区人口           */
   PUBBG007             VARCHAR2(100),				   /*主体人群           */
   PUBBG008             VARCHAR2(100),				   /*备注	        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBG primary key (PUBBG_ID)
);
create unique index AK_TB_PUBBG on TB_PUBBG (PUBBG001);
create sequence SEQ_TB_PUBBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBG to public;
grant index  on TB_PUBBG to public;
grant update on TB_PUBBG to public; 
grant delete on TB_PUBBG to public;  
grant insert on TB_PUBBG to public; 
grant select on SEQ_TB_PUBBG to public;   