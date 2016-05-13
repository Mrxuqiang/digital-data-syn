/*
================================================================================
表结构代码:TB_OTSDH
表结构名称:OMS商场与SAP成本中心对照表对照关系表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_OTSDH;
drop index AK_TB_OTSDH;
drop table TB_OTSDH;
create table TB_OTSDH  (
   OTSDH_ID             INTEGER                         not null,  /*费用单ID             */
   OTSDH001             INTEGER                         not null,  /*商场ID               */
   OTSDH002             VARCHAR2(100)                   not null,  /*SAP公司代码          */
   OTSDH004             VARCHAR2(200)                   not null,  /*成本中心             */
   OTSDH005             VARCHAR2(200)                   not null,  /*基金中心             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_OTSDH primary key (OTSDH_ID)
);
create sequence SEQ_TB_OTSDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDH to public;
grant index  on TB_OTSDH to public;
grant update on TB_OTSDH to public; 
grant delete on TB_OTSDH to public;  
grant insert on TB_OTSDH to public; 
grant select on SEQ_TB_OTSDH to public;   