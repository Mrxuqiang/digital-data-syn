/*
20130808 add by gaoxl for ���ǣ�add SERBD029~SERBD034
*/
/*
================================================================================
��ṹ����:TB_SERBD
��ṹ����:Ͷ�߻طõ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERBD;
drop index AK_TB_SERBD;
drop table TB_SERBD;
create table TB_SERBD  (                                       
   SERBD_ID             INTEGER                        not null,   /*�طõ�ID            */            
   SERBD001             INTEGER                        not null,   /*�طõ���            */            
   SERBD002             VARCHAR2(30)                   not null,   /*�طõ���            */            
   SERBD003             INTEGER                        not null,   /*Ͷ�߽����ID            */                      
   SERBD004             DATE                           not null,   /*�ط�����            */            
   SERBD005             NUMBER(1)                      not null,   /*�طý׶�            */               
   SERBD006             NUMBER(1)                      not null,   /*�ͻ����ⵥ          */   
   SERBD007             INTEGER ,                                  /*�ط���              */
   SERBD008             VARCHAR2(255),                             /*�ط�����            */                
   SERBD009             INTEGER,				                           /*Ӫ����֯           */    
   SERBD010             VARCHAR2(30),				                       /*�˿�����                     */  
   SERBD011             VARCHAR2(30),				                       /*�˿͵绰                     */
   SERBD012             VARCHAR2(1),				                       /*Ͷ�ߵȼ�                     */
   SERBD013             VARCHAR2(1000),				                     /*Ͷ������                     */
   SERBD014             VARCHAR2(1000),				                     /*Ͷ��Ҫ��                     */
   SERBD015             VARCHAR2(1),				                       /*������                     */
   SERBD016             VARCHAR2(2000),				                     /*�������                     */
   SERBD017             INTEGER,				                           /*�̻�                         */
   SERBD018             INTEGER,				                           /*Ʒ��                         */
   SERBD019             INTEGER,				                           /*չλ��                       */
   SERBD020             INTEGER,				                           /*������Ա                     */
   SERBD021             DATE,				                               /*��������                     */
   SERBD022             VARCHAR2(1),				                       /*�Ƿ������                 */
   SERBD023             VARCHAR2(1),				                       /*�Ƿ���һ�½������         */
   SERBD024             VARCHAR2(1),				                       /*�������Ƿ�����             */
   SERBD025             VARCHAR2(256),				                     /*��������ע                 */
   SERBD026             VARCHAR2(1),				                       /*�Դ�����Ա̬��               */
   SERBD027             VARCHAR2(256),				                     /*��������ȱ�ע               */ 
   SERBD028             VARCHAR2(256),				                     /*�������                     */    
   SERBD029             VARCHAR2(1),				                       /*���鲻�ط�                   */  
   SERBD030             VARCHAR2(255),				                     /*���鲻�ط�ԭ��               */  
   SERBD031             VARCHAR2(1),				                       /*��Ϣ������                   */  
   SERBD032             VARCHAR2(255),				                     /*��������Ϣ����               */  
   SERBD033             VARCHAR2(255),				                     /*�Ƿ�����ϱ�ע             */ 
   SERBD034             VARCHAR2(255),				                     /*�Ƿ���һ�½��������ע     */                                                                       
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             
                                           
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