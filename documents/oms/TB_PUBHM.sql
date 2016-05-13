/*
================================================================================
表结构代码:TB_PUBHM
表结构名称:商品会员参考价表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHM;
drop index AK_TB_PUBHM;
drop table TB_PUBHM;
create table TB_PUBHM  (
   PUBHM_ID             INTEGER                         not null,  /*会员参考价ID      */
   PUBHM001             INTEGER                         not null,  /*商品ID            */
   PUBHM002             INTEGER                         not null,  /*会员等级ID        */
   PUBHM003             NUMBER(12,2)                    not null,  /*会员参考价        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHM primary key (PUBHM_ID)
);
create unique index AK_TB_PUBHM on TB_PUBHM (PUBHM001,PUBHM002);
create sequence SEQ_TB_PUBHM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHM to public;
grant index  on TB_PUBHM to public;
grant update on TB_PUBHM to public; 
grant delete on TB_PUBHM to public;  
grant insert on TB_PUBHM to public; 
grant select on SEQ_TB_PUBHM to public;   