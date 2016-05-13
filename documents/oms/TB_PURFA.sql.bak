/*
================================================================================
表结构代码:TB_PURFA
表结构名称:采购入库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURFA
drop index AK_TB_PURFA;
drop table TB_PURFA;
create table TB_PURFA  (
   PURFA_ID             INTEGER             not null,    /*入库单ID           */   
   PURFA001             VARCHAR2(1)         not null,    /*入库类型           */   --mark 20100401
   PURFA002             INTEGER             not null,    /*入库单别           */   
   PURFA003             VARCHAR2(30)        not null,    /*入库单号           */   
   PURFA004             DATE                not null,    /*入库日期           */   
   PURFA005             INTEGER,                         /*收货通知单号       */   
   PURFA006             INTEGER             not null,    /*入库营运组织       */   
   PURFA007             INTEGER             not null,    /*入库部门           */   
   PURFA008             INTEGER             not null,    /*入库人员           */   
   PURFA009             INTEGER,                         /*仓库               */   --modify 20100401 
   PURFA010             INTEGER,                         /*商品组人员         */   --mark 20100401 
   PURFA011             INTEGER             not null,    /*供应商             */   
   PURFA012             VARCHAR2(1)         not null,    /*经营方式           */   
   PURFA013             VARCHAR2(1)         not null,    /*采配方式           */   --mark 20100401
   PURFA014             VARCHAR2(1)         not null,    /*指定采购           */   --mark 20100401
   PURFA015             INTEGER,                         /*厂商单号           */   --modify 20100401
   PURFA016             VARCHAR2(255),                   /*收货地址           */   
   PURFA017             VARCHAR2(255),                   /*备注               */   
   PURFA018             VARCHAR2(1),                     /*审核状态           */   
   PURFA019             INTEGER,                         /*录入人             */   
   PURFA020             DATE,                            /*录入日期           */   
   PURFA021             INTEGER,                         /*审核人             */   
   PURFA022             DATE,                            /*审核日期           */
   PURFA023	        NUMBER(18,3),                    /*税前金额合计       */   --add by 0826
   PURFA024             NUMBER(18,3),                    /*含税金额合计       */   
   PURFA025             VARCHAR2(1),                     /*来源单据类型       */ 1.手工录入 2.收获通知单 3.收货单      
   PURFA026             NUMBER(18,3),                    /*备用               */ 
   PURFA027		VARCHAR2(30),                    /*供应厂商单号			  */ 
   CREATE_USER          VARCHAR2(12),                    /*建立人员           */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门       */                               
   CREATE_DATE          DATE,                            /*建立日期           */
   MODIFIER             VARCHAR2(12),                    /*修改人员           */
   MODI_DATE            DATE,                            /*修改日期           */
   FLAG                 NUMBER(1),                       /*资料状态           */
   constraint PK_TB_PURFA primary key (PURFA_ID)
);
create unique index AK_TB_PURFA on TB_PURFA (PURFA002,PURFA003);
create sequence SEQ_TB_PURFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFA to public;
grant index  on TB_PURFA to public;
grant update on TB_PURFA to public; 
grant delete on TB_PURFA to public;  
grant insert on TB_PURFA to public; 
grant select on SEQ_TB_PURFA to public;   