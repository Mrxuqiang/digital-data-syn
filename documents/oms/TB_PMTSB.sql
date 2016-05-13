/*
================================================================================
表结构代码:TB_PMTSB
表结构名称:交款直降促销单字表（折扣规则）
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTSB;
drop index AK_TB_PMTSB;
drop table TB_PMTSB;
create table TB_PMTSB  (
   PMTSB_ID             INTEGER                         not null,  /*交款直降促销单金额ID      */
   PMTSB001             INTEGER                         not null,  /*交款直降促销单ID          */
   PMTSB002             NUMBER(18,3)                    not null,  /*开始金额          */
   PMTSB003             NUMBER(18,3)                    not null,  /*结束金额          */
   PMTSB004             NUMBER(18,3)                    not null,  /*直降金额      */
   PMTSB005             NUMBER(18,3),                              /*逐单笔数      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTSB primary key (PMTSB_ID)
);
--create unique index AK_TB_PMTSB on TB_PMTSB (PMTSB001);
create sequence SEQ_TB_PMTSB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSB to public;
grant index  on TB_PMTSB to public;
grant update on TB_PMTSB to public; 
grant delete on TB_PMTSB to public;  
grant insert on TB_PMTSB to public; 
grant select on SEQ_TB_PMTSB to public;   
