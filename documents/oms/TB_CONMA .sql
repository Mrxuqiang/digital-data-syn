/*
================================================================================
表结构代码:TB_CONMA
表结构名称:设计师合同主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_CONMA;
drop index AK_TB_CONMA;
drop table TB_CONMA;
create table TB_CONMA  (
   CONMA_ID             INTEGER                         not null,  /*设计师合同ID      */
   CONMA001             VARCHAR2(30)                    not null,  /*设计师合同编号    */
   CONMA002             NUMBER(5,0)                     not null,  /*版本号            */
   CONMA003             VARCHAR2(30)                    not null,  /*纸制合同编号      */
   CONMA004             INTEGER                         not null,  /*签约公司          */
   CONMA005             INTEGER                         not null,  /*签约人            */
   CONMA006             INTEGER                         not null,  /*签约设计师        */
   CONMA007             VARCHAR2(255),                             /*签约地点         */ 
   CONMA008             DATE                            not null,  /*签约日期          */
   CONMA009             DATE                            not null,  /*合同截止日期      */
   CONMA010             DATE                                    ,  /*合同终止日期      */
   CONMA011             INTEGER,                        not null,  /*录入人ID          */
   CONMA012             VARCHAR2(1)                     not null,  /*合同状态          */--1.未审核 2.审核 3.终止
   CONMA013             DATE,                                      /*录入日期          */
   CONMA014             INTEGER,                                   /*审核人ID          */
   CONMA015             DATE,                                      /*审核日期          */
   CONMA016             INTEGER,                                   /*终止人            */
   CONMA017             VARCHAR2(1)                     not null,  /*结算周期          */--1.月2.季3.半年4.年
   CONMA018             VARCHAR2(255),                             /*备注              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                 /*资料状态          */
   constraint PK_TB_CONMA primary key (CONMA_ID)
);
create unique index AK_TB_CONMA on TB_CONMA (CONMA001,CONMA002,FALG);
create sequence SEQ_TB_CONMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONMA to public;
grant index  on TB_CONMA to public;
grant update on TB_CONMA to public; 
grant delete on TB_CONMA to public;  
grant insert on TB_CONMA to public; 
grant select on SEQ_TB_CONMA to public;   