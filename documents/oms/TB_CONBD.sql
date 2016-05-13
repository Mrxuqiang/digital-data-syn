/*
================================================================================
表结构代码:TB_CONBD
表结构名称:合同优惠单范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBD;
drop index AK_TB_CONBD;
drop table TB_CONBD;
create table TB_CONBD  (
   CONBD_ID             INTEGER                         not null,  /*优惠单生效范围ID    */
   CONBD001             INTEGER                         not null,  /*优惠单ID            */
   CONBD002             INTEGER,                                   /*营运组织ID          */
   CONBD003             INTEGER,                                   /*楼层ID              */
   CONBD004             INTEGER,                                   /*小类ID              */
   CONBD005             INTEGER,                                   /*摊位编号ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBD primary key (CONBD_ID)
);
create unique index AK_TB_CONBD on TB_CONBD (CONBD001,CONBD002,CONBD003,CONBD004,CONBD005);
create sequence SEQ_TB_CONBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBD to public;
grant index  on TB_CONBD to public;
grant update on TB_CONBD to public; 
grant delete on TB_CONBD to public;  
grant insert on TB_CONBD to public; 
grant select on SEQ_TB_CONBD to public;   