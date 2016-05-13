/*
================================================================================
表结构代码:TB_PRCAE
表结构名称:价格策略组子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PRCAE;
drop index AK_TB_PRCAE;
drop table TB_PRCAE;
create table TB_PRCAE  (
   PRCAE_ID             INTEGER                         not null,  /*价格策略组子表ID    */
   PRCAE001             INTEGER                         not null,  /*价格策略组ID        */
   PRCAE002             INTEGER,                                   /*价格策略ID          */
   PRCAE003             VARCHAR2(255),                             /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_PRCAE primary key (PRCAE_ID)
);
create unique index AK_TB_PRCAE on TB_PRCAE (PRCAE001,PRCAE002,FLAG);
create sequence SEQ_TB_PRCAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAE to public;
grant index  on TB_PRCAE to public;
grant update on TB_PRCAE to public; 
grant delete on TB_PRCAE to public;  
grant insert on TB_PRCAE to public; 
grant select on SEQ_TB_PRCAE to public;   