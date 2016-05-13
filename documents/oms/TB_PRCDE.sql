/*
================================================================================
表结构代码:TB_PRCDE
表结构名称:采购价调整单主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PRCDE;
drop index AK_TB_PRCDE;
drop table TB_PRCDE;
create table TB_PRCDE  (
   PRCDE_ID           INTEGER              not null,      /* 采购价调整单ID        */
   PRCDE001           INTEGER              not null,      /* 采购价调整单别          */
   PRCDE002           VARCHAR2(30)         not null,      /* 采购价调整单号          */
   PRCDE003           INTEGER              not null,      /* 营运组织            */
   PRCDE004           VARCHAR2(1)          not null,      /* 审核状态            */
   PRCDE005           INTEGER,                            /* 制单人              */
   PRCDE006           DATE,                               /* 制单日期            */
   PRCDE007           INTEGER,                            /* 审核人              */
   PRCDE008           DATE,                               /* 审核日期            */
   PRCDE009           VARCHAR2(255),                      /* 备注                */
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCDE primary key (PRCDE_ID)
);
create unique index AK_TB_PRCDE on TB_PRCDE (PRCDE001, PRCDE002,FLAG);
create sequence SEQ_TB_PRCDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDE to public;
grant index  on TB_PRCDE to public;
grant update on TB_PRCDE to public; 
grant delete on TB_PRCDE to public;  
grant insert on TB_PRCDE to public; 
grant select on SEQ_TB_PRCDE to public;   

