
/*
20130711 add by gaoxl for 红星：增加PRCEC015~PRCEC018
*/
/*
================================================================================
表结构代码:TB_PRCEC
表结构名称:新品引进申请单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCEC;
drop index AK_TB_PRCEC;
drop table TB_PRCEC;
create table TB_PRCEC  (
   PRCEC_ID           INTEGER              not null,      /* 申请单主ID        */
   PRCEC001           INTEGER              not null,      /* 申请单别id          */
   PRCEC002           VARCHAR2(30)         not null,      /* 申请单号          */
   PRCEC003           DATE                 not null,      /* 单据日期            */
   PRCEC004           INTEGER              not null,      /* 展位号id            */
   PRCEC005           INTEGER,                            /* 租赁合同id              */
   PRCEC006           INTEGER,                            /* 商户id            */
   PRCEC007           INTEGER,                            /* 品牌id              */
   PRCEC008           VARCHAR2(255),                      /* 备注                */    
   PRCEC009           DATE,                               /* 录入日期            */
   PRCEC010           INTEGER,                            /* 录入人id              */ 
   PRCEC011           DATE,                               /* 审核日期            */
   PRCEC012           INTEGER,                            /* 审核人id              */   
   PRCEC013           VARCHAR2(1),                        /* 单据状态            */
   PRCEC014           INTEGER              not null,      /* 营运组织id          */
   PRCEC015           VARCHAR2(1),                        /* 是否订单商品            */
   PRCEC016           VARCHAR2(1),                        /* 经营方式              */
   PRCEC017           VARCHAR2(30),                       /* 联系人            */
   PRCEC018           VARCHAR2(30),                       /* 联系电话          */  
   PRCEC019           VARCHAR2(1),                        /* 标价签类型            */   
   PRCEC020           VARCHAR2(1),                        /* 价格类型            */   
   signature          VARCHAR2(1),                        /* 签核状态            */ 
   remark             VARCHAR2(255),                      /* 签核备注                */        
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCEC primary key (PRCEC_ID)
);
create unique index AK_TB_PRCEC on TB_PRCEC (PRCEC001, PRCEC002,FLAG);
create sequence SEQ_TB_PRCEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEC to public;
grant index  on TB_PRCEC to public;
grant update on TB_PRCEC to public; 
grant delete on TB_PRCEC to public;  
grant insert on TB_PRCEC to public; 
grant select on SEQ_TB_PRCEC to public;   

