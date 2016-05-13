/*
================================================================================
表结构代码:TB_PRCDF
表结构名称:采购价调整单子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PRCDF;
drop index AK_TB_PRCDF;
drop table TB_PRCDF;
create table TB_PRCDF  (
   PRCDF_ID           INTEGER              not null,      /* 采购价调整单子表ID  */
   PRCDF001           INTEGER              not null,      /* 采购价调整单ID      */
   PRCDF002           INTEGER              not null,      /* 商品ID              */
   PRCDF003           INTEGER              not null,      /* 基本单位ID          */
   PRCDF004           NUMBER(12,2)         not null,      /* 原采购价            */
   PRCDF005           NUMBER(12,2)         not null,      /* 新采购价            */
   PRCDF006           INTEGER              not null,      /* 维度1ID             */
   PRCDF007           INTEGER              not null,      /* 维度2ID             */
   PRCDF008           INTEGER              not null,      /* 维度3ID             */
   PRCDF009           INTEGER              not null,      /* 维度4ID             */
   PRCDF010           INTEGER              not null,      /* 维度5ID             */
   PRCDF011           VARCHAR2(80),                       /*规格型号             */
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCDF primary key (PRCDF_ID)
);
create unique index AK_TB_PRCDF on TB_PRCDF (PRCDF001, PRCDF002,FLAG);
create sequence SEQ_TB_PRCDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDF to public;
grant index  on TB_PRCDF to public;
grant update on TB_PRCDF to public; 
grant delete on TB_PRCDF to public;  
grant insert on TB_PRCDF to public; 
grant select on SEQ_TB_PRCDF to public;   

