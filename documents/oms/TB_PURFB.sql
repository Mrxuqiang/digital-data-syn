/*
================================================================================
表结构代码:TB_PURFB
表结构名称:采购入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURFB;
drop index AK_TB_PURFB;
drop table TB_PURFB;
create table TB_PURFB  (
   PURFB_ID             INTEGER                    not null,    /* 入库明细ID       */        
   PURFB001             INTEGER                    not null,    /* 入库单ID单号ID   */        
   PURFB002             INTEGER,				/* 收货通知         */        
   PURFB003             INTEGER,				/* 收货通知明细ID   */        
   PURFB004             INTEGER                    not null,    /* 商品ID           */        
   PURFB005             INTEGER,				/* 维度1            */        
   PURFB006             INTEGER,				/* 维度2            */        
   PURFB007             INTEGER,				/* 维度3            */       
   PURFB008             INTEGER,				/* 维度4            */       
   PURFB009             INTEGER,				/* 维度5            */        
   PURFB010             INTEGER                    not null,    /* 仓库             */        
   PURFB011             INTEGER                    not null,    /* 库位             */        
   PURFB012             VARCHAR2(30)               not null,    /* 主批号           */       -- mark 20100330
   PURFB013             VARCHAR2(1)                not null,    /* 销售属性         */1、正常商品， 2、定制商品 3赠品 4、样品 5.处理品
   PURFB014             VARCHAR2(30),                           /* 厂商批号         */        
   PURFB015             INTEGER                    not null,    /* 入库单位         */        
   PURFB016             NUMBER(12,2),                           /* 单位换算率       */        
   PURFB017             NUMBER(18,3)               not null,    /* 入库量           */        
   PURFB018             NUMBER(12,2),                           /* 折扣率           */        
   PURFB019             NUMBER(18,3),                           /* 搭赠量           */        
   PURFB020             NUMBER(12,2),                           /* 税前单价         */        
   PURFB021             NUMBER(12,2),                           /* 含税单价  进价   */        
   PURFB022             INTEGER                    not null,    /* 税种             */        
   PURFB023             NUMBER(12,2)               not null,    /* 税率             */        
   PURFB024             NUMBER(12,2),                           /* 税前金额         */        
   PURFB025             NUMBER(12,2),                           /* 含税金额         */        
   PURFB026             NUMBER(12,2),                           /* 扣率             */        
   PURFB027             VARCHAR2(1)                not null,    /* 商品服务属性     */1、套件 2、组装件 3、补件     
   PURFB028             VARCHAR2(1),				/* 价格来源         */    -- mark 20100330   
   PURFB029             VARCHAR2(1)                not null,    /* 优先级           */        
   PURFB030             DATE,					/* 交货日           */    -- mark 20100330
   PURFB031             INTEGER,			        /* 应付暂估单号     */    -- mark 20100330
   PURFB032             VARCHAR2(255),				/* 备注             */
   PURFB033             NUMBER(12,2),				/* 已结数量         */    -- mark 20100401
   PURFB034             VARCHAR2(255),			       	/* 要货单号         */    -- mark 20100330
   PURFB035             NUMBER(12,2),				/* 要货量           */    -- mark 20100330
   PURFB036             VARCHAR2(255),			        /* 销售单号         */    -- mark 20100330
   PURFB037             NUMBER(12,2),				/* 销售量           */    -- mark 20100330
   PURFB038             VARCHAR2(255),			        /* 申请单号         */    -- mark 20100330
   PURFB039             NUMBER(12,2),				/* 申请量           */    -- mark 20100330
   PURFB040             VARCHAR2(1),				/* 是否组装品       */
   PURFB041             VARCHAR2(1),				/* 是否成分         */
   PURFB042             INTEGER,				/* 主商品ID         */
   PURFB043             INTEGER,				/* 包数             */
   PURFB044             VARCHAR2(30),				/* 子套件对应关系随机码*/
   PURFB045             VARCHAR2(1)                not null,    /* 商品状态1.异常商品2.缺包3.正常     */
   PURFB046             NUMBER(12,2),				/* 缺包数量         */ --20110317 add by xiechun
   CREATE_USER          VARCHAR2(12),				/* 建立人员         */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门              */                               
   CREATE_DATE          DATE,					/* 建立日期                  */
   MODIFIER             VARCHAR2(12),				/* 修改人员                  */
   MODI_DATE            DATE,					/* 修改日期                  */
   FLAG                 NUMBER(1),				/* 资料状态                  */
   constraint PK_TB_PURFB primary key (PURFB_ID) 
);
create index AK_TB_PURFB on TB_PURFB (PURFB_ID,PURFB002,PURFB005);
create sequence SEQ_TB_PURFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFB to public;
grant index  on TB_PURFB to public;
grant update on TB_PURFB to public; 
grant delete on TB_PURFB to public;  
grant insert on TB_PURFB to public; 
grant select on SEQ_TB_PURFB to public;   