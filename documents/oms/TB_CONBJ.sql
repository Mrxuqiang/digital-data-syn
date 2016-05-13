/*
================================================================================
表结构代码:TB_CONBJ
表结构名称:合同周期性比例费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBJ;
drop index AK_TB_CONBJ;
drop table TB_CONBJ;
create table TB_CONBJ  (
   CONBJ_ID             INTEGER                         not null,  /*合同周期性比例费用明细ID   */
   CONBJ001             INTEGER                         not null,  /*合同ID              */
   CONBJ002             INTEGER                         not null,  /*合同周期性比例费用ID*/
   CONBJ003             DATE                            not null,  /*开始日期            */
   CONBJ004             DATE                            not null,  /*结束日期            */
   CONBJ005             NUMBER(12,2)                    not null,  /*基准起              */
   CONBJ006             NUMBER(12,2),                              /*基准止              */
   CONBJ007             NUMBER(12,2)                    not null,  /*基准比例(%)         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBJ primary key (CONBJ_ID)
);
create unique index AK_TB_CONBJ on TB_CONBJ (CONBJ001,CONBJ002,CONBJ003,CONBJ005);
create sequence SEQ_TB_CONBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBJ to public;
grant index  on TB_CONBJ to public;
grant update on TB_CONBJ to public; 
grant delete on TB_CONBJ to public;  
grant insert on TB_CONBJ to public; 
grant select on SEQ_TB_CONBJ to public;   