/*
20121112 modi by gaoxl for 15745: PRCED002  not null->为可为空，
20130711 add by gaoxl for 红星：add PRCED017~PRCED027，mark PRCED009，PRCED004
*/

/*
================================================================================
表结构代码:TB_PRCED
表结构名称:商品调价申请单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCED;
drop index AK_TB_PRCED;
drop table TB_PRCED;
create table TB_PRCED  (
   PRCED_ID           INTEGER              not null,      /* 申请单字ID        */
   PRCED001           INTEGER              not null,      /* 申请单主id        */
   PRCED002           INTEGER,                            /* 商品id            */
   PRCED003           VARCHAR2(80)         not null,      /* 商品名称          */   
   PRCED004           VARCHAR2(80),                       /* 产地              */
   PRCED005           VARCHAR2(40),                       /* 型号              */
   PRCED006           VARCHAR2(80)                        /* 规格              */
   PRCED007           INTEGER,                            /* 单位id            */
   PRCED008           INTEGER,                            /* 等级id            */
   PRCED009           VARCHAR2(256),                      /* 主材              */
   PRCED010           NUMBER,                             /* 标价签数量         */
   PRCED011           NUMBER(28,2),                       /* 售价             */ 
   PRCED012           VARCHAR2(255),                      /* 备注               */ 
   PRCED013           VARCHAR2(30),                       /* 商品编码           */  20111119 add by gaoxl for 9084
   PRCED014           INTEGER              not null,      /* 商品分类id          */ 20111119 add by gaoxl for 9084 
   PRCED015           VARCHAR2(30),                       /* 商品分类名称        */  20111119 add by gaoxl for 9084  
   PRCED016           VARCHAR2(20),                       /* 物价员             */  20111119 add by gaoxl for 9084  
   PRCED017           VARCHAR2(80),                       /* 饰面              */
   PRCED018           VARCHAR2(80),                       /* 辅料            */
   PRCED019           VARCHAR2(80),                       /* 漆质            */
   PRCED020           INTEGER,                            /* 自定义分类1              */
   PRCED021           INTEGER,                            /* 自定义分类2            */
   PRCED022           INTEGER,                            /* 自定义分类3            */
   PRCED023           INTEGER,                            /* 自定义分类4            */   
   PRCED024           INTEGER,                            /* 自定义分类5              */
   PRCED025           INTEGER,                            /* 自定义分类6            */
   PRCED026           INTEGER,                            /* 自定义分类7            */
   PRCED027           INTEGER,                            /* 自定义分类8            */       
   PRCED028           VARCHAR2(12),                       /* 规格单位（1.cm,2.mm）            */  
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCED primary key (PRCED_ID)
);
create unique index AK_TB_PRCED on TB_PRCED (PRCED001,PRCED003,PRCED005,PRCED006,FLAG);
create sequence SEQ_TB_PRCED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCED to public;
grant index  on TB_PRCED to public;
grant update on TB_PRCED to public; 
grant delete on TB_PRCED to public;  
grant insert on TB_PRCED to public; 
grant select on SEQ_TB_PRCED to public;   

