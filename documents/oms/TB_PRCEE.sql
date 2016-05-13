/*
20130716 modi by gaoxl for 红星：增加PRCEE015~PRCEE019
*/
/*
================================================================================
表结构代码:TB_PRCEE
表结构名称:商品特价申请单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCEE;
drop index AK_TB_PRCEE;
drop table TB_PRCEE;
create table TB_PRCEE  (
   PRCEE_ID           INTEGER              not null,      /* 申请单主ID        */
   PRCEE001           INTEGER              not null,      /* 申请单别id          */
   PRCEE002           VARCHAR2(30)         not null,      /* 申请单号          */
   PRCEE003           DATE                 not null,      /* 单据日期            */
   PRCEE004           INTEGER              not null,      /* 展位号id            */
   PRCEE005           INTEGER,                            /* 租赁合同id              */
   PRCEE006           INTEGER,                            /* 商户id            */
   PRCEE007           INTEGER,                            /* 品牌id              */
   PRCEE008           VARCHAR2(255),                      /* 调价原因                */
   PRCEE009           DATE,                               /* 录入日期            */
   PRCEE010           INTEGER,                            /* 录入人id              */ 
   PRCEE011           DATE,                               /* 审核日期            */
   PRCEE012           INTEGER,                            /* 审核人id              */   
   PRCEE013           VARCHAR2(1),                        /* 单据状态            */
   PRCEE014           INTEGER              not null,      /* 营运组织id          */
   PRCEE015           VARCHAR2(1),                        /* 经营方式              */
   PRCEE016           VARCHAR2(30),                       /* 联系人                */
   PRCEE017           VARCHAR2(30),                       /* 联系电话              */
   PRCEE018           VARCHAR2(1),                        /* 标价签类型            */
   PRCEE019           VARCHAR2(1),                        /* 价格类型              */
   signature          VARCHAR2(1),                        /* 签核状态            */ 
   remark             VARCHAR2(255),                      /* 签核备注                */        
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCEE primary key (PRCEE_ID)
);
create unique index AK_TB_PRCEE on TB_PRCEE (PRCEE001, PRCEE002,FLAG);
create sequence SEQ_TB_PRCEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEE to public;
grant index  on TB_PRCEE to public;
grant update on TB_PRCEE to public; 
grant delete on TB_PRCEE to public;  
grant insert on TB_PRCEE to public; 
grant select on SEQ_TB_PRCEE to public;   

