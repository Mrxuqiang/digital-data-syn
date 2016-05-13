/*
================================================================================
表结构代码:TB_MEDDB
表结构名称:竞争对手追踪表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDDB;
drop index AK_TB_MEDDB;
drop table TB_MEDDB;
create table TB_MEDDB  (
   MEDDB_ID             INTEGER                         not null,  /*竞争对手追踪ID     */
   MEDDB001             INTEGER                         not null,  /*竞争对手ID         */
   MEDDB002             INTEGER                         not null,  /*媒体ID             */
   MEDDB003             DATE                            not null,  /*刊播日期           */
   MEDDB004             VARCHAR2(60),                              /*版面               */
   MEDDB005             VARCHAR2(60),                              /*规格               */
   MEDDB006             NUMBER(12),                                /*刊发次数           */
   MEDDB007             NUMBER(12,2),                              /*刊发价格           */
   MEDDB008             VARCHAR2(255),                             /*刊发内容           */
   MEDDB009             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDDB primary key (MEDDB_ID)
);
create unique index AK_TB_MEDDB on TB_MEDDB (MEDDB001,MEDDB002,MEDDB003);
create sequence SEQ_TB_MEDDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDDB to public;
grant index  on TB_MEDDB to public;
grant update on TB_MEDDB to public; 
grant delete on TB_MEDDB to public;  
grant insert on TB_MEDDB to public; 
grant select on SEQ_TB_MEDDB to public;   