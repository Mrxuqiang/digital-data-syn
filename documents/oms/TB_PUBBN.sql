/*
================================================================================
表结构代码:TB_PUBBN
表结构名称:资质维护分配子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBN;
drop index AK_TB_PUBBN;
drop table TB_PUBBN;
create table TB_PUBBN  (
   PUBBN_ID             INTEGER                         not null,  /*分配单子id         */
   PUBBN001             INTEGER                         not null,  /*分配单主id         */
   PUBBN002             INTEGER                         not null,  /*工厂               */
   PUBBN003             INTEGER,                                   /*大区               */
   PUBBN004             INTEGER,                                   /*小区               */
   PUBBN005             INTEGER,                                   /*商场               */
   PUBBN006             DATE,                                      /*生效日期           */
   PUBBN007             DATE,                                      /*失效日期           */
   PUBBN008             VARCHAR2(255),                             /*备注               */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBN primary key (PUBBN_ID)
);
create unique index AK_TB_PUBBN on TB_PUBBN (PUBBN001,PUBBN002,FLAG);
create sequence SEQ_TB_PUBBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBN to public;
grant index  on TB_PUBBN to public;
grant update on TB_PUBBN to public; 
grant delete on TB_PUBBN to public;  
grant insert on TB_PUBBN to public; 
grant select on SEQ_TB_PUBBN to public;   