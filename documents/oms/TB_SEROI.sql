/*
================================================================================
��ṹ����:TB_SEROI
��ṹ����:չ����������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROI;
drop index AK_TB_SEROI;
drop table TB_SEROI;
create table TB_SEROI  (
   SEROI_ID             INTEGER                         not null,  /*չ������������ϸID*/
   SEROI001             INTEGER                         not null,  /*չ����������ID    */
   SEROI002             INTEGER                         not null,  /*���           */
   SEROI003             VARCHAR2(300)                  not null,   /*��������       */   
   SEROI004             VARCHAR2(300),                             /*�ߴ�           */   
   SEROI005             VARCHAR2(300) ,                            /*λ��           */ 
   SEROI006             INTEGER ,                                  /*����           */  
   SEROI007             VARCHAR2(500) ,                            /*����           */  
   SEROI008             VARCHAR2(2000) ,                           /*��ע           */     
   SEROI009             VARCHAR2(500) ,                            /*�����ֶ�1      */  
   SEROI010             VARCHAR2(500),                             /*�����ֶ�2      */  
   SEROI011             VARCHAR2(500),                             /*�����ֶ�3      */  
   SEROI012             VARCHAR2(500),                             /*�����ֶ�4      */  
   SEROI013             VARCHAR2(500),                             /*�����ֶ�5      */  
   SEROI014             VARCHAR2(500),                             /*�����ֶ�6      */  
   SEROI015             VARCHAR2(500),                             /*�����ֶ�7      */  
   SEROI016             VARCHAR2(500),                             /*�����ֶ�8      */  
   SEROI017             VARCHAR2(500),                             /*�����ֶ�9      */  
   SEROI018             VARCHAR2(500),                             /*�����ֶ�10     */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����   */                               
   CREATE_DATE          DATE,                                      /*��������       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա       */
   MODI_DATE            DATE,                                      /*�޸�����       */
   FLAG                 NUMBER(1),                                 /*����״̬       */
   constraint PK_TB_SEROI primary key (SEROI_ID)
);
create unique index AK_TB_SEROI on TB_SEROI (SEROI001,SEROI003,FLAG);
create sequence SEQ_TB_SEROI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROI to public;
grant index  on TB_SEROI to public;
grant update on TB_SEROI to public; 
grant delete on TB_SEROI to public;  
grant insert on TB_SEROI to public; 
grant select on SEQ_TB_SEROI to public;   