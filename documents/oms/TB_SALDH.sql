/*
================================================================================
表结构代码:TB_SALDH
表结构名称:退货垫付单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDH;
drop index AK_TB_SALDH;
drop table TB_SALDH;
create table TB_SALDH  (
   SALDH_ID             INTEGER                         not null,  /*退货垫付单ID     */
   SALDH001             INTEGER                         not null,  /*单别ID           */
   SALDH002             VARCHAR2(30)                    not null,  /*退货垫付单号     */
   SALDH003             DATE                            not null,  /*退货垫付日期     */
   SALDH004             INTEGER                         not null,  /*营运组织ID       */
   SALDH005             VARCHAR2(1)                     not null,  /*来源类型         */
   SALDH006             INTEGER,                                   /*来源单号ID       */
   SALDH007             VARCHAR2(30),                              /*来源单号         */
   SALDH008             INTEGER,                                   /*摊位ID           */
   SALDH009             INTEGER,                                   /*租赁合同ID       */
   SALDH010             INTEGER                         not null,  /*租赁商户ID       */
   SALDH011             INTEGER,                                   /*业务部门ID       */
   SALDH012             INTEGER,                                   /*业务人员ID       */
   SALDH013             VARCHAR2(255),                             /*备注             */
   SALDH014             INTEGER,                                   /*录入人ID         */
   SALDH015             DATE,                                      /*录入日期         */
   SALDH016             INTEGER,                                   /*审核人ID         */
   SALDH017             DATE,                                      /*审核日期         */
   SALDH018             VARCHAR2(1)                     not null,  /*审核状态         */
   SALDH019             VARCHAR2(1),                               /*是否签核         */
   SALDH020             VARCHAR2(30),                              /*签核单号         */
   SALDH021             VARCHAR2(1),                               /*签核码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDH primary key (SALDH_ID)
);
create unique index AK_TB_SALDH on TB_SALDH (SALDH002,SALDH004);
create sequence SEQ_TB_SALDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDH to public;
grant index  on TB_SALDH to public;
grant update on TB_SALDH to public; 
grant delete on TB_SALDH to public;  
grant insert on TB_SALDH to public; 
grant select on SEQ_TB_SALDH to public;   