/*
================================================================================
表结构代码:TB_PMTFN
表结构名称:销退单券回收信息
表结构目的:
================================================================================
*/
drop sequence SEQ_TB_PMTFN;
drop index AK_TB_PMTFN;
drop table TB_PMTFN;

create table TB_PMTFN  (
   PMTFN_ID             INTEGER                         not null,  /*销退单券回收信息id*/
   PMTFN001             INTEGER                         not null,  /*销退单ID      */
   PMTFN002             VARCHAR2(2),				   /*促销类型      */
   PMTFN003             INTEGER,				   /*促销单ID      */
   PMTFN004             INTEGER,                                   /*券种ID        */
   PMTFN005             NUMBER(12,2)                         ,     /*实交款金额    */
   PMTFN006             NUMBER(12,2)                        ,      /*参与返券交款金额*/
   PMTFN007             NUMBER(12)                         ,       /*累计笔数      */
   PMTFN008            NUMBER(12,2)                          ,    /*应返券金额    */
   PMTFN009             NUMBER(12,2)                          ,    /*实返券金额    */
   PMTFN010             NUMBER(12,2)                          ,    /*已回收券金额  */
   PMTFN011             NUMBER(12,2)                         ,     /*本次应回收券金额*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_PMTFN primary key (PMTFN_ID)
);
create sequence SEQ_TB_PMTFN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFN to public;
grant index  on TB_PMTFN to public;
grant update on TB_PMTFN to public; 
grant delete on TB_PMTFN to public;  
grant insert on TB_PMTFN to public; 
grant select on SEQ_TB_PMTFN to public;  