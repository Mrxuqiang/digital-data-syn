/*
================================================================================
表结构代码:TB_PURFI
表结构名称:发货单主表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_PURFI
drop index AK_TB_PURFI;
drop table TB_PURFI;
create table TB_PURFI  (
   PURFI_ID             INTEGER             not null,    /*发货单ID           */   
   PURFI001             INTEGER             not null,    /*单别               */   
   PURFI002             VARCHAR2(30)        not null,    /*发货单号           */   
   PURFI003             DATE                not null,    /*单据日期           */  
   PURFI004             INTEGER             not null,    /*营运组织           */ 
   PURFI005             INTEGER             not null,    /*发货仓库           */
   PURFI006             VARCHAR2(1),                     /*来源类型           */--1.出货通知单 2.调拨发货单
   PURFI007             INTEGER,                         /*来源单ID           */ 
   PURFI008             VARCHAR2(1),                     /*来源单号           */
   PURFI009             INTEGER,                         /*货主               */ 
   PURFI010             INTEGER,                         /*送货区域           */ 
   PURFI011             VARCHAR2(30),                    /*顾客姓名           */
   PURFI012             VARCHAR2(30),                    /*联系电话           */
   PURFI013             VARCHAR2(30),                    /*手机号             */
   PURFI014             NUMBER(12,2) ,                   /*楼层               */
   PURFI015             VARCHAR2(1),                     /*是否有电梯         */--0 便是没有， 1表示有 
   PURFI016             VARCHAR2(255),                   /*送货地址           */ 
   PURFI017             DATE,                            /*送货日期           */
   PURFI018             INTEGER,                         /*录入人             */   
   PURFI019             DATE,                            /*录入日期           */   
   PURFI020             INTEGER,                         /*审核人             */   
   PURFI021             DATE,                            /*审核日期           */
   PURFI022             VARCHAR2(1)         not null,    /*审核状态           */  
   PURFI023             VARCHAR2(255),                   /*备注               */   
   CREATE_USER          VARCHAR2(12),                    /*建立人员           */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门       */                          
   CREATE_DATE          DATE,                            /*建立日期           */
   MODIFIER             VARCHAR2(12),                    /*修改人员           */
   MODI_DATE            DATE,                            /*修改日期           */
   FLAG                 NUMBER,                          /*资料状态           */
   constraint PK_TB_PURFI primary key (PURFI_ID)
);
create unique index AK_TB_PURFI on TB_PURFI (PURFI001,PURFI002,FLAG);
create sequence SEQ_TB_PURFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 

nocache;
grant select on TB_PURFI to public;
grant index  on TB_PURFI to public;
grant update on TB_PURFI to public; 
grant delete on TB_PURFI to public;  
grant insert on TB_PURFI to public; 
grant select on SEQ_TB_PURFI to public;   