/*
================================================================================
表结构代码:TB_SEREB
表结构名称:赠品信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREB;
drop index AK_TB_SEREB;
drop table TB_SEREB;
create table TB_SEREB  (
   SEREB_ID             INTEGER                         not null,  /*赠品ID            */
   SEREB001             VARCHAR2(30)                    not null,  /*赠品编号          */
   SEREB002             VARCHAR2(80)                    not null,  /*赠品全称          */
   SEREB003             VARCHAR2(80)                    not null,  /*赠品简称          */
   SEREB004             VARCHAR2(80),                              /*规格型号          */
   SEREB005             INTEGER                         not null,  /*赠品分类ID        */
   SEREB006             INTEGER                         not null,  /*基本单位ID        */
   SEREB007             NUMBER(12,2)                    not null,  /*零售价            */
   SEREB008             VARCHAR2(80),                              /*备注              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SEREB primary key (SEREB_ID)
);
create unique index AK_TB_SEREB on TB_SEREB (SEREB001);
create sequence SEQ_TB_SEREB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREB to public;
grant index  on TB_SEREB to public;
grant update on TB_SEREB to public; 
grant delete on TB_SEREB to public;  
grant insert on TB_SEREB to public; 
grant select on SEQ_TB_SEREB to public;   