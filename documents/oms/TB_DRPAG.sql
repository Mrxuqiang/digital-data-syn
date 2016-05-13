/*
================================================================================
表结构代码:TB_DRPAG
表结构名称:合并范围子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAG;
drop index AK_TB_DRPAG;
drop table TB_DRPAG;
create table TB_DRPAG  (
   DRPAG_ID             INTEGER                         not null,  /*合并范围子ID       */
   DRPAG001             INTEGER                         not null,  /*合并范围主ID       */   
   DRPAG002             INTEGER ,                                  /*参与合并单位ID     */
   DRPAG003             NUMBER(5,4) ,                              /*投资比例           */ 
   DRPAG004             VARCHAR2(1),                               /*报表来源           */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPAG primary key (DRPAG_ID)
);
create sequence SEQ_TB_DRPAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAG to public;
grant index  on TB_DRPAG to public;
grant update on TB_DRPAG to public; 
grant delete on TB_DRPAG to public;  
grant insert on TB_DRPAG to public; 
grant select on SEQ_TB_DRPAG to public;   