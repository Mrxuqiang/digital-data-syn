/*20120928 add by gaoxl for 增加家庭组成PUBTA034字段，增加crm家庭收入字段pubta035
  20121022 add by gaoxl for 增加潜客等级字段pubta039
  20130719 add by gaoxl for 红星 增加pubta040，pubta041字段
  20130806 add by gaoxl for 红星：增加交通工具字段
  20130818 add by gaoxl for 红星：add PUBTA043
*/
/*
================================================================================
表结构代码:TB_PUBTA
表结构名称:潜在客户登记表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBTA;
drop index AK_TB_PUBTA;
drop table TB_PUBTA;

create table TB_PUBTA(
   PUBTA_ID             INTEGER                   not null, /*单据ID             */
   PUBTA001             INTEGER                   not null, /*单别ID            */--20110720 mark by xiechun
   PUBTA002             VARCHAR2(10)              not null, /*单据编号           */--散客编号
   PUBTA003             INTEGER                   not null, /*销售组织ID        */
   PUBTA004             DATE                      not null, /*单据日期          */
   PUBTA005             VARCHAR2(30),                       /*顾客姓名           */
   PUBTA006             VARCHAR2(30),                       /*顾客电话           */
   PUBTA007             VARCHAR2(30),                       /*顾客手机           */
   PUBTA008             VARCHAR2(60),                       /*顾客邮件           */        
   PUBTA009             VARCHAR2(4)               not null, /*顾客性别           */  --男:1 女:2
   PUBTA010             VARCHAR2(1),                        /*顾客年龄           */
   PUBTA011             INTEGER,                            /*顾客小区           */
   PUBTA012             VARCHAR2(255),                      /*顾客地址           */
   PUBTA013             NUMBER(4),                          /*家庭人口           */
   PUBTA014             VARCHAR2(255),                      /*外貌特征           */
   PUBTA015             INTEGER  ,                          /*录入人ID           */    
   PUBTA016             DATE                    not null,   /*录入时间           */   
   PUBTA017             VARCHAR2(1)             not null,   /*审核状态           */       
   PUBTA018             INTEGER  ,                          /*审核人ID           */    
   PUBTA019             date,                               /*审核时间           */ 
   PUBTA020             INTEGER  ,                          /*交易次数           */ 
   PUBTA021             INTEGER                           , /*进店途径           */--20110416 add by xiechun
   PUBTA022             VARCHAR2(1),                        /*顾客职业           */--20110720 add by xiechun
   PUBTA023             VARCHAR2(1),                        /*顾客行业           */--20110720 add by xiechun
   PUBTA024             NUMBBER(12,2),                      /*家庭年收入         */--20110720 add by xiechun
   PUBTA025             VARCHAR2(255),                      /*通讯地址           */
   PUBTA026             INTEGER,                            /*区域               */--2011-12-21 add by peiyn
   PUBTA027             VARCHAR2(60),                       /*客户全称           */--20120619 add by shizhan
   PUBTA028             VARCHAR2(1),                        /*客户状态           */--20120619 add by shizhan       
   PUBTA029             VARCHAR2(30),                       /*顾客手机二         */--20120619 add by shizhan
   PUBTA030             INTEGER,                            /*省份               */--20120619 add by shizhan
   PUBTA031             INTEGER,                            /*城市               */--20120619 add by shizhan   
   PUBTA032             VARCHAR2(255),                      /*线索描述           */--20120619 add by shizhan
   PUBTA033             INTEGER,                            /*接待批次ID         */--20120912 add by xiechun
   PUBTA034             VARCHAR2(1),                        /*家庭组成          */
   PUBTA035             VARCHAR2(1),                        /*家庭收入          */
   PUBTA036             DATE,                               /*下单时间          */ --20121010 add by shizhan 
   PUBTA037             NUMBBER(28,2),                      /*下单金额          */ --20121010 add by shizhan
   PUBTA038             INTEGER,                            /*销售单号          */ --20121010 add by shizhan
   PUBTA039             INTEGER,                            /*潜客等级          */ 
   PUBTA040             VARCHAR2(1),                        /*来源               */   
   PUBTA041             VARCHAR2(1),                        /*是否转为会员       */  
   PUBTA042             VARCHAR2(1),                        /*交通工具           */ 
   PUBTA043             DATE ,                              /*生日*/
   CREATE_USER          VARCHAR2(12),                       /*建立人员           */
   USER_GROUP           VARCHAR2(12),                       /*建立人员部门       */                        
   CREATE_DATE          DATE,                               /*建立日期           */
   MODIFIER             VARCHAR2(12),                       /*修改人员           */
   MODI_DATE            DATE,                               /*修改日期           */
   FLAG                 NUMBER(1) ,                         /*资料状态           */
   constraint PK_TB_PUBTA primary key (PUBTA_ID)
);
create unique index AK_TB_PUBTA on TB_PUBTA (PUBTA002);
create sequence SEQ_TB_PUBTA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTA to public;
grant index  on TB_PUBTA to public;
grant update on TB_PUBTA to public; 
grant delete on TB_PUBTA to public;  
grant insert on TB_PUBTA to public; 
grant select on SEQ_TB_PUBTA to public;  