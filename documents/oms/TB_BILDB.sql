/*
================================================================================
表结构代码:TB_BILDB
表结构名称:预收动用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILDB;
drop index AK_TB_BILDB;
drop table TB_BILDB;
create table TB_BILDB  (
   BILDB_ID             INTEGER                         not null,  /*预收动用单明细ID     */
   BILDB001             INTEGER                         not null,  /*预收动用单ID         */
   BILDB002             INTEGER,                                   /*预收单ID             */
   BILDB003             INTEGER                         not null,  /*费用ID               */
   BILDB004             VARCHAR2(1)                     not null,  /*帐款类型             */
   BILDB005             INTEGER,                                   /*会计科目ID           */
   BILDB006             NUMBER(12,2)                    not null,  /*动用金额             */
   BILDB008             VARCHAR2(255),                             /*备注                 */
   BILDB009             INTEGER,                                   /*费用单ID             */
   BILDB010             VARCHAR2(16),                              /*费用单号             */
   BILDB011             INTEGER,                                   /*支出单ID             */
   BILDB012             VARCHAR2(16),                              /*支出单号             */
   BILDB013             INTEGER,                                   /*来源营运组织ID       */
   BILBB014             VARCHAR2(30),                              /*预收单号             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILDB primary key (BILDB_ID)
);
create unique index AK_TB_BILDB on TB_BILDB (BILDB_ID,BILDB001,BILDB002,BILDB003);
create sequence SEQ_TB_BILDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILDB to public;
grant index  on TB_BILDB to public;
grant update on TB_BILDB to public; 
grant delete on TB_BILDB to public;  
grant insert on TB_BILDB to public; 
grant select on SEQ_TB_BILDB to public;   