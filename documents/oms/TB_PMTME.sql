/*
================================================================================
表结构代码:TB_PMTME
表结构名称:券发放单实发券表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTME;
drop index AK_TB_PMTME;
drop table TB_PMTME;
create table TB_PMTME  (
   PMTME_ID             INTEGER                         not null,  /*券发放单实发券ID          */
   PMTME001             INTEGER                         not null,  /*券发放单ID                */
   PMTME002             INTEGER                         not null,  /*券种ID                    */
   PMTME003             INTEGER,                                   /*券面额ID                  */
   PMTME004             NUMBER(30),                                /*开始券号                  */
   PMTME005             NUMBER(30),                                /*结束券号                  */
   PMTME006             NUMBER(5),                                 /*券张数                    */
   PMTME007             NUMBER(22,2),                              /*券金额                    */
   PMTME008             NUMBER(22,2),                              /*券面额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER,                                    /*资料状态                  */
   constraint PK_TB_PMTME primary key (PMTME_ID)
);
create unique index AK_TB_PMTME on TB_PMTME (PMTME001,PMTME002,PMTME003,PMTME004);
create sequence SEQ_TB_PMTME minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTME to public;
grant index  on TB_PMTME to public;
grant update on TB_PMTME to public; 
grant delete on TB_PMTME to public;  
grant insert on TB_PMTME to public; 
grant select on SEQ_TB_PMTME to public;   