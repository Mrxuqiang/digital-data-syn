/*
================================================================================
表结构代码:TB_CONBN
表结构名称:合同销售保底子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBN;
drop index AK_TB_CONBN;
drop table TB_CONBN;
create table TB_CONBN  (
   CONBN_ID             INTEGER                         not null,  /*合同保底明细ID      */
   CONBN001             INTEGER                         not null,  /*合同ID              */
   CONBN002             DATE                            not null,  /*开始日期            */
   CONBN003             DATE                            not null,  /*结束日期            */
   CONBN004             NUMBER(12,2)                    not null,  /*销售保底            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBN primary key (CONBN_ID)
);
create unique index AK_TB_CONBN on TB_CONBN (CONBN001,CONBN002);
create sequence SEQ_TB_CONBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBN to public;
grant index  on TB_CONBN to public;
grant update on TB_CONBN to public; 
grant delete on TB_CONBN to public;  
grant insert on TB_CONBN to public; 
grant select on SEQ_TB_CONBN to public;   