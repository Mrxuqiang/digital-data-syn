/*
================================================================================
表结构代码:TB_PURFK
表结构名称:提货单主表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_PURFK
drop index AK_TB_PURFK;
drop table TB_PURFK;
create table TB_PURFK  (
   PURFK_ID             INTEGER             not null,    /*提货单ID           */   
   PURFK001             INTEGER             not null,    /*单别               */   
   PURFK002             VARCHAR2(30)        not null,    /*提货单号           */   
   PURFK003             DATE                not null,    /*单据日期           */  
   PURFK004             INTEGER             not null,    /*营运组织           */ 
   PURFK005             INTEGER             not null,    /*提货仓库           */
   PURFK006             VARCHAR2(1),                     /*来源类型           */--1.销退单 2.调拨发货单
   PURFK007             INTEGER,                         /*来源单ID           */ 
   PURFK008             VARCHAR2(1),                     /*来源单号           */
   PURFK009             INTEGER,                         /*货主               */ 
   PURFK010             INTEGER,                         /*取货区域           */ 
   PURFK011             VARCHAR2(30),                    /*顾客姓名           */
   PURFK012             VARCHAR2(30),                    /*联系电话           */
   PURFK013             VARCHAR2(30),                    /*手机号             */
   PURFK014             NUMBER(12,2) ,                   /*楼层               */
   PURFK015             VARCHAR2(1),                     /*是否有电梯         */--0 便是没有， 1表示有  
   PURFK016             VARCHAR2(255),                   /*取货地址           */ 
   PURFK017             DATE,                            /*送货日期           */   
   PURFK018             INTEGER,                         /*录入人             */   
   PURFK019             DATE,                            /*录入日期           */   
   PURFK020             INTEGER,                         /*审核人             */   
   PURFK021             DATE,                            /*审核日期           */
   PURFK022             VARCHAR2(1)         not null,    /*审核状态           */  
   PURFK023             VARCHAR2(255),                   /*备注               */   
   CREATE_USER          VARCHAR2(12),                    /*建立人员           */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门       */                          
   CREATE_DATE          DATE,                            /*建立日期           */
   MODIFIER             VARCHAR2(12),                    /*修改人员           */
   MODI_DATE            DATE,                            /*修改日期           */
   FLAG                 NUMBER,                          /*资料状态           */
   constraint PK_TB_PURFK primary key (PURFK_ID)
);
create unique index AK_TB_PURFK on TB_PURFK (PURFK001,PURFK002,FLAG);
create sequence SEQ_TB_PURFK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 

nocache;
grant select on TB_PURFK to public;
grant index  on TB_PURFK to public;
grant update on TB_PURFK to public; 
grant delete on TB_PURFK to public;  
grant insert on TB_PURFK to public; 
grant select on SEQ_TB_PURFK to public;   