/*
================================================================================
表结构代码:TB_CONBX
表结构名称:合同优惠单不参与范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBX;
drop index AK_TB_CONBX;
drop table TB_CONBX;
create table TB_CONBX  (
   CONBX_ID             INTEGER                         not null,  /*优惠单生效范围ID    */
   CONBX001             INTEGER                         not null,  /*优惠单ID            */
   CONBX002             INTEGER,                                   /*营运组织ID          */
   CONBX003             INTEGER,                                   /*楼层ID              */
   CONBX004             INTEGER,                                   /*小类ID              */
   CONBX005             INTEGER,                                   /*摊位编号ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBX primary key (CONBX_ID)
);
create unique index AK_TB_CONBX on TB_CONBX (CONBX001,CONBX002,CONBX003,CONBX004,CONBX005);
create sequence SEQ_TB_CONBX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBX to public;
grant index  on TB_CONBX to public;
grant update on TB_CONBX to public; 
grant delete on TB_CONBX to public;  
grant insert on TB_CONBX to public; 
grant select on SEQ_TB_CONBX to public;   