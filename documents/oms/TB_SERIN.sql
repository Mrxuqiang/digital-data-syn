/*
================================================================================
表结构代码:TB_SERIN
表结构名称:商户价签表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIN;
drop index AK_TB_SERIN;
drop table TB_SERIN;
create table TB_SERIN  (
   SERIN_ID             INTEGER                         not null,  /*价签ID        */
   SERIN001             INTEGER                         not null,  /*商户ID        */
   SERIN002             INTEGER,                                   /*展位ID      */
   SERIN003             INTEGER,                                   /*楼层ID      */
   SERIN004             INTEGER,                                   /*合同ID        */   
   SERIN005             INTEGER,                                   /*品牌ID(系列)      */
   SERIN006             INTEGER,                                   /*楼栋ID      */  
   SERIN007             VARCHAR2(30),                              /*联系电话      */ 
   SERIN008             VARCHAR2(1),                               /*经营方式      */ 
   SERIN009             VARCHAR2(1),                               /*标价签类型      */  
   SERIN010             VARCHAR2(1),                               /*价格类型      */  
   SERIN011             INTEGER,                                   /*商品ID         */ 
   SERIN012             VARCHAR2(80),                              /*商品名称         */ 
   SERIN013             VARCHAR2(80),                              /*型号         */     
   SERIN014             VARCHAR2(80),                              /*规格         */ 
   SERIN015             VARCHAR2(2),                               /*规格单位        */  
   SERIN016             VARCHAR2(60),                              /*饰面/面料           */  
   SERIN017             VARCHAR2(60),                              /*辅料           */   
   SERIN018             VARCHAR2(60),                              /*漆质           */ 
   SERIN019             INTEGER,                                   /*商品分类ID           */ 
   SERIN020             INTEGER,                                   /*单位ID           */  
   SERIN021             INTEGER,                                   /*等级ID           */  
   SERIN022             NUMBER(22),                                 /*标价签数量           */  
   SERIN023             NUMBER(22,2),                              /*售价           */  
   SERIN024             INTEGER,                                   /*自定义分类1           */  
   SERIN025             INTEGER,                                   /*自定义分类2（产地）   */  
   SERIN026             INTEGER,                                   /*自定义分类3           */  
   SERIN027             INTEGER,                                   /*自定义分类4           */  
   SERIN028             INTEGER,                                   /*自定义分类5           */  
   SERIN029             INTEGER,                                   /*自定义分类6           */  
   SERIN030             INTEGER,                                   /*自定义分类7           */  
   SERIN031             INTEGER,                                   /*自定义分类8           */  
   SERIN032             VARCHAR2(20),                              /*物价员              */  
   SERIN033             NUMBER(22,2),                              /*原售价              */   
   SERIN034             DATE,                                      /*降价开始日期        */   
   SERIN035             DATE,                                      /*降价结束日期        */  
   SERIN036             VARCHAR2(1),                               /*类型 1.价签申请，2.调价申请，3.降价申请 4.再次打印  */  
   SERIN037             INTEGER,                                   /*录入人             */ 
   SERIN038             DATE,                                      /*录入日期           */ 
   SERIN039             VARCHAR2(1),                               /*单据状态           */
   SERIN040             INTEGER,                                   /*审核人           */ 
   SERIN041             DATE,                                      /*审核日期           */       
   SERIN042             INTEGER                         not null,  /*商场ID        */       
   SERIN043             VARCHAR2(255),                               /*备注           */    
   SERIN044             INTEGER,                                   /*打印清单次数               */ 
   SERIN045             INTEGER,                                   /*打印价签次数             */       
   SERIN046             VARCHAR2(80),                              /*等级名称             */   
   SERIN047             VARCHAR2(80),                              /*基材             */   
   SERIN048             VARCHAR2(255),                              /*降价原因             */   
   SERIN051             VARCHAR2(255),                              /*主要用料             */ 
   SERIN052             VARCHAR2(255),                              /*花色             */ 
   SERIN053             VARCHAR2(2),                               /*商品属性            */
   await_appr_group     VARCHAR2(30)                               /*待审批角色               */
   await_appr_user      VARCHAR2(30)                               /*待审批用户               */
   approved_group       VARCHAR2(30)                               /*已审批角色               */
   approved_user        VARCHAR2(30)                               /*已审批用户               */
   appr_status          VARCHAR2(1)                                /*审批状态 0、无；1、已发起审批中; 9、审批结束*/ 0.未发起(草稿)，1.打回（审批不合格） 2.审批中 9.审批结束
   start_appr_group     VARCHAR2(30)                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30)                               /*发起审批用户               */   
   ---appr_back_memo       VARCHAR2(255),                             /*打回备注*/      
   appr_memo            VARCHAR2(255),                             /*审批备注*/                                                
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIN primary key (SERIN_ID)
);
create sequence SEQ_TB_SERIN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIN to public;
grant index  on TB_SERIN to public;
grant update on TB_SERIN to public; 
grant delete on TB_SERIN to public;  
grant insert on TB_SERIN to public; 
grant select on SEQ_TB_SERIN to public;   