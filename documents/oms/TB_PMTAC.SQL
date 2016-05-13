/*
================================================================================
表结构代码:TB_PMTAC
表结构名称:营销指标表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTAC;
drop index AK_TB_PMTAC;
drop table TB_PMTAC;
create table TB_PMTAC  (
   PMTAC_ID             INTEGER                         not null,  /*营销指标ID        */
   PMTAC001             INTEGER                         not null,  /*促销主题ID        */
   PMTAC002             INTEGER                         not null,  /*门店              */
   PMTAC003             NUMBER(18,2)                   not null,  /*营销指标          */
   PMTAC004             VARCHAR2(255),                             /*营销指标描述      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTAC primary key (PMTAC_ID)
);
create unique index AK_TB_PMTAC on TB_PMTAC (PMTAC_ID);
create sequence SEQ_TB_PMTAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTAC to public;
grant index  on TB_PMTAC to public;
grant update on TB_PMTAC to public; 
grant delete on TB_PMTAC to public;  
grant insert on TB_PMTAC to public; 
grant select on SEQ_TB_PMTAC to public;   