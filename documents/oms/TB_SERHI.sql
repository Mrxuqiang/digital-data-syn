/*
================================================================================
表结构代码:TB_SERHI
表结构名称:合同供货方信息转移表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERHI;
drop index AK_TB_SERHI;
drop table TB_SERHI;
create table TB_SERHI  (
   SERHI_ID           INTEGER              not null,      /* 合同供货方ID        */
   SERHI001           INTEGER              not null,      /* 合同续签转移单ID  */
   SERHI002           INTEGER,                            /* 展位ID            */
   SERHI003           INTEGER,                            /* 商户ID            */
   SERHI004           INTEGER,                            /* 品牌ID            */
   SERHI005           INTEGER,                            /* 系列ID            */
   SERHI006           INTEGER,                            /* 合同ID            */
   SERHI007           VARCHAR2(1000),                     /* 供货方            */
   SERHI008           VARCHAR2(1000),                     /* 供货方地址        */ 
   SERHI009           VARCHAR2(1000),                     /* 供货方电话        */   
   CREATE_USER        VARCHAR2(12),                       /* 建立人员          */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门      */                           
   CREATE_DATE        DATE,                               /* 建立日期          */
   MODIFIER           VARCHAR2(12),                       /* 修改人员          */
   MODI_DATE          DATE,                               /* 修改日期          */
   FLAG               NUMBER,                             /* 资料状态          */
   constraint PK_TB_SERHI primary key (SERHI_ID)
);
create unique index AK_TB_SERHI on TB_SERHI (SERHI002,SERHI003,SERHI004,SERHI005,SERHI006);
create sequence SEQ_TB_SERHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHI to public;
grant index  on TB_SERHI to public;
grant update on TB_SERHI to public; 
grant delete on TB_SERHI to public;  
grant insert on TB_SERHI to public; 
grant select on SEQ_TB_SERHI to public;   