/*
================================================================================
表结构代码:TB_PUBNB
表结构名称:结算单位用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNB;
drop index AK_TB_PUBNB;
drop table TB_PUBNB;
create table TB_PUBNB  (
   PUBNB_ID             INTEGER                         not null,   /*结算单位用户ID          */
   PUBNB001             INTEGER                         not null,   /*结算单位主ID            */
   PUBNB002             INTEGER,                                    /*用户编码ID              */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                */
   constraint PK_TB_PUBNB primary key (PUBNB_ID)
);
create unique index AK_TB_PUBNB on TB_PUBNB (PUBNB001);
create sequence SEQ_TB_PUBNB minvalue 1 NBxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNB to public;
grant index  on TB_PUBNB to public;
grant update on TB_PUBNB to public; 
grant delete on TB_PUBNB to public;  
grant insert on TB_PUBNB to public; 
grant select on SEQ_TB_PUBNB to public;   