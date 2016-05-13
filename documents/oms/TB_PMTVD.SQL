/*
================================================================================
表结构代码:TB_PMTVD
表结构名称:满减促销单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVD;
drop index AK_TB_PMTVD;
drop table TB_PMTVD;
create table TB_PMTVD  (
   PMTVD_ID             INTEGER                         not null,  /*赠品不参与规则ID  */
   PMTVD001             INTEGER                         not null,  /*满减促销单ID      */
   PMTVD002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTVD003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVD primary key (PMTVD_ID)
);
create unique index AK_TB_PMTVD on TB_PMTVD (PMTVD001,PMTVD002,PMTVD003);
create sequence SEQ_TB_PMTVD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVD to public;
grant index  on TB_PMTVD to public;
grant update on TB_PMTVD to public; 
grant delete on TB_PMTVD to public;  
grant insert on TB_PMTVD to public; 
grant select on SEQ_TB_PMTVD to public;   