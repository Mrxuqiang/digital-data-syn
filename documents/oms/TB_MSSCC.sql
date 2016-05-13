/*
================================================================================
表结构代码:TB_MSSCC
表结构名称:商品反馈变更表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSCC;
drop index AK_TB_MSSCC;
drop table TB_MSSCC;
create table TB_MSSCC  (
   MSSCC_ID             INTEGER                         not null,  /*商品反馈变更表ID*/
   MSSCC001             INTEGER                         not null,  /*商品ID          */
   MSSCC002             VARCHAR2(40),                              /*条形码          */
   MSSCC003             VARCHAR2(100),                             /*品名            */
   MSSCC004             VARCHAR2(80),                              /*型号（原）      */ 
   MSSCC005             VARCHAR2(80),                              /*型号（改）      */  
   MSSCC006             VARCHAR2(80),                              /*规格（原）      */  
   MSSCC007             VARCHAR2(80),                              /*规格（改）      */  
   MSSCC008             VARCHAR2(2),                               /*规格单位        */  
   MSSCC009             VARCHAR2(100),                             /*基材（原）MSSCA035      */  
   MSSCC010             VARCHAR2(100),                             /*基材（改）      */  
   MSSCC011             VARCHAR2(100),                             /*饰面（原）MSSCA035      */  
   MSSCC012             VARCHAR2(100),                             /*饰面（改）      */ 
   MSSCC013             VARCHAR2(100),                             /*辅材（原）MSSCA035      */ 
   MSSCC014             VARCHAR2(100),			                       /*辅材（改）      */ 
   MSSCC015             VARCHAR2(100),                             /*主要用料（原）MSSCA035 否字段  */ 
   MSSCC016             VARCHAR2(100),                             /*主要用料（改）  */ 
   MSSCC017             VARCHAR2(100),                             /*花色            */    
   MSSCC018             Integer,                                   /*计价单位ID      */  
   MSSCC019             VARCHAR2(60),                              /*等级            */  
   MSSCC020             number(9,2),                               /*工厂指导价      */ 
   MSSCC021             INTEGER,                                   /*产地id          */    
   MSSCC022             VARCHAR2(1000),                            /*备注            */  
   MSSCC023             VARCHAR2(1000),                            /*工厂回复意见    */
   MSSCC024             VARCHAR2(1),                               /*状态 1.默认状态 0.拒绝变更 */  
   MSSCC025             Integer,                                   /*营运组织ID      */ 
   MSSCC026             Integer,                                   /*角色ID          */ 
   MSSCC027             VARCHAR2(50),                               /*联系人         */
   MSSCC028             VARCHAR2(50),                               /*联系电话	     */
   MSSCC029             DATE,                                       /*录入日期       */
   MSSCC030             VARCHAR2(1),                                /*变更状态： 完全变更0 部分变更1     */
   MSSCC031             DATE,                                       /*反馈日期        */
   MSSCC032             varchar2(50),                               /*工厂联系人      */
   MSSCC033             varchar2(50),                               /*工厂联系电话    */
   MSSCC034             varchar2(1000),                             /*预留034         */
   MSSCC035             varchar2(1000),                             /*预留035         */
   MSSCC036             INTEGER                         ,           /*工厂商品信息ID     */
   MSSCC037             INTEGER                         ,           /*版本号             */
   MSSCC038             INTEGER,                                    /*自定义分类1(材质名) （一）          */  
   MSSCC039             INTEGER,                                    /*自定义分类2(产地) (二)           */  
   MSSCC040             INTEGER,                                    /*自定义分类3(风格名) 风格（三）          */  
   MSSCC041             INTEGER,                                    /*自定义分类4(功能名) （四）        */  
   MSSCC042             INTEGER,                                    /*自定义分类5(商品类型名)           */  
   MSSCC043             INTEGER,                                    /*自定义分类6 空间名           */  
   MSSCC044             INTEGER,                                    /*自定义分类7           */ 
   MSSCC045             INTEGER,                                    /*自定义分类8          */
   MSSCC046             INTEGER                         ,           /*系列ID              */
   MSSCC047             Integer,                                    /*反馈人ID           */
   MSSCC048             Integer,                                    /*品牌ID           */ 
   MSSCC049             Integer,                                    /*工厂ID           */ 
   MSSCC050             Integer,                                     /*工厂组织ID           */
   MSSCC051             Integer,                                     /*条形码 (改)           */
   MSSCC052             VARCHAR2(100),                               /*品名(改)            */
   MSSCC053             VARCHAR2(2),                                 /*规格单位(改)        */
   MSSCC054             VARCHAR2(100),                               /*花色 (改)           */
   MSSCC055             Integer,                                     /*计价单位ID (改)     */ 
   MSSCC056             VARCHAR2(60),                                /*等级 (改)           */
   MSSCC057             number(9,2),                                 /*工厂指导价(改)      */ 
   MSSCC058             INTEGER,                                     /*产地id(改)          */
   MSSCC059             varchar2(2),                                 /*是否为家具          */
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                       /*建立日期           */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                       /*修改日期           */
   FLAG                 NUMBER,                                     /*资料状态           */
   constraint PK_TB_MSSCC primary key (MSSCC_ID)
);
create unique index AK_TB_MSSCC on TB_MSSCC(MSSCC031,MSSCC032,FLAG);
create sequence SEQ_TB_MSSCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCC to public;
grant index  on TB_MSSCC to public;
grant update on TB_MSSCC to public; 
grant delete on TB_MSSCC to public;  
grant insert on TB_MSSCC to public;  
grant select on SEQ_TB_MSSCC to public;   
