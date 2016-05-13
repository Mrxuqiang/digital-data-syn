/*
20140825 add by sundan
*/


/*
================================================================================
表结构代码:TB_SERIZ
表结构名称:商户价签降价申请表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIZ;
drop index AK_TB_SERIZ;
drop table TB_SERIZ;
create table TB_SERIZ  (
   SERIZ_ID             INTEGER                         not null,  /*价签ID        */
   SERIZ001             INTEGER                         not null,  /*商户ID        */
   SERIZ002             INTEGER,                                   /*展位ID      */
   SERIZ003             INTEGER,                                   /*楼层ID      */
   SERIZ004             INTEGER,                                   /*合同ID        */   
   SERIZ005             INTEGER,                                   /*品牌ID      */
   SERIZ006             INTEGER,                                   /*楼栋ID      */  
   SERIZ007             VARCHAR2(30),                              /*联系电话      */ 
   SERIZ008             VARCHAR2(1),                               /*经营方式      */ 
   SERIZ009             VARCHAR2(1),                               /*标价签类型      */  
   SERIZ010             VARCHAR2(1),                               /*价格类型      */  
   SERIZ011             INTEGER,                                   /*商品ID         */ 
   SERIZ012             VARCHAR2(80),                              /*商品名称         */ 
   SERIZ013             VARCHAR2(80),                              /*型号         */     
   SERIZ014             VARCHAR2(80),                              /*规格         */ 
   SERIZ015             VARCHAR2(2),                               /*规格单位        */  
   SERIZ016             VARCHAR2(60),                              /*饰面/面料           */  
   SERIZ017             VARCHAR2(60),                              /*辅料           */   
   SERIZ018             VARCHAR2(60),                              /*漆质           */ 
   SERIZ019             INTEGER,                                   /*商品分类ID           */ 
   SERIZ020             INTEGER,                                   /*单位ID           */  
   SERIZ021             INTEGER,                                   /*等级ID           */  
   SERIZ022             NUMBER(22),                                 /*标价签数量           */  
   SERIZ023             NUMBER(22,2),                              /*售价           */  
   SERIZ024             INTEGER,                                   /*自定义分类1           */  
   SERIZ025             INTEGER,                                   /*自定义分类2           */  
   SERIZ026             INTEGER,                                   /*自定义分类3           */  
   SERIZ027             INTEGER,                                   /*自定义分类4           */  
   SERIZ028             INTEGER,                                   /*自定义分类5           */  
   SERIZ029             INTEGER,                                   /*自定义分类6           */  
   SERIZ030             INTEGER,                                   /*自定义分类7           */  
   SERIZ031             INTEGER,                                   /*自定义分类8           */  
   SERIZ032             VARCHAR2(20),                              /*物价员              */  
   SERIZ033             NUMBER(22,2),                              /*原售价              */   
   SERIZ034             DATE,                                      /*降价开始日期        */   
   SERIZ035             DATE,                                      /*降价结束日期        */  
   SERIZ036             VARCHAR2(1),                               /*类型 1.价签申请，2.调价申请，3.降价申请 4.再次打印  */  
   SERIZ037             INTEGER,                                   /*录入人             */ 
   SERIZ038             DATE,                                      /*录入日期           */ 
   SERIZ039             VARCHAR2(1),                               /*单据状态           */
   SERIZ040             INTEGER,                                   /*审核人           */ 
   SERIZ041             DATE,                                      /*审核日期           */       
   SERIZ042             INTEGER                         not null,  /*商场ID        */       
   SERIZ043             VARCHAR2(255),                             /*备注           */    
   SERIZ044             INTEGER,                                   /*打印清单次数               */ 
   SERIZ045             INTEGER,                                   /*打印价签次数             */       
   SERIZ046             VARCHAR2(80),                              /*等级名称             */   
   SERIZ047             VARCHAR2(80),                              /*基材             */   
   SERIZ048             VARCHAR2(255),                              /*降价原因             */  
   SERIZ049             VARCHAR2(1),                                /*状态：1、上架；0、下架，default 1             */ 
   SERIZ051             VARCHAR2(255),                              /*主要用料             */ 
   SERIZ052             VARCHAR2(255),                              /*花色             */ 
   SERIZ053             VARCHAR2(2),                               /*商品属性            */   
   SERIZ054		VARCHAR2(1)			not null,  /*降价类型  1.降价签 2.爆款*/  
   SERIZ055             INTEGER                         not null,  /*价签ID*/
   await_appr_group     VARCHAR2(255),                               /*待审批角色               */
   await_appr_user      VARCHAR2(255),                               /*待审批用户               */
   approved_group       VARCHAR2(255),                               /*已审批角色               */
   approved_user        VARCHAR2(255),                               /*已审批用户               */
   appr_status          VARCHAR2(1)                                /*审批状态 0、无；1、已发起审批中; 9、审批结束*/ 0.未发起(草稿)，1.打回（审批不合格） 2.审批中 9.审批结束
   start_appr_group     VARCHAR2(30)                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30)                               /*发起审批用户               */    
   appr_memo            VARCHAR2(255),                             /*审批备注*/                       
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIZ primary key (SERIZ_ID)
);
create sequence SEQ_TB_SERIZ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIZ to public;
grant index  on TB_SERIZ to public;
grant update on TB_SERIZ to public; 
grant delete on TB_SERIZ to public;  
grant insert on TB_SERIZ to public; 
grant select on SEQ_TB_SERIZ to public;   