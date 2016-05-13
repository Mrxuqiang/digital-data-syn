/*
================================================================================
表结构代码:TB_PUBGN
表结构名称:返款方式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGN;
drop index AK_TB_PUBGN;
drop table TB_PUBGN;
create table TB_PUBGN  (
   PUBGN_ID             INTEGER                         not null,  /*返款方式ID         */
   PUBGN001             VARCHAR2(4)                     not null,  /*返款方式代码       */
   PUBGN002             VARCHAR2(30)                    not null,  /*返款方式名称       */
   PUBGN003             NUMBER(12,2),                              /*金额条件           */
   PUBGN004             NUMBER(5),                                 /*天数条件           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGN primary key (PUBGN_ID)
);
create unique index AK_TB_PUBGN on TB_PUBGN (PUBGN001);
create sequence SEQ_TB_PUBGN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGN to public;
grant index  on TB_PUBGN to public;
grant update on TB_PUBGN to public; 
grant delete on TB_PUBGN to public;  
grant insert on TB_PUBGN to public; 
grant select on SEQ_TB_PUBGN to public;   