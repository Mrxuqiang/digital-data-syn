/*
================================================================================
表结构代码:TB_MEMBE
表结构名称:会员卡发卡消费明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBE;
drop index AK_TB_MEMBE;
drop table TB_MEMBE;
create table TB_MEMBE  (
   MEMBE_ID             INTEGER                         not null,  /*会员卡发卡消费明细ID*/
   MEMBE001             INTEGER                         not null,  /*会员卡发卡单ID      */
   MEMBE002             VARCHAR2(16)                    not null,  /*销售单ID            */
   MEMBE003             NUMBER(12,2)                    not null,  /*销售金额            */
   MEMBE004             INTEGER                         not null,  /*交款单ID            */
   MEMBE005             NUMBER(12,2)                    not null,  /*交款金额            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEMBE primary key (MEMBE_ID)
);
create unique index AK_TB_MEMBE on TB_MEMBE (MEMBE001,MEMBE004);
create sequence SEQ_TB_MEMBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBE to public;
grant index  on TB_MEMBE to public;
grant update on TB_MEMBE to public; 
grant delete on TB_MEMBE to public;  
grant insert on TB_MEMBE to public; 
grant select on SEQ_TB_MEMBE to public;   