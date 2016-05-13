/*
================================================================================
表结构代码:TB_PUBHI
表结构名称:商品单位换算表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHI;
drop index AK_TB_PUBHI;
drop table TB_PUBHI;
create table TB_PUBHI  (
   PUBHI_ID             INTEGER                         not null,  /*单位换算项ID      */
   PUBHI001             INTEGER                         not null,  /*商品ID            */
   PUBHI002             INTEGER                         not null,  /*单位ID            */
   PUBHI003             NUMBER(12,2)                    not null,  /*换算系数          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHI primary key (PUBHI_ID)
);
create unique index AK_TB_PUBHI on TB_PUBHI (PUBHI001,PUBHI002);
create sequence SEQ_TB_PUBHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHI to public;
grant index  on TB_PUBHI to public;
grant update on TB_PUBHI to public; 
grant delete on TB_PUBHI to public;  
grant insert on TB_PUBHI to public; 
grant select on SEQ_TB_PUBHI to public;   