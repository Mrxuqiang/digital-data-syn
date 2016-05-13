/*
================================================================================
��ṹ����:TB_BILIA
��ṹ����:�ɱ��������˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIA;
drop index AK_TB_BILIA;
drop table TB_BILIA;
create table TB_BILIA  (
   BILIA_ID             INTEGER                     not null,       /*�ɱ��������˵�ID       */    
   BILIA001             VARCHAR2(1)                 not null,       /*��������           */    
   BILIA002             INTEGER                     not null,       /*���˵���           */    
   BILIA003             VARCHAR2(30)                not null,       /*���˵���           */    
   BILIA004             INTEGER                     not null,       /*����Ӫ����֯       */    
   BILIA005             INTEGER                     not null,       /*��Ӧ��             */    
   BILIA006             VARCHAR2(30)                not null,       /*��ͬ���           */    
   BILIA007             DATE                        not null,       /*���㿪ʼ����       */    
   BILIA008             DATE                        not null,       /*�����ֹ����       */ 
   BILIA009             VARCHAR2(1)                 not null,       /*�������ڨ�        */  
   BILIA010             INTEGER                     not null,       /*��������          */  
   BILIA011             DATE                        not null,       /*���׿�ʼ����      */  
   BILIA012             DATE                        not null,       /*���׽�������      */  
   BILIA013             NUMBER(12,2)                not null,       /*���׽��          */  
   BILIA014             NUMBER(12,2)                not null,       /*���׿���          */  
   BILIA015             NUMBER(12,2)                not null,       /*�������ھ����۶�  */  
   BILIA016             DATE                        not null,       /*�����ݹ����ڡ�    */  
   BILIA017             INTEGER                                     /*���׷��õ���      */     
   BILIA018             VARCHAR2(1),                                /*���״̬           */    
   BILIA019             INTEGER,                                    /*¼����             */    
   BILIA020             DATE,                                       /*¼������           */    
   BILIA021             INTEGER,                                    /*�����             */    
   BILIA022             DATE,                                       /*�������           */    
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILIA primary key (BILIA_ID)
);
create unique index AK_TB_BILIA on TB_BILIA (BILIA002,BILIA003);
create sequence SEQ_TB_BILIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIA to public;
grant index  on TB_BILIA to public;
grant update on TB_BILIA to public; 
grant delete on TB_BILIA to public;  
grant insert on TB_BILIA to public; 
grant select on SEQ_TB_BILIA to public;   