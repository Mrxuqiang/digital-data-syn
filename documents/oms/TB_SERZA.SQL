/*
================================================================================
表结构代码:TB_SERZA
表结构名称:商户价签外键表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERZA;
drop index AK_TB_SERZA;
drop table TB_SERZA;
create table TB_SERZA  (
   SERZA_ID             INTEGER                         not null,  /*价签外键ID        */
   SERZA001             INTEGER                         not null,  /*价签ID            */
   SERZA002             INTEGER,				   /*商户ID            */
   SERZA003             VARCHAR2(10),				   /*客商号            */
   SERZA004             VARCHAR2(80),				   /*客商简称          */
   SERZA005             VARCHAR2(80),				   /*客商全称          */
   SERZA006             INTEGER,                                   /*展位ID            */
   SERZA007             VARCHAR2(60),				   /*摊位编号          */
   SERZA008             INTEGER,                                   /*楼层ID            */
   SERZA009             VARCHAR2(10),				   /*楼层代码          */
   SERZA010             VARCHAR2(30),				   /*楼层名称          */
   SERZA011             INTEGER,                                   /*合同ID            */   
   SERZA012             VARCHAR2(30),				   /*合同号            */
   SERZA013             INTEGER,                                   /*品牌ID(系列)      */
   SERZA014             VARCHAR2(10),				   /*系列代码          */
   SERZA015             VARCHAR2(50),				   /*系列名称          */
   SERZA016             INTEGER,                                   /*楼栋ID            */  
   SERZA017             VARCHAR2(10),				   /*楼栋代码          */
   SERZA018             VARCHAR2(50),				   /*楼栋名称          */
   SERZA019             INTEGER,                                   /*商品ID            */ 
   SERZA020             VARCHAR2(30),				   /*商品编号          */
   SERZA021             VARCHAR2(150),				   /*商品全称          */
   SERZA022             VARCHAR2(150),				   /*商品简称          */
   SERZA023             INTEGER,                                   /*商品分类ID        */ 
   SERZA024             VARCHAR2(16),			           /*品类代码          */
   SERZA025             VARCHAR2(50),				   /*品类名称          */
   SERZA026             INTEGER,                                   /*单位ID            */  
   SERZA027             VARCHAR2(4),				   /*单位代码          */
   SERZA028             VARCHAR2(20),				   /*单位名称          */
   SERZA029             INTEGER,                                   /*等级ID            */  
   SERZA030             VARCHAR2(4),				   /*等级代码          */
   SERZA031             VARCHAR2(50),				   /*等级名称          */
   SERZA032             INTEGER,                                   /*自定义分类1       */  
   SERZA033             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA034             VARCHAR2(50),				   /*自定义分类项描述  */
   SERZA035             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA036             INTEGER,               /*自定义分类2(产地)       */ 
   SERZA037             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA038             VARCHAR2(50),				   /*自定义分类项描述  */ 
   SERZA039             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA040             INTEGER,               /*自定义分类3(风格)       */  
   SERZA041             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA042             VARCHAR2(50),				   /*自定义分类项描述  */
   SERZA043             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA044             INTEGER,                                   /*自定义分类4       */  
   SERZA045             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA046             VARCHAR2(50),				   /*自定义分类项描述  */
   SERZA047             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA048             INTEGER,                                   /*自定义分类5       */  
   SERZA049             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA050             VARCHAR2(50),				   /*自定义分类项描述  */
   SERZA051             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA052             INTEGER,                                   /*自定义分类6       */  
   SERZA053             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA054             VARCHAR2(50),				   /*自定义分类项描述  */
   SERZA055             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA056             INTEGER,                                   /*自定义分类7       */   
   SERZA057             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA058             VARCHAR2(50),				   /*自定义分类项描述  */ 
   SERZA059             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA060             INTEGER,                                   /*自定义分类8       */   
   SERZA061             VARCHAR2(8),				   /*自定义分类项代码  */
   SERZA062             VARCHAR2(50),				   /*自定义分类项描述  */ 
   SERZA063             VARCHAR2(8),				   /*自定义分类项类型  */
   SERZA064             INTEGER,                                   /*录入人            */ 
   SERZA065             VARCHAR2(20),				   /*员工帐号          */
   SERZA066             VARCHAR2(50),				   /*员工中文名        */
   SERZA067             INTEGER,                                   /*审核人            */ 
   SERZA068             VARCHAR2(20),				   /*员工帐号          */
   SERZA069             VARCHAR2(50),				   /*员工中文名        */
   SERZA070             INTEGER,				   /*商场ID            */  
   SERZA071             VARCHAR2(16),				   /*营运组织代码      */
   SERZA072             VARCHAR2(100),                              /*营运组织简称      */
   SERZA073             VARCHAR2(100),				   /*营运组织全称      */  
   SERZA074             INTEGER,                                   /*品牌ID            */
   SERZA075             VARCHAR2(20),				   /*品牌代码          */
   SERZA076             VARCHAR2(80),				   /*品牌名称          */
   SERZA077             VARCHAR2(50),				   /*条码号            */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_SERZA primary key (SERZA_ID)
);
create sequence SEQ_TB_SERZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 cache 1000;
create index AK_TB_SERZA on TB_SERZA(SERZA001);
grant select,index,update,delete,insert on TB_SERZA to public;
grant select on SEQ_TB_SERZA to public; 
grant select on SEQ_TB_SERZA to public;   