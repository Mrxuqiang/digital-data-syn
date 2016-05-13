/*
================================================================================
表结构代码:TB_PUBNH
表结构名称:账龄区间明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNH;
drop index AK_TB_PUBNH;
drop table TB_PUBNH;
create table TB_PUBNH  (
   PUBNH_ID             INTEGER                           not null, /*账龄区间明细ID            */
   PUBNH001             INTEGER                           not null, /*账龄区间主ID              */
   PUBNH002             VARCHAR2(255),                              /*账期描述                  */
   PUBNH003             NUMBER(4)                         not null, /*账期开始                  */
   PUBNH004             NUMBER(4),                                  /*账期结束                  */
   PUBNH005             NUMBER(4),                                  /*账期总数                  */
   PUBNH006             NUMBER(5,4),                                /*计提比例                  */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门              */                               
   CREATE_DATE          DATE,                                       /*建立日期                  */
   MODIFIER             VARCHAR2(12),                               /*修改人员                  */
   MODI_DATE            DATE,                                       /*修改日期                  */
   FLAG                 NUMBER(1),                                  /*资料状态                  */
   constraint PK_TB_PUBNH primary key (PUBNH_ID)
);
create unique index AK_TB_PUBNH on TB_PUBNH (PUBNH001,PUBNH003);
create sequence SEQ_TB_PUBNH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNH to public;
grant index  on TB_PUBNH to public;
grant update on TB_PUBNH to public; 
grant delete on TB_PUBNH to public;  
grant insert on TB_PUBNH to public; 
grant select on SEQ_TB_PUBNH to public;   