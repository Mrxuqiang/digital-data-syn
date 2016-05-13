/*
================================================================================
表结构代码:TB_PUBLL
表结构名称:会计科目辅助项表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLL;
drop index AK_TB_PUBLL;
drop table TB_PUBLL;
create table TB_PUBLL  (
   PUBLL_ID             INTEGER                         not null,  /*会计科目辅助项ID     */
   PUBLL001             INTEGER                         not null,  /*科目代码ID           */
   PUBLL002             INTEGER                         not null,  /*辅助核算项ID         */
   PUBLL003             VARCHAR2(1)                     not null,  /*是否必输项           */
   PUBLL004             NUMBER(2)                       not null,  /* 序号           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLL primary key (PUBLL_ID)
);
create unique index AK_TB_PUBLL on TB_PUBLL (PUBLL001,PUBLL002);
create sequence SEQ_TB_PUBLL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLL to public;
grant index  on TB_PUBLL to public;
grant update on TB_PUBLL to public; 
grant delete on TB_PUBLL to public;  
grant insert on TB_PUBLL to public; 
grant select on SEQ_TB_PUBLL to public;   