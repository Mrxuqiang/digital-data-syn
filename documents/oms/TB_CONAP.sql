/*
================================================================================
表结构代码:TB_CONAP
表结构名称:合同预算收入及展望表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAP;
drop index AK_TB_CONAP;
drop table TB_CONAP;
create table TB_CONAP  (
   CONAP_ID             INTEGER                         not null,  /*合同预算优惠额ID    */
   CONAP001             VARCHAR2(30)                    not null,  /*预算年度            */
   CONAP002             VARCHAR2(30)                    not null,  /*预算月份            */
   CONAP003             VARCHAR2(30)                    not null,  /*预算月份名称        */
   CONAP004             VARCHAR2(30)                    not null,  /*预算单位代码        */
   CONAP005             VARCHAR2(30)                    not null,  /*预算单位名称        */
   CONAP006             VARCHAR2(30)                    not null,  /*预算类型代码        */
   CONAP007             VARCHAR2(30)                    not null,  /*预算类型名称        */
   CONAP008             VARCHAR2(30),                              /*预算版本            */
   CONAP009             VARCHAR2(30),                              /*预算科目代码        */
   CONAP010             VARCHAR2(30),                              /*预算科目代码名称    */
   CONAP011             NUMBER(12,2),                              /*预算金额            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONAP primary key (CONAP_ID)
);
create unique index AK_TB_CONAP on TB_CONAP (CONAP001,CONAP002,CONAP004,CONAP006,CONAP008);
create sequence SEQ_TB_CONAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAP to public;
grant index  on TB_CONAP to public;
grant update on TB_CONAP to public; 
grant delete on TB_CONAP to public;  
grant insert on TB_CONAP to public; 
grant select on SEQ_TB_CONAP to public;  

