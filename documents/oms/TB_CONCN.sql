/*
================================================================================
表结构代码:TB_CONCN
表结构名称:合同变更费用项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCN;
drop index AK_TB_CONCN;
drop table TB_CONCN;
create table TB_CONCN  (
   CONCN_ID             INTEGER                         not null,  /*合同变更费用项目ID  */
   CONCN001             INTEGER                         not null,  /*合同变更ID          */
   CONCN002             INTEGER                         not null,  /*费用ID              */
   CONCN003             VARCHAR2(1)                     not null,  /*计算类型            */
   CONCN004             VARCHAR2(1)                     not null,  /*是否选择            */
   CONCN005             VARCHAR2(1)                     not null,  /*是否变更            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCN primary key (CONCN_ID)
);
create unique index AK_TB_CONCN on TB_CONCN (CONCN001,CONCN002);
create sequence SEQ_TB_CONCN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCN to public;
grant index  on TB_CONCN to public;
grant update on TB_CONCN to public; 
grant delete on TB_CONCN to public;  
grant insert on TB_CONCN to public; 
grant select on SEQ_TB_CONCN to public;   