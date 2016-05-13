/*
================================================================================
表结构代码:TB_PUBNG
表结构名称:账龄区间主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNG;
drop index AK_TB_PUBNG;
drop table TB_PUBNG;
create table TB_PUBNG  (
   PUBNG_ID             INTEGER                          not null,  /*账龄区间主ID            */
   PUBNG001             VARCHAR2(10)                     not null,/*账龄区间编码            */
   PUBNG002             VARCHAR2(40)                     not null,  /*账龄区间名称            */
   PUBNG003             VARCHAR2(200),                              /*备注                    */
   PUBNG004             VARCHAR2(1)                    not null,    /*时间单位                */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                 */
   constraint PK_TB_PUBNG primary key (PUBNG_ID)
);
create unique index AK_TB_PUBNG on TB_PUBNG (PUBNG001);
create sequence SEQ_TB_PUBNG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNG to public;
grant index  on TB_PUBNG to public;
grant update on TB_PUBNG to public; 
grant delete on TB_PUBNG to public;  
grant insert on TB_PUBNG to public; 
grant select on SEQ_TB_PUBNG to public;   