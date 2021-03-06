/*
================================================================================
表结构代码:TB_SMSAF
表结构名称:短信发送日志表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAF;
drop index AK_TB_SMSAF;
drop table TB_SMSAF;
create table TB_SMSAF  ( 
   SMSAF001            INTEGER,                                     /*任务执行批号     */  
   SMSAF002            VARCHAR2(2),                                 /*推送对象类型     */默认为：1.商户
   SMSAF003            INTEGER,                                     /*商场ID           */  
   SMSAF004            VARCHAR2(10),                                /*商场编码         */  
   SMSAF005            VARCHAR2(30),                                /*商场名称         */  
   SMSAF006            INTEGER,                                     /*楼层ID           */  
   SMSAF007            VARCHAR2(10),                                /*楼层编码         */  
   SMSAF008            VARCHAR2(30),                                /*楼层名称         */  
   SMSAF009            INTEGER,                                     /*合同ID           */  
   SMSAF010            VARCHAR2(30),                                /*合同号           */  
   SMSAF011            VARCHAR2(30),                                /*品牌名称         */  
   SMSAF012            VARCHAR2(30),                                /*系列名称         */  
   SMSAF013            VARCHAR2(30),                                /*商户名称         */  
   SMSAF014            VARCHAR2(6),                                 /*推送对象         */1.老板，2.店长  
   SMSAF015            NUMBER（11,0）,                              /*推送对象手机号   */  
   SMSAF016            VARCHAR2(255),                               /*推送短信内容     */  
   SMSAF017            DATE,                                        /*创建日期         */取“生成任务、短信日志”job开始执行的系统日期  
   SMSAF018            VARCHAR2(30),                                /*创建时间         */取“生成任务、短信日志”job开始执行的系统时分秒  
   SMSAF019            DATE,                                        /*推送日期         */取“推送信息到短信平台”job开始执行的系统日期  
   SMSAF020            VARCHAR2(30),                                /*推送时间         */取“推送信息到短信平台”job开始执行的系统时分秒  
   SMSAF021            VARCHAR2(2),                                 /*推送状态         */1.创建，2.推送平台失败，3.平台发送失败，9.成功接收  
   SMSAF022            INTEGER,                                     /*短信模板id       */  
   SMSAF023            VARCHAR2(30),                                /*短信模板编号     */   
   SMSAF024            VARCHAR2(255),                               /*短信模板名称     */   
   SMSAF025            INTEGER,                                     /*推送任务id       */  
   SMSAF026            VARCHAR2(30),                                /*推送任务编号     */   
   SMSAF027            VARCHAR2(255),                               /*推送任务名称     */  
   SMSAF028            VARCHAR2(255),                               /*推送对象名称     */    
   SMSAF029            INTEGER,                                     /*商户id           */ 
   SMSAF030            VARCHAR2(30),                                /*商户编码         */
   SMSAF031            INTEGER,                                     /*品牌id           */ 
   SMSAF032            VARCHAR2(30),                                /*品牌编码         */
   SMSAF033            INTEGER,                                     /*系列id           */ 
   SMSAF034            VARCHAR2(30),                                /*系类编码         */             
   CREATE_USER         VARCHAR2(12),                                /*建立人员         */
   USER_GROUP          VARCHAR2(30),                                /*建立人员部门     */                             
   CREATE_DATE         DATE,                                        /*建立日期         */
   MODIFIER            VARCHAR2(12),                                /*修改人员         */
   MODI_DATE           DATE,                                        /*修改日期         */
   FLAG                NUMBER,                                      /*资料状态         */
   constraint PK_TB_SMSAF primary key (SMSAF001)
);
create unique index AK_TB_SMSAF on TB_SMSAF (SMSAF009,SMSAF015,SMSAF016);
create sequence SEQ_TB_SMSAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAF to public;
grant index  on TB_SMSAF to public;
grant update on TB_SMSAF to public; 
grant delete on TB_SMSAF to public;  
grant insert on TB_SMSAF to public; 
grant select on SEQ_TB_SMSAF to public;   