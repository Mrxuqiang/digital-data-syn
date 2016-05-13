20140728 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_SERIV
表结构名称:商品缺失反馈表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIV;
drop index AK_TB_SERIV;
drop table TB_SERIV;
create table TB_SERIV  (
   SERIV_ID             INTEGER                         not null,  /*商品缺失反馈ID             */
   SERIV001             INTEGER                         not null,  /*商户ID        */
   SERIV002             INTEGER,                                   /*展位ID      */
   SERIV003             INTEGER,                                   /*楼层ID      */
   SERIV004             INTEGER,                                   /*合同ID        */   
   SERIV005             INTEGER,                                   /*品牌ID      */
   SERIV006             INTEGER,                                   /*楼栋ID      */  
   SERIV007             VARCHAR2(30),                              /*联系电话      */ 
   SERIV008             VARCHAR2(1),                               /*经营方式      */ 
   SERIV009             VARCHAR2(1),                               /*标价签类型      */  
   SERIV010             VARCHAR2(1),                               /*价格类型      */  
   SERIV011             INTEGER,                                   /*商品ID         */ 
   SERIV012             VARCHAR2(80),                              /*商品名称         */ 
   SERIV013             VARCHAR2(80),                              /*型号         */     
   SERIV014             VARCHAR2(80),                              /*规格         */ 
   SERIV015             VARCHAR2(2),                               /*规格单位        */  
   SERIV016             VARCHAR2(60),                              /*饰面/面料           */  
   SERIV017             VARCHAR2(60),                              /*辅料           */   
   SERIV018             VARCHAR2(60),                              /*漆质           */ 
   SERIV019             INTEGER,                                   /*商品分类ID           */ 
   SERIV020             INTEGER,                                   /*单位ID           */  
   SERIV021             INTEGER,                                   /*等级ID           */  
   SERIV022             NUMBER(22),                                /*标价签数量           */  
   SERIV023             NUMBER(22,2),                              /*售价           */  
   SERIV024             INTEGER,                                   /*自定义分类1           */  
   SERIV025             INTEGER,                                   /*自定义分类2           */  
   SERIV026             INTEGER,                                   /*自定义分类3           */  
   SERIV027             INTEGER,                                   /*自定义分类4           */  
   SERIV028             INTEGER,                                   /*自定义分类5           */  
   SERIV029             INTEGER,                                   /*自定义分类6           */  
   SERIV030             INTEGER,                                   /*自定义分类7           */  
   SERIV031             INTEGER,                                   /*自定义分类8           */  
   SERIV032             VARCHAR2(20),                              /*物价员              */  
   SERIV033             NUMBER(22,2),                              /*原售价              */   
   SERIV034             DATE,                                      /*降价开始日期        */   
   SERIV035             DATE,                                      /*降价结束日期        */  
   SERIV036             VARCHAR2(1),                               /*类型 1.价签申请，2.调价申请，3.降价申请 4.再次打印  */  
   SERIV037             INTEGER,                                   /*录入人             */ 
   SERIV038             DATE,                                      /*录入日期           */ 
   SERIV039             VARCHAR2(1),                               /*单据状态           */
   SERIV040             INTEGER,                                   /*审核人           */ 
   SERIV041             DATE,                                      /*审核日期           */       
   SERIV042             INTEGER                         not null,  /*商场ID        */       
   SERIV043             VARCHAR2(255),                             /*备注           */    
   SERIV044             INTEGER,                                   /*打印清单次数               */ 
   SERIV045             INTEGER,                                   /*打印价签次数             */       
   SERIV046             VARCHAR2(80),                              /*等级名称             */   
   SERIV047             VARCHAR2(80),                              /*基材             */   
   SERIV048             VARCHAR2(255),                             /*降价原因             */  
   SERIV049             VARCHAR2(1),                               /*状态：1、上架；0、下架，default 1             */ 
   SERIV050             VARCHAR2(255),                             /*主要用料             */ 
   SERIV051             VARCHAR2(255),                             /*花色             */ 
   SERIV052             VARCHAR2(2),                               /*商品属性            */ 
   SERIV053             VARCHAR2(30),                              /*商品编码            */
   SERIV054             INTEGER,                                   /*产地id            */
   SERIV055             INTEGER,                                   /*系列id            */
   SERIV056             INTEGER,                                   /*工厂名id            */
   SERIV057             varchar2(30),                              /*条码            */
   await_appr_group     VARCHAR2(255),                             /*待审批角色               */
   await_appr_user      VARCHAR2(255),                             /*待审批用户               */
   approved_group       VARCHAR2(255),                             /*已审批角色               */
   approved_user        VARCHAR2(255),                             /*已审批用户               */
   appr_status          VARCHAR2(1)                                /*审批状态 1.草稿 2.待本商场物价审批 3.本商场物价驳回 4.待品牌物价审批 
									  5.品牌商检物价驳回 6.待工厂审批 7.工厂驳回 8.工厂审批通过 0.全部  */
   start_appr_group     VARCHAR2(30)                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30)                               /*发起审批用户               */    
   appr_memo            VARCHAR2(255),                             /*审批备注*/                     
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIV primary key (SERIV_ID)
);
create unique index AK_TB_SERIV on TB_SERIV (SERIV004,SERIV011);
create sequence SEQ_TB_SERIV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIV to public;
grant index  on TB_SERIV to public;
grant update on TB_SERIV to public; 
grant delete on TB_SERIV to public;  
grant insert on TB_SERIV to public; 
grant select on SEQ_TB_SERIV to public;   