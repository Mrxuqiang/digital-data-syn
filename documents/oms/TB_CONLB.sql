/*
================================================================================
表结构代码:TB_CONLB
表结构名称:评审过程模板主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONLB;
drop index AK_TB_CONLB;
drop table TB_CONLB;
create table TB_CONLB  (
   CONLB_ID             INTEGER                         not null,  /*过程ID              */
   CONLB001             INTEGER                         not null,  /*过程模板ID          */
   CONLB002             VARCHAR2(1)                     not null,  /*过程类型0:过程阶段 1:过程步骤 */
   CONLB003             VARCHAR2(10)                    not null,  /*过程代码            */
   CONLB004             VARCHAR2(30)                    not null,  /*过程名称            */
   CONLB005             NUMBER(2)                       not null,  /*序号                */
   CONLB006             NUMBER(12,2)                    not null,  /*完成百分比(%)       */
   CONLB007             VARCHAR2(1),                               /*不允许跳过          */
   CONLB008             VARCHAR2(1)                     not null,  /*解发方式            */
   CONLB009             NUMBER(12,2),                              /*自动触发间隔(分钟)  */
   CONLB010             VARCHAR2(1),                               /*是否末级            */
   CONLB011             NUMBER(1),                                 /*层级                */
   CONLB012             VARCHAR2(40),                              /*父级代码            */
   CONLB013             VARCHAR2(1)                     not null,  /*单据选择 1.无 2.打分评审单 3.供应商变更 4.供应商投诉 Def 1           */
   CONLB014             INTEGER,                                   /*评定编号          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONLB primary key (CONLB_ID)
);
create unique index AK_TB_CONLB on TB_CONLB (CONLB001,CONLB002,CONLB003);
create sequence SEQ_TB_CONLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONLB to public;
grant index  on TB_CONLB to public;
grant update on TB_CONLB to public; 
grant delete on TB_CONLB to public;  
grant insert on TB_CONLB to public; 
grant select on SEQ_TB_CONLB to public;   



