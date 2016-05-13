/*
================================================================================
表结构代码:TB_PURFE
表结构名称:货主变更单表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_PURFE
drop index AK_TB_PURFE;
drop table TB_PURFE;
create table TB_PURFE  (
   PURFE_ID             INTEGER             not null,    /*货主变更单ID       */   
   PURFE001             INTEGER             not null,    /*单别               */   
   PURFE002             VARCHAR2(30)        not null,    /*货主变更单号       */   
   PURFE003             DATE                not null,    /*变更日期           */  
   PURFE004             INTEGER             not null,    /*变更营运组织       */  
   PURFE005             INTEGER,                         /*销售单号ID         */   
   PURFE006	        INTEGER,  		         /*货主ID             */ 
   PURFE007	        INTEGER,  		         /*入库单ID           */    
   PURFE008             INTEGER,                         /*录入人             */   
   PURFE009             DATE,                            /*录入日期           */   
   PURFE010             INTEGER,                         /*审核人             */   
   PURFE011             DATE,                            /*审核日期           */
   PURFE012             VARCHAR2(1)         not null,    /*审核状态           */  
   PURFE013             VARCHAR2(255),                   /*备注               */   
   CREATE_USER          VARCHAR2(12),                    /*建立人员           */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门       */                          
   CREATE_DATE          DATE,                            /*建立日期           */
   MODIFIER             VARCHAR2(12),                    /*修改人员           */
   MODI_DATE            DATE,                            /*修改日期           */
   FLAG                 NUMBER,                          /*资料状态           */
   constraint PK_TB_PURFE primary key (PURFE_ID)
);
create unique index AK_TB_PURFE on TB_PURFE (PURFE001,PURFE002,FLAG);
create sequence SEQ_TB_PURFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFE to public;
grant index  on TB_PURFE to public;
grant update on TB_PURFE to public; 
grant delete on TB_PURFE to public;  
grant insert on TB_PURFE to public; 
grant select on SEQ_TB_PURFE to public;   