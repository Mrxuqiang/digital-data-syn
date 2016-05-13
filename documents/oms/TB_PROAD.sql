/*
================================================================================
表结构代码:TB_PROAD
表结构名称:电话分配子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAD;
drop index AK_TB_PROAD;
drop table TB_PROAD;
create table TB_PROAD  (
   PROAD_ID             INTEGER                         not null,  /*电话分配明细ID       */
   PROAD001             INTEGER                         not null,  /*电话分配ID           */
   PROAD002             DATE                            not null,  /*分配日期             */
   PROAD003             INTEGER                         not null,  /*客商ID               */
   PROAD004             INTEGER,                                   /*摊位ID               */
   PROAD005             INTEGER,                                   /*合同ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAD primary key (PROAD_ID)
);
create unique index AK_TB_PROAD on TB_PROAD (PROAD001,PROAD002);
create sequence SEQ_TB_PROAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAD to public;
grant index  on TB_PROAD to public;
grant update on TB_PROAD to public; 
grant delete on TB_PROAD to public;  
grant insert on TB_PROAD to public; 
grant select on SEQ_TB_PROAD to public;   