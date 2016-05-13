/*
================================================================================
表结构代码:TB_MEMBC
表结构名称:会员卡发卡条件规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBC;
drop index AK_TB_MEMBC;
drop table TB_MEMBC;
create table TB_MEMBC  (
   MEMBC_ID             INTEGER                         not null,  /*发卡条件规则ID     */
   MEMBC001             VARCHAR2(4)                     not null,  /*条件代码           */
   MEMBC002             VARCHAR2(30)                    not null,  /*条件名称           */
   MEMBC003             VARCHAR2(1),                               /*是否有效           */
   MEMBC004             VARCHAR2(1)                     not null,  /*条件类型1.销售卡 2.消费附赠    */
   MEMBC005             NUMBER(12,2),                              /*购卡金额           */
   MEMBC006             NUMBER(12,2),                              /*交款金额           */
   MEMBC007             NUMBER(12,2),                              /*销售金额           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMBC primary key (MEMBC_ID)
);
create unique index AK_TB_MEMBC on TB_MEMBC (MEMBC001);
create sequence SEQ_TB_MEMBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBC to public;
grant index  on TB_MEMBC to public;
grant update on TB_MEMBC to public; 
grant delete on TB_MEMBC to public;  
grant insert on TB_MEMBC to public; 
grant select on SEQ_TB_MEMBC to public;   