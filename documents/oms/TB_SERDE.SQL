/*
================================================================================
表结构代码:TB_SERDE
表结构名称:签收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDE;
drop index AK_TB_SERDE;
drop table TB_SERDE;
create table TB_SERDE  (
   SERDE_ID             INTEGER               not null,              /* 客户签收单ID         */
   SERDE001             INTEGER               not null,              /* 客户签收单别         */
   SERDE002             VARCHAR2(30)          not null,              /* 客户签收单号         */
   SERDE003             VARCHAR2(1)           not null,              /* 来源单据类型         */--1.销售单 2.销退单3.采购退货单
   SERDE004             VARCHAR2(30)          not null,              /* 来源单号             */
   SERDE005             DATE                          ,              /* 签收日期             */
   SERDE006             VARCHAR2(30)                  ,              /* 手机号1              */
   SERDE007             VARCHAR2(30)                  ,              /* 手机号2              */
   SERDE008             VARCHAR2(30),                                /* 顾客姓名             */
   SERDE009             VARCHAR2(255),                               /* 送货地址             */
   SERDE010             VARCHAR2(255),                               /* 联系方式             */
   SERDE011             INTEGER               not null,              /* 营运组织             */
   SERDE012             VARCHAR2(1),                                 /* 审核状态             */
   SERDE013             INTEGER,                                     /* 录入人员             */
   SERDE014             DATE,                                        /* 录入日期             */
   SERDE015             INTEGER,                                     /* 审核人员             */
   SERDE016             DATE,                                        /* 审核日期             */
   SERDE017             INTEGER               not null,              /* 来源门店             */
   SERDE018             DATE                          ,              /* 单据日期             */
   SERDE019             INTEGER ,                                    /* 来源单ID             */
   SERDE020            INTEGER ,                                     /* 搬运工一             */
   SERDE021            INTEGER ,                                     /* 搬运工二             */
   SERDE022             INTEGER ,                                    /* 搬运工三             */
   SERDE023             INTEGER ,                                    /* 搬运工四             */
   SERDE024             VARCHAR2(1) ,                                /* 签收类型             */ --1.送货签收 2、取货签收
   SERDE025            VARCHAR2(255) ,                               /* 备注                 */
   SERDE026            INTEGER ,                                     /* 司机                 */
   SERDE027             INTEGER,                                     /* 打印次数             */ --201301030 add by xiechun
   SERDE032             INTEGER,                                     /* 货主             */
   CREATE_USER          VARCHAR2(12),                                /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门          */                               
   CREATE_DATE          DATE,                                        /*建立日期              */
   MODIFIER             VARCHAR2(12),                                /*修改人员              */
   MODI_DATE            DATE,                                        /*修改日期              */
   FLAG                 NUMBER(1),                                   /*资料状态              */
   constraint PK_TB_SERDE primary key (SERDE_ID)
);
create unique index AK_TB_SERDE on TB_SERDE (SERDE001,SERDE002);
create sequence SEQ_TB_SERDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDE to public;
grant index  on TB_SERDE to public;
grant update on TB_SERDE to public; 
grant delete on TB_SERDE to public;  
grant insert on TB_SERDE to public; 
grant select on SEQ_TB_SERDE to public;   