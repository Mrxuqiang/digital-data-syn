/*
20130716 modi by gaoxl for 红星：add PRCEF013~PRCEF025，mark PRCEF003，PRCEF008
*/

/*
================================================================================
表结构代码:TB_PRCEF
表结构名称:商品调价申请单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCEF;
drop index AK_TB_PRCEF;
drop table TB_PRCEF;
create table TB_PRCEF  (
   PRCEF_ID           INTEGER              not null,      /* 申请单字ID        */
   PRCEF001           INTEGER              not null,      /* 申请单主id        */
   PRCEF002           INTEGER              not null,      /* 商品id            */
   PRCEF003           VARCHAR2(80),                       /* 产地              */
   PRCEF004           VARCHAR2(40),                       /* 型号              */
   PRCEF005           VARCHAR2(80)                        /* 规格              */
   PRCEF006           INTEGER,                            /* 单位id            */
   PRCEF007           INTEGER,                            /* 等级id            */
   PRCEF008           VARCHAR2(256),                      /* 主材              */
   PRCEF009           NUMBER,                             /* 标价签数量         */
   PRCEF010           NUMBER(28,2),                       /* 原售价             */ 
   PRCEF011           NUMBER(28,2),                       /* 调整价             */
   PRCEF012           VARCHAR2(255),                      /* 备注               */ 
   PRCEF013           VARCHAR2(20),                       /* 物价员               */ 
   PRCEF014           INTEGER,                            /* 商品分类ID           */ 
   PRCEF015           VARCHAR2(80),                       /* 饰面                 */ 
   PRCEF016           VARCHAR2(80),                       /* 辅料                 */ 
   PRCEF017           VARCHAR2(80),                       /* 漆质                 */ 
   PRCEF018           INTEGER,                            /* 自定义分类1          */ 
   PRCEF019           INTEGER,                            /* 自定义分类2          */ 
   PRCEF020           INTEGER,                            /* 自定义分类3          */ 
   PRCEF021           INTEGER,                            /* 自定义分类4          */ 
   PRCEF022           INTEGER,                            /* 自定义分类5          */ 
   PRCEF023           INTEGER,                            /* 自定义分类6          */ 
   PRCEF024           INTEGER,                            /* 自定义分类7          */ 
   PRCEF025           INTEGER,                            /* 自定义分类8          */           
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCEF primary key (PRCEF_ID)
);
create unique index AK_TB_PRCEF on TB_PRCEF (PRCEF001,PRCEF002,FLAG);
create sequence SEQ_TB_PRCEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEF to public;
grant index  on TB_PRCEF to public;
grant update on TB_PRCEF to public; 
grant delete on TB_PRCEF to public;  
grant insert on TB_PRCEF to public; 
grant select on SEQ_TB_PRCEF to public;   

