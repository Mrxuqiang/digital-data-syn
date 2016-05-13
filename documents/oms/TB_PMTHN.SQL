/*
================================================================================
表结构代码:TB_PMTHN
表结构名称:满赠促销单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHN;
drop index AK_TB_PMTHN;
drop table TB_PMTHN;
create table TB_PMTHN  (
   PMTHN_ID             INTEGER                         not null,  /*折扣生效范围ID    */
   PMTHN001             INTEGER                         not null,  /*折扣单ID      */
   PMTHN002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHN primary key (PMTHN_ID)
);
create unique index AK_TB_PMTHN on TB_PMTHN (PMTHN001,PMTHN002);
create sequence SEQ_TB_PMTHN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHN to public;
grant index  on TB_PMTHN to public;
grant update on TB_PMTHN to public; 
grant delete on TB_PMTHN to public;  
grant insert on TB_PMTHN to public; 
grant select on SEQ_TB_PMTHN to public;   