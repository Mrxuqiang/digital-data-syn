/*
================================================================================
表结构代码:TB_PMTHL
表结构名称:满赠促销单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHL;
drop index AK_TB_PMTHL;
drop table TB_PMTHL;
create table TB_PMTHL  (
   PMTHL_ID             INTEGER                         not null,  /*赠品不参与规则ID  */
   PMTHL001             INTEGER                         not null,  /*买赠促销单ID      */
   PMTHL002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTHL003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHL primary key (PMTHL_ID)
);
create unique index AK_TB_PMTHL on TB_PMTHL (PMTHL001,PMTHL002,PMTHL003);
create sequence SEQ_TB_PMTHL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHL to public;
grant index  on TB_PMTHL to public;
grant update on TB_PMTHL to public; 
grant delete on TB_PMTHL to public;  
grant insert on TB_PMTHL to public; 
grant select on SEQ_TB_PMTHL to public;   