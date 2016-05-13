/*
================================================================================
表结构代码:TB_GLDAL
表结构名称:结帐表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAL;
drop index AK_TB_GLDAL;
drop table TB_GLDAL;
create table TB_GLDAL  (
   GLDAL_ID             INTEGER                         not null,  /*结帐ID             */
   GLDAL001             INTEGER,                                   /*结帐年             */
   GLDAL002             INTEGER,                                   /*结帐月             */
   GLDAL003             VARCHAR2(1),                               /*结帐状态           */
   GLDAL004             DATE,                                      /*结帐时间           */
   GLDAL005             INTEGER,                                   /*会计核算账簿ID     */
   GLDAL006             INTEGER,                                   /*会计主体ID         */
   GLDAL007             INTEGER,                                   /*公司ID             */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GLDAL primary key (GLDAL_ID)
);
create unique index AK_TB_GLDAL on TB_GLDAL (GLDAL001);
create sequence SEQ_TB_GLDAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAL to public;
grant index  on TB_GLDAL to public;
grant update on TB_GLDAL to public; 
grant delete on TB_GLDAL to public;  
grant insert on TB_GLDAL to public; 
grant select on SEQ_TB_GLDAL to public;   