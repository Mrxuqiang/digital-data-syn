/*
================================================================================
表结构代码:TB_SALKD
表结构名称:销售年度指标子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALKD;
drop index AK_TB_SALKD;
drop table TB_SALKD;
create table TB_SALKD  (
   SALKD_ID             INTEGER                         not null,      /*销售年度指标明细ID */
   SALKD001             INTEGER                         not null,      /*销售年度指标主表ID */
   SALKD002             INTEGER                         not null,      /*导购员ID           */
   SALKD003             NUMBER(28,3)                            ,      /*1月份指标          */
   SALKD004             NUMBER(28,3)                            ,      /*2月份指标          */
   SALKD005             NUMBER(28,3)                            ,      /*3月份指标          */
   SALKD006             NUMBER(28,3)                            ,      /*4月份指标          */
   SALKD007             NUMBER(28,3)                            ,      /*5月份指标          */
   SALKD008             NUMBER(28,3)                            ,      /*6月份指标          */
   SALKD009             NUMBER(28,3)                            ,      /*7月份指标          */
   SALKD010             NUMBER(28,3)                            ,      /*8月份指标          */
   SALKD011             NUMBER(28,3)                            ,      /*9月份指标          */
   SALKD012             NUMBER(28,3)                            ,      /*10月份指标         */
   SALKD013             NUMBER(28,3)                            ,      /*11月份指标         */
   SALKD014             NUMBER(28,3)                            ,      /*12月份指标         */
   SALKD015             NUMBER(28,3)                            ,      /*合计               */
   SALKD016             VARCHAR2(255),                                 /*备注               */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员           */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门       */                               
   CREATE_DATE          DATE,                                          /*建立日期           */
   MODIFIER             VARCHAR2(12),                                  /*修改人员           */
   MODI_DATE            DATE,                                          /*修改日期           */
   FLAG                 NUMBER,                                        /*资料状态           */
   constraint PK_TB_SALKD primary key (SALKD_ID)
);
create unique index AK_TB_SALKD on TB_SALKD (SALKD001,SALKD002,FLAG);
create sequence SEQ_TB_SALKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALKD to public;
grant index  on TB_SALKD to public;
grant update on TB_SALKD to public; 
grant delete on TB_SALKD to public;  
grant insert on TB_SALKD to public; 
grant select on SEQ_TB_SALKD to public;   