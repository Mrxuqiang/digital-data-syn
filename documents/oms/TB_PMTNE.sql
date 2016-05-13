/*
================================================================================
表结构代码:TB_PMTNE
表结构名称:券回收单实收券表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTNE;
drop index AK_TB_PMTNE;
drop table TB_PMTNE;
create table TB_PMTNE  (
   PMTNE_ID             INTEGER                         not null,  /*券回收单实收券ID          */
   PMTNE001             INTEGER                         not null,  /*券回收单ID                */
   PMTNE002             VARCHAR2(1)                             ,  /*收券方式                  */
   PMTNE003             INTEGER                                 ,  /*券种ID                    */
   PMTNE004             INTEGER,                                   /*券面额ID                  */
   PMTNE005             NUMBER(30),                                /*开始券号                  */
   PMTNE006             NUMBER(30),                                /*结束券号                  */
   PMTNE007             NUMBER(5),                                 /*券张数                    */
   PMTNE008             NUMBER(12,2),                              /*金额                      */
   PMTNE009             INTEGER,                                   /*手续费率                  */
   PMTNE010             NUMBER(12,2),                              /*手续费率(%)               */
   PMTNE011             NUMBER(12,2),                              /*手续费                    */
   PMTNE012             VARCHAR2(30),                              /*银行卡号                  */
   PMTNE013             VARCHAR2(30),                              /*支票号                    */
   PMTNE014             NUMBER(12,2),                              /*支票面额                  */
   PMTNE015             VARCHAR2(80),                              /*出票单位                  */
   PMTNE016             NUMBER(12,2),                              /*劵面额                    */
   PMTNE017             NUMBER(12,2),                                /*券金额                    */
   PMTNE018             INTEGER,                                   /*来源ID*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_PMTNE primary key (PMTNE_ID)
);
create unique index AK_TB_PMTNE on TB_PMTNE (PMTNE001,PMTNE002,PMTNE003,PMTNE004,PMTNE005);
create sequence SEQ_TB_PMTNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNE to public;
grant index  on TB_PMTNE to public;
grant update on TB_PMTNE to public; 
grant delete on TB_PMTNE to public;  
grant insert on TB_PMTNE to public; 
grant select on SEQ_TB_PMTNE to public;   