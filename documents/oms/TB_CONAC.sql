/*
================================================================================
表结构代码:TB_CONAC
表结构名称:费用比例标准子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAC;
drop index AK_TB_CONAC;
drop table TB_CONAC;
create table TB_CONAC  (
   CONAC_ID             INTEGER                         not null,  /*费用比例标准分段ID  */
   CONAC001             INTEGER                         not null,  /*费用比例标准ID      */
   CONAC002             NUMBER(12,2)                    not null,  /*基准起              */
   CONAC003             NUMBER(12,2),                              /*基准止              */
   CONAC004             NUMBER(12,2)                    not null,  /*基准比例(%)         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONAC primary key (CONAC_ID)
);
create unique index AK_TB_CONAC on TB_CONAC (CONAC001,CONAC002);
create sequence SEQ_TB_CONAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAC to public;
grant index  on TB_CONAC to public;
grant update on TB_CONAC to public; 
grant delete on TB_CONAC to public;  
grant insert on TB_CONAC to public; 
grant select on SEQ_TB_CONAC to public;   