/*
================================================================================
表结构代码:TB_PUBKG
表结构名称:货道表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKG;
drop index AK_TB_PUBKG;
drop table TB_PUBKG;
create table TB_PUBKG  (
   PUBKG_ID             INTEGER                            not null,  /*货道ID             */
   PUBKG001             VARCHAR2(8)                      not null,  /*货道代码           */
   PUBKG002             VARCHAR2(64)                    not null,  /*货道名称          */
   PUBKG003             INTEGER                            not null,  /*所属货区ID       */
   PUBKG004            VARCHAR2(32)				     ,  /*条码		    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                           /*建立日期          */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                           /*修改日期           */
   FLAG                 NUMBER(1),                                          /*资料状态           */
   constraint PK_TB_PUBKG primary key (PUBKG_ID)
);
create unique index AK_TB_PUBKG on TB_PUBKG (PUBKG001);
create sequence SEQ_TB_PUBKG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKG to public;
grant index  on TB_PUBKG to public;
grant update on TB_PUBKG to public; 
grant delete on TB_PUBKG to public;  
grant insert on TB_PUBKG to public; 
grant select on SEQ_TB_PUBKG to public;   