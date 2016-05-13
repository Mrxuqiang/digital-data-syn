/*
================================================================================
表结构代码:TB_PUBKH
表结构名称:货架表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKH;
drop index AK_TB_PUBKH;
drop table TB_PUBKH;
create table TB_PUBKH  (
   PUBKH_ID             INTEGER                            not null,  /*货架ID             */
   PUBKH001             VARCHAR2(8)                      not null,  /*货架代码           */
   PUBKH002             VARCHAR2(64)                    not null,  /*货架名称          */
   PUBKH003             INTEGER                            not null,  /*所属货道ID       */
   PUBKH004            VARCHAR2(32)				     ,  /*条码		    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                           /*建立日期          */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                           /*修改日期           */
   FLAG                 NUMBER(1),                                          /*资料状态           */
   constraint PK_TB_PUBKH primary key (PUBKH_ID)
);
create unique index AK_TB_PUBKH on TB_PUBKH (PUBKH001);
create sequence SEQ_TB_PUBKH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKH to public;
grant index  on TB_PUBKH to public;
grant update on TB_PUBKH to public; 
grant delete on TB_PUBKH to public;  
grant insert on TB_PUBKH to public; 
grant select on SEQ_TB_PUBKH to public;   