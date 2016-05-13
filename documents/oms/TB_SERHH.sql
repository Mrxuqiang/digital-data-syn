/*
================================================================================
表结构代码:TB_SERHH
表结构名称:合同折扣率转移表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERHH;
drop index AK_TB_SERHH;
drop table TB_SERHH;
create table TB_SERHH  (
   SERHH_ID           INTEGER              not null,      /* 申请单字ID        */
   SERHH001           INTEGER              not null,      /* 合同续签转移单ID  */
   SERHH002           INTEGER,                            /* 展位ID            */
   SERHH003           INTEGER,                            /* 商户ID            */
   SERHH004           INTEGER,                            /* 品牌ID            */
   SERHH005           INTEGER,                            /* 系列ID            */
   SERHH006           VARCHAR2(40),                       /* 价格类型          */
   SERHH007           number(10,2),                       /* 最低折扣率          */ 
   SERHH008           INTEGER,                            /* 旧合同ID             */ 
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_SERHH primary key (SERHH_ID)
);
create unique index AK_TB_SERHH on TB_SERHH (SERHH001,SERHH002,FLAG);
create sequence SEQ_TB_SERHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHH to public;
grant index  on TB_SERHH to public;
grant update on TB_SERHH to public; 
grant delete on TB_SERHH to public;  
grant insert on TB_SERHH to public; 
grant select on SEQ_TB_SERHH to public;   