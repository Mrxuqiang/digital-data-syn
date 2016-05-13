/*
================================================================================
表结构代码:TB_PROAA
表结构名称:电表分配主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAA;
drop index AK_TB_PROAA;
drop table TB_PROAA;
create table TB_PROAA  (
   PROAA_ID             INTEGER                         not null,  /*电表分配ID           */
   PROAA001             INTEGER                         not null,  /*公司ID               */
   PROAA002             INTEGER                         not null,  /*营运组织ID           */
   PROAA003             VARCHAR2(16)                    not null,  /*电表号               */
   PROAA004             VARCHAR2(30),                              /*电表描述             */
   PROAA005             INTEGER                         not null,  /*电费费用ID           */
   PROAA006             INTEGER                         not null,  /*工本费用ID           */
   PROAA007             VARCHAR2(1),                               /*有效否               */
   PROAA008             VARCHAR2(255),                             /*备注                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAA primary key (PROAA_ID)
);
create unique index AK_TB_PROAA on TB_PROAA (PROAA002,PROAA003);
create sequence SEQ_TB_PROAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAA to public;
grant index  on TB_PROAA to public;
grant update on TB_PROAA to public; 
grant delete on TB_PROAA to public;  
grant insert on TB_PROAA to public; 
grant select on SEQ_TB_PROAA to public;   