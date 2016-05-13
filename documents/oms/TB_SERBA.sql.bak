/*
20130717 add by gaoxl for：红星 add：SERBA024~SERBA035
20130805 add by gaoxl for：红星商户信用分类 add 合同ID
20130811 modi by gaoxl for：   SERBA005 not null 改为可为空
20130813 add by gaoxl for：SERBA045~SERBA046
*/
/*
================================================================================
表结构代码:TB_SERBA
表结构名称:投诉受理单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBA;
drop index AK_TB_SERBA;
drop table TB_SERBA;
create table TB_SERBA  (                                       
   SERBA_ID             INTEGER                        not null,   /*投诉单ID            */            
   SERBA001             INTEGER                        not null,   /*投诉单别            */            
   SERBA002             VARCHAR2(30)                   not null,   /*投诉单编号          */            
   SERBA003             NUMBER(1)                      not null,   /*投诉方式 1.800电话 2.门店 3.网站 4.媒体 5.职能部门 6.其它 */ 20100927 add by youyx            
   SERBA004             DATE                           not null,   /*投诉日期            */            
   SERBA005             NUMBER(1)                      not null,   /*投诉性质            */            
   SERBA006             INTEGER                        not null,   /*销售店面            */               
   SERBA007             VARCHAR2(1000)，               not null,   /*投诉内容            */ 20100926 modify by youyx  
   SERBA008             VARCHAR2(255),                             /*会员编号            */
   SERBA009             VARCHAR2(255) ,                            /*顾客姓名            */
   SERBA010             VARCHAR2(255) ,                            /*住址                */
   SERBA011             VARCHAR2(255),                             /*送货地址            */
   SERBA012             VARCHAR2(30),                              /*固定电话            */
   SERBA013             VARCHAR2(30),                              /*移动电话            */
   SERBA014             VARCHAR2(1000),                            /*投诉要求            */ 20100926 modify by youyx
   SERBA015             INTEGER,                                   /*投诉原因ID          */  #ouwx 100617 
   SERBA016             INTEGER,                                   /*摊位ID              */  #ouwx 100617 
   SERBA017             INTEGER,                                   /*品牌ID              */  #ouwx 100617
   SERBA018             INTEGER,                                   /*经营分类ID          */  #ouwx 100617
   SERBA019             VARCHAR2(30),                              /*受理文档号          */
   SERBA020             INTEGER,                                   /*商户                */  ouwx add 101206
   SERBA021             INTEGER,                                   /*楼层                */  ouwx add 2011/10/10
   SERBA022             INTEGER,                                   /*销售单ID            */  ouwx add 2011/12/24
   SERBA023             DATE,                                      /*销售日期            */  20121031 add by shizhan
   SERBA024             VARCHAR2(1),                               /*投诉等级            */ 
   SERBA025             INTEGER,                                   /*处理方式                */ 
   SERBA026             DATE,                                      /*处理时间                */ 
   SERBA027             VARCHAR2(2000),                            /*处理结果描述            */ 
   SERBA028             VARCHAR2(1),                               /*顾客已确认              */ 
   SERBA029             INTEGER,                                   /*确认人                  */ 
   SERBA030             DATE,                                      /*确认时间                */ 
   SERBA031             VARCHAR2(1),                               /*是否可回访              */ 
   SERBA032             VARCHAR2(256),                             /*不可回访原因            */ 
   SERBA033             VARCHAR2(1),                               /*已回访                  */ 
   SERBA034             DATE,                                      /*回访日期                */ 
   SERBA035             INTEGER,                                   /*回访人员                */
   SERBA036             INTEGER,                                   /*处理人                */
   SERBA037             VARCHAR2(1),                               /*商户状态                */      
   SERBA038             INTEGER,                                   /*合同ID                */    
   SERBA039             VARCHAR2(1),                               /*投诉登记投诉关系人          */    
   SERBA040             VARCHAR2(1),                               /*投诉登记阶段                */    
   SERBA041             INTEGER,                                   /*投诉登记主要原因ID          */   
   SERBA042             VARCHAR2(1),                               /*处理结果投诉关系人          */    
   SERBA043             VARCHAR2(1),                               /*处理结果阶段                */    
   SERBA044             INTEGER,                                   /*处理结果主要原因ID          */  
   SERBA045             VARCHAR2(30),                              /*投诉人姓名                  */  
   SERBA046             VARCHAR2(30),                              /*投诉人电话                  */       
   SERBA048             INTEGER,                                   /*投诉方式投诉方式    */    
   SERBA049             NUMBER(22,2),                              /*合同金额                  */  
   SERBA050             NUMBER(22,2),                              /已付金额                  */       
   SERBA051             NUMBER(22,2),                              /*顾客诉求金额总计    */ 
   SERBA052             Date,                                      /*处理结果落实时间    */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBA primary key (SERBA_ID)                               
);                                           
create unique index AK_TB_SERBA on TB_SERBA (SERBA001,SERBA002);               
create sequence SEQ_TB_SERBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBA to public;                                     
grant index  on TB_SERBA to public;                                     
grant update on TB_SERBA to public;                                      
grant delete on TB_SERBA to public;                                       
grant insert on TB_SERBA to public;                                      
grant select on SEQ_TB_SERBA to public;                                        