/*
================================================================================
表结构代码:TB_PRCEB
表结构名称:商品调价申请单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCEB;
drop index AK_TB_PRCEB;
drop table TB_PRCEB;
create table TB_PRCEB  (
   PRCEB_ID           INTEGER              not null,      /* 申请单字ID        */
   PRCEB001           INTEGER              not null,      /* 申请单主id        */
   PRCEB002           VARCHAR2(30)         not null,      /* 商品id            */
   PRCEB003           VARCHAR2(80),                       /* 产地              */
   PRCEB004           VARCHAR2(40),                       /* 型号              */
   PRCEB005           VARCHAR2(80)                        /* 规格              */
   PRCEB006           INTEGER,                            /* 单位id            */
   PRCEB007           INTEGER,                            /* 等级id            */
   PRCEB008           VARCHAR2(256),                      /* 主材              */
   PRCEB009           NUMBER,                             /* 标价签数量         */
   PRCEB010           NUMBER(28,2),                       /* 原售价             */ 
   PRCEB011           NUMBER(28,2),                       /* 新促销价           */
   PRCEB012           DATE,                               /* 生效日期           */   
   PRCEB013           DATE,                               /* 结束日期           */
   PRCEB014           VARCHAR2(255),                      /* 备注               */       
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCEB primary key (PRCEB_ID)
);
create unique index AK_TB_PRCEB on TB_PRCEB (PRCEB001,PRCEB002,PRCEB012,PRCEB013,FLAG);
create sequence SEQ_TB_PRCEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEB to public;
grant index  on TB_PRCEB to public;
grant update on TB_PRCEB to public; 
grant delete on TB_PRCEB to public;  
grant insert on TB_PRCEB to public; 
grant select on SEQ_TB_PRCEB to public;   

