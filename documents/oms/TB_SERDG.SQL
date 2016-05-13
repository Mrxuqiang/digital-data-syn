/*
================================================================================
表结构代码:TB_SERDG
表结构名称:售后服务单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDG;
drop index AK_TB_SERDG;
drop table TB_SERDG;
create table TB_SERDG  (
   SERDG_ID             INTEGER               not null,              /*售后服务单ID        */
   SERDG001             INTEGER               not null,              /*单别                */
   SERDG002             VARCHAR2(30)          not null,              /*售后服务单号        */
   SERDG003             INTEGER                       ,              /*销售单号            */
   SERDG004             DATE                  not null,              /*单据日期            */
   SERDG005             INTEGER               not null,              /*营运组织            */
   SERDG006             VARCHAR2(1)           not null,              /*是否排车            */
   SERDG007             VARCHAR2(1)           not null,              /*是否需领用补件      */
   SERDG008             INTEGER                       ,              /*领用单号            */
   SERDG009             INTEGER                       ,              /*客户ID              */
   SERDG010             VARCHAR2(30),                                /*顾客姓名             */
   SERDG011             VARCHAR2(30),                                /*顾客电话             */
   SERDG012             VARCHAR2(30),                                /*手机号               */
   SERDG013             VARCHAR2(255),                               /*维修地址             */
   SERDG014             DATE                          ,              /*预计维修日期         */
   SERDG015             DATE                          ,              /*实际完成日期         */
   SERDG016             VARCHAR2(255),                               /*维修工               */
   SERDG017             VARCHAR2(1),                                 /*结案状态             */
   SERDG018             VARCHAR2(1),                                 /*审核状态             */
   SERDG019             INTEGER,                                     /*录入人员             */
   SERDG020             DATE,                                        /*录入日期             */
   SERDG021             INTEGER,                                     /*审核人员             */
   SERDG022             DATE,                                        /*审核日期             */
   SERDG023             VARCHAR2(255) ,                               /* 备注                */
   SERDG024             INTEGER,                                     /*来源门店             */
   SERDG025             VARCHAR2(1),                                 /*排车状态             */
   SERDG026             VARCHAR2(255) ,                              /* 售后受理add by hansf*/
   SERDG027             VARCHAR2(255) ,                              /* 解决方案add by hansf*/
   SERDG028             VARCHAR2(255) ,                              /* 处理结果add by hansf*/
   CREATE_USER          VARCHAR2(12),                                /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门         */                               
   CREATE_DATE          DATE,                                        /*建立日期             */
   MODIFIER             VARCHAR2(12),                                /*修改人员             */
   MODI_DATE            DATE,                                        /*修改日期             */
   FLAG                 NUMBER(1),                                   /*资料状态             */
   constraint PK_TB_SERDG primary key (SERDG_ID)
);
create unique index AK_TB_SERDG on TB_SERDG (SERDG002,SERDG005);
create sequence SEQ_TB_SERDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDG to public;
grant index  on TB_SERDG to public;
grant update on TB_SERDG to public; 
grant delete on TB_SERDG to public;  
grant insert on TB_SERDG to public; 
grant select on SEQ_TB_SERDG to public;   