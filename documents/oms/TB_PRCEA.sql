/*
20130716 add by gaoxl for 红星 ：add PRCEA015~PRCEA019
*/
/*
================================================================================
表结构代码:TB_PRCEA
表结构名称:商品特价申请单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PRCEA;
drop index AK_TB_PRCEA;
drop table TB_PRCEA;
create table TB_PRCEA  (
   PRCEA_ID           INTEGER              not null,      /* 申请单主ID        */
   PRCEA001           INTEGER              not null,      /* 申请单别id          */
   PRCEA002           VARCHAR2(30)         not null,      /* 申请单号          */
   PRCEA003           DATE                 not null,      /* 单据日期            */
   PRCEA004           INTEGER              not null,      /* 展位号id            */
   PRCEA005           INTEGER,                            /* 租赁合同id              */
   PRCEA006           INTEGER,                            /* 商户id            */
   PRCEA007           INTEGER,                            /* 品牌id              */
   PRCEA008           VARCHAR2(255),                      /* 调价原因                */
   PRCEA009           DATE,                               /* 录入日期            */
   PRCEA010           INTEGER,                            /* 录入人id              */ 
   PRCEA011           DATE,                               /* 审核日期            */
   PRCEA012           INTEGER,                            /* 审核人id              */   
   PRCEA013           VARCHAR2(1),                        /* 单据状态            */
   PRCEA014           INTEGER              not null,      /* 营运组织id          */
   PRCEA015           VARCHAR2(1),                        /* 经营方式             */ 
   PRCEA016           VARCHAR2(30),                        /* 联系人               */ 
   PRCEA017           VARCHAR2(30),                        /* 联系电话             */ 
   PRCEA018           VARCHAR2(1),                        /* 标价签类型           */
   PRCEA019           VARCHAR2(1),                        /* 价格类型             */
   signature          VARCHAR2(1),                        /* 签核状态            */ 
   remark             VARCHAR2(255),                      /* 签核备注                */        
   CREATE_USER        VARCHAR2(12),                       /* 建立人员            */
   USER_GROUP         VARCHAR2(12),                       /* 建立人员部门        */                           
   CREATE_DATE        DATE,                               /* 建立日期            */
   MODIFIER           VARCHAR2(12),                       /* 修改人员            */
   MODI_DATE          DATE,                               /* 修改日期            */
   FLAG               NUMBER,                             /* 资料状态            */
   constraint PK_TB_PRCEA primary key (PRCEA_ID)
);
create unique index AK_TB_PRCEA on TB_PRCEA (PRCEA001, PRCEA002,FLAG);
create sequence SEQ_TB_PRCEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEA to public;
grant index  on TB_PRCEA to public;
grant update on TB_PRCEA to public; 
grant delete on TB_PRCEA to public;  
grant insert on TB_PRCEA to public; 
grant select on SEQ_TB_PRCEA to public;   

