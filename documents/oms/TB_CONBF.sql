/*
================================================================================
表结构代码:TB_CONBF
表结构名称:合同场地表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBF;
drop index AK_TB_CONBF;
drop table TB_CONBF;
create table TB_CONBF  (
   CONBF_ID             INTEGER                         not null,  /*合同场地ID          */
   CONBF001             INTEGER                         not null,  /*合同ID              */
   CONBF002             INTEGER                         not null,  /*摊位异动单ID        */
   CONBF003             INTEGER                         not null,  /*场地ID              */
   CONBF004             INTEGER                         not null,  /*场地异动单ID        */
   CONBF005             INTEGER                         not null,  /*楼栋ID              */
   CONBF006             INTEGER                         not null,  /*楼层ID              */
   CONBF007             NUMBER(12,2)                    not null,  /*经营面积            */
   CONBF008             NUMBER(12,2)                    not null,  /*建筑面积            */
   CONBF009             DATE                            not null,  /*场地开始日期        */
   CONBF010             DATE                            not null,  /*场地结束日期        */
   CONBF011             DATE                            not null,  /*摊位开始日期        */
   CONBF012             DATE                            not null,  /*摊位结束日期        */
   CONBF013             NUMBER(12,2)                            ,  /*公摊系数            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONBF primary key (CONBF_ID)
);
create unique index AK_TB_CONBF on TB_CONBF (CONBF001,CONBF002,CONBF003,CONBF009);
create sequence SEQ_TB_CONBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBF to public;
grant index  on TB_CONBF to public;
grant update on TB_CONBF to public; 
grant delete on TB_CONBF to public;  
grant insert on TB_CONBF to public; 
grant select on SEQ_TB_CONBF to public;   