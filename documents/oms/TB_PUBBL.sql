/*
================================================================================
表结构代码:TB_PUBBL
表结构名称:工厂资质表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBL;
drop index AK_TB_PUBBL;
drop table TB_PUBBL;
create table TB_PUBBL  (
   PUBBL_ID             INTEGER                         not null,  /*工厂资质ID         */
   PUBBL001             INTEGER                         not null,  /*品牌商ID           */
   PUBBL002             INTEGER                         not null,  /*资质类型ID         */
   PUBBL003             VARCHAR2(80),                              /*资质号码           */
   PUBBL004             DATE,                                      /*有效起日           */
   PUBBL005             DATE,                                      /*有效止日           */
   PUBBL006             VARCHAR2(1000),                            /*资质图片           */
   PUBBL007             VARCHAR2(1),                               /*状态               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBL primary key (PUBBL_ID)
);
create unique index AK_TB_PUBBL on TB_PUBBL (PUBBL001,PUBBL002,PUBBL004,PUBBL005,FLAG);
create sequence SEQ_TB_PUBBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBL to public;
grant index  on TB_PUBBL to public;
grant update on TB_PUBBL to public; 
grant delete on TB_PUBBL to public;  
grant insert on TB_PUBBL to public; 
grant select on SEQ_TB_PUBBL to public;   