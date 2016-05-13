/*
================================================================================
表结构代码:TB_GRTAG
表结构名称:合并范围子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAG;
drop index AK_TB_GRTAG;
drop table TB_GRTAG;
create table TB_GRTAG  (
   GRTAG_ID             INTEGER                         not null,  /*合并范围子ID       */
   GRTAG001             INTEGER                         not null,  /*合并范围主ID       */   
   GRTAG002             INTEGER ,                                  /*参与合并单位ID     */
   GRTAG003             NUMBER(5,4) ,                              /*投资比例           */ 
   GRTAG004             VARCHAR2(1),                               /*报表来源           */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAG primary key (GRTAG_ID)
);
create sequence SEQ_TB_GRTAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAG to public;
grant index  on TB_GRTAG to public;
grant update on TB_GRTAG to public; 
grant delete on TB_GRTAG to public;  
grant insert on TB_GRTAG to public; 
grant select on SEQ_TB_GRTAG to public;   