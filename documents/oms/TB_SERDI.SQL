/*
================================================================================
表结构代码:TB_SERDI
表结构名称:售后服务商品补件领用描述表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDI;
drop index AK_TB_SERDI;
drop table TB_SERDI;
create table TB_SERDI  (
   SERDI_ID             INTEGER               not null,              /*领用补件描述ID        */
   SERDI001             INTEGER               not null,              /*售后服务单ID          */
   SERDI002             INTEGER               not null,              /*故障描述记录ID        */
   SERDI003             VARCHAR2(255)                 ,              /*补件领用内容          */
   SERDI004             NUMBER(18,3)                  ,              /*所需金额             */
   CREATE_USER          VARCHAR2(12),                                /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门         */                               
   CREATE_DATE          DATE,                                        /*建立日期             */
   MODIFIER             VARCHAR2(12),                                /*修改人员             */
   MODI_DATE            DATE,                                        /*修改日期             */
   FLAG                 NUMBER(1),                                   /*资料状态             */
   constraint PK_TB_SERDI primary key (SERDI_ID)
);
create sequence SEQ_TB_SERDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDI to public;
grant index  on TB_SERDI to public;
grant update on TB_SERDI to public; 
grant delete on TB_SERDI to public;  
grant insert on TB_SERDI to public; 
grant select on SEQ_TB_SERDI to public;   