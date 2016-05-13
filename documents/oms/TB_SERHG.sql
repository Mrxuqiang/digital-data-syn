/*
20130716 modi by gaoxl for 红星：增加SERHG013~SERHG025，mark SERHG003，SERHG008，SERHG011
*/
/*
================================================================================
表结构代码:TB_SERHG
表结构名称:标价签打印申请子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERHG;
drop index AK_TB_SERHG;
drop table TB_SERHG;
create table TB_SERHG  (
   SERHG_ID           INTEGER              not null,      /* 申请单字ID        */
   SERHG001           INTEGER              not null,      /* 申请单主id        */
   SERHG002           INTEGER              not null,      /* 商品id            */
   SERHG003           VARCHAR2(80),                       /* 产地              */
   SERHG004           VARCHAR2(40),                       /* 型号              */
   SERHG005           VARCHAR2(80)                        /* 规格              */
   SERHG006           INTEGER,                            /* 单位id            */
   SERHG007           INTEGER,                            /* 等级id            */
   SERHG008           VARCHAR2(256),                      /* 主材              */
   SERHG009           NUMBER,                             /* 标价签数量         */
   SERHG010           NUMBER(28,2),                       /* 原售价             */ 
   SERHG011           NUMBER(28,2),                       /* 现售价            */
   SERHG012           VARCHAR2(255),                      /* 备注               */
   SERHG013           VARCHAR2(20),                       /* 物价员               */
   SERHG014           INTEGER,                            /* 商品分类ID         */     
   SERHG015           VARCHAR2(80),                       /* 饰面               */  
   SERHG016           VARCHAR2(80),                       /* 辅料               */  
   SERHG017           VARCHAR2(80),                       /* 漆质               */  
   SERHG018           INTEGER,                            /* 自定义分类1         */  
   SERHG019           INTEGER,                            /* 自定义分类2         */  
   SERHG020           INTEGER,                            /* 自定义分类3         */  
   SERHG021           INTEGER),                           /* 自定义分类4         */  
   SERHG022           INTEGER,                            /* 自定义分类5         */  
   SERHG023           INTEGER,                            /* 自定义分类6         */  
   SERHG024           INTEGER,                            /* 自定义分类7         */  
   SERHG025           INTEGER,                            /* 自定义分类8         */          
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_SERHG primary key (SERHG_ID)
);
create unique index AK_TB_SERHG on TB_SERHG (SERHG001,SERHG002,FLAG);
create sequence SEQ_TB_SERHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHG to public;
grant index  on TB_SERHG to public;
grant update on TB_SERHG to public; 
grant delete on TB_SERHG to public;  
grant insert on TB_SERHG to public; 
grant select on SEQ_TB_SERHG to public;   

