/*
================================================================================
表结构代码:TB_SUPAY
表结构名称:招商计划内容表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAY;
drop index AK_TB_SUPAY;
drop table TB_SUPAY;
create table TB_SUPAY  (
   SUPAY_ID             INTEGER                         not null,  /*招商计划内容ID      */
   SUPAY001             INTEGER                         not null,  /*招商计划ID          */
   SUPAY002             INTEGER,				   /*楼栋ID              */
   SUPAY003             INTEGER,				   /*楼层ID              */
   SUPAY004             INTEGER,				   /*经营中类ID          */
   SUPAY005             INTEGER,				   /*品牌等级ID          */
   SUPAY006             NUMBER(12,2),				   /*招商完成占比%       */
   SUPAY007             VARCHAR2(100),                             /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAY primary key (SUPAY_ID)
);
create unique index AK_TB_SUPAY on TB_SUPAY (SUPAY001,SUPAY002,SUPAY003,SUPAY004,SUPAY005);
create sequence SEQ_TB_SUPAY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAY to public;
grant index  on TB_SUPAY to public;
grant update on TB_SUPAY to public; 
grant delete on TB_SUPAY to public;  
grant insert on TB_SUPAY to public; 
grant select on SEQ_TB_SUPAY to public;   