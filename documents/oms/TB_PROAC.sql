/*
================================================================================
表结构代码:TB_PROAC
表结构名称:电话分配主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAC;
drop index AK_TB_PROAC;
drop table TB_PROAC;
create table TB_PROAC  (
   PROAC_ID             INTEGER                         not null,  /*电话分配ID           */
   PROAC001             INTEGER                         not null,  /*公司ID               */
   PROAC002             INTEGER                         not null,  /*营运组织ID           */
   PROAC003             VARCHAR2(16)                    not null,  /*电话号               */
   PROAC004             VARCHAR2(30),                              /*电话描述             */
   PROAC005             INTEGER                         not null,  /*话费费用ID           */
   PROAC006             INTEGER                         not null,  /*押金费用ID           */
   PROAC007             VARCHAR2(1),                               /*有效否               */
   PROAC008             VARCHAR2(255),                             /*备注                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAC primary key (PROAC_ID)
);
create unique index AK_TB_PROAC on TB_PROAC (PROAC002,PROAC003);
create sequence SEQ_TB_PROAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAC to public;
grant index  on TB_PROAC to public;
grant update on TB_PROAC to public; 
grant delete on TB_PROAC to public;  
grant insert on TB_PROAC to public; 
grant select on SEQ_TB_PROAC to public;   