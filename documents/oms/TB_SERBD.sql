/*
20130808 add by gaoxl for 红星：add SERBD029~SERBD034
*/
/*
================================================================================
表结构代码:TB_SERBD
表结构名称:投诉回访单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBD;
drop index AK_TB_SERBD;
drop table TB_SERBD;
create table TB_SERBD  (                                       
   SERBD_ID             INTEGER                        not null,   /*回访单ID            */            
   SERBD001             INTEGER                        not null,   /*回访单别            */            
   SERBD002             VARCHAR2(30)                   not null,   /*回访单号            */            
   SERBD003             INTEGER                        not null,   /*投诉结果单ID            */                      
   SERBD004             DATE                           not null,   /*回访日期            */            
   SERBD005             NUMBER(1)                      not null,   /*回访阶段            */               
   SERBD006             NUMBER(1)                      not null,   /*客户满意单          */   
   SERBD007             INTEGER ,                                  /*回访人              */
   SERBD008             VARCHAR2(255),                             /*回访内容            */                
   SERBD009             INTEGER,				                           /*营运组织           */    
   SERBD010             VARCHAR2(30),				                       /*顾客姓名                     */  
   SERBD011             VARCHAR2(30),				                       /*顾客电话                     */
   SERBD012             VARCHAR2(1),				                       /*投诉等级                     */
   SERBD013             VARCHAR2(1000),				                     /*投诉内容                     */
   SERBD014             VARCHAR2(1000),				                     /*投诉要求                     */
   SERBD015             VARCHAR2(1),				                       /*处理结果                     */
   SERBD016             VARCHAR2(2000),				                     /*结果描述                     */
   SERBD017             INTEGER,				                           /*商户                         */
   SERBD018             INTEGER,				                           /*品牌                         */
   SERBD019             INTEGER,				                           /*展位号                       */
   SERBD020             INTEGER,				                           /*处理人员                     */
   SERBD021             DATE,				                               /*处理日期                     */
   SERBD022             VARCHAR2(1),				                       /*是否解决完毕                 */
   SERBD023             VARCHAR2(1),				                       /*是否达成一致解决方案         */
   SERBD024             VARCHAR2(1),				                       /*处理结果是否满意             */
   SERBD025             VARCHAR2(256),				                     /*处理结果备注                 */
   SERBD026             VARCHAR2(1),				                       /*对处理人员态度               */
   SERBD027             VARCHAR2(256),				                     /*处理满意度备注               */ 
   SERBD028             VARCHAR2(256),				                     /*意见建议                     */    
   SERBD029             VARCHAR2(1),				                       /*建议不回访                   */  
   SERBD030             VARCHAR2(255),				                     /*建议不回访原因               */  
   SERBD031             VARCHAR2(1),				                       /*信息不完整                   */  
   SERBD032             VARCHAR2(255),				                     /*不完整信息内容               */  
   SERBD033             VARCHAR2(255),				                     /*是否解决完毕备注             */ 
   SERBD034             VARCHAR2(255),				                     /*是否达成一致解决方案备注     */                                                                       
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBD primary key (SERBD_ID)                               
);                                           
create unique index AK_TB_SERBD on TB_SERBD (SERBD001,SERBD002);               
create sequence SEQ_TB_SERBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBD to public;                                     
grant index  on TB_SERBD to public;                                     
grant update on TB_SERBD to public;                                      
grant delete on TB_SERBD to public;                                       
grant insert on TB_SERBD to public;                                      
grant select on SEQ_TB_SERBD to public;                                        