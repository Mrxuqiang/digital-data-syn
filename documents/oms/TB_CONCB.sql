/*
================================================================================
表结构代码:TB_CONCB
表结构名称:合同变更场地表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCB;
drop index AK_TB_CONCB;
drop table TB_CONCB;
create table TB_CONCB  (
   CONCB_ID             INTEGER                         not null,  /*合同变更场地ID      */
   CONCB001             INTEGER                         not null,  /*合同变更ID          */
   CONCB002             INTEGER                         not null,  /*摊位异动单ID        */
   CONCB003             INTEGER                         not null,  /*场地ID              */
   CONCB004             INTEGER                         not null,  /*场地异动单ID        */
   CONCB005             INTEGER                         not null,  /*楼栋ID              */
   CONCB006             INTEGER                         not null,  /*楼层ID              */
   CONCB007             NUMBER(12,2)                    not null,  /*经营面积            */
   CONCB008             NUMBER(12,2)                    not null,  /*建筑面积            */
   CONCB009             DATE                            not null,  /*场地开始日期        */
   CONCB010             DATE                            not null,  /*场地结束日期        */
   CONCB011             DATE                            not null,  /*摊位开始日期        */
   CONCB012             DATE                            not null,  /*摊位结束日期        */
   CONCB013             NUMBER(12,2)                            ,  /*公摊系数            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONCB primary key (CONCB_ID)
);
create unique index AK_TB_CONCB on TB_CONCB (CONCB001,CONCB002,CONCB004,CONCB009);
create sequence SEQ_TB_CONCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCB to public;
grant index  on TB_CONCB to public;
grant update on TB_CONCB to public; 
grant delete on TB_CONCB to public;  
grant insert on TB_CONCB to public; 
grant select on SEQ_TB_CONCB to public;   