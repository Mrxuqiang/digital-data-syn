/*
================================================================================
表结构代码:TB_MEMBD
表结构名称:会员卡发卡主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBD;
drop index AK_TB_MEMBD;
drop table TB_MEMBD;
create table TB_MEMBD  (
   MEMBD_ID             INTEGER                         not null,  /*会员发卡单ID       */
   MEMBD001             INTEGER                         not null,  /*单别ID             */
   MEMBD002             VARCHAR2(30)                    not null,  /*发卡单号           */
   MEMBD003             DATE                            not null,  /*单据日期           */
   MEMBD004             INTEGER                         not null,  /*发卡营运组织ID     */
   MEMBD005             INTEGER                         not null,  /*发卡部门ID         */
   MEMBD006             INTEGER                         not null,  /*发卡人员ID         */
   MEMBD008             INTEGER                         not null,  /*会员ID             */
   MEMBD009             INTEGER                         not null,  /*卡种ID             */
   MEMBD010             INTEGER                         not null,  /*发卡条件ID         */
   MEMBD011             NUMBER(30)                      not null,  /*新会员卡号         */
   MEMBD012             DATE                            not null,  /*有效起日           */
   MEMBD013             DATE                            not null,  /*有效止日           */
   MEMBD007             DATE                            not null,  /*发卡日期           */
   MEMBD014             VARCHAR2(255),                             /*备注               */
   MEMBD015             INTEGER,                                   /*录入人ID           */
   MEMBD016             DATE,                                      /*录入日期           */
   MEMBD017             INTEGER,                                   /*审核人ID           */
   MEMBD018             DATE,                                      /*审核日期           */
   MEMBD019             VARCHAR2(1)                     not null,  /*审核状态           */
   MEMBD020             VARCHAR2(1),                               /*是否签核           */
   MEMBD021             VARCHAR2(30),                              /*签核单号           */
   MEMBD022             VARCHAR2(1),                               /*签核码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMBD primary key (MEMBD_ID)
);
create unique index AK_TB_MEMBD on TB_MEMBD (MEMBD002,MEMBD004);
create sequence SEQ_TB_MEMBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBD to public;
grant index  on TB_MEMBD to public;
grant update on TB_MEMBD to public; 
grant delete on TB_MEMBD to public;  
grant insert on TB_MEMBD to public; 
grant select on SEQ_TB_MEMBD to public;   