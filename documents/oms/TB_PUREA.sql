/*
================================================================================
��ṹ����:TB_PUREA
��ṹ����:�������鵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUREA;
drop index AK_TB_PUREA;
drop table TB_PUREA;
create table TB_PUREA  (
   PUREA_ID             INTEGER                          not null,  /*�������鵥ID        */     
   PUREA001             INTEGER                          not null,  /*�������鵥��        */    
   PUREA002             VARCHAR2(30)                     not null,  /*�������鵥��        */     
   PUREA003             INTEGER                          not null,  /*�����ŵ�ID          */  
   PUREA004             DATE                             not null,  /*��������            */    
   PUREA005             INTEGER,                                    /*������ID            */      
   PUREA006             VARCHAR2(255),                              /*��ע                */ 
   PUREA007             VARCHAR2(1),                                /*���״̬            */  
   PUREA008             INTEGER,                                    /*�����              */  
   PUREA009             DATE,                                       /*�������            */  
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_PUREA primary key (PUREA_ID)
);
create unique index AK_TB_PUREA on TB_PUREA (PUREA002);
create sequence SEQ_TB_PUREA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUREA to public;
grant index  on TB_PUREA to public;
grant update on TB_PUREA to public; 
grant delete on TB_PUREA to public;  
grant insert on TB_PUREA to public; 
grant select on SEQ_TB_PUREA to public;   