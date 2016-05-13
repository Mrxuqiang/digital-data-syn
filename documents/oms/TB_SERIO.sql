/*
================================================================================
表结构代码:TB_SERIO
表结构名称:商户价签打印申请表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIO;
drop index AK_TB_SERIO;
drop table TB_SERIO;
create table TB_SERIO  (
   SERIO_ID             INTEGER                         not null,  /*价签打印申ID     */
   SERIO001             INTEGER                         not null,  /*价签ID           */   
   SERIO002             INTEGER                         not null,  /*商户ID           */
   SERIO003             VARCHAR2(30),                              /*商户编码         */
   SERIO004             VARCHAR2(60),                              /*商户简称         */      
   SERIO005             INTEGER,                                   /*展位ID           */
   SERIO006             VARCHAR2(30),                              /*展位号           */   
   SERIO007             INTEGER,                                   /*楼层ID           */
   SERIO008             VARCHAR2(10),                              /*楼层编码         */
   SERIO009             VARCHAR2(30),                              /*楼层名称         */   
   SERIO010             INTEGER,                                   /*合同ID           */ 
   SERIO011             VARCHAR2(30),                              /*合同号           */      
   SERIO012             INTEGER,                                   /*系列ID           */
   SERIO013             VARCHAR2(30),                              /*系列代码          */
   SERIO014             VARCHAR2(30),                              /*系列名称         */
   SERIO015             INTEGER,                                   /*楼栋ID           */  
   SERIO016             VARCHAR2(10),                              /*楼栋代码           */  
   SERIO017             VARCHAR2(30),                              /*楼栋名称           */    
   SERIO018             VARCHAR2(30),                              /*联系电话         */ 
   SERIO019             VARCHAR2(1),                               /*经营方式         */ 
   SERIO020             VARCHAR2(1),                               /*标价签类型       */  
   SERIO021             VARCHAR2(1),                               /*价格类型         */  
   SERIO022             INTEGER,                                   /*商品ID           */ 
   SERIO023             VARCHAR2(80),                              /*商品名称         */ 
   SERIO024             VARCHAR2(80),                              /*型号             */     
   SERIO025             VARCHAR2(80),                              /*规格             */ 
   SERIO026             VARCHAR2(2),                               /*规格单位         */  
   SERIO027             VARCHAR2(60),                              /*饰面/面料           */  
   SERIO028             VARCHAR2(60),                              /*辅料             */   
   SERIO029             VARCHAR2(60),                              /*漆质             */ 
   SERIO030             INTEGER,                                   /*商品分类ID           */ 
   SERIO031             INTEGER,                                   /*单位ID           */  
   SERIO032             INTEGER,                                   /*等级ID           */  
   SERIO033             NUMBER(22),                                /*价签打印数量           */  
   SERIO034             NUMBER(22,2),                              /*售价              */  
   SERIO035             INTEGER,                                   /*自定义分类1           */  
   SERIO036             INTEGER,                                   /*自定义分类2           */  
   SERIO037             INTEGER,                                   /*自定义分类3           */  
   SERIO038             INTEGER,                                   /*自定义分类4           */  
   SERIO039             INTEGER,                                   /*自定义分类5           */  
   SERIO040             INTEGER,                                   /*自定义分类6           */  
   SERIO041             INTEGER,                                   /*自定义分类7           */  
   SERIO042             INTEGER,                                   /*自定义分类8           */  
   SERIO043             VARCHAR2(20),                              /*物价员              */  
   SERIO044             NUMBER(22,2),                              /*原售价              */   
   SERIO045             DATE,                                      /*降价开始日期        */   
   SERIO046             DATE,                                      /*降价结束日期        */  
   SERIO047             VARCHAR2(1),                               /*类型 1.价签申请，2.调价申请，3.降价申请 4.再次打印  */   
   SERIO048             INTEGER                         not null,  /*商场ID             */         
   SERIO049             VARCHAR2(80),                              /*等级名称             */   
   SERIO050             VARCHAR2(80),                              /*基材                 */   
   SERIO051             VARCHAR2(255),                             /*降价原因             */  
   SERIO052             VARCHAR2(255),                             /*主要用料             */ 
   SERIO053             VARCHAR2(255),                             /*花色                */ 
   SERIO054             VARCHAR2(2),                               /*商品属性            */  
   SERIO055             DATE,                                      /*申请打印日期        */ 
   SERIO056             DATE,                                      /*打印日期            */         
   SERIO057             VARCHAR2(1),                               /*打印状态:1、待打印；2、已打印；3、拒绝           */ 
   SERIO058             VARCHAR2(255),                             /*反馈意见            */                                 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIO primary key (SERIO_ID)
);
create unique index AK_TB_SERIO on TB_SERIO (SERIO001,SERIO056,SERIO058,FLAG); 
create sequence SEQ_TB_SERIO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIO to public;
grant index  on TB_SERIO to public;
grant update on TB_SERIO to public; 
grant delete on TB_SERIO to public;  
grant insert on TB_SERIO to public; 
grant select on SEQ_TB_SERIO to public;   