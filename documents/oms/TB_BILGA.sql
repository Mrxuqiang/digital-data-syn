/*
================================================================================
表结构代码:TB_BILGA
表结构名称:返款比例扣款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILGA;
drop index AK_TB_BILGA;
drop table TB_BILGA;
create table TB_BILGA  (
   BILGA_ID             INTEGER                         not null,  /*返款比例扣款单ID     */
   BILGA001             INTEGER                         not null,  /*单别ID               */
   BILGA002             VARCHAR2(30)                    not null,  /*扣款单号             */
   BILGA003             DATE                            not null,  /*扣款日期             */
   BILGA004             INTEGER                         not null,  /*营运组织ID           */
   BILGA005             INTEGER                         not null,  /*业务部门ID           */
   BILGA006             INTEGER                         not null,  /*业务人员ID           */
   BILGA007             VARCHAR2(100),                             /*经营大类             */
   BILGA008             VARCHAR2(100),                             /*经营中类             */
   BILGA009             VARCHAR2(100),                             /*经营小类             */
   BILGA010             VARCHAR2(100),                             /*摊位                 */
   BILGA011             DATE                            not null,  /*扣款开始日期         */
   BILGA012             DATE                            not null,  /*扣款结束日期         */
   BILGA013             VARCHAR2(1)                     not null,  /*扣款类型             */
   BILGA014             VARCHAR2(100),                             /*券种                 */
   BILGA015             NUMBER(12,2),                              /*保底额               */
   BILGA016             NUMBER(12,2),                              /*扣款比例%            */
   BILGA017             VARCHAR2(255),                             /*备注                 */
   BILGA018             INTEGER,                                   /*录入人ID             */
   BILGA019             DATE,                                      /*录入日期             */
   BILGA020             INTEGER,                                   /*审核人ID             */
   BILGA021             DATE,                                      /*审核日期             */
   BILGA022             VARCHAR2(1)                     not null,  /*审核状态             */
   BILGA023             VARCHAR2(1),                               /*是否签核             */
   BILGA024             VARCHAR2(30),                              /*签核单号             */
   BILGA025             VARCHAR2(1),                               /*签核码               */
   BILGA026             INTEGER,                                   /*费用ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILGA primary key (BILGA_ID)
);
create unique index AK_TB_BILGA on TB_BILGA (BILGA001,BILGA002);
create sequence SEQ_TB_BILGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILGA to public;
grant index  on TB_BILGA to public;
grant update on TB_BILGA to public; 
grant delete on TB_BILGA to public;  
grant insert on TB_BILGA to public; 
grant select on SEQ_TB_BILGA to public;   