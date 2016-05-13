/*
================================================================================
表结构代码:TB_PRODC
表结构名称:装修申请单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODC;
drop index AK_TB_PRODC;
drop table TB_PRODC;
create table TB_PRODC  (
   PRODC_ID             INTEGER                         not null,  /*装修申请单子表ID    */
   PRODC001             INTEGER                         not null,  /*装修申请单ID        */
   PRODC002             INTEGER                         not null,  /*装修项目ID          */
   PRODC003             DATE,				           /*预估完成日期        */
   PRODC004             VARCHAR2(100),				   /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODC primary key (PRODC_ID)
);
create unique index AK_TB_PRODC on TB_PRODC (PRODC001,PRODC002);
create sequence SEQ_TB_PRODC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODC to public;
grant index  on TB_PRODC to public;
grant update on TB_PRODC to public; 
grant delete on TB_PRODC to public;  
grant insert on TB_PRODC to public; 
grant select on SEQ_TB_PRODC to public;   