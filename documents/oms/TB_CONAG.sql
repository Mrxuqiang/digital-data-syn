/*
================================================================================
表结构代码:TB_CONAG
表结构名称:合同打印模版打印信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAG;
drop index AK_TB_CONAG;
drop table TB_CONAG;
create table TB_CONAG  (
   CONAG_ID             INTEGER                         not null,  /*合同模板打印记录ID  */
   CONAG001             INTEGER                         not null,  /*打印模块ID          */
   CONAG002             INTEGER                         not null,  /*合同ID              */
   CONAG003             NUMBER(5)                       not null,  /*打印次数            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONAG primary key (CONAG_ID)
);
create unique index AK_TB_CONAG on TB_CONAG (CONAG001,CONAG002);
create sequence SEQ_TB_CONAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAG to public;
grant index  on TB_CONAG to public;
grant update on TB_CONAG to public; 
grant delete on TB_CONAG to public;  
grant insert on TB_CONAG to public; 
grant select on SEQ_TB_CONAG to public;   