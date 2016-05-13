/*
================================================================================
表结构代码:TB_OTSDI
表结构名称:先行赔付费用单对应对应费用项配置
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_OTSDI;
drop index AK_TB_OTSDI;
drop table TB_OTSDI;
create table TB_OTSDI  (
   OTSDI_ID             INTEGER                         not null,  /*费用项配置ID             */
   OTSDI001             VARCHAR2(2)                    not null,   /*赔付费用类型         */
   OTSDI002             INTEGER                         not null,  /*OMS费用项ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_OTSDI primary key (OTSDI_ID)
);
create sequence SEQ_TB_OTSDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDI to public;
grant index  on TB_OTSDI to public;
grant update on TB_OTSDI to public; 
grant delete on TB_OTSDI to public;  
grant insert on TB_OTSDI to public; 
grant select on SEQ_TB_OTSDI to public;  