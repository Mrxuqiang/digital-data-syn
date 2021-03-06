/*
================================================================================
表结构代码:TB_DTBDI
表结构名称:打包单明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDI;
drop index AK_TB_DTBDI;
drop table TB_DTBDI;
create table TB_DTBDI  (                                       
   DTBDI_ID           INTEGER                     not null,     /* 打包单明细ID      */         
   DTBDI001           INTEGER                     not null,     /* 打包单ID          */    
   DTBDI002           INTEGER                     not null,     /* 商品ID            */   
   DTBDI003           INTEGER,				        /* 维度1ID           */
   DTBDI004           INTEGER,					/* 维度2ID           */
   DTBDI005           INTEGER,					/* 维度3ID           */
   DTBDI006           INTEGER,					/* 维度4ID           */
   DTBDI007           INTEGER,					/* 维度5ID           */
   DTBDI008           NUMBER(22,0)                not null,     /* 计划回库数量      */   
   DTBDI009           NUMBER(22,2)                not null,     /* 售价              */   
   DTBDI010           INTEGER                               ,   /* 单位              */  
   DTBDI011           NUMBER(22,2)                           ,  /* 含税金额          */   
   DTBDI012           NUMBER(22,0)                not null,     /* 实际打包量        */
   DTBDI013           INTEGER                               ,   /* 标准包数          */   
   DTBDI014           INTEGER                               ,   /* 实际包数          */     
   DTBDI015           INTEGER				,     	/* 退样仓库          */     
   DTBDI016           INTEGER,                                  /* 退样库位          */         
   DTBDI017           INTEGER				,    	/* 收货仓库          */       
   DTBDI018           INTEGER,                                  /* 收货库位          */ 
   DTBDI019           INTEGER,                                  /* 出样变更单ID      */   
   DTBDI020           INTEGER,                                  /* 样品回库明细ID    */  
   DTBDI021           VARCHAR2(1),				/* 是否套件          */
   DTBDI022           VARCHAR2(1),				/* 是否成分          */
   DTBDI023           INTEGER ,  				/* 主商品ID          */
   DTBDI024           VARCHAR2(30) ,  			   	/* 子套件对应关系随机码 */
   DTBDI025           INTEGER,                                  /* 销售单ID          */
   DTBDI026           INTEGER,                                  /* 销售单明细ID      */
   DTBDI027           VARCHAR2(1),				/*商品服务属性       */--add 0812
   DTBDI028           VARCHAR2(1),				/* 销售属性          */--add by xiechun 20110503
   CREATE_USER        VARCHAR2(12),                 	        /* 建立人员          */
   USER_GROUP         VARCHAR2(12),                     	/*建立人员部门       */
   CREATE_DATE        DATE,                                     /* 建立日期          */
   MODIFIER           VARCHAR2(12),                             /* 修改人员          */
   MODI_DATE          DATE,                                     /* 修改日期          */
   FLAG               NUMBER(1),                                /* 资料状态          */
  
   
   constraint PK_TB_DTBDI primary key (DTBDI_ID)                               
);                                           
create unique index AK_TB_DTBDI on TB_DTBDI (DTBDI002,DTBDI013);               
create sequence SEQ_TB_DTBDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDI to public;                                     
grant index  on TB_DTBDI to public;                                     
grant update on TB_DTBDI to public;                                      
grant delete on TB_DTBDI to public;                                       
grant insert on TB_DTBDI to public;                                      
grant select on SEQ_TB_DTBDI to public;                                        