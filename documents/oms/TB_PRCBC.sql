/*
================================================================================
表结构代码:TB_PRCBC
表结构名称:售价调整会员价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCBC;
drop index AK_TB_PRCBC;
drop table TB_PRCBC;
create table TB_PRCBC  (
   PRCBC_ID             INTEGER                         not null,  /*售价调整会员价ID  */
   PRCBC001             INTEGER                         not null,  /*售价调整单头ID    */
   PRCBC002             INTEGER                         not null,  /*售价调整标准售价ID*/
   PRCBC003             INTEGER                         not null,  /*会员等级ID        */
   PRCBC004             VARCHAR(1)                      not null,  /*参考基准          */
   PRCBC005             NUMBER(12,2)                    not null,  /*参考价            */
   PRCBC006             NUMBER(5,3)                     not null,  /*浮动比率          */
   PRCBC007             NUMBER(12,2)                    not null,  /*会员价            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCBC primary key (PRCBC_ID)
);
create unique index AK_TB_PRCBC on TB_PRCBC (PRCBC001,PRCBC002,PRCBC003);
create sequence SEQ_TB_PRCBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBC to public;
grant index  on TB_PRCBC to public;
grant update on TB_PRCBC to public; 
grant delete on TB_PRCBC to public;  
grant insert on TB_PRCBC to public; 
grant select on SEQ_TB_PRCBC to public;   