/*
================================================================================
表结构代码:TB_HRBAE
表结构名称:纳税地点表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAE;
drop index AK_TB_HRBAE;
drop table TB_HRBAE;
create table TB_HRBAE  (
   HRBAE_ID             INTEGER                         not null,  /*所得地点ID         */
   HRBAE001             VARCHAR2(20)                    not null,  /*地点名称           */
   HRBAE002             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAE primary key (HRBAE_ID)
);
create unique index AK_TB_HRAAE on TB_HRBAE (HRBAE001);
create sequence SEQ_TB_HRBAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAE to public;
grant index  on TB_HRBAE to public;
grant update on TB_HRBAE to public; 
grant delete on TB_HRBAE to public;  
grant insert on TB_HRBAE to public; 
grant select on SEQ_TB_HRBAE to public;   