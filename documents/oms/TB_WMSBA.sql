/*
================================================================================
表结构代码:TB_WMSBA
表结构名称:提货通知单主表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_WMSBA
drop index AK_TB_WMSBA;
drop table TB_WMSBA;
create table TB_WMSBA  (
   WMSBA_ID             INTEGER             not null,    /*提货通知单ID       */   
   WMSBA001             INTEGER             not null,    /*单别               */   
   WMSBA002             VARCHAR2(30)        not null,    /*提货通知单号       */   
   WMSBA003             DATE                not null,    /*单据日期           */  
   WMSBA004             INTEGER             not null,    /*营运组织           */ 
   WMSBA005             INTEGER             not null,    /*提货仓库           */
   WMSBA006             INTEGER,                         /*货主               */ 
   WMSBA007             INTEGER,                         /*取货区域           */ 
   WMSBA008             VARCHAR2(30),                    /*顾客姓名           */
   WMSBA009             VARCHAR2(30),                    /*联系电话           */
   WMSBA010             VARCHAR2(30),                    /*手机号             */
   WMSBA011             NUMBER(12,2) ,                   /*楼层               */
   WMSBA012             VARCHAR2(1),                     /*是否有电梯         */--0 便是没有， 1表示有  
   WMSBA013             VARCHAR2(255),                   /*取货地址           */ 
   WMSBA014             INTEGER,                         /*录入人             */   
   WMSBA015             DATE,                            /*录入日期           */   
   WMSBA016             INTEGER,                         /*审核人             */   
   WMSBA017             DATE,                            /*审核日期           */
   WMSBA018             VARCHAR2(1)         not null,    /*审核状态           */  
   WMSBA019             VARCHAR2(255),                   /*备注               */   
   WMSBA020             DATE,                            /*取货日期           */ 
   CREATE_USER          VARCHAR2(12),                    /*建立人员           */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门       */                          
   CREATE_DATE          DATE,                            /*建立日期           */
   MODIFIER             VARCHAR2(12),                    /*修改人员           */
	   MODI_DATE            DATE,                            /*修改日期           */
   FLAG                 NUMBER,                          /*资料状态           */
   constraint PK_TB_WMSBA primary key (WMSBA_ID)
);
create unique index AK_TB_WMSBA on TB_WMSBA (WMSBA001,WMSBA002,WMSBA004,FLAG);
create sequence SEQ_TB_WMSBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBA to public;
grant index  on TB_WMSBA to public;
grant update on TB_WMSBA to public; 
grant delete on TB_WMSBA to public;  
grant insert on TB_WMSBA to public; 
grant select on SEQ_TB_WMSBA to public;   