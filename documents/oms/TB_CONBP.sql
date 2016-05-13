/*
================================================================================
表结构代码:TB_CONBP
表结构名称:合同帐单费用明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBP;
drop index AK_TB_CONBP;
drop table TB_CONBP;
create table TB_CONBP  (
   CONBP_ID             INTEGER                         not null,  /*合同帐单费用明细ID  */
   CONBP001             INTEGER                         not null,  /*合同ID              */
   CONBP002             INTEGER                         not null,  /*合同帐单ID          */
   CONBP003             INTEGER                         not null,  /*费用ID              */
   CONBP004             DATE                            not null,  /*帐单日期            */
   CONBP005             NUMBER(12,2)                            ,  /*经营面积            */
   CONBP006             NUMBER(12,2)                            ,  /*标准数量            */
   CONBP007             NUMBER(12,2)                            ,  /*费用标准            */
   CONBP008             NUMBER(12,2)                    not null,  /*费用金额            */
   CONBP009             NUMBER(12,2)                            ,  /*建筑面积            */
   CONBP010             NUMBER(12,2)                            ,  /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBP primary key (CONBP_ID)
);
create unique index AK_TB_CONBP on TB_CONBP (CONBP001,CONBP002,CONBP003,CONBP004);
create sequence SEQ_TB_CONBP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBP to public;
grant index  on TB_CONBP to public;
grant update on TB_CONBP to public; 
grant delete on TB_CONBP to public;  
grant insert on TB_CONBP to public; 
grant select on SEQ_TB_CONBP to public;   