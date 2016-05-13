/*
================================================================================
表结构代码:TB_SERBB
表结构名称:投诉回复单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBB;
drop index AK_TB_SERBB;
drop table TB_SERBB;
create table TB_SERBB  (                                       
   SERBB_ID             INTEGER                        not null,   /*回复单ID          */            
   SERBB001             INTEGER                        not null,   /*回复单别          */            
   SERBB002             VARCHAR2(30)                   not null,   /*回复单号          */            
   SERBB003             INTEGER                        not null,   /*投诉单ID          */            
   SERBB004             DATE                           not null,   /*回复日期          */            
   SERBB005             DATE                           not null,   /*实际处理日期      */            
   SERBB006             NUMBER(1)                      not null,   /*回复方式          */               
   SERBB007             INTEGER                        not null,   /*回复人            */   
   SERBB008             VARCHAR2(255),                 not null,   /*回复内容          */               
   SERBB009             INTEGER,				   /*营运组织           */
   SERBB010             NUMBER(28，2),                             /*赔付金额           */
   SERBB011             INTEGER,                                   /*解决方式           */
   SERBB012             VARCHAR2(1),                               /*投诉级别           */
   SERBB013             VARCHAR2(1),                               /*客户满意度         */
   SERBB014             VARCHAR2(1000),                            /*投诉对象意见         */
   SERBB015             VARCHAR2(1000),                            /*备注               */
   SERBB016             INTEGER,                                   /*赔付方式ID          */2011/12/17 ADD BY OUWX
   SERBB017             VARCHAR2(1),                               /*商户满意度         */ 20121031 add by shizhan 
   SERBB018             VARCHAR2(1000),                            /*原因分析           */ 20121031 add by shizhan 
   SERBB019             VARCHAR2(1000),                            /*协调过程           */ 20121031 add by shizhan 
   SERBB020             VARCHAR2(1000),                            /*进度跟进及回访     */ 20121031 add by shizhan 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBB primary key (SERBB_ID)                               
);                                           
create unique index AK_TB_SERBB on TB_SERBB (SERBB001,SERBB002);               
create sequence SEQ_TB_SERBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBB to public;                                     
grant index  on TB_SERBB to public;                                     
grant update on TB_SERBB to public;                                      
grant delete on TB_SERBB to public;                                       
grant insert on TB_SERBB to public;                                      
grant select on SEQ_TB_SERBB to public;                                        