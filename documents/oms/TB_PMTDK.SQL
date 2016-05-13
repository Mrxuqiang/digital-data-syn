/*
================================================================================
表结构代码:TB_PMTDK
表结构名称:买赠单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDK;
drop index AK_TB_PMTDK;
drop table TB_PMTDK;
create table TB_PMTDK  (
   PMTDK_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTDK001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDK002             INTEGER                     not null,      /*买赠规则ID          */
   PMTDK003             INTEGER                         not null,  /*商品ID            */
   PMTDK004             INTEGER                         not null,  /*单位ID            */
   PMTDK005             NUMBER(12,2),                              /*销售数量          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDK primary key (PMTDK_ID)
);
create unique index AK_TB_PMTDK on TB_PMTDK (PMTDK001,PMTDK002,PMTDK003,PMTDK005);
create sequence SEQ_TB_PMTDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDK to public;
grant index  on TB_PMTDK to public;
grant update on TB_PMTDK to public; 
grant delete on TB_PMTDK to public;  
grant insert on TB_PMTDK to public; 
grant select on SEQ_TB_PMTDK to public;   