/*
================================================================================
表结构代码:TB_PMTEE
表结构名称:交款折扣单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEE;
drop index AK_TB_PMTEE;
drop table TB_PMTEE;
create table TB_PMTEE  (
   PMTEE_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTEE001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEE002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTEE003             INTEGER,                                   /*分摊对象ID        */
   PMTEE004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTEE005             INTEGER,                                   /*供应商ID          */
   PMTEE006             INTEGER,                                   /*品类引进协议ID    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEE primary key (PMTEE_ID)
);
create unique index AK_TB_PMTEE on TB_PMTEE (PMTEE001,PMTEE002,PMTEE003);
create sequence SEQ_TB_PMTEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEE to public;
grant index  on TB_PMTEE to public;
grant update on TB_PMTEE to public; 
grant delete on TB_PMTEE to public;  
grant insert on TB_PMTEE to public; 
grant select on SEQ_TB_PMTEE to public;   