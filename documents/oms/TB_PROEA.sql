/*
================================================================================
表结构代码:TB_PROEA
表结构名称:岗位定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROEA;
drop index AK_TB_PROEA;
drop table TB_PROEA;
create table TB_PROEA  (
   PROEA_ID             INTEGER                         not null,  /*岗位ID          */
   PROEA001             VARCHAR2(8)                     not null,  /*岗位代码        */
   PROEA002             VARCHAR2(30),                              /*岗位名称	     */ 
   PROEA003             VARCHAR2(100),                             /*岗位说明	     */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门    */                               
   CREATE_DATE          DATE,                                      /*建立日期        */
   MODIFIER             VARCHAR2(12),                              /*修改人员        */
   MODI_DATE            DATE,                                      /*修改日期        */
   FLAG                 NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_PROEA primary key (PROEA_ID)
);
create unique index AK_TB_PROEA on TB_PROEA (PROEA001);
create sequence SEQ_TB_PROEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEA to public;
grant index  on TB_PROEA to public;
grant update on TB_PROEA to public; 
grant delete on TB_PROEA to public;  
grant insert on TB_PROEA to public; 
grant select on SEQ_TB_PROEA to public;   

