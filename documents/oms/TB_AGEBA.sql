/*
================================================================================
表结构代码:TB_AGEBA
表结构名称:代收款集团返款商户表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEBA;
drop index AK_TB_AGEBA;
drop table TB_AGEBA;
create table TB_AGEBA  (
   AGEBA_ID             INTEGER                         not null,  /*代收款集团返款商户ID        */
   AGEBA001             INTEGER                         not null,  /*客商ID                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGEBA primary key (AGEBA_ID)
);
create unique index AK_TB_AGEBA on TB_AGEBA (AGEBA001);
create sequence SEQ_TB_AGEBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEBA to public;
grant index  on TB_AGEBA to public;
grant update on TB_AGEBA to public; 
grant delete on TB_AGEBA to public;  
grant insert on TB_AGEBA to public; 
grant select on SEQ_TB_AGEBA to public;   