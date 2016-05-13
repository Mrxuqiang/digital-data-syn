/*
================================================================================
表结构代码:TB_CONAO
表结构名称:合同预算优惠额度表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAO;
drop index AK_TB_CONAO;
drop table TB_CONAO;
create table TB_CONAO  (
   CONAO_ID             INTEGER                         not null,  /*合同预算优惠额ID    */
   CONAO001             VARCHAR2(30)                    not null,  /*SAP公司代码         */
   CONAO002             VARCHAR2(30)                    not null,  /*SAP商业实体         */
   CONAO003             VARCHAR2(30)                    not null,  /*SAP楼层代码         */
   CONAO004             VARCHAR2(30)                    not null,  /*SAP楼层等级         */
   CONAO005             DATE                            not null,  /*开始日期            */
   CONAO006             DATE                            not null,  /*结束日期            */
   CONAO007             NUMBER(12,4)                    not null,  /*优惠额度            */
   CONAO008             VARCHAR2(255),                             /*备注                */
   CONAO009             INTEGER,                                   /*录入人              */
   CONAO010             DATE,                                      /*录入日期            */
   CONAO011             INTEGER,                                   /*修改人              */
   CONAO012             DATE,                                      /*修改日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONAO primary key (CONAO_ID)
);
create unique index AK_TB_CONAO on TB_CONAO (CONAO001,CONAO002,CONAO003,CONAO004,CONAO005);
create sequence SEQ_TB_CONAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAO to public;
grant index  on TB_CONAO to public;
grant update on TB_CONAO to public; 
grant delete on TB_CONAO to public;  
grant insert on TB_CONAO to public; 
grant select on SEQ_TB_CONAO to public;   