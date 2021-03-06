================================================================================
表结构代码:TB_OTCAA
表结构名称:潜在客户登记表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_OTCAA;
drop index AK_TB_OTCAA;
drop table TB_OTCAA;
create table TB_OTCAA(
   OTCAA_ID             INTEGER                   not null, /*自动增长ID             */
   OTCAA001             VARCHAR2(30)              not null, /*单据编号           */
   OTCAA002             INTEGER                   not null, /*销售组织ID        */
   OTCAA003             DATE                      not null, /*单据日期          */
   OTCAA004             VARCHAR2(30),                       /*顾客姓名           */
   OTCAA005             VARCHAR2(30),                       /*顾客电话           */
   OTCAA006             VARCHAR2(30),                       /*顾客手机           */
   OTCAA007             VARCHAR2(60),                       /*顾客邮件           */        
   OTCAA008             VARCHAR2(4)               not null, /*顾客性别           */  --男:1 女:2
   OTCAA009             VARCHAR2(8),                        /*顾客年龄           */
   OTCAA010             INTEGER,                            /*顾客小区           */
   OTCAA011             VARCHAR2(255),                      /*顾客地址           */
   OTCAA012             NUMBER(4),                          /*家庭人口           */
   OTCAA013             INTEGER  ,                          /*录入人ID           */    
   OTCAA014             DATE                    not null,   /*录入时间           */   
   OTCAA015             VARCHAR2(1)             not null,   /*审核状态           */       
   OTCAA016             INTEGER  ,                          /*交易次数           */ 
   OTCAA017             VARCHAR2(1),                        /*顾客职业           */
   OTCAA018             VARCHAR2(1),                        /*顾客行业           */
   OTCAA019             VARCHAR2(255),                      /*通讯地址           */
   OTCAA020             INTEGER,                            /*区域               */  
   OTCAA021             DATE ,                              /*生日*/
   OTCAA022             VARCHAR2(1),                        /*来源  */  
   OTCAA023             DATE ,                              /*购买时间  */
   OTCAA024             NUMBER(10),                         /*成交金额    */
   OTCAA025             INTEGER                   not null,         /*导购员            */
   OTCAA026             VARCHAR2(8),                         /*跟单状态   */      
   OTCAA027             VARCHAR2(1),                        /*装修状态           */ 
   OTCAA028             VARCHAR2(1),                        /*是否有电梯       Y：有、N：无       */  
   OTCAA029             VARCHAR2(1),                        /*装修进度 */  
   OTCAA030             NUMBER(28,2),                       /*购买预算           */ 
   OTCAA031             VARCHAR2(1),                        /*购买原因 */  
   OTCAA032             VARCHAR2(1),                        /*购买产品品类*/  
   OTCAA033             VARCHAR2(255),                      /*备注               */
   OTCAA034             VARCHAR2(1),                        /*状态   0：表示CC待接收的数据、1：表示CC已经接收的数据、2：表示CC增量回传、3、表示CC变更回传, 9 结束完成同步状态cc上传的数据已传到ERP库*/
   OTCAA035             VARCHAR2(1),                         /*装修风格：美式乡村风格、古典欧式风格、地中海式风格、东南亚风格、日式风格、新古典风格、现代简约风格、中式风格*/
   OTCAA036             VARCHAR2(1),       		    /*房屋类型*/
   OTCAA037             VARCHAR2(255),                         /*国籍*/
	
   
   constraint PK_TB_OTCAA primary key (OTCAA_ID)
);
create unique index AK_TB_OTCAA on TB_OTCAA (OTCAA001,OTCAA002);
create sequence SEQ_TB_OTCAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTCAA to public;
grant index  on TB_OTCAA to public;
grant update on TB_OTCAA to public; 
grant delete on TB_OTCAA to public;  
grant insert on TB_OTCAA to public; 
grant select on SEQ_TB_OTCAA to public;  