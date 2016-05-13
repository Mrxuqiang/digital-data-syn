表结构代码:TB_PMTSE
表结构名称:交款直降促销单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTSE;
drop index AK_TB_PMTSE;
drop table TB_PMTSE;


create table TB_PMTSE  (
   PMTSE_ID             INTEGER                         not null,  /*交款直降生效时间ID*/
   PMTSE001             INTEGER                         not null,  /*交款直降促销单ID  */
   PMTSE002             DATE                            not null,  /*开始日期          */
   PMTSE003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTSE004             DATE                            not null,  /*结束日期          */
   PMTSE005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTSE primary key (PMTSE_ID)
);
create unique index AK_TB_PMTSE on TB_PMTSE (PMTSE001,PMTSE002,PMTSE003);
create sequence SEQ_TB_PMTSE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSE to public;
grant index  on TB_PMTSE to public;
grant update on TB_PMTSE to public; 
grant delete on TB_PMTSE to public;  
grant insert on TB_PMTSE to public; 
grant select on SEQ_TB_PMTSE to public;   
