/*
================================================================================
表结构代码:TB_PUBMB
表结构名称:项目明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBMB;
drop index AK_TB_PUBMB;
drop table TB_PUBMB;
create table TB_PUBMB  (
   PUBMB_ID             INTEGER                          not null,  /*项目明细ID         */
   PUBMB001             INTEGER                          not null,  /*项目类型ID         */
   PUBMB002             VARCHAR2(20)                     not null,  /*项目编码           */
   PUBMB003             VARCHAR2(60)                     not null,  /*项目名称           */
   PUBMB004             INTEGER,                                    /*负责部门ID         */
   PUBMB005             INTEGER,                                    /*负责人员ID         */
   PUBMB006             VARCHAR2(1)                      not null,  /*是否完工           */
   PUBMB007             DATE,                                       /*预计开始日         */
   PUBMB008             DATE,                                       /*预计完工日         */
   PUBMB009             DATE,                                       /*实际开始日         */
   PUBMB010             DATE,                                       /*实际完工日         */ 
   PUBMB011             VARCHAR2(200),                              /*备注               */       
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                       /*建立日期           */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                       /*修改日期           */
   FLAG                 NUMBER(1),                                  /*资料状态           */
   constraint PK_TB_PUBMB primary  key (PUBMB_ID)
);
create unique index AK_TB_PUBMB on TB_PUBMB (PUBMB001);
create sequence SEQ_TB_PUBMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBMB to public;
grant index  on TB_PUBMB to public;
grant update on TB_PUBMB to public; 
grant delete on TB_PUBMB to public;  
grant insert on TB_PUBMB to public; 
grant select on SEQ_TB_PUBMB to public;   