/*
================================================================================
表结构代码:TB_PMTGK
表结构名称:累计返券单规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGK;
drop index AK_TB_PMTGK;
drop table TB_PMTGK;
create table TB_PMTGK  (
   PMTGK_ID             INTEGER                         not null,  /*规则ID         */
   PMTGK001             INTEGER                         not null,  /*累计返券单ID   */
   PMTGK002             INTEGER                         not null,  /*券种类ID       */
   PMTGK003             NUMBER(18,2),                              /*满赠金额       */
   PMTGK004             NUMBER(18,2),                              /*送赠金额       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                      /*建立日期       */
   MODIFIER             VARCHAR2(12),                              /*修改人员       */
   MODI_DATE            DATE,                                      /*修改日期       */
   FLAG                 NUMBER(1),                                 /*资料状态       */
   constraint PK_TB_PMTGK primary key (PMTGK_ID)
);
create unique index AK_TB_PMTGK on TB_PMTGK (PMTGK001,PMTGK002,PMTGK003);
create sequence SEQ_TB_PMTGK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGK to public;
grant index  on TB_PMTGK to public;
grant update on TB_PMTGK to public; 
grant delete on TB_PMTGK to public;  
grant insert on TB_PMTGK to public; 
grant select on SEQ_TB_PMTGK to public;   