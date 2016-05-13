/*
================================================================================
表结构代码:TB_PRCAC
表结构名称:价格策略会员价表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCAC;
drop index AK_TB_PRCAC;
drop table TB_PRCAC;
create table TB_PRCAC  (
   PRCAC_ID             INTEGER                         not null,  /*价格策略会员价ID  */
   PRCAC001             INTEGER                         not null,  /*价格策略ID        */
   PRCAC002             INTEGER                         not null,  /*价格策略标准售价ID*/
   PRCAC003             INTEGER                         not null,  /*会员等级ID        */
   PRCAC004             NUMBER(12,2)                    not null,  /*会员价            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCAC primary key (PRCAC_ID)
);
create unique index AK_TB_PRCAC on TB_PRCAC (PRCAC001,PRCAC002,PRCAC003);
create sequence SEQ_TB_PRCAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAC to public;
grant index  on TB_PRCAC to public;
grant update on TB_PRCAC to public; 
grant delete on TB_PRCAC to public;  
grant insert on TB_PRCAC to public; 
grant select on SEQ_TB_PRCAC to public;   