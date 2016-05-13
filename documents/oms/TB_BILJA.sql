/*
================================================================================
��ṹ����:TB_BILJA
��ṹ����:����/��Ӫ���˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJA;
drop index AK_TB_BILJA;
drop table TB_BILJA;
create table TB_BILJA  (
   BILJA_ID             INTEGER                     not null,       /*����/��Ӫ���˵�ID  */    
   BILJA001             VARCHAR2(1)                 not null,       /*��������           */    
   BILJA002             INTEGER                     not null,       /*���˵���           */    
   BILJA003             VARCHAR2(30)                not null,       /*���˵���           */    
   BILJA004             INTEGER                     not null,       /*����Ӫ����֯       */    
   BILJA005             INTEGER                     not null,       /*��Ӧ��             */    
   BILJA006             VARCHAR2(30)                not null,       /*��ͬ���           */    
   BILJA007             DATE                        not null,       /*���㿪ʼ����       */    
   BILJA008             DATE                        not null,       /*�����ֹ����       */    
   BILJA009             VARCHAR2(1)                 not null,       /*�������ڨ�        */  
   BILJA010             INTEGER                     not null,       /*��������          */  
   BILJA011             DATE                        not null,       /*���׿�ʼ����      */  
   BILJA012             DATE                        not null,       /*���׽�������      */  
   BILJA013             NUMBER(12,2)                not null,       /*���׽��          */  
   BILJA014             NUMBER(12,2)                not null,       /*���׿���          */  
   BILJA015             NUMBER(12,2)                not null,       /*�������ھ����۶�  */  
   BILJA016             DATE                        not null,       /*�����ݹ����ڡ�    */  
   BILJA017             INTEGER                                     /*���׷��õ���      */  
   BILJA018             VARCHAR2(1),                                /*���״̬           */    
   BILJA019             INTEGER,                                    /*¼����             */    
   BILJA020             DATE,                                       /*¼������           */    
   BILJA021             INTEGER,                                    /*�����             */    
   BILJA022             DATE,                                       /*�������           */    
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILJA primary key (BILJA_ID)
);
create unique index AK_TB_BILJA on TB_BILJA (BILJA002,BILJA003);
create sequence SEQ_TB_BILJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJA to public;
grant index  on TB_BILJA to public;
grant update on TB_BILJA to public; 
grant delete on TB_BILJA to public;  
grant insert on TB_BILJA to public; 
grant select on SEQ_TB_BILJA to public;   