/*
================================================================================
表结构代码:TB_SERIX
表结构名称:商户价签批量调价表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIX;
drop index AK_TB_SERIX;
drop table TB_SERIX;
create table TB_SERIX  (
   SERIX_ID             INTEGER                         not null,  /*价签调价ID        */
   SERIX001             INTEGER                         not null,  /*价签ID            */   
   SERIX002             INTEGER                         not null,  /*商户ID            */
   SERIX003             INTEGER,                                   /*展位ID            */
   SERIX004             INTEGER,                                   /*楼层ID            */
   SERIX005             INTEGER,                                   /*合同ID            */   
   SERIX006             INTEGER,                                   /*品牌ID            */
   SERIX007             INTEGER,                                   /*楼栋ID            */  
   SERIX008             VARCHAR2(30),                              /*联系电话          */ 
   SERIX009             VARCHAR2(1),                               /*经营方式          */ 
   SERIX010             VARCHAR2(1),                               /*标价签类型        */  
   SERIX011             VARCHAR2(1),                               /*价格类型          */  
   SERIX012             INTEGER,                                   /*商品ID            */ 
   SERIX013             VARCHAR2(80),                              /*商品名称          */ 
   SERIX014             VARCHAR2(80),                              /*型号              */     
   SERIX015             VARCHAR2(80),                              /*规格              */ 
   SERIX016             VARCHAR2(2),                               /*规格单位          */  
   SERIX017             VARCHAR2(60),                              /*饰面/面料         */  
   SERIX018             VARCHAR2(60),                              /*辅料              */   
   SERIX019             VARCHAR2(60),                              /*漆质              */ 
   SERIX020             INTEGER,                                   /*商品分类ID        */ 
   SERIX021             INTEGER,                                   /*单位ID            */  
   SERIX022             INTEGER,                                   /*等级ID            */  
   SERIX023             NUMBER(22,2),                              /*调整后售价        */  
   SERIX024             INTEGER,                                   /*自定义分类1       */  
   SERIX025             INTEGER,                                   /*自定义分类2       */  
   SERIX026             INTEGER,                                   /*自定义分类3       */  
   SERIX027             INTEGER,                                   /*自定义分类4       */  
   SERIX028             INTEGER,                                   /*自定义分类5       */  
   SERIX029             INTEGER,                                   /*自定义分类6       */  
   SERIX030             INTEGER,                                   /*自定义分类7       */  
   SERIX031             INTEGER,                                   /*自定义分类8       */  
   SERIX032             VARCHAR2(20),                              /*物价员            */  
   SERIX033             NUMBER(22,2),                              /*原售价            */   
   SERIX034             INTEGER,                                   /*录入人            */ 
   SERIX035             DATE,                                      /*录入日期          */ 
   SERIX036             VARCHAR2(1),                               /*单据状态          */
   SERIX037             INTEGER,                                   /*审核人            */ 
   SERIX038             DATE,                                      /*审核日期          */       
   SERIX039             INTEGER                         not null,  /*商场ID            */       
   SERIX040             VARCHAR2(255),                             /*备注              */        
   SERIX041             VARCHAR2(80),                              /*等级名称          */   
   SERIX042             VARCHAR2(80),                              /*基材              */   
   SERIX043             VARCHAR2(255),                             /*调价原因          */   
   SERIX044             VARCHAR2(255),                             /*主要用料          */ 
   SERIX045             VARCHAR2(255),                             /*花色              */ 
   SERIX046             VARCHAR2(2),                               /*商品属性          */     
   SERIX047             INTEGER,                                   /*数据转移id        */ 
   SERIX048             VARCHAR2(30),                              /*自定义分类1编码   */  
   SERIX049             VARCHAR2(60),                              /*自定义分类1名称   */  
   SERIX050             VARCHAR2(30),                              /*自定义分类2编码   */  
   SERIX051             VARCHAR2(60),                              /*自定义分类2名称   */  
   SERIX052             VARCHAR2(30),                              /*自定义分类3编码   */  
   SERIX053             VARCHAR2(60),                              /*自定义分类3名称   */  
   SERIX054             VARCHAR2(30),                              /*自定义分类4编码   */  
   SERIX055             VARCHAR2(60),                              /*自定义分类4名称   */  
   SERIX056             VARCHAR2(30),                              /*自定义分类5编码   */  
   SERIX057             VARCHAR2(60),                              /*自定义分类5名称   */  
   SERIX058             VARCHAR2(30),                              /*自定义分类6编码   */  
   SERIX059             VARCHAR2(60),                              /*自定义分类6名称   */  
   SERIX060             VARCHAR2(30),                              /*自定义分类7编码   */  
   SERIX061             VARCHAR2(60),                              /*自定义分类7名称   */  
   SERIX062             VARCHAR2(30),                              /*自定义分类8编码   */  
   SERIX063             VARCHAR2(60),                              /*自定义分类8名称   */             
   await_appr_group     VARCHAR2(255),                             /*待审批角色        */
   await_appr_user      VARCHAR2(255),                             /*待审批用户        */
   approved_group       VARCHAR2(255),                             /*已审批角色        */
   approved_user        VARCHAR2(255),                             /*已审批用户        */
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
   constraint PK_TB_SERIX primary key (SERIX_ID)
);
create sequence SEQ_TB_SERIX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIX to public;
grant index  on TB_SERIX to public;
grant update on TB_SERIX to public; 
grant delete on TB_SERIX to public;  
grant insert on TB_SERIX to public; 
grant select on SEQ_TB_SERIX to public;   